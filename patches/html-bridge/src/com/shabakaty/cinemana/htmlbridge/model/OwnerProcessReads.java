package com.shabakaty.cinemana.htmlbridge.model;

import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.function.Consumer;

/**
 * One instance per OWNER PROCESS, not per Service or renderer.
 * Each service attachment receives a fresh lease. A retired lease cannot detach
 * a replacement lease, and retirement never interrupts or releases a running read.
 * All callbacks must still be checked on the delivery thread immediately before use.
 */
public final class OwnerProcessReads {
    private final OwnerPageSession session;
    private final Executor worker;
    private long generation;
    private Lease current;

    public static final class Lease {
        private final OwnerProcessReads owner;
        public final long generation;
        private Lease(OwnerProcessReads owner,long generation){this.owner=owner;this.generation=generation;}
    }
    public enum Submission { ACCEPTED, REJECTED, EXECUTOR_UNAVAILABLE }

    public OwnerProcessReads(OwnerPageRead reader,Executor worker){
        this.session=new OwnerPageSession(Objects.requireNonNull(reader));
        this.worker=Objects.requireNonNull(worker);
    }
    public synchronized Lease attach(){
        if(generation==Long.MAX_VALUE)throw new IllegalStateException("generation exhausted");
        final long next=generation+1;
        if(!session.attach(next))throw new IllegalStateException("session attach failed");
        generation=next;
        current=new Lease(this,next);
        return current;
    }
    public synchronized boolean isCurrent(Lease lease){return lease!=null&&lease.owner==this&&current==lease;}
    public synchronized boolean detach(Lease lease){
        if(!isCurrent(lease))return false;
        session.detach(lease.generation);
        current=null;
        return true;
    }
    public Submission submit(Lease lease,long serial,OwnerPageSession.Move move,Consumer<OwnerPageSession.View> delivery){
        Objects.requireNonNull(delivery);
        final OwnerPageSession.Ticket ticket;
        synchronized(this){
            if(!isCurrent(lease))return Submission.REJECTED;
            ticket=session.begin(lease.generation,serial,move);
            if(ticket==null)return Submission.REJECTED;
        }
        try{
            worker.execute(()->{
                OwnerPageSession.View result=null;
                try{result=session.execute(ticket);}
                catch(InterruptedException e){Thread.currentThread().interrupt();}
                catch(Exception ignored){}
                // A null result means no observation. Never mutate service or UI from this worker.
                delivery.accept(result);
            });
            return Submission.ACCEPTED;
        }catch(RejectedExecutionException e){
            session.abandon(ticket);
            return Submission.EXECUTOR_UNAVAILABLE;
        }
    }
    public synchronized boolean canDeliver(Lease lease,OwnerPageSession.View view){
        return isCurrent(lease)&&session.isCurrent(view);
    }
}
