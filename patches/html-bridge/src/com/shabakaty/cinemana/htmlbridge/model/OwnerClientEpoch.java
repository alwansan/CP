package com.shabakaty.cinemana.htmlbridge.model;

/**
 * Client-side, single-thread-confined IPC lifecycle gate. No Android or IO.
 * Epoch must identify a fresh local binding/inbox (or echoed nonce), not merely remote PID.
 * Time is caller monotonic elapsedRealtime. A timeout poisons the current session:
 * the owner may already have advanced its cursor, so never retry NEXT in that session.
 * This gate does not cancel or release the owner's active read.
 */
public final class OwnerClientEpoch {
    public enum Phase { IDLE, CONNECTING, READY, READING, LOST, CLOSED }
    public enum Move { FIRST, NEXT, REFRESH }
    public enum Outcome { OBSERVED, REJECTED, CHANGED, UNAVAILABLE, INVALID }
    public static final class Request {
        public final long epoch,generation;
        public final int pid,serial;
        public final Move move;
        private Request(long e,long g,int p,int s,Move m){epoch=e;generation=g;pid=p;serial=s;move=m;}
    }
    private final long timeoutMs;
    private final int localPid;
    private long epoch,generation,started,lastTime=-1;
    private int pid,serial,page;
    private boolean more;
    private Phase phase=Phase.IDLE;
    private Request active;
    public OwnerClientEpoch(int localPid,long timeoutMs){
        if(localPid<=0||timeoutMs<1||timeoutMs>120000)throw new IllegalArgumentException("limits");
        this.localPid=localPid;this.timeoutMs=timeoutMs;
    }
    private void time(long now){
        if(now<0||now<lastTime)throw new IllegalArgumentException("monotonic time");
        lastTime=now;
    }
    private void clear(){generation=0;pid=0;serial=0;page=0;more=false;active=null;}
    private void lose(){clear();phase=Phase.LOST;}
    private boolean due(long now){return (phase==Phase.CONNECTING||phase==Phase.READING)&&now-started>=timeoutMs;}
    public Phase phase(){return phase;}
    public long epoch(){return epoch;}
    public int page(){return page;}
    public boolean more(){return more;}
    public int pendingSerial(){return active==null?0:active.serial;}
    /** Explicit fresh binding only. Cannot replace a healthy or busy session. */
    public boolean open(long e,long now){
        time(now);
        if((phase!=Phase.IDLE&&phase!=Phase.LOST)||e<=epoch||e<=0)return false;
        clear();epoch=e;started=now;phase=Phase.CONNECTING;return true;
    }
    public boolean attach(long e,long g,int ownerPid,long now){
        time(now);
        if(e!=epoch||phase!=Phase.CONNECTING)return false;
        if(due(now)){lose();return false;}
        if(g<=0||ownerPid<=0||ownerPid==localPid)return false;
        generation=g;pid=ownerPid;phase=Phase.READY;return true;
    }
    public Request begin(Move move,long now){
        time(now);
        if(phase!=Phase.READY||move==null||serial==Integer.MAX_VALUE)return null;
        if(move==Move.NEXT&&(page==0||!more||page==Integer.MAX_VALUE))return null;
        if(move==Move.REFRESH&&page==0)return null;
        active=new Request(epoch,generation,pid,++serial,move);started=now;phase=Phase.READING;
        return active;
    }
    /** Call only after envelope & payload validation on serialized delivery worker.
     * INVALID poisons the session, since remote cursor advancement is unknowable.
     * REJECTED/CHANGED/UNAVAILABLE must be explicit owner outcomes known not to advance.
     */
    public boolean finish(long e,long g,int ownerPid,int s,Outcome outcome,boolean hasMore,long now){
        time(now);
        if(active==null||phase!=Phase.READING||e!=epoch||g!=generation||ownerPid!=pid||s!=active.serial)return false;
        if(due(now)){lose();return false;}
        if(outcome==null||outcome==Outcome.INVALID){lose();return false;}
        if(outcome==Outcome.OBSERVED){
            if(active.move==Move.FIRST)page=1;
            else if(active.move==Move.NEXT)page++;
            more=hasMore;
        }
        active=null;phase=Phase.READY;return true;
    }
    /** Send failure is ambiguous; do not assume no dispatch. */
    public boolean sendFailed(Request r){
        if(r==null||r!=active||phase!=Phase.READING)return false;
        lose();return true;
    }
    public boolean expire(long now){
        time(now);
        if(!due(now))return false;
        lose();return true;
    }
    public boolean disconnect(long e){
        if(e!=epoch||phase==Phase.IDLE||phase==Phase.LOST||phase==Phase.CLOSED)return false;
        lose();return true;
    }
    public void close(){clear();phase=Phase.CLOSED;}
}
