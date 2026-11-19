package com.shabakaty.cinemana.htmlbridge.model;

import java.util.*;
import java.util.concurrent.*;
import java.util.concurrent.atomic.*;
import static com.shabakaty.cinemana.htmlbridge.model.OwnerProcessReads.*;
import static com.shabakaty.cinemana.htmlbridge.model.OwnerPageSession.Move.*;

public final class OwnerProcessReadsTest {
    private static int checks;
    private static void ok(boolean b){checks++;if(!b)throw new AssertionError("assert "+checks);}
    static final class Source implements OwnerPageRead.Source {
        final AtomicInteger active=new AtomicInteger(), peak=new AtomicInteger(), calls=new AtomicInteger();
        volatile CountDownLatch entered,release;
        public void checkOwnerWorker(){}
        public List<BoundedDownloadRead.AppRow> page(String after)throws Exception{
            int now=active.incrementAndGet();peak.accumulateAndGet(now,Math::max);calls.incrementAndGet();
            try{
                CountDownLatch e=entered,l=release;
                if(e!=null){e.countDown();if(!l.await(5,TimeUnit.SECONDS))throw new IllegalStateException("fixture");}
                List<BoundedDownloadRead.AppRow> rows=new ArrayList<>();
                int first=after==null?1:Integer.parseInt(after.substring(1))+1;
                for(int i=first;i<=452&&rows.size()<25;i++)rows.add(new BoundedDownloadRead.AppRow(String.format(Locale.ROOT,"d%03d",i),0,0,"",null));
                return rows;
            }finally{active.decrementAndGet();}
        }
        public BoundedDownloadRead.TransferRow transfer(int id){throw new AssertionError("no task");}
    }
    static OwnerPageSession.View read(OwnerProcessReads p,Lease l,long serial,OwnerPageSession.Move m)throws Exception{
        CompletableFuture<OwnerPageSession.View> f=new CompletableFuture<>();
        ok(p.submit(l,serial,m,f::complete)==Submission.ACCEPTED);
        return f.get(5,TimeUnit.SECONDS);
    }
    public static void main(String[] args)throws Exception{
        Source s=new Source();
        // Even a multi-thread executor may not admit a second source call while a retired lease is blocked.
        ExecutorService pool=Executors.newFixedThreadPool(4);
        try{
            OwnerProcessReads p=new OwnerProcessReads(new OwnerPageRead(s),pool);
            Lease first=p.attach();
            ok(first.generation==1&&p.isCurrent(first));
            OwnerPageSession.View v=read(p,first,1,FIRST);ok(v.rows.size()==24&&p.canDeliver(first,v));
            s.entered=new CountDownLatch(1);s.release=new CountDownLatch(1);
            CompletableFuture<OwnerPageSession.View> old=new CompletableFuture<>();
            ok(p.submit(first,2,NEXT,old::complete)==Submission.ACCEPTED);
            ok(s.entered.await(5,TimeUnit.SECONDS));ok(p.detach(first));ok(!p.canDeliver(first,v));
            Lease replacement=p.attach();ok(replacement.generation==2&&p.isCurrent(replacement));
            ok(!p.detach(first));
            for(int i=0;i<128;i++){
                ok(p.submit(replacement,i+1,FIRST,x->{throw new AssertionError("unexpected read");})==Submission.REJECTED);
                ok(p.submit(first,i+3,FIRST,x->{throw new AssertionError("stale lease");})==Submission.REJECTED);
            }
            ok(s.active.get()==1&&s.peak.get()==1);
            s.release.countDown();ok(old.get(5,TimeUnit.SECONDS)==null);
            s.entered=null;s.release=null;
            v=read(p,replacement,1,FIRST);ok(p.canDeliver(replacement,v));ok(v.rows.size()==24);
            OwnerPageSession.View stale=v;
            v=read(p,replacement,2,NEXT);ok(p.canDeliver(replacement,v));ok(!p.canDeliver(replacement,stale));
            Lease third=p.attach();ok(!p.detach(replacement));ok(!p.canDeliver(replacement,v));
            ok(p.submit(third,1,NEXT,x->{throw new AssertionError("cursor leaked");})==Submission.REJECTED);
            v=read(p,third,1,FIRST);ok(p.canDeliver(third,v));ok(p.detach(third));ok(!p.canDeliver(third,v));
            ok(s.peak.get()==1);
        }finally{pool.shutdownNow();}
        Source rejected=new Source();AtomicBoolean reject=new AtomicBoolean(true);
        OwnerProcessReads p=new OwnerProcessReads(new OwnerPageRead(rejected),r->{if(reject.get())throw new RejectedExecutionException();r.run();});
        Lease lease=p.attach();
        ok(p.submit(lease,1,FIRST,x->{throw new AssertionError("executor rejected");})==Submission.EXECUTOR_UNAVAILABLE);
        ok(rejected.calls.get()==0);
        reject.set(false);
        ok(p.submit(lease,1,FIRST,x->{throw new AssertionError("replayed serial");})==Submission.REJECTED);
        ok(read(p,lease,2,FIRST).rows.size()==24);
        OwnerProcessReads other=new OwnerProcessReads(new OwnerPageRead(rejected),Runnable::run);
        ok(!other.isCurrent(lease));ok(!other.detach(lease));ok(other.submit(lease,3,FIRST,x->{throw new AssertionError("foreign lease");})==Submission.REJECTED);
        System.out.println("CP_OWNER_PROCESS_READS_PASS assertions="+checks);
    }
}
