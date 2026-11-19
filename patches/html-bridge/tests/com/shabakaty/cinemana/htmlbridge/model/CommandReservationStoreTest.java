package com.shabakaty.cinemana.htmlbridge.model;
import java.nio.file.*;
import java.util.*;
import java.util.concurrent.*;
import static com.shabakaty.cinemana.htmlbridge.model.CommandReservationStore.Result.*;
public final class CommandReservationStoreTest {
    private static int n;
    private static void check(boolean ok) { n++; if(!ok) throw new AssertionError("assertion "+n); }
    public static void main(String[] args) throws Exception {
        Path root=Files.createTempDirectory("cp-reservations").toRealPath();
        ExecutorService pool=Executors.newFixedThreadPool(8);
        try {
            CommandReservationStore store=new CommandReservationStore(root);
            for(int i=0;i<452;i++) {
                String cmd="cmd"+i, ep="episode"+i;
                check(store.lookup(cmd,"account",ep,"HD")==UNKNOWN);
                check(store.reserve(cmd,"account",ep,"HD")==CREATED_HINT);
                check(new CommandReservationStore(root).reserve(cmd,"account",ep,"HD")==MATCH_HINT);
                check(store.reserve(cmd,"account",ep,"SD")==CONFLICT);
                check(store.reserve(cmd,"other",ep,"HD")==CONFLICT);
                check(store.lookup(cmd,"account",ep,"HD")==MATCH_HINT);
            }
            Files.createFile(root.resolve("partial.reservation"));
            check(store.reserve("partial","account","episode","HD")==UNKNOWN);
            check(Files.size(root.resolve("partial.reservation"))==0);
            Files.write(root.resolve("truncated.reservation"),new byte[]{67,80,68,76});
            check(store.reserve("truncated","account","episode","HD")==UNKNOWN);
            Files.write(root.resolve("oversize.reservation"),new byte[1025]);
            check(store.lookup("oversize","account","episode","HD")==UNKNOWN);
            check(store.reserve("../escape","account","episode","HD")==UNKNOWN);
            check(store.reserve("bad","a/b","episode","HD")==UNKNOWN);
            Path target=root.resolve("cmd0.reservation");
            Files.createSymbolicLink(root.resolve("symlink.reservation"),target);
            check(store.reserve("symlink","account","episode","HD")==UNKNOWN);
            check(store.lookup("cmd0","account","episode0","HD")==MATCH_HINT);
            CountDownLatch ready=new CountDownLatch(8), go=new CountDownLatch(1);
            List<Future<CommandReservationStore.Result>> futures=new ArrayList<>();
            for(int i=0;i<8;i++) futures.add(pool.submit(()->{
                ready.countDown(); go.await();
                return new CommandReservationStore(root).reserve("race","account","episode","HD");
            }));
            check(ready.await(5,TimeUnit.SECONDS)); go.countDown();
            int created=0;
            for(Future<CommandReservationStore.Result> f:futures) {
                CommandReservationStore.Result result=f.get(5,TimeUnit.SECONDS);
                check(result==CREATED_HINT||result==MATCH_HINT||result==UNKNOWN);
                if(result==CREATED_HINT) created++;
            }
            check(created==1);
            check(store.lookup("race","account","episode","HD")==MATCH_HINT);
            System.out.println("CP_COMMAND_RESERVATION_STORE_PASS assertions="+n+" syntheticEpisodes=452");
        } finally {
            pool.shutdownNow();
            try(java.util.stream.Stream<Path> paths=Files.walk(root)) {
                for(Path p:(Iterable<Path>)paths.sorted(Comparator.reverseOrder())::iterator) Files.deleteIfExists(p);
            }
        }
    }
}
