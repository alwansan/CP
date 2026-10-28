package com.shabakaty.cinemana.local;

import java.io.*;

import java.util.*;
import java.util.zip.*;

/** Local user state only. No tokens, Android AccountManager, network or media bytes.
 * All callers must use one instance on one serial executor. Never call from the UI thread.
 * Canonical directory is supplied by the Android integration (app-owned data directory).
 */
public final class LocalAccountStore {
    public interface Events { void record(String event, int count); }
    private static final int VERSION=3, MAX_ROWS=100000, MAX_IMAGE=2*1024*1024;
    private static final long MAX_ARCHIVE=24L*1024*1024;
    private final File directory;
    private final Events events;
    private State state;
    public enum ListKind { FAVORITE, WATCH_LATER, WATCHED, SUBSCRIPTION, PROGRESS, STATE }
    public static final class Item {
        public final String id, title, payload;
        public final long positionMs;
        public Item(String id,String title,long positionMs) {
            this(id,title,positionMs, "");
        }
        public Item(String id,String title,long positionMs,String payload){
            this.id=validId(id);this.title=validText(title,1024);this.positionMs=Math.max(0,positionMs);this.payload=validText(payload,20000);
        }
    }
    private static final class State {
        String name="حسابي";
        byte[] avatar=new byte[0];
        EnumMap<ListKind,LinkedHashMap<String,Item>> lists=new EnumMap<>(ListKind.class);
        Map<String,String> config=new LinkedHashMap<>();
        Map<String,LinkedHashSet<String>> known=new LinkedHashMap<>();
        // Durable inbox is also the deduplication ledger; absence from a later response never removes it.
        LinkedHashMap<String,Item> inbox=new LinkedHashMap<>();
        State(){for(ListKind k:ListKind.values())lists.put(k,new LinkedHashMap<String,Item>());}
    }
    public LocalAccountStore(File directory, Events events) throws IOException {
        this.directory=directory;this.events=events;
        if(!directory.isDirectory()&&!directory.mkdirs())throw new IOException("data directory unavailable");
        File current=new File(directory,"account.bin");
        File backup=new File(directory,"account.bin.bak");
        if(backup.exists()){if(current.exists()&&!current.delete())throw new IOException("recovery failed");if(!backup.renameTo(current))throw new IOException("recovery failed");}
        state=current.exists()?decode(read(current)):new State();
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
        ByteArrayOutputStream archive=new ByteArrayOutputStream();byte[] chunk=new byte[8192];int length;
        while((length=source.read(chunk))!=-1){if(archive.size()+length>32*1024*1024)throw new IOException("archive limit");archive.write(chunk,0,length);}
        byte[] zipped=archive.toByteArray();boolean complete=false;
        for(int offset=zipped.length-22;offset>=Math.max(0,zipped.length-65557);offset--){
            if(zipped[offset]==0x50&&zipped[offset+1]==0x4b&&zipped[offset+2]==5&&zipped[offset+3]==6){
                int comment=(zipped[offset+20]&255)|((zipped[offset+21]&255)<<8);if(offset+22+comment==zipped.length){complete=true;break;}
            }
        }
        if(!complete)throw new IOException("incomplete ZIP");
        ZipInputStream zip=new ZipInputStream(new ByteArrayInputStream(zipped));byte[] payload=null;ZipEntry entry;
        long total=0;byte[] buffer=new byte[8192];
        while((entry=zip.getNextEntry())!=null){
            if(!"account.bin".equals(entry.getName())||payload!=null||entry.isDirectory())throw new IOException("unsupported backup entry");
            ByteArrayOutputStream bytes=new ByteArrayOutputStream();int n;
            while((n=zip.read(buffer))!=-1){total+=n;if(total>MAX_ARCHIVE)throw new IOException("backup limit");bytes.write(buffer,0,n);}
            payload=bytes.toByteArray();zip.closeEntry();
        }
        if(payload==null)throw new IOException("empty backup");
        State next=decode(payload);next.known.clear();next.config.put("last_scan","0");next.config.put("scan_cursor","0");next.config.put("legacy_seeded","1");commit(next);event("backup_imported",1);
    }
    public synchronized void merge(Map<ListKind,List<Item>> records)throws IOException {
        State next=copy();for(Map.Entry<ListKind,List<Item>> e:records.entrySet())for(Item item:e.getValue())next.lists.get(e.getKey()).put(item.id,item);commit(next);
    }
    private State copy()throws IOException{return decode(encode(state));}
    private void commit(State next)throws IOException {
        byte[] data=encode(next);File tmp=new File(directory,"account.bin.pending");
        File current=new File(directory,"account.bin"), backup=new File(directory,"account.bin.bak");
        try(FileOutputStream out=new FileOutputStream(tmp)){out.write(data);out.getFD().sync();}
        if(backup.exists())throw new IOException("unresolved backup");
        boolean existed=current.exists();
        if(existed&&!current.renameTo(backup))throw new IOException("backup failed");
        if(!tmp.renameTo(current)){
            if(existed&&!backup.renameTo(current))throw new IOException("restore failed");
            throw new IOException("commit failed");
        }
        if(existed&&!backup.delete()){
            current.delete();backup.renameTo(current);throw new IOException("commit finalization failed");
        }
        state=next;
    }
    private static byte[] read(File file)throws IOException {
        if(file.length()>MAX_ARCHIVE)throw new IOException("account limit");
        try(InputStream in=new FileInputStream(file);ByteArrayOutputStream out=new ByteArrayOutputStream()){
            byte[] b=new byte[8192];int n;while((n=in.read(b))!=-1){if(out.size()+n>MAX_ARCHIVE)throw new IOException("account limit");out.write(b,0,n);}return out.toByteArray();
        }
    }
    public synchronized String config(String key,String fallback){String v=state.config.get(key);return v==null?fallback:v;}
    public synchronized void setConfig(String key,String value)throws IOException {
        validId(key);validText(value,4096);State next=copy();next.config.put(key,value);commit(next);
    }
    public synchronized Item find(ListKind kind,String id){return state.lists.get(kind).get(id);}
    public synchronized void clearInbox()throws IOException {State next=copy();next.inbox.clear();commit(next);}
    private static String validId(String s){if(s==null||!s.matches("[A-Za-z0-9_-]{1,100}"))throw new IllegalArgumentException("invalid id");return s;}
    private static String validText(String s,int max){if(s==null||s.length()>max)throw new IllegalArgumentException("invalid text");return s;}
    private static void item(DataOutputStream out,Item i)throws IOException {out.writeUTF(i.id);out.writeUTF(i.title);out.writeLong(i.positionMs);out.writeUTF(i.payload);}
    private static Item item(DataInputStream in,int version)throws IOException {String id=in.readUTF(),title=in.readUTF();long pos=in.readLong();return new Item(id,title,pos,version>=2?in.readUTF():"");}
    private static int count(DataInputStream in)throws IOException{int n=in.readInt();if(n<0||n>MAX_ROWS)throw new IOException("invalid count");return n;}
    private static byte[] encode(State s)throws IOException {
        for(ListKind k:ListKind.values())if(s.lists.get(k).size()>MAX_ROWS)throw new IOException("list limit");
        if(s.known.size()>MAX_ROWS||s.inbox.size()>MAX_ROWS)throw new IOException("state limit");
        for(Set<String> ids:s.known.values())if(ids.size()>MAX_ROWS)throw new IOException("episode limit");
        final ByteArrayOutputStream bytes=new ByteArrayOutputStream();OutputStream bounded=new OutputStream(){
            public void write(int b)throws IOException{if(bytes.size()+1>MAX_ARCHIVE)throw new IOException("account limit");bytes.write(b);}
            public void write(byte[] b,int off,int length)throws IOException{if((long)bytes.size()+length>MAX_ARCHIVE)throw new IOException("account limit");bytes.write(b,off,length);}
        };DataOutputStream out=new DataOutputStream(bounded);
        out.writeInt(0x434e4d4c);out.writeInt(VERSION);out.writeUTF(s.name);out.writeInt(s.avatar.length);out.write(s.avatar);
        for(ListKind k:ListKind.values()){out.writeInt(s.lists.get(k).size());for(Item i:s.lists.get(k).values())item(out,i);}
        out.writeInt(s.known.size());for(Map.Entry<String,LinkedHashSet<String>> e:s.known.entrySet()){
            out.writeUTF(e.getKey());out.writeInt(e.getValue().size());for(String id:e.getValue())out.writeUTF(id);
        }
        out.writeInt(s.inbox.size());for(Map.Entry<String,Item> e:s.inbox.entrySet()){out.writeUTF(e.getKey());item(out,e.getValue());}
        out.writeInt(s.config.size());for(Map.Entry<String,String> e:s.config.entrySet()){out.writeUTF(e.getKey());out.writeUTF(e.getValue());}
        out.flush();if(bytes.size()>MAX_ARCHIVE)throw new IOException("account limit");return bytes.toByteArray();
    }
    private static State decode(byte[] bytes)throws IOException {
        if(bytes.length>MAX_ARCHIVE)throw new IOException("account limit");
        try{
            DataInputStream in=new DataInputStream(new ByteArrayInputStream(bytes));
            if(in.readInt()!=0x434e4d4c)throw new IOException("unsupported schema");
            int version=in.readInt();if(version<1||version>VERSION)throw new IOException("unsupported schema");
            State s=new State();s.name=validText(in.readUTF(),80);int size=in.readInt();
            if(size<0||size>MAX_IMAGE)throw new IOException("image limit");s.avatar=new byte[size];in.readFully(s.avatar);
            for(ListKind k:ListKind.values()){if((version==1&&k==ListKind.PROGRESS)||(version<3&&k==ListKind.STATE))continue;for(int n=count(in);n>0;n--){Item i=item(in,version);if(s.lists.get(k).put(i.id,i)!=null)throw new IOException("duplicate item");}}
            for(int n=count(in);n>0;n--){String id=validId(in.readUTF());LinkedHashSet<String> ids=new LinkedHashSet<>();
                for(int m=count(in);m>0;m--)ids.add(validId(in.readUTF()));if(s.known.put(id,ids)!=null)throw new IOException("duplicate baseline");}
            for(int n=count(in);n>0;n--){String key=in.readUTF();Item i=item(in,version);
                if(!key.matches("[A-Za-z0-9_-]{1,100}:[A-Za-z0-9_-]{1,100}")||s.inbox.put(key,i)!=null)throw new IOException("invalid inbox");}
            if(version>=2)for(int n=count(in);n>0;n--){String k=validId(in.readUTF()),v=validText(in.readUTF(),4096);if(s.config.put(k,v)!=null)throw new IOException("duplicate config");}
            if(in.read()!=-1)throw new IOException("trailing data");return s;
        }catch(IllegalArgumentException e){throw new IOException("invalid account",e);}
    }
}
