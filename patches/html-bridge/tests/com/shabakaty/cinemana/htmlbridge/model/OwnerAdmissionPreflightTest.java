package com.shabakaty.cinemana.htmlbridge.model;

import java.util.*;
import java.util.concurrent.*;
import static com.shabakaty.cinemana.htmlbridge.model.OwnerAdmissionPreflight.*;
import static com.shabakaty.cinemana.htmlbridge.model.NativeEvidenceGate.Flag;
public final class OwnerAdmissionPreflightTest {
    private static int n;
    private static void check(boolean ok){n++;if(!ok)throw new AssertionError("assertion "+n);}
    private static Facts facts(Identity i,String epoch,boolean auth,boolean main,boolean variant,Flag... f){
        return new Facts(i,epoch,f[0],f[1],f[2],f[3],f[4],f[5],f[6],f[7],auth,main,variant);
    }
    private static Facts clear(Identity i){return facts(i,"epoch",true,true,true,
        Flag.NO,Flag.NO,Flag.NO,Flag.NO,Flag.NO,Flag.NO,Flag.NO,Flag.NO);}
    private static Identity id(String cmd,String scope,String ep,String q){return new Identity(cmd,scope,ep,q);}
    public static void main(String[] args)throws Exception{
        Flag[] no=new Flag[8];Arrays.fill(no,Flag.NO);
        for(int i=0;i<452;i++){
            Identity a=id("c"+i,"account","episode:"+i,"HD");Facts ready=clear(a);
            check(evaluate(a,ready,ready)==Decision.CANDIDATE);
            check(evaluate(a,ready,facts(a,"new",true,true,true,no))==Decision.RECONCILE);
            check(evaluate(a,ready,facts(a,"epoch",false,true,true,no))==Decision.RECONCILE);
            check(evaluate(a,ready,facts(a,"epoch",true,false,true,no))==Decision.RECONCILE);
            check(evaluate(a,ready,facts(a,"epoch",true,true,false,no))==Decision.RECONCILE);
            for(int k=0;k<8;k++){
                Flag[] f=no.clone();f[k]=Flag.UNKNOWN;
                check(evaluate(a,ready,facts(a,"epoch",true,true,true,f))==Decision.RECONCILE);
                f[k]=Flag.YES;
                check(evaluate(a,ready,facts(a,"epoch",true,true,true,f))!=Decision.CANDIDATE);
            }
        }
        Identity a=id("cmd","account","episode","HD"),b=id("other","account","episode","SD");
        Claims claims=new Claims(2);
        check(claims.claim(a,clear(a),clear(a),CommandReservationStore.Result.MATCH_HINT)==Claims.Result.BLOCKED);
        check(claims.claim(a,clear(a),clear(a),CommandReservationStore.Result.UNKNOWN)==Claims.Result.BLOCKED);
        check(claims.claim(a,clear(a),clear(a),CommandReservationStore.Result.CREATED_HINT)==Claims.Result.CLAIM_HINT);
        check(claims.claim(a,clear(a),clear(a),CommandReservationStore.Result.CREATED_HINT)==Claims.Result.REPLAY);
        check(claims.claim(b,clear(b),clear(b),CommandReservationStore.Result.CREATED_HINT)==Claims.Result.CONFLICT);
        Identity c=id("third","other","episode","HD");
        check(claims.claim(c,clear(c),clear(c),CommandReservationStore.Result.CREATED_HINT)==Claims.Result.CONFLICT);
        Identity d=id("cmd","account","different","HD");
        check(claims.claim(d,clear(d),clear(d),CommandReservationStore.Result.CREATED_HINT)==Claims.Result.CONFLICT);
        Identity e=id("fourth","account","other","HD");
        check(claims.claim(e,clear(e),clear(e),CommandReservationStore.Result.CREATED_HINT)==Claims.Result.CLAIM_HINT);
        Identity f=id("fifth","account","new","HD");
        check(claims.claim(f,clear(f),clear(f),CommandReservationStore.Result.CREATED_HINT)==Claims.Result.FULL);
        check(claims.size()==2);
        check(evaluate(a,clear(a),clear(b))==Decision.CONFLICT);
        Flag[] del=no.clone();del[0]=Flag.YES;del[4]=Flag.YES;
        check(evaluate(a,clear(a),facts(a,null,false,false,false,del))==Decision.DELETING);
        Claims race=new Claims(16);ExecutorService pool=Executors.newFixedThreadPool(8);
        try{
            CountDownLatch go=new CountDownLatch(1);
            List<Future<Claims.Result>> futures=new ArrayList<>();
            for(int i=0;i<8;i++){final Identity x=id("r"+i,"account","sameEpisode","HD");
                futures.add(pool.submit(()->{go.await();return race.claim(x,clear(x),clear(x),CommandReservationStore.Result.CREATED_HINT);}));}
            go.countDown();int won=0;
            for(Future<Claims.Result> v:futures){Claims.Result r=v.get(5,TimeUnit.SECONDS);
                check(r==Claims.Result.CLAIM_HINT||r==Claims.Result.CONFLICT);if(r==Claims.Result.CLAIM_HINT)won++;}
            check(won==1);check(race.size()==1);
        }finally{pool.shutdownNow();}
        System.out.println("CP_OWNER_ADMISSION_PREFLIGHT_PASS assertions="+n+" syntheticEpisodes=452");
    }
}
