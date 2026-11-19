package com.shabakaty.cinemana.htmlbridge.model;
import java.io.*;
import java.nio.*;
import java.nio.charset.*;
import java.util.*;

/** Reads exactly one StorageMaintenance152 .path record. A matching record is a
 * hint, not an engine receipt, identity proof, durable ACK or playback permission.
 * Native supplies the already-resolved token and current primary DB path.
 * No directory scan, no alias recovery, no writes and no media hashing.
 */
public final class BoundedMkvPathHint {
    public static final int MAX_BYTES=8192;
    public enum Result { MATCH_HINT, ABSENT, INVALID_TOKEN, UNSAFE_PATH, MALFORMED,
        MISMATCH, CHANGED, UNAVAILABLE }
    private final File root,work,legacy,proofs;
    public BoundedMkvPathHint(File mediaRoot) throws IOException {
        root=Objects.requireNonNull(mediaRoot).getCanonicalFile();
        work=new File(root,"work");
        legacy=new File(root,"com.shabakaty.cinemana");
        proofs=new File(work,"data/mkv-proofs");
    }
    private static boolean inside(File f,File dir){return f.getPath().startsWith(dir.getPath()+File.separator);}
    private static boolean allowedName(String token){return token!=null&&token.matches("[A-Za-z0-9_-]{1,128}");}
    private boolean safeMedia(File f) throws IOException {
        String n=f.getName().toLowerCase(Locale.ROOT);
        return inside(f,root)&&!inside(f,work.getCanonicalFile())&&!inside(f,legacy.getCanonicalFile())
            &&n.endsWith(".mkv")&&!n.contains(".stage")&&!n.contains(".tmp");
    }
    private static byte[] readBounded(File f)throws IOException {
        try(InputStream in=new FileInputStream(f);ByteArrayOutputStream out=new ByteArrayOutputStream()){
            byte[] buf=new byte[1024];int n;
            while((n=in.read(buf,0,Math.min(buf.length,MAX_BYTES+1-out.size())))!=-1){
                if(n==0)throw new IOException("no progress");
                out.write(buf,0,n);
                if(out.size()>MAX_BYTES)throw new IllegalArgumentException("oversized record");
            }
            return out.toByteArray();
        }
    }
    private static String decode(byte[] b)throws CharacterCodingException{
        return StandardCharsets.UTF_8.newDecoder().onMalformedInput(CodingErrorAction.REPORT)
            .onUnmappableCharacter(CodingErrorAction.REPORT).decode(ByteBuffer.wrap(b)).toString();
    }
    public Result read(String bareNativeToken,File currentPrimaryDbPath){
        if(!allowedName(bareNativeToken))return Result.INVALID_TOKEN;
        if(currentPrimaryDbPath==null||!currentPrimaryDbPath.isAbsolute())return Result.UNSAFE_PATH;
        try{
            // Reject redirected proof directory/file; do not follow a record's arbitrary path.
            if(!proofs.equals(proofs.getCanonicalFile()))return Result.UNSAFE_PATH;
            File f=new File(proofs,bareNativeToken+".path");
            if(!f.equals(f.getCanonicalFile()))return Result.UNSAFE_PATH;
            File target=currentPrimaryDbPath.getCanonicalFile();
            if(!safeMedia(target))return Result.UNSAFE_PATH;
            if(!f.isFile())return f.exists()?Result.UNAVAILABLE:Result.ABSENT;
            if(f.length()>MAX_BYTES)return Result.MALFORMED;
            long size=f.length(),mtime=f.lastModified();
            byte[] first=readBounded(f);
            String[] lines=decode(first).split("\\n",-1);
            if(lines.length!=3||!lines[2].isEmpty()||lines[0].isEmpty()||lines[0].indexOf('\r')>=0
                ||lines[0].indexOf('\0')>=0||!lines[1].matches("[0-9]{1,19}"))return Result.MALFORMED;
            try{if(Long.parseLong(lines[1])<=0)return Result.MALFORMED;}
            catch(NumberFormatException e){return Result.MALFORMED;}
            // Writer saves canonical path verbatim. No trimming, path resolution or alias lookup.
            if(!target.getPath().equals(lines[0]))return Result.MISMATCH;
            if(!target.isFile()||target.length()<=1024)return Result.MISMATCH;
            long mediaSize=target.length(),mediaMtime=target.lastModified();
            byte[] second=readBounded(f);
            if(!f.equals(f.getCanonicalFile())||!target.equals(currentPrimaryDbPath.getCanonicalFile())
                ||!f.isFile()||f.length()!=size||first.length!=size||f.lastModified()!=mtime
                ||!Arrays.equals(first,second)||!target.isFile()||target.length()!=mediaSize
                ||target.lastModified()!=mediaMtime)return Result.CHANGED;
            return Result.MATCH_HINT;
        }catch(IllegalArgumentException|CharacterCodingException e){return Result.MALFORMED;}
         catch(IOException|SecurityException e){return Result.UNAVAILABLE;}
    }
}
