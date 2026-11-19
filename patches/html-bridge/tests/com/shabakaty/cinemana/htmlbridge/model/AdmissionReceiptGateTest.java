package com.shabakaty.cinemana.htmlbridge.model;
import static com.shabakaty.cinemana.htmlbridge.model.AdmissionReceiptGate.*;
public final class AdmissionReceiptGateTest {
    private static int n;
    private static void check(boolean ok) { n++; if(!ok) throw new AssertionError("assertion "+n); }
    private static Identity id(String command,String episode,String quality,String epoch,int task,Kind kind) {
        return new Identity(command,episode,quality,epoch,task,kind);
    }
    private static Result good(Identity a,Identity b,String before,String after) {
        return evaluate(a,b,before,after,Write.VERIFIED,Write.VERIFIED,true,true,true,true,true,true);
    }
    public static void main(String[] args) {
        for(int i=1;i<=452;i++) {
            Identity a=id("cmd"+i,"episode"+i,"HD","epoch"+i,-i,Kind.VIDEO);
            check(good(a,a,a.epoch,a.epoch)==Result.VERIFIED_ADMISSION);
            check(good(a,id("other",a.episode,a.quality,a.epoch,a.task,Kind.VIDEO),a.epoch,a.epoch)==Result.RECONCILE);
            check(good(a,id(a.command,"other",a.quality,a.epoch,a.task,Kind.VIDEO),a.epoch,a.epoch)==Result.RECONCILE);
            check(good(a,id(a.command,a.episode,"SD",a.epoch,a.task,Kind.VIDEO),a.epoch,a.epoch)==Result.RECONCILE);
            check(good(a,id(a.command,a.episode,a.quality,a.epoch,a.task,Kind.SUBTITLE),a.epoch,a.epoch)==Result.RECONCILE);
            check(good(a,id(a.command,a.episode,a.quality,a.epoch,1,Kind.VIDEO),a.epoch,a.epoch)==Result.RECONCILE);
            check(good(a,a,a.epoch,"new")==Result.RECONCILE);
            check(good(a,a,"old",a.epoch)==Result.RECONCILE);
        }
        Identity a=id("cmd","ep","HD","epoch",1,Kind.VIDEO);
        for(Write q:Write.values()) for(Write r:Write.values()) for(int m=0;m<64;m++) {
            Result result=evaluate(a,a,"epoch","epoch",q,r,(m&1)!=0,(m&2)!=0,(m&4)!=0,(m&8)!=0,(m&16)!=0,(m&32)!=0);
            check((result==Result.VERIFIED_ADMISSION)==(q==Write.VERIFIED&&r==Write.VERIFIED&&m==63));
        }
        check(good(a,null,"epoch","epoch")==Result.UNKNOWN);
        check(good(null,a,"epoch","epoch")==Result.UNKNOWN);
        Identity legacy=id("cmd","ep","HD","legacy",1,Kind.VIDEO);
        check(good(legacy,legacy,"legacy","legacy")==Result.UNKNOWN);
        Identity bad=id("cmd","ep/path","HD","epoch",1,Kind.VIDEO);
        check(good(bad,bad,"epoch","epoch")==Result.UNKNOWN);
        check(good(a,a,null,"epoch")==Result.RECONCILE);
        check(evaluate(a,a,"epoch","epoch",null,null,true,true,true,true,true,true)==Result.UNKNOWN);
        System.out.println("CP_ADMISSION_RECEIPT_GATE_PASS assertions="+n+" syntheticEpisodes=452");
    }
}
