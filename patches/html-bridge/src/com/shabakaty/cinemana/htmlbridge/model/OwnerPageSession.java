package com.shabakaty.cinemana.htmlbridge.model;
import java.util.*;

/** Native-owned cursor/session barrier. No raw cursor, IDs or command actions exposed.
 * One active read across renderer generations; invalidation cannot create a second DB worker.
 * A caller must run execute on a background owner worker and marshal only View on reply.
 */
public final class OwnerPageSession {
    public enum Move { FIRST, NEXT, REFRESH }
    public static final class View {
        public final long generation, serial;
        public final OwnerPageRead.Status status;
        public final boolean hasMore;
        public final List<OwnerPageRead.Row> rows;
        private View(long g,long s,OwnerPageRead.Page p){
            generation=g;serial=s;status=p.status;hasMore=p.hasMore;rows=p.rows;
        }
    }
    public static final class Ticket {
        private final OwnerPageSession owner;
        private final long generation,serial;
        private final String cursor;
        private boolean started;
        private Ticket(OwnerPageSession o,long g,long s,String c){owner=o;generation=g;serial=s;cursor=c;}
    }
    private final OwnerPageRead read;
    private long generation,lastSerial;
    private boolean attached,loaded,hasMore;
    private String current,next;
    private Ticket active;
    public OwnerPageSession(OwnerPageRead read){this.read=Objects.requireNonNull(read);}
    // Caller maintains a monotonically increasing native document generation.
    public synchronized boolean attach(long g){
        if(g<=generation||g<=0)return false;
        generation=g;attached=true;lastSerial=0;reset();return true;
    }
    public synchronized void detach(long g){
        if(g==generation){attached=false;reset();}
    }
    private void reset(){loaded=false;hasMore=false;current=null;next=null;}
    // Returns null for busy, stale, replay, or unsupported navigation. No DB work here.
    public synchronized Ticket begin(long g,long serial,Move move){
        if(!attached||g!=generation||serial<=lastSerial||serial<=0||active!=null||move==null)return null;
        if(move==Move.NEXT&&(!loaded||!hasMore))return null;
        if(move==Move.REFRESH&&!loaded)return null;
        String cursor=move==Move.FIRST?null:move==Move.NEXT?next:current;
        lastSerial=serial;
        active=new Ticket(this,g,serial,cursor);return active;
    }
    // Call only when a ticket could not be submitted to the executor. Never unlock a running read.
    public synchronized boolean abandon(Ticket t){
        if(t==null||t!=active||t.started)return false;
        active=null;return true;
    }
    public View execute(Ticket t)throws Exception{
        synchronized(this){
            if(t==null||t.owner!=this||t!=active||t.started)return null;
            if(!attached||t.generation!=generation){active=null;return null;}
            t.started=true;
        }
        try{
            OwnerPageRead.Page result=read.read(t.cursor);
            synchronized(this){
                if(!attached||t.generation!=generation)return null;
                if(result.status==OwnerPageRead.Status.OBSERVED){
                    current=t.cursor;next=result.nextNativeCursor;hasMore=result.hasMore;loaded=true;
                }
                return new View(t.generation,t.serial,result);
            }
        }finally{
            synchronized(this){if(active==t)active=null;}
        }
    }
    // Mandatory final check immediately before marshaling/delivering callback.
    public synchronized boolean isCurrent(View v){
        return v!=null&&attached&&generation==v.generation&&lastSerial==v.serial;
    }
}
