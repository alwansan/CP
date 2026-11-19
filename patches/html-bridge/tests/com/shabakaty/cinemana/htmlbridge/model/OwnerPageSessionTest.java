package com.shabakaty.cinemana.htmlbridge.model;
import java.util.*;
import java.util.concurrent.*;
public final class OwnerPageSessionTest {
    static int checks;
    static void ok(boolean v){checks++;if(!v)throw new AssertionError("check "+checks);}
    static class Source implements OwnerPageRead.Source {
        volatile CountDownLatch entered,release;
        volatile boolean fail;
        int reads;
        public void checkOwnerWorker(){}
        public List<BoundedDownloadRead.AppRow> page(String after)throws Exception{
            reads++;
            CountDownLatch e=entered,l=release;
            if(e!=null){e.countDown();if(!l.await(5,TimeUnit.SECONDS))throw new IllegalStateException();}
            if(fail)throw new IllegalStateException();
            List<BoundedDownloadRead.AppRow> a=new ArrayList<>();
            int first=after==null?1:Integer.parseInt(after.substring(1))+1;
            for(int i=first;i<=452&&a.size()<25;i++)a.add(new BoundedDownloadRead.AppRow(String.format(Locale.ROOT,"d%03d",i),0,1,"720",""));
            return a;
        }
        public BoundedDownloadRead.TransferRow transfer(int i){throw new AssertionError("no task");}
    }
    public static void main(String[] args)throws Exception{
        Source src=new Source();OwnerPageSession s=new OwnerPageSession(new OwnerPageRead(src));
        ok(!s.attach(0));ok(s.attach(1));ok(!s.attach(1));ok(s.begin(1,1,OwnerPageSession.Move.NEXT)==null);
        long serial=1;int total=0,pages=0;
        OwnerPageSession.View v=null;
        do {
            OwnerPageSession.Ticket t=s.begin(1,serial,pages==0?OwnerPageSession.Move.FIRST:OwnerPageSession.Move.NEXT);
            ok(t!=null);ok(s.begin(1,serial+1,OwnerPageSession.Move.FIRST)==null);
            OwnerPageSession.View old=v;v=s.execute(t);ok(s.isCurrent(v));ok(!s.isCurrent(old));ok(s.execute(t)==null);
            ok(v.rows.size()<=24);total+=v.rows.size();pages++;serial++;
        }while(v.hasMore);
        ok(total==452&&pages==19);ok(s.begin(1,serial,OwnerPageSession.Move.NEXT)==null);
        int before=src.reads;ok(s.begin(1,serial-1,OwnerPageSession.Move.FIRST)==null);ok(src.reads==before);
        OwnerPageSession.Ticket t=s.begin(1,serial++,OwnerPageSession.Move.REFRESH);ok(t!=null);
        src.fail=true;ok(s.execute(t).status==OwnerPageRead.Status.UNAVAILABLE);src.fail=false;
        ok(s.execute(s.begin(1,serial++,OwnerPageSession.Move.REFRESH)).rows.size()==20);
        t=s.begin(1,serial++,OwnerPageSession.Move.FIRST);ok(s.abandon(t));ok(!s.abandon(t));ok(s.execute(t)==null);
        src.entered=new CountDownLatch(1);src.release=new CountDownLatch(1);
        final OwnerPageSession.Ticket running=s.begin(1,serial++,OwnerPageSession.Move.FIRST);
        ExecutorService pool=Executors.newSingleThreadExecutor();
        try{
            Future<OwnerPageSession.View> f=pool.submit(()->s.execute(running));
            ok(src.entered.await(5,TimeUnit.SECONDS));ok(!s.abandon(running));s.detach(1);
            ok(s.attach(2));ok(s.begin(2,1,OwnerPageSession.Move.FIRST)==null);
            src.release.countDown();ok(f.get(5,TimeUnit.SECONDS)==null);
            src.entered=null;src.release=null;
            v=s.execute(s.begin(2,1,OwnerPageSession.Move.FIRST));ok(v.rows.size()==24);ok(s.isCurrent(v));
            s.detach(1);ok(s.isCurrent(v));s.detach(2);ok(!s.isCurrent(v));
            ok(s.begin(2,2,OwnerPageSession.Move.NEXT)==null);ok(!s.attach(2));
        }finally{pool.shutdownNow();}
        // A ticket queued before detach must not run the source.
        ok(s.attach(3));t=s.begin(3,1,OwnerPageSession.Move.FIRST);s.detach(3);
        before=src.reads;ok(s.execute(t)==null);ok(src.reads==before);
        System.out.println("CP_OWNER_PAGE_SESSION_PASS assertions="+checks+" syntheticRows="+total+" pages="+pages);
    }
}
