package com.shabakaty.cinemana.htmlbridge.model;

import java.io.*;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.charset.StandardCharsets;
import java.nio.file.*;
import java.security.MessageDigest;
import java.util.*;

/** Reads the actual Fresh121 file format, without calling its directory-creating helper.
 * Native-only hint; not atomic with the DAO or owner, not a command receipt.
 */
public final class FreshEpochRead {
    public enum Status { MATCH_HINT, UNKNOWN }
    public static final class Observation {
        public final Status status;
        public final String epoch;
        private Observation(Status status,String epoch) {this.status=status;this.epoch=epoch;}
    }
    private static final Observation UNKNOWN=new Observation(Status.UNKNOWN,null);
    private final Path root;
    public FreshEpochRead(Path filesDir) {root=Objects.requireNonNull(filesDir).toAbsolutePath().normalize();}
    private static boolean validId(String id) {
        // Exact UTF-8 hashing, no normalization; reject malformed surrogate encodings.
        return id!=null && !id.isEmpty() && id.length()<=512 && id.indexOf(0)<0
            && StandardCharsets.UTF_8.newEncoder().canEncode(id);
    }
    private static String digest(String id) throws Exception {
        byte[] bytes=MessageDigest.getInstance("SHA-256").digest(id.getBytes(StandardCharsets.UTF_8));
        StringBuilder s=new StringBuilder(64);
        for(byte b:bytes) s.append(Character.forDigit((b&255)>>>4,16)).append(Character.forDigit(b&15,16));
        return s.toString();
    }
    private static byte[] read(Path file) throws IOException {
        if(!Files.isRegularFile(file,LinkOption.NOFOLLOW_LINKS)) throw new IOException("not regular");
        try(FileChannel channel=FileChannel.open(file,StandardOpenOption.READ,LinkOption.NOFOLLOW_LINKS)) {
            // writeUTF of canonical UUID = two-byte length + 36 ASCII bytes.
            if(channel.size()!=38) throw new IOException("epoch length");
            ByteBuffer b=ByteBuffer.allocate(38);
            while(b.hasRemaining()) if(channel.read(b)<=0) throw new IOException("short epoch");
            if(channel.size()!=38) throw new IOException("changed epoch");
            return b.array();
        }
    }
    public Observation read(String externalId) {
        if(!validId(externalId)) return UNKNOWN;
        try {
            Path dir=root.resolve("request121");
            if(!Files.isDirectory(dir,LinkOption.NOFOLLOW_LINKS)||!root.equals(root.toRealPath())
                    ||!dir.equals(dir.toRealPath())) return UNKNOWN;
            Path file=dir.resolve(digest(externalId)+".epoch");
            byte[] a=read(file),b=read(file);
            if(!Arrays.equals(a,b)) return UNKNOWN;
            try(DataInputStream in=new DataInputStream(new ByteArrayInputStream(a))) {
                String epoch=in.readUTF();
                if(in.read()!=-1||!UUID.fromString(epoch).toString().equals(epoch)) return UNKNOWN;
                return new Observation(Status.MATCH_HINT,epoch);
            }
        } catch(Exception e) {return UNKNOWN;}
    }
}
