package com.shabakaty.cinemana.htmlbridge.model;
import java.util.*;

public final class BoundedDownloadReadTest {
    static int checks;
    static void check(boolean b){checks++;if(!b)throw new AssertionError("check "+checks);}
    static class Fake implements BoundedDownloadRead.Source {
        int appCalls,transferCalls; boolean worker=true,fail=false,missing=false,changed=false,wrong=false;
        int task=-71; long progress=10,total=20;
        public void checkWorker(){if(!worker)throw new IllegalStateException("main");}
        public BoundedDownloadRead.AppRow app(String id) throws Exception {
            appCalls++;if(fail)throw new Exception("sensitive/raw/path");
            if(missing)return null;
            return new BoundedDownloadRead.AppRow(id,task,1,"720",changed&&appCalls%2==0?"different":"private/path");
        }
        public BoundedDownloadRead.TransferRow transfer(int t){
            transferCalls++;return new BoundedDownloadRead.TransferRow(wrong?"other":"e1",t,progress,total,DownloadModel.Transport.COMPLETED);
        }
    }
    static BoundedDownloadRead.Observation one(Fake f)throws Exception {
        return new BoundedDownloadRead(f).read(Collections.singletonList("e1")).get(0);
    }
    public static void main(String[] args)throws Exception {
        Fake f=new Fake();BoundedDownloadRead.Observation o=one(f);
        check(o.result==BoundedDownloadRead.Result.OBSERVED);check(o.transport==DownloadModel.Transport.COMPLETED);
        check(o.progressBytes==10&&o.totalBytes==20);check(f.appCalls==2&&f.transferCalls==1);
        f=new Fake();f.changed=true;check(one(f).result==BoundedDownloadRead.Result.CONFLICT);
        f=new Fake();f.wrong=true;o=one(f);check(o.result==BoundedDownloadRead.Result.CONFLICT);check(o.progressBytes==-1);
        f=new Fake();f.fail=true;check(one(f).result==BoundedDownloadRead.Result.UNAVAILABLE);check(f.transferCalls==0);
        f=new Fake();f.missing=true;check(one(f).result==BoundedDownloadRead.Result.NO_APP_ROW);check(f.transferCalls==0);
        f=new Fake();f.task=0;check(one(f).result==BoundedDownloadRead.Result.NO_TRANSPORT_ROW);check(f.transferCalls==0);
        f=new Fake();f.progress=21;check(one(f).result==BoundedDownloadRead.Result.CONFLICT);
        f=new Fake();f.total=0;check(one(f).totalBytes==-1);
        f=new Fake();f.worker=false;try{one(f);throw new AssertionError("worker guard");}catch(IllegalStateException expected){check(f.appCalls==0);}
        f=new Fake();try{new BoundedDownloadRead(f).read(Collections.nCopies(65,"e1"));throw new AssertionError("cap");}catch(IllegalArgumentException expected){check(f.appCalls==0);}
        f=new Fake();List<BoundedDownloadRead.Observation> page=new BoundedDownloadRead(f).read(Collections.nCopies(64,"e1"));
        check(page.size()==64&&f.appCalls==128&&f.transferCalls==64);
        try{page.clear();throw new AssertionError("mutable");}catch(UnsupportedOperationException expected){checks++;}
        f=new Fake();check(new BoundedDownloadRead(f).read(Collections.singletonList("https://private/url")).get(0).result==BoundedDownloadRead.Result.INVALID_ID);check(f.appCalls==0);
        for(java.lang.reflect.Field field:BoundedDownloadRead.Observation.class.getFields())check(field.getType()!=String.class);
        System.out.println("CP_BOUNDED_DOWNLOAD_READ_PASS assertions="+checks);
    }
}
