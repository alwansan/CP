package com.shabakaty.cinemana.htmlbridge.model;
import java.io.*;
import java.nio.file.*;
import java.nio.charset.StandardCharsets;
import java.util.Comparator;
import static com.shabakaty.cinemana.htmlbridge.model.BoundedMkvPathHint.Result.*;
public final class BoundedMkvPathHintTest {
    static int checks;
    static void check(boolean b){checks++;if(!b)throw new AssertionError("check "+checks);}
    static void put(Path p,String s)throws Exception{Files.write(p,s.getBytes(StandardCharsets.UTF_8));}
    public static void main(String[]args)throws Exception{
        Path root=Files.createTempDirectory("cp-proof-"),outside=Files.createTempDirectory("cp-other-");
        try{
            Path proofs=Files.createDirectories(root.resolve("work/data/mkv-proofs"));
            Path media=Files.createDirectories(root.resolve("series")).resolve("حلقة.mkv");
            Files.write(media,new byte[2048]); // intentionally NOT playable; match is only a path hint
            Path p=proofs.resolve("abc_123.path");
            BoundedMkvPathHint r=new BoundedMkvPathHint(root.toFile());
            java.io.File db=media.toFile();
            String record=db.getCanonicalPath()+"\n1795000000000\n";
            check(r.read("abc_123",db)==ABSENT);
            for(String token:new String[]{"../abc_123","abc/123","[cnm-abc_123]","abc.123","","a b",null})
                check(r.read(token,db)==INVALID_TOKEN);
            put(p,record);check(r.read("abc_123",db)==MATCH_HINT);
            check(r.read("abc_123",new File("relative.mkv"))==UNSAFE_PATH);
            check(r.read("abc_123",outside.resolve("file.mkv").toFile())==UNSAFE_PATH);
            check(r.read("abc_123",root.resolve("work/hidden.mkv").toFile())==UNSAFE_PATH);
            check(r.read("abc_123",root.resolve("com.shabakaty.cinemana/legacy.mkv").toFile())==UNSAFE_PATH);
            check(r.read("abc_123",root.resolve("series/a.stage.mkv").toFile())==UNSAFE_PATH);
            for(String bad:new String[]{record.substring(0,record.length()-1),"",db+"\n",db+"\n-1\n",db+"\n0\n",db+"\n9999999999999999999\n",record+"extra\n",db+"\r\n1\n"}){
                put(p,bad);check(r.read("abc_123",db)==MALFORMED);
            }
            Files.write(p,new byte[BoundedMkvPathHint.MAX_BYTES+1]);check(r.read("abc_123",db)==MALFORMED);
            Files.write(p,new byte[]{(byte)0xc3,0x28,0x0a});check(r.read("abc_123",db)==MALFORMED);
            put(p,root.resolve("series/other.mkv")+"\n1\n");check(r.read("abc_123",db)==MISMATCH);
            put(p,record);Files.write(media,new byte[1024]);check(r.read("abc_123",db)==MISMATCH);
            Files.delete(media);check(r.read("abc_123",db)==MISMATCH);
            Files.write(media,new byte[2048]);
            Files.delete(p);Path q=outside.resolve("record.path");put(q,record);
            Files.createSymbolicLink(p,q);check(r.read("abc_123",db)==UNSAFE_PATH);
            Files.delete(p);put(p,record);
            // 452 distinct known tokens: no inventory scan, no modifications by reader.
            for(int i=0;i<452;i++){
                String token="episode_"+i;Path f=proofs.resolve(token+".path");put(f,record);
                check(r.read(token,db)==MATCH_HINT);check(new String(Files.readAllBytes(f),StandardCharsets.UTF_8).equals(record));
            }
            check(Files.size(media)==2048);check(new String(Files.readAllBytes(p),StandardCharsets.UTF_8).equals(record));
        }finally{
            for(Path dir:new Path[]{root,outside})try(java.util.stream.Stream<Path> st=Files.walk(dir)){for(Path f:(Iterable<Path>)st.sorted(Comparator.reverseOrder())::iterator)Files.deleteIfExists(f);}
        }
        System.out.println("CP_BOUNDED_MKV_PATH_HINT_PASS assertions="+checks+" syntheticRecords=452");
    }
}
