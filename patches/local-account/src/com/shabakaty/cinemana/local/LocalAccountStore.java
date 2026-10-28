package com.shabakaty.cinemana.local;

import java.io.*;
import java.nio.file.*;
import java.util.*;
import java.util.zip.*;

/** Local user state only. No tokens, Android AccountManager, network or media bytes.
 * All callers must use one instance on one serial executor. Never call from the UI thread.
 * Canonical directory is supplied by the Android integration (app-owned data directory).
 */
public final class LocalAccountStore {
    public interface Events { void record(String event, int count); }
    private static final int VERSION=1, MAX_ROWS=100000, MAX_IMAGE=2*1024*1024;
    private static final long MAX_ARCHIVE=24L*1024*1024;
    private final File directory;
    private final Events events;
    private State state;
    public enum ListKind { FAVORITE, WATCH_LATER, WATCHED, SUBSCRIPTION }
    public static final class Item {
        public final String id, title;
        public final long positionMs;
        public Item(String id,String title,long positionMs) {
            this.id=validId(id); this.title=validText(title,1024); this.positionMs=Math.max(0,positionMs);
        }
    }
    private static final class State {
        String name="حسابي";
        byte[] avatar=new byte[0];
        EnumMap<ListKind,LinkedHashMap<String,Item>> lists=new EnumMap<>(ListKind.class);
        Map<String,LinkedHashSet<String>> known=new LinkedHashMap<>();
        // Durable inbox is also the deduplication ledger; absence from a later response never removes it.
        LinkedHashMap<String,Item> inbox=new LinkedHashMap<>();
        State(){for(ListKind k:ListKind.values())lists.put(k,new LinkedHashMap<String,Item>());}
    }
    public LocalAccountStore(File directory, Events events) throws IOException {
        this.directory=directory;this.events=events;
        if(!directory.isDirectory()&&!directory.mkdirs())throw new IOException("data directory unavailable");
        File current=new File(directory,"account.bin");
        state=current.exists()?decode(Files.readAllBytes(current.toPath())):new State();
    }
    private void event(String e,int n){if(events!=null)try{events.record(e,n);}catch(RuntimeException ignored){}}
    public synchronized String name(){return state.name;}
    public synchronized byte[] avatar(){return state.avatar.clone();}
    public synchronized List<Item> list(ListKind kind){return new ArrayList<>(state.lists.get(kind).values());}
    public synchronized List<Item> inbox(){return new ArrayList<>(state.inbox.values());}
    public synchronized void profile(String name,byte[] avatar)throws IOException {
        State next=copy();next.name=validText(name.trim(),80);
        if(next.name.isEmpty())throw new IllegalArgumentException("empty name");
        if(avatar.length>MAX_IMAGE)throw new IllegalArgumentException("image too large");
        next.avatar=avatar.clone();commit(next);event("profile_saved",1);
    }
    public synchronized void put(ListKind kind,Item item)throws IOException {
        State next=copy();next.lists.get(kind).put(item.id,item);commit(next);event("list_saved",1);
    }
    public synchronized void remove(ListKind kind,String id)throws IOException {
        State next=copy();next.lists.get(kind).remove(id);
        if(kind==ListKind.SUBSCRIPTION)next.known.remove(id);
        commit(next);event("list_removed",1);
    }
    /** Called only for a complete, successfully parsed episode response, never an error/partial page.
     * First successful response seeds baseline without notifying. Never use a max episode number:
     * seasons, specials and gaps require stable episode identifiers.
     */
    public synchronized List<Item> reconcile(String series, List<Item> completeEpisodes)throws IOException {
        series=validId(series);
        if(!state.lists.get(ListKind.SUBSCRIPTION).containsKey(series))return Collections.emptyList();
        LinkedHashSet<String> fetched=new LinkedHashSet<>();
        for(Item e:completeEpisodes)fetched.add(e.id);
        // Empty data may be a transient upstream failure. It must not establish a baseline.
        if(fetched.isEmpty())return Collections.emptyList();
        State next=copy();LinkedHashSet<String> previous=next.known.get(series);
        List<Item> added=new ArrayList<>();
        if(previous==null)previous=new LinkedHashSet<>();
        else for(Item episode:completeEpisodes)if(!previous.contains(episode.id)){
            String key=series+":"+episode.id;
            if(!next.inbox.containsKey(key)){next.inbox.put(key,episode);added.add(episode);}
        }
        previous.addAll(fetched);next.known.put(series,previous);
        commit(next);event("episodes_reconciled",added.size());return added;
    }
    /** Caller owns output stream (SAF document). No paths or original account credentials exported. */
    public synchronized void exportZip(OutputStream destination)throws IOException {
        ZipOutputStream zip=new ZipOutputStream(destination);
        zip.putNextEntry(new ZipEntry("account.bin"));zip.write(encode(state));zip.closeEntry();zip.finish();
        event("backup_exported",1);
    }
    /** Entire archive validated in memory before atomic replacement. Rejects traversal, duplicates,
     * unknown entries, inflated payloads, future schemas and truncated data. On failure state survives.
     * Import resets episode baselines to avoid old-episode alerts on a different installation.
     */
    public synchronized void importZip(InputStream source)throws IOException {
        ZipInputStream zip=new ZipInputStream(source);byte[] payload=null;ZipEntry entry;
        long total=0;byte[] buffer=new byte[8192];
        while((entry=zip.getNextEntry())!=null){
            if(!"account.bin".equals(entry.getName())||payload!=null||entry.isDirectory())throw new IOException("unsupported backup entry");
            ByteArrayOutputStream bytes=new ByteArrayOutputStream();int n;
            while((n=zip.read(buffer))!=-1){total+=n;if(total>MAX_ARCHIVE)throw new IOException("backup limit");bytes.write(buffer,0,n);}
            payload=bytes.toByteArray();zip.closeEntry();
        }
        if(payload==null)throw new IOException("empty backup");
        State next=decode(payload);next.known.clear();commit(next);event("backup_imported",1);
    }
    private State copy()throws IOException{return decode(encode(state));}
    private void commit(State next)throws IOException {
        byte[] data=encode(next);File tmp=new File(directory,"account.bin.pending");
        try(FileOutputStream out=new FileOutputStream(tmp)){out.write(data);out.getFD().sync();}
        try{Files.move(tmp.toPath(),new File(directory,"account.bin").toPath(),StandardCopyOption.ATOMIC_MOVE,StandardCopyOption.REPLACE_EXISTING);}
        catch(AtomicMoveNotSupportedException e){throw new IOException("atomic storage unavailable",e);}
        state=next;
    }
    private static String validId(String s){if(s==null||!s.matches("[A-Za-z0-9_-]{1,100}"))throw new IllegalArgumentException("invalid id");return s;}
    private static String validText(String s,int max){if(s==null||s.length()>max)throw new IllegalArgumentException("invalid text");return s;}
    private static void item(DataOutputStream out,Item i)throws IOException {out.writeUTF(i.id);out.writeUTF(i.title);out.writeLong(i.positionMs);}
    private static Item item(DataInputStream in)throws IOException {return new Item(in.readUTF(),in.readUTF(),in.readLong());}
    private static int count(DataInputStream in)throws IOException{int n=in.readInt();if(n<0||n>MAX_ROWS)throw new IOException("invalid count");return n;}
    private static byte[] encode(State s)throws IOException {
        for(ListKind k:ListKind.values())if(s.lists.get(k).size()>MAX_ROWS)throw new IOException("list limit");
        if(s.known.size()>MAX_ROWS||s.inbox.size()>MAX_ROWS)throw new IOException("state limit");
        for(Set<String> ids:s.known.values())if(ids.size()>MAX_ROWS)throw new IOException("episode limit");
        ByteArrayOutputStream bytes=new ByteArrayOutputStream();DataOutputStream out=new DataOutputStream(bytes);
        out.writeInt(0x434e4d4c);out.writeInt(VERSION);out.writeUTF(s.name);out.writeInt(s.avatar.length);out.write(s.avatar);
        for(ListKind k:ListKind.values()){out.writeInt(s.lists.get(k).size());for(Item i:s.lists.get(k).values())item(out,i);}
        out.writeInt(s.known.size());for(Map.Entry<String,LinkedHashSet<String>> e:s.known.entrySet()){
            out.writeUTF(e.getKey());out.writeInt(e.getValue().size());for(String id:e.getValue())out.writeUTF(id);
        }
        out.writeInt(s.inbox.size());for(Map.Entry<String,Item> e:s.inbox.entrySet()){out.writeUTF(e.getKey());item(out,e.getValue());}
        out.flush();if(bytes.size()>MAX_ARCHIVE)throw new IOException("account limit");return bytes.toByteArray();
    }
    private static State decode(byte[] bytes)throws IOException {
        if(bytes.length>MAX_ARCHIVE)throw new IOException("account limit");
        try{
            DataInputStream in=new DataInputStream(new ByteArrayInputStream(bytes));
            if(in.readInt()!=0x434e4d4c||in.readInt()!=VERSION)throw new IOException("unsupported schema");
            State s=new State();s.name=validText(in.readUTF(),80);int size=in.readInt();
            if(size<0||size>MAX_IMAGE)throw new IOException("image limit");s.avatar=new byte[size];in.readFully(s.avatar);
            for(ListKind k:ListKind.values())for(int n=count(in);n>0;n--){Item i=item(in);if(s.lists.get(k).put(i.id,i)!=null)throw new IOException("duplicate item");}
            for(int n=count(in);n>0;n--){String id=validId(in.readUTF());LinkedHashSet<String> ids=new LinkedHashSet<>();
                for(int m=count(in);m>0;m--)ids.add(validId(in.readUTF()));if(s.known.put(id,ids)!=null)throw new IOException("duplicate baseline");}
            for(int n=count(in);n>0;n--){String key=in.readUTF();Item i=item(in);
                if(!key.matches("[A-Za-z0-9_-]{1,100}:[A-Za-z0-9_-]{1,100}")||s.inbox.put(key,i)!=null)throw new IOException("invalid inbox");}
            if(in.read()!=-1)throw new IOException("trailing data");return s;
        }catch(IllegalArgumentException e){throw new IOException("invalid account",e);}
    }
}
