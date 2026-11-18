package com.shabakaty.cinemana.htmlbridge.model;

import java.util.*;
import static com.shabakaty.cinemana.htmlbridge.model.DownloadModel.*;

public final class DownloadModelTest {
    static int n;
    static void eq(Object a,Object b){if(!Objects.equals(a,b))throw new AssertionError(a+" != "+b);n++;}
    static void check(boolean b){if(!b)throw new AssertionError("check "+n);n++;}
    static Evidence ev(Transport t,boolean... f) {
        if(f.length!=10)throw new AssertionError("bad test flags");
        return new Evidence(t,f[0],f[1],f[2],f[3],f[4],f[5],f[6],f[7],f[8],f[9]);
    }
    static void state(State want,Transport t,boolean... f) {
        Projection p=project(ev(t,f));eq(p.state,want);eq(p.playable,want==State.READY_MKV);
    }
    static EpisodeFacts ep(String id,String variant,boolean existing,boolean deleting,boolean ready,long bytes){
        return new EpisodeFacts(id,variant,existing,deleting,ready,bytes);
    }
    public static void main(String[] args) {
        state(State.DOWNLOADING,Transport.PROGRESS,true,false,false,false,false,false,false,false,false,false);
        state(State.QUEUED,Transport.PENDING,true,false,false,false,false,false,false,false,false,false);
        state(State.PAUSE_REQUESTED,Transport.PROGRESS,true,false,false,false,false,true,false,false,false,false);
        state(State.PAUSED,Transport.PAUSED,true,false,false,false,false,true,false,false,false,false);
        state(State.RETRYING,Transport.RETRY,true,false,false,false,false,false,false,false,false,false);
        state(State.FAILED,Transport.ERROR,true,false,false,false,false,false,false,false,false,false);
        state(State.RECONCILING,Transport.COMPLETED,true,false,false,false,false,false,false,false,false,false);
        state(State.WAITING_MKV,Transport.COMPLETED,true,false,false,false,false,false,true,true,false,false);
        state(State.RECONCILING,Transport.COMPLETED,true,false,false,false,false,false,true,false,false,false);
        state(State.CONVERTING,Transport.COMPLETED,true,false,false,true,false,false,true,true,false,false);
        state(State.READY_MKV,Transport.COMPLETED,true,false,false,false,false,false,true,true,true,true);
        state(State.RECONCILING,Transport.COMPLETED,true,false,false,false,false,false,true,true,true,false);
        state(State.RECONCILING,Transport.COMPLETED,false,false,false,false,false,false,true,true,true,true);
        state(State.DELETING,Transport.COMPLETED,true,true,false,true,false,false,true,true,true,true);
        state(State.DELETING,Transport.COMPLETED,true,false,true,false,false,false,true,true,true,true);
        state(State.RECONCILING,Transport.COMPLETED,true,false,false,false,true,false,true,true,true,true);
        state(State.RECONCILING,Transport.PROGRESS,true,false,false,false,false,false,true,true,true,true);
        state(State.RECONCILING,Transport.RETRY,true,false,false,false,false,false,true,true,false,false);
        // Exhaustive combinations: no deletion or incomplete verification may be published.
        for(Transport transport:Transport.values())for(int mask=0;mask<1024;mask++){
            boolean[] f=new boolean[10];for(int i=0;i<10;i++)f[i]=(mask&(1<<i))!=0;
            Projection p=project(ev(transport,f));
            if(p.playable)check(f[0]&&!f[1]&&!f[2]&&!f[3]&&!f[4]&&f[8]&&f[9]&&transport!=Transport.PENDING&&transport!=Transport.STARTED&&transport!=Transport.PROGRESS&&transport!=Transport.RETRY);
            if(f[1]||f[2])eq(p.state,State.DELETING);
        }
        Map<String,EpisodeFacts> nativeFacts=new HashMap<>();
        List<String> ids=new ArrayList<>();
        for(int i=0;i<452;i++){String id="episode-"+i;ids.add(id);nativeFacts.put(id,ep(id,"q720",false,false,true,i%2==0?100:-1));}
        Plan p=plan(ids,nativeFacts);
        eq(p.rows.size(),452);eq(p.eligibleCount,452);eq(p.unknownSizeCount,226);eq(p.knownEstimatedBytes,22600L);
        for(int i=0;i<452;i++){eq(p.rows.get(i).index,i);eq(p.rows.get(i).id,ids.get(i));eq(p.rows.get(i).decision,Decision.ELIGIBLE);}
        nativeFacts.put("existing",ep("existing","q720",true,false,true,100));
        nativeFacts.put("deleting",ep("deleting","q720",true,true,true,100));
        nativeFacts.put("incomplete",ep("incomplete","q720",false,false,false,100));
        nativeFacts.put("novariant",ep("novariant",null,false,false,true,-1));
        nativeFacts.put("mismatch",ep("other","q720",false,false,true,100));
        List<String> mixed=Arrays.asList("episode-0","episode-0","existing","deleting","incomplete","novariant","missing","mismatch","/private/path",null);
        p=plan(mixed,nativeFacts);
        Decision[] expected={Decision.ELIGIBLE,Decision.DUPLICATE,Decision.ALREADY_EXISTS,Decision.DELETE_PENDING,Decision.METADATA_INCOMPLETE,Decision.VARIANT_UNAVAILABLE,Decision.NOT_FOUND,Decision.NOT_FOUND,Decision.INVALID_ID,Decision.INVALID_ID};
        for(int i=0;i<expected.length;i++)eq(p.rows.get(i).decision,expected[i]);
        eq(p.eligibleCount,1);eq(p.rows.get(8).id,null);eq(p.knownEstimatedBytes,100L);
        try{p.rows.clear();throw new AssertionError("mutable result");}catch(UnsupportedOperationException ok){n++;}
        try{plan(Collections.nCopies(1025,"episode-0"),nativeFacts);throw new AssertionError("unbounded batch");}catch(IllegalArgumentException ok){n++;}
        eq(plan(Collections.emptyList(),nativeFacts).eligibleCount,0);
        try{ep("id","q720",false,false,true,0);throw new AssertionError("zero bytes");}catch(IllegalArgumentException ok){n++;}
        nativeFacts.put("big",ep("big","q720",false,false,true,Long.MAX_VALUE));
        try{plan(Arrays.asList("big","episode-0"),nativeFacts);throw new AssertionError("overflow");}catch(ArithmeticException ok){n++;}
        System.out.println("CP_NATIVE_DOWNLOAD_MODEL_PASS assertions="+n+" syntheticEpisodes=452");
    }
}
