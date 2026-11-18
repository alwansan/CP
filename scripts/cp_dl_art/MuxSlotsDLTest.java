import com.shabakaty.cinemana.local.MuxSlotsDL;
import com.shabakaty.cinemana.local.TokenWorkDL;
import java.io.*;
import java.util.*;
import java.util.concurrent.*;
import java.util.concurrent.atomic.*;

public final class MuxSlotsDLTest {
    static void check(boolean ok,String why) { if(!ok) throw new AssertionError(why); }
    public static void main(String[] args) throws Exception {
        File dir=new File(args[1]);
        if(args[0].equals("hold")) {
            System.out.println("WAIT");
            MuxSlotsDL.acquire(dir);
            try {
                System.out.println("ACQUIRED");
                System.in.read();
            } finally { MuxSlotsDL.release(); }
            return;
        }
        ExecutorService ex=Executors.newFixedThreadPool(4);
        CountDownLatch three=new CountDownLatch(3), unlock=new CountDownLatch(1);
        AtomicInteger active=new AtomicInteger(), peak=new AtomicInteger(), entered=new AtomicInteger();
        List<Future<?>> tasks=new ArrayList<>();
        for(int i=0;i<4;i++) tasks.add(ex.submit(() -> {
            MuxSlotsDL.acquire(dir);
            try {
                int n=active.incrementAndGet();
                peak.accumulateAndGet(n, Math::max);
                entered.incrementAndGet(); three.countDown();
                unlock.await();
            } finally { active.decrementAndGet(); MuxSlotsDL.release(); }
            return null;
        }));
        try {
            check(three.await(10,TimeUnit.SECONDS),"three independent workers must enter");
            Thread.sleep(300);
            check(entered.get()==3,"fourth worker entered early");
            check(peak.get()==3,"wrong peak");
        } finally { unlock.countDown(); }
        for(Future<?> f:tasks) f.get(10,TimeUnit.SECONDS);
        ex.shutdownNow();
        check(active.get()==0 && entered.get()==4,"permit was not recycled");
        MuxSlotsDL.acquire(dir);
        try {
            try { MuxSlotsDL.acquire(dir); throw new AssertionError("nested acquire accepted"); }
            catch(IOException expected) {}
        } finally { MuxSlotsDL.release(); MuxSlotsDL.release(); }

        // Bounded token queue, duplicates while queued, and trailing event during execution.
        ArrayDeque<Runnable> queued=new ArrayDeque<>();
        Executor fake=queued::add;
        AtomicInteger calls=new AtomicInteger();
        check(TokenWorkDL.offer(fake,"same",() -> {
            calls.incrementAndGet();
            check(TokenWorkDL.offer(fake,"same",calls::incrementAndGet),"lost trailing event");
        }),"initial offer");
        check(TokenWorkDL.offer(fake,"same",calls::incrementAndGet),"duplicate should coalesce");
        check(queued.size()==1,"duplicate enqueued");
        queued.remove().run(); queued.remove().run();
        check(calls.get()==2,"trailing event missing");
        for(int i=0;i<TokenWorkDL.CAP;i++) check(TokenWorkDL.offer(fake,"path"+i,()->{}),"unexpected cap");
        check(!TokenWorkDL.offer(fake,"overflow",()->{}),"overflow not bounded");
        check(TokenWorkDL.offer(fake,"path0",()->{}),"duplicate at cap must be coalesced");
        while(!queued.isEmpty()) queued.remove().run();
        check(!TokenWorkDL.offer(r->{throw new RejectedExecutionException();},"retry",()->{}),"rejection");
        check(TokenWorkDL.offer(fake,"retry",()->{}),"failed enqueue leaked pending key");
        queued.remove().run();
        System.out.println("CPDL JVM PASS three workers, fourth blocked, permit recycled, bounded/coalesced token dispatch");
    }
}
