package com.shabakaty.cinemana.htmlbridge.model;
import static com.shabakaty.cinemana.htmlbridge.model.NativeEvidenceGate.*;
import static com.shabakaty.cinemana.htmlbridge.model.DownloadModel.Transport.*;
public final class NativeEvidenceGateTest {
    static int checks;
    static void check(boolean x){checks++;if(!x)throw new AssertionError("check "+checks);}
    static Identity a=new Identity("e1",-8,"720","epoch1","/synthetic/f.mkv");
    static Control c=new Control("epoch1",Flag.NO,Flag.NO,Flag.NO,Flag.NO,Flag.NO,true);
    static Proof p=new Proof(a,Media.MKV,4096,4096,true,true,true,true);
    static Outcome eval(Identity b,Control d,DownloadModel.Transport t,boolean v,boolean mux,Proof proof){
        return evaluate(a,b,c,d,t,v,mux,proof).outcome;
    }
    public static void main(String[]args){
        check(eval(a,c,COMPLETED,true,false,p)==Outcome.READY_MKV);
        check(eval(a,c,COMPLETED,true,false,null)==Outcome.RECONCILING);
        check(eval(a,c,COMPLETED,false,false,p)==Outcome.RECONCILING);
        check(eval(a,c,PROGRESS,true,false,p)==Outcome.RECONCILING);
        check(eval(a,c,COMPLETED,true,false,new Proof(a,Media.MKV,4096,4095,true,true,true,true))==Outcome.RECONCILING);
        check(eval(new Identity("e1",-8,"1080","epoch1","/synthetic/f.mkv"),c,COMPLETED,true,false,p)==Outcome.RECONCILING);
        check(eval(new Identity("e1",-8,"720","epoch2","/synthetic/f.mkv"),c,COMPLETED,true,false,p)==Outcome.RECONCILING);
        check(eval(new Identity("e1",-8,"720","epoch1","/different"),c,COMPLETED,true,false,p)==Outcome.RECONCILING);
        check(eval(a,c,COMPLETED,true,false,new Proof(a,Media.MP4,4096,4096,true,true,true,true))==Outcome.WAITING_MKV);
        check(eval(a,c,PAUSED,true,false,null)==Outcome.PAUSED);
        check(eval(a,c,PROGRESS,true,false,null)==Outcome.DOWNLOADING);
        for(int mask=0;mask<16;mask++){
            Proof b=new Proof(a,Media.MKV,4096,4096,(mask&1)!=0,(mask&2)!=0,(mask&4)!=0,(mask&8)!=0);
            check((eval(a,c,COMPLETED,true,false,b)==Outcome.READY_MKV)==(mask==15));
        }
        // Exhaust every control flag combination, both authority settings and all transport states.
        for(Flag d:Flag.values())for(Flag j:Flag.values())for(Flag o:Flag.values())for(Flag r:Flag.values())for(Flag pause:Flag.values())
            for(boolean auth:new boolean[]{false,true})for(DownloadModel.Transport t:DownloadModel.Transport.values()){
                Control x=new Control("epoch1",d,j,o,r,pause,auth);
                Outcome s=evaluate(a,a,x,x,t,true,false,p).outcome;
                if(d==Flag.YES||j==Flag.YES)check(s==Outcome.DELETING);
                else if(!auth||d!=Flag.NO||j!=Flag.NO||o!=Flag.NO||r!=Flag.NO||pause!=Flag.NO)check(s!=Outcome.READY_MKV);
                else check((s==Outcome.READY_MKV)==(t!=PENDING&&t!=STARTED&&t!=PROGRESS&&t!=RETRY));
            }
        Control owner=new Control("epoch1",Flag.NO,Flag.NO,Flag.YES,Flag.NO,Flag.NO,true);
        check(evaluate(a,a,owner,owner,PROGRESS,true,true,null).outcome==Outcome.CONVERTING);
        check(evaluate(a,a,owner,owner,PROGRESS,true,false,null).outcome==Outcome.RECONCILING);
        Control pause=new Control("epoch1",Flag.NO,Flag.NO,Flag.NO,Flag.NO,Flag.YES,true);
        check(evaluate(a,a,pause,pause,PROGRESS,true,false,null).outcome==Outcome.PAUSE_REQUESTED);
        check(evaluate(a,a,pause,pause,PAUSED,true,false,null).outcome==Outcome.PAUSED);
        System.out.println("CP_NATIVE_EVIDENCE_GATE_PASS assertions="+checks);
    }
}
