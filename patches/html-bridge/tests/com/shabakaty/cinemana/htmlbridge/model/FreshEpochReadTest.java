package com.shabakaty.cinemana.htmlbridge.model;
import java.io.*;
import java.nio.charset.StandardCharsets;
import java.nio.file.*;
import java.security.MessageDigest;
import java.util.*;
import static com.shabakaty.cinemana.htmlbridge.model.FreshEpochRead.Status.*;
public final class FreshEpochReadTest {
    private static int n;
    private static void check(boolean ok) {n++;if(!ok)throw new AssertionError("assertion "+n);}
    private static Path path(Path root,String id) throws Exception {
        byte[] h=MessageDigest.getInstance("SHA-256").digest(id.getBytes(StandardCharsets.UTF_8));
        StringBuilder b=new StringBuilder();for(byte x:h)b.append(String.format(Locale.ROOT,"%02x",x&255));
        return root.resolve("request121").resolve(b+".epoch");
    }
    private static void write(Path p,String epoch) throws Exception {
        try(DataOutputStream out=new DataOutputStream(Files.newOutputStream(p))) {out.writeUTF(epoch);}
    }
    public static void main(String[] args) throws Exception {
        Path root=Files.createTempDirectory("cp-fresh-epoch").toRealPath();
        try {
            FreshEpochRead read=new FreshEpochRead(root);
            check(read.read("ep").status==UNKNOWN);
            check(!Files.exists(root.resolve("request121")));
            Files.createDirectory(root.resolve("request121"));
            for(int i=0;i<452;i++) {
                String id="episode:"+i;
                String epoch=new UUID(i,i+1).toString();
                check(read.read(id).status==UNKNOWN);
                write(path(root,id),epoch);
                FreshEpochRead.Observation r=read.read(id);
                check(r.status==MATCH_HINT&&epoch.equals(r.epoch));
                check(read.read(id+"other").status==UNKNOWN);
                String next=new UUID(i+1,i+2).toString();
                write(path(root,id),next);
                check(next.equals(read.read(id).epoch));
            }
            write(path(root,"legacy"),"legacy");check(read.read("legacy").status==UNKNOWN);
            write(path(root,"bad"),"aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaG");check(read.read("bad").status==UNKNOWN);
            Path p=path(root,"short");Files.write(p,new byte[]{0,36,1});check(read.read("short").status==UNKNOWN);
            write(path(root,"trailing"),new UUID(1,2).toString());
            Files.write(path(root,"trailing"),new byte[]{0},StandardOpenOption.APPEND);check(read.read("trailing").status==UNKNOWN);
            Files.createSymbolicLink(path(root,"symlink"),path(root,"episode:0"));
            check(read.read("symlink").status==UNKNOWN);
            check(read.read(null).status==UNKNOWN);check(read.read("").status==UNKNOWN);
            check(read.read("\uD800").status==UNKNOWN);
            String exact="حلقة-1";String epoch=new UUID(3,4).toString();
            write(path(root,exact),epoch);check(epoch.equals(read.read(exact).epoch));
            check(read.read(exact+" ").status==UNKNOWN);
            System.out.println("CP_FRESH_EPOCH_READ_PASS assertions="+n+" syntheticEpisodes=452");
        } finally {
            try(java.util.stream.Stream<Path> paths=Files.walk(root)) {
                for(Path p:(Iterable<Path>)paths.sorted(Comparator.reverseOrder())::iterator) Files.deleteIfExists(p);
            }
        }
    }
}
