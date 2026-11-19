package com.shabakaty.cinemana.htmlbridge.model;
import static com.shabakaty.cinemana.htmlbridge.model.OwnerClientEpoch.*;
public final class OwnerClientEpochTest {
    static int checks;
    static void ok(boolean b){checks++;if(!b)throw new AssertionError("assert "+checks);}
    static Request begin(OwnerClientEpoch g,Move m,long t){Request r=g.begin(m,t);ok(r!=null);return r;}
    static boolean finish(OwnerClientEpoch g,Request r,Outcome o,boolean more,long now){return g.finish(r.epoch,r.generation,r.pid,r.serial,o,more,now);}
    public static void main(String[] args){
        OwnerClientEpoch g=new OwnerClientEpoch(11,100);
        ok(g.phase()==Phase.IDLE);ok(!g.open(0,0));ok(g.open(1,0));
        ok(!g.attach(2,1,12,1));ok(!g.attach(1,0,12,2));ok(!g.attach(1,1,11,3));
        ok(g.attach(1,1,12,4));ok(!g.open(2,5));ok(g.begin(Move.NEXT,6)==null);
        ok(g.begin(Move.REFRESH,7)==null);
        Request a=begin(g,Move.FIRST,8);
        ok(g.begin(Move.FIRST,9)==null);ok(g.pendingSerial()==1);
        ok(!g.finish(2,1,12,1,Outcome.OBSERVED,true,10));
        ok(!g.finish(1,2,12,1,Outcome.OBSERVED,true,11));
        ok(!g.finish(1,1,13,1,Outcome.OBSERVED,true,12));
        ok(!g.finish(1,1,12,2,Outcome.OBSERVED,true,13));
        ok(finish(g,a,Outcome.OBSERVED,true,14));ok(g.page()==1&&g.more());
        ok(!finish(g,a,Outcome.OBSERVED,false,15));ok(g.more());
        for(int i=2;i<=19;i++){
            Request n=begin(g,Move.NEXT,16+(i-2)*4);
            ok(n.serial==i);ok(finish(g,n,Outcome.OBSERVED,i<19,17+(i-2)*4));ok(g.page()==i);ok(g.more()==(i<19));
        }
        ok(g.begin(Move.NEXT,89)==null);
        Request refresh=begin(g,Move.REFRESH,90);ok(finish(g,refresh,Outcome.CHANGED,false,91));ok(g.page()==19&&!g.more());
        refresh=begin(g,Move.REFRESH,92);ok(finish(g,refresh,Outcome.UNAVAILABLE,false,93));ok(g.page()==19);
        a=begin(g,Move.FIRST,94);ok(finish(g,a,Outcome.REJECTED,false,95));ok(g.page()==19);
        a=begin(g,Move.FIRST,96);ok(!g.expire(195));ok(g.expire(196));
        ok(g.phase()==Phase.LOST&&g.page()==0&&!g.more());ok(g.begin(Move.NEXT,197)==null);
        ok(!finish(g,a,Outcome.OBSERVED,true,198));ok(!g.open(1,199));ok(g.open(2,200));
        // Same owner PID/generation reused after service re-creation; old local epoch still rejected.
        ok(!g.attach(1,1,12,201));ok(g.attach(2,1,12,202));
        Request b=begin(g,Move.FIRST,203);ok(!g.finish(1,1,12,1,Outcome.OBSERVED,true,204));
        ok(g.phase()==Phase.READING);ok(!g.disconnect(1));ok(g.disconnect(2));ok(g.phase()==Phase.LOST);
        ok(!finish(g,b,Outcome.OBSERVED,true,205));ok(g.open(3,206));ok(!g.attach(3,1,12,306));
        ok(g.phase()==Phase.LOST);ok(g.open(4,307));ok(g.attach(4,1,12,308));
        b=begin(g,Move.FIRST,309);ok(!finish(g,b,Outcome.OBSERVED,true,409));ok(g.phase()==Phase.LOST);
        ok(g.open(5,410));ok(g.attach(5,2,12,411));b=begin(g,Move.FIRST,412);
        ok(!finish(g,b,Outcome.INVALID,false,413));ok(g.phase()==Phase.LOST);
        ok(g.open(6,414));ok(g.attach(6,3,12,415));b=begin(g,Move.FIRST,416);
        ok(!g.sendFailed(a));ok(g.sendFailed(b));ok(g.phase()==Phase.LOST);
        ok(g.open(7,417));ok(g.attach(7,4,12,418));b=begin(g,Move.FIRST,419);
        g.close();ok(!finish(g,b,Outcome.OBSERVED,true,420));ok(g.phase()==Phase.CLOSED);
        ok(!g.open(8,421));ok(!g.disconnect(7));
        // Sweep exact deadline boundaries and stale reply identities.
        for(int dt=0;dt<=105;dt++){
            OwnerClientEpoch x=new OwnerClientEpoch(1,100);ok(x.open(1,0));ok(x.attach(1,1,2,1));
            Request q=begin(x,Move.FIRST,2);
            ok(!x.finish(1,1,3,q.serial,Outcome.OBSERVED,true,2+dt));
            ok(finish(x,q,Outcome.OBSERVED,true,2+dt)==(dt<100));
            ok(x.phase()==(dt<100?Phase.READY:Phase.LOST));
        }
        try{g.expire(420);throw new AssertionError("non-monotonic accepted");}catch(IllegalArgumentException expected){checks++;}
        System.out.println("CP_OWNER_CLIENT_EPOCH_PASS assertions="+checks);
    }
}
