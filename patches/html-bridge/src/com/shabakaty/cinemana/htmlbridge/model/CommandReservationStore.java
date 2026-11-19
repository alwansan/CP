package com.shabakaty.cinemana.htmlbridge.model;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.nio.charset.StandardCharsets;
import java.nio.file.*;
import java.util.Arrays;

/** Lab-only immutable per-command reservation. Not a queue or permission to dispatch.
 * Caller must supply an already-created, app-private directory, and native validated opaque IDs.
 * Never deletes, repairs, reuses or overwrites a reservation. A partial file fails closed.
 */
public final class CommandReservationStore {
    public enum Result { CREATED_HINT, MATCH_HINT, CONFLICT, UNKNOWN }
    private static final int MAX=1024;
    private final Path root;
    public CommandReservationStore(Path root) { this.root=root.toAbsolutePath().normalize(); }
    private static boolean valid(String s) {
        return s!=null && s.length()<=128 && s.matches("[A-Za-z0-9_-]+");
    }
    private static byte[] body(String command,String scope,String episode,String quality) {
        if(!valid(command)||!valid(scope)||!valid(episode)||!valid(quality)) return null;
        return ("CPDL1\n"+command+"\n"+scope+"\n"+episode+"\n"+quality+"\n").getBytes(StandardCharsets.US_ASCII);
    }
    private boolean privateRoot() throws IOException {
        return Files.isDirectory(root,LinkOption.NOFOLLOW_LINKS) && root.equals(root.toRealPath());
    }
    public Result reserve(String command,String scope,String episode,String quality) {
        byte[] wanted=body(command,scope,episode,quality);
        if(wanted==null) return Result.UNKNOWN;
        Path file=root.resolve(command+".reservation");
        try {
            if(!privateRoot()) return Result.UNKNOWN;
            try(FileChannel channel=FileChannel.open(file,StandardOpenOption.CREATE_NEW,
                    StandardOpenOption.WRITE,LinkOption.NOFOLLOW_LINKS);
                    FileLock lock=channel.tryLock()) {
                if(lock==null) return Result.UNKNOWN;
                ByteBuffer buf=ByteBuffer.wrap(wanted);
                while(buf.hasRemaining()) if(channel.write(buf)<=0) return Result.UNKNOWN;
                channel.force(true);
                // Do not claim even a creation hint if directory sync is unsupported.
                try(FileChannel directory=FileChannel.open(root,StandardOpenOption.READ)) {
                    directory.force(true);
                }
                return Result.CREATED_HINT;
            } catch(FileAlreadyExistsException e) {
                return lookup(command,scope,episode,quality);
            }
        } catch(IOException|RuntimeException e) { return Result.UNKNOWN; }
    }
    public Result lookup(String command,String scope,String episode,String quality) {
        byte[] wanted=body(command,scope,episode,quality);
        if(wanted==null) return Result.UNKNOWN;
        Path file=root.resolve(command+".reservation");
        try {
            if(!privateRoot() || !Files.isRegularFile(file,LinkOption.NOFOLLOW_LINKS)) return Result.UNKNOWN;
            // Reader never blocks the unique CREATE_NEW writer. A partial record is UNKNOWN;
            // a complete record is still only a hint (writer may not have synced yet).
            try(FileChannel channel=FileChannel.open(file,StandardOpenOption.READ,LinkOption.NOFOLLOW_LINKS)) {
                long size=channel.size();
                if(size<=0 || size>MAX) return Result.UNKNOWN;
                ByteBuffer buf=ByteBuffer.allocate((int)size);
                while(buf.hasRemaining()) if(channel.read(buf)<=0) return Result.UNKNOWN;
                if(channel.size()!=size) return Result.UNKNOWN;
                byte[] actual=buf.array();
                String[] parts=new String(actual,StandardCharsets.US_ASCII).split("\n",-1);
                if(parts.length!=6 || !"CPDL1".equals(parts[0]) || !command.equals(parts[1]) || !parts[5].isEmpty())
                    return Result.UNKNOWN;
                byte[] canonical=body(parts[1],parts[2],parts[3],parts[4]);
                if(canonical==null || !Arrays.equals(actual,canonical)) return Result.UNKNOWN;
                return Arrays.equals(actual,wanted)?Result.MATCH_HINT:Result.CONFLICT;
            }
        } catch(IOException|RuntimeException e) { return Result.UNKNOWN; }
    }
}
