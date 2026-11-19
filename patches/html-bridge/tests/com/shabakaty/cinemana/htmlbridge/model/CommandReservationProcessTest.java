package com.shabakaty.cinemana.htmlbridge.model;

import java.io.*;
import java.nio.charset.StandardCharsets;
import java.nio.file.*;
import java.util.*;
import java.util.concurrent.TimeUnit;
import static com.shabakaty.cinemana.htmlbridge.model.CommandReservationStore.Result.*;

/** Real independent JVM contenders; partial writer is intentionally a synthetic fault fixture. */
public final class CommandReservationProcessTest {
    private static int n;
    private static void check(boolean ok) { n++; if(!ok) throw new AssertionError("assertion "+n); }
    private static void awaitFile(Path file) throws Exception {
        long deadline=System.nanoTime()+TimeUnit.SECONDS.toNanos(15);
        while(!Files.exists(file)) {
            if(System.nanoTime()>deadline) throw new AssertionError("child barrier timeout");
            Thread.sleep(10);
        }
    }
    private static Process spawn(Path root,String mode,String id) throws IOException {
        return new ProcessBuilder(Paths.get(System.getProperty("java.home"),"bin","java").toString(),
                "-cp",System.getProperty("java.class.path"),CommandReservationProcessTest.class.getName(),
                root.toString(),mode,id).redirectErrorStream(true)
                .redirectOutput(root.resolve("log-"+id).toFile()).start();
    }
    private static void child(Path root,String mode,String id) throws Exception {
        CommandReservationStore store=new CommandReservationStore(root);
        if(mode.equals("race")) {
            Files.createFile(root.resolve("ready-"+id)); awaitFile(root.resolve("go"));
            System.out.println(store.reserve("race","account","episode","HD"));
        } else if(mode.equals("partial")) {
            // Emulate a crash at a precise incomplete-file boundary; not a hook in production store.
            try(FileOutputStream out=new FileOutputStream(root.resolve("interrupted.reservation").toFile())) {
                out.write("CPDL1\ninterrupted\n".getBytes(StandardCharsets.US_ASCII));
                out.getFD().sync();
                Files.createFile(root.resolve("partial-ready"));
                Thread.sleep(60000);
            }
        } else if(mode.equals("completed")) {
            System.out.println(store.reserve("completed","account","episode","HD"));
            System.out.flush();
            Files.createFile(root.resolve("completed-ready"));
            Thread.sleep(60000);
        } else throw new IllegalArgumentException("mode");
    }
    public static void main(String[] args) throws Exception {
        if(args.length==3) { child(Paths.get(args[0]),args[1],args[2]); return; }
        Path root=Files.createTempDirectory("cp-reservation-process").toRealPath();
        List<Process> children=new ArrayList<>();
        try {
            CommandReservationStore store=new CommandReservationStore(root);
            for(int i=0;i<8;i++) children.add(spawn(root,"race","r"+i));
            for(int i=0;i<8;i++) awaitFile(root.resolve("ready-r"+i));
            Files.createFile(root.resolve("go"));
            int created=0;
            for(int i=0;i<8;i++) {
                Process p=children.get(i);
                check(p.waitFor(15,TimeUnit.SECONDS));
                check(p.exitValue()==0);
                String output=new String(Files.readAllBytes(root.resolve("log-r"+i)),StandardCharsets.US_ASCII).trim();
                check(output.equals("CREATED_HINT")||output.equals("MATCH_HINT")||output.equals("UNKNOWN"));
                if(output.equals("CREATED_HINT")) created++;
            }
            check(created==1);
            check(store.lookup("race","account","episode","HD")==MATCH_HINT);
            Process partial=spawn(root,"partial","p");children.add(partial);
            awaitFile(root.resolve("partial-ready"));
            check(store.lookup("interrupted","account","episode","HD")==UNKNOWN);
            partial.destroyForcibly();check(partial.waitFor(15,TimeUnit.SECONDS));check(partial.exitValue()!=0);
            byte[] original=Files.readAllBytes(root.resolve("interrupted.reservation"));
            check(store.reserve("interrupted","account","episode","HD")==UNKNOWN);
            check(Arrays.equals(original,Files.readAllBytes(root.resolve("interrupted.reservation"))));
            Process done=spawn(root,"completed","c");children.add(done);
            awaitFile(root.resolve("completed-ready"));
            check(new String(Files.readAllBytes(root.resolve("log-c")),StandardCharsets.US_ASCII).trim().equals("CREATED_HINT"));
            done.destroyForcibly();check(done.waitFor(15,TimeUnit.SECONDS));check(done.exitValue()!=0);
            check(new CommandReservationStore(root).reserve("completed","account","episode","HD")==MATCH_HINT);
            check(store.reserve("completed","account","episode","SD")==CONFLICT);
            System.out.println("CP_COMMAND_RESERVATION_PROCESS_PASS assertions="+n+" independentContenders=8 forcedKills=2");
        } finally {
            for(Process p:children) if(p.isAlive()) { p.destroyForcibly(); p.waitFor(5,TimeUnit.SECONDS); }
            try(java.util.stream.Stream<Path> paths=Files.walk(root)) {
                for(Path p:(Iterable<Path>)paths.sorted(Comparator.reverseOrder())::iterator) Files.deleteIfExists(p);
            }
        }
    }
}
