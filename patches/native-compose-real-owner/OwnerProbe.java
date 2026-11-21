package com.shabakaty.cinemana.htmlbridge.model;
import android.app.*;
import android.content.Context;
import android.os.*;
import java.util.concurrent.atomic.AtomicBoolean;
import java.lang.reflect.*;
import java.util.*;
import java.util.concurrent.Callable;
import com.shabakaty.cinemana.htmlbridge.model.*;

public final class OwnerProbe extends Instrumentation {
    private void require(boolean ok,String why){if(!ok)throw new AssertionError(why);}
    private boolean fixture;
    @Override public void onCreate(Bundle args){super.onCreate(args);fixture=args!=null&&"true".equals(args.getString("rollback_fixture"));start();}
    private String fixtureId(int i){return String.format(Locale.ROOT,"cp-owner-probe-%03d",i);}
    /** Disposable API35 emulator only. Original generated DAO inserts under an
     * outer transaction which is deliberately never marked successful. */
    private void populated(Context app,ExistingOwnerPageSource source)throws Exception{
        require(fixture&&Build.VERSION.SDK_INT==35&&
            ("sdk_gphone64_x86_64".equals(Build.PRODUCT)||Build.FINGERPRINT.contains("/sdk_gphone64_x86_64/")||
             Build.HARDWARE.equals("ranchu")||Build.HARDWARE.equals("goldfish")),
            "fixture is emulator-only");
        source.checkOwnerWorker();
        require(source.page(null).isEmpty(),"refuse fixture on nonempty original database");
        Object dao=Class.forName("com.shabakaty.cinemana.ca1.DownloadStore263").getMethod("appDao",Context.class).invoke(null,app);
        Class<?> daoType=Class.forName("com.shabakaty.downloader.kw0");
        Class<?> roomType=Class.forName("com.shabakaty.downloader.vt3");
        Object room=daoType.getField("a").get(dao);
        require(roomType.isInstance(room),"room type");
        Class<?> item=Class.forName("com.shabakaty.cinemana.data.db.downloads.CinemanaDownloadItem");
        Constructor<?> insert=Class.forName("com.shabakaty.downloader.kw0$c").getConstructor(daoType,item);
        Method begin=roomType.getMethod("i"),end=roomType.getMethod("j");
        // Outer transaction isolates fixture rows from concurrent original workers.
        // Nested original insertion callable has its own transaction, never
        // commits the enclosing transaction. Always roll back in finally.
        begin.invoke(room);
        try {
            for(int n=1;n<=49;n++){
                Object entry=item.getConstructor().newInstance();
                item.getField("id").set(entry,fixtureId(n));
                item.getField("title").set(entry,"CP disposable test "+n);
                item.getField("downloadTaskId").setInt(entry,0);
                item.getField("collectionID").setInt(entry,0);
                item.getField("path").set(entry,"");
                item.getField("qualityName").set(entry,"fixture");
                ((Callable<?>)insert.newInstance(dao,entry)).call();
            }
            String after=null;int seen=0;
            OwnerPageRead reader=new OwnerPageRead(source);
            for(int page=1;page<=3;page++){
                List<BoundedDownloadRead.AppRow> raw=source.page(after);
                int expected=page<3?25:1;
                require(raw.size()==expected,"unexpected lookahead page "+page+" size="+raw.size());
                for(int n=0;n<raw.size();n++){
                    BoundedDownloadRead.AppRow row=raw.get(n);
                    require(fixtureId(seen+n+1).equals(row.id)&&row.taskId==0,"keyset identity/order");
                }
                OwnerPageRead.Page view=reader.read(after);
                int count=page<3?24:1;
                require(view.status==OwnerPageRead.Status.OBSERVED&&view.rows.size()==count&&view.hasMore==(page<3),"bounded projection page "+page);
                for(int n=0;n<count;n++){
                    OwnerPageRead.Row row=view.rows.get(n);
                    require(row.index==n&&row.result==BoundedDownloadRead.Result.NO_TRANSPORT_ROW&&row.transport==DownloadModel.Transport.UNKNOWN
                        &&row.progressBytes==-1&&row.totalBytes==-1,"must not invent transfer state");
                }
                after=raw.get(count-1).id;seen+=count;
            }
            require(seen==49&&source.page(after).isEmpty(),"page termination");
            // Validate real Room keyset movement while remaining inside the
            // original rollback-only outer transaction. No committed rows.
            OwnerPageRead.Page beforeShift=reader.read(null);
            require(beforeShift.status==OwnerPageRead.Status.OBSERVED&&beforeShift.rows.size()==24,
                "pre-shift real Room page");
            String originalKey=beforeShift.rows.get(0).displayKey;
            require(originalKey.matches("[0-9a-f]{64}"),"opaque real Room display key");
            Object earlier=item.getConstructor().newInstance();
            item.getField("id").set(earlier,fixtureId(0));
            item.getField("title").set(earlier,"CP disposable earlier key");
            item.getField("downloadTaskId").setInt(earlier,0);
            item.getField("collectionID").setInt(earlier,0);
            item.getField("path").set(earlier,"");
            item.getField("qualityName").set(earlier,"fixture");
            ((Callable<?>)insert.newInstance(dao,earlier)).call();
            OwnerPageRead.Page afterShift=reader.read(null);
            require(afterShift.status==OwnerPageRead.Status.OBSERVED&&afterShift.rows.size()==24&&afterShift.hasMore,
                "post-shift real Room page");
            require(afterShift.rows.get(1).displayKey.equals(originalKey),
                "same real Room row changed opaque identity after insertion");
            require(!afterShift.rows.get(0).displayKey.equals(originalKey),
                "newly inserted row reused another identity");
            require(beforeShift.rows.get(0).displayKey.equals(originalKey),
                "previous immutable page was mutated");
            OwnerPageRead.Page anotherLifetime=new OwnerPageRead(source).read(null);
            require(anotherLifetime.status==OwnerPageRead.Status.OBSERVED&&
                anotherLifetime.rows.size()==24&&
                !anotherLifetime.rows.get(1).displayKey.equals(originalKey),
                "reader-lifetime keys were not isolated");
        } finally {
            // Never call Room.setTransactionSuccessful (vt3.n) for the outer transaction.
            end.invoke(room);
        }
        source.checkOwnerWorker();
        require(source.page(null).isEmpty(),"rollback leaked fixture rows");
    }
    private long transferCount(Object room,Class<?> roomType)throws Exception{
        Class<?> qt=Class.forName("com.shabakaty.downloader.yt3");
        Object query=qt.getMethod("a",String.class,int.class).invoke(null,"SELECT COUNT(*) FROM Downloads",0);
        android.database.Cursor c=null;
        try{
            c=(android.database.Cursor)Class.forName("com.shabakaty.downloader.lh0")
                .getMethod("b",roomType,Class.forName("com.shabakaty.downloader.bi4"),boolean.class,CancellationSignal.class)
                .invoke(null,room,query,false,null);
            require(c.moveToFirst(),"count cursor");
            return c.getLong(0);
        }finally{
            try{if(c!=null)c.close();}finally{qt.getMethod("c").invoke(query);}
        }
    }
    private String transferId(int n){return String.format(Locale.ROOT,"cp-transfer-probe-%03d",n);}
    private int task(int n){return 710000+n;}
    private void insertTransfer(Object adapter,Class<?> row,Class<?> state,int n,String id,long progress,long total,String status)throws Exception{
        Object entry=row.getConstructor().newInstance();
        row.getField("r").setInt(entry,task(n));row.getField("s").set(entry,id);
        row.getField("t").setLong(entry,progress);row.getField("y").setLong(entry,total);
        for(String x:new String[]{"u","v","w","x","B"})row.getField(x).set(entry,"");
        Object match=null;
        for(Object e:state.getEnumConstants())if(((Enum<?>)e).name().equals(status))match=e;
        require(match!=null,"status enum missing");
        row.getField("z").set(entry,match);
        Class.forName("com.shabakaty.downloader.x31").getMethod("f",Object.class).invoke(adapter,entry);
    }
    private void checkTransfer(OwnerPageRead.Row row,int index,BoundedDownloadRead.Result outcome,
                               DownloadModel.Transport state,long progress,long total){
        require(row.index==index&&row.result==outcome&&row.transport==state&&row.progressBytes==progress&&row.totalBytes==total,
            "transfer projection index="+index+" outcome="+row.result+" state="+row.transport+" progress="+row.progressBytes+" total="+row.totalBytes);
    }
    /** Two rollback-only transactions on the original cached Room owners.
     * No network, actual download scheduling, conversion, media files or durable rows. */
    private void transferFixture(Context app,ExistingOwnerPageSource source)throws Exception{
        require(fixture&&Build.VERSION.SDK_INT==35&&
            ("sdk_gphone64_x86_64".equals(Build.PRODUCT)||Build.FINGERPRINT.contains("/sdk_gphone64_x86_64/")||
             Build.HARDWARE.equals("ranchu")||Build.HARDWARE.equals("goldfish")),"fixture is emulator-only");
        source.checkOwnerWorker();
        require(source.page(null).isEmpty(),"refuse populated app database");
        Class<?> rt=Class.forName("com.shabakaty.downloader.vt3");
        Class<?> at=Class.forName("com.shabakaty.downloader.kw0");
        Object ad=Class.forName("com.shabakaty.cinemana.ca1.DownloadStore263").getMethod("appDao",Context.class).invoke(null,app);
        Object ar=at.getField("a").get(ad);
        Method exp=Class.forName("com.shabakaty.cinemana.ca1.Restart108").getMethod("exp",String.class,Object[].class);
        Object td=exp.invoke(null,"getDownloadsDao",new Object[]{app,app});
        Class<?> tt=Class.forName("com.shabakaty.downloader.lz0");
        require(tt.isInstance(td),"unexpected transfer DAO");
        require(td==exp.invoke(null,"getDownloadsDao",new Object[]{app,app}),"transfer DAO cache not shared");
        Object tr=tt.getField("a").get(td),adapter=tt.getField("b").get(td);
        require(rt.isInstance(ar)&&rt.isInstance(tr)&&ar!=tr,"wrong Room owners");
        require(transferCount(tr,rt)==0,"refuse nonempty transfer database");
        Class<?> item=Class.forName("com.shabakaty.cinemana.data.db.downloads.CinemanaDownloadItem");
        Constructor<?> insert=Class.forName("com.shabakaty.downloader.kw0$c").getConstructor(at,item);
        Class<?> row=Class.forName("com.shabakaty.downloader.pw0"),state=Class.forName("com.shabakaty.downloader.xc4");
        Method begin=rt.getMethod("i"),end=rt.getMethod("j");
        begin.invoke(ar);
        try{
            require(source.page(null).isEmpty(),"app table changed before fixture");
            begin.invoke(tr);
            try{
                require(transferCount(tr,rt)==0,"transfer table changed before fixture");
                for(int n=1;n<=7;n++){
                    Object entry=item.getConstructor().newInstance();
                    item.getField("id").set(entry,transferId(n));item.getField("title").set(entry,"CP transfer fixture "+n);
                    item.getField("downloadTaskId").setInt(entry,n==7?0:task(n));
                    item.getField("collectionID").setInt(entry,0);
                    item.getField("path").set(entry,"");item.getField("qualityName").set(entry,"fixture");
                    ((Callable<?>)insert.newInstance(ad,entry)).call();
                }
                insertTransfer(adapter,row,state,1,transferId(1),250,1000,"PROGRESS");
                insertTransfer(adapter,row,state,2,transferId(2),1000,1000,"COMPLETED");
                insertTransfer(adapter,row,state,3,"cp-transfer-probe-mismatch",400,1000,"PROGRESS");
                insertTransfer(adapter,row,state,5,transferId(5),1100,1000,"PROGRESS");
                insertTransfer(adapter,row,state,6,transferId(6),100,0,"PAUSED");
                require(transferCount(tr,rt)==5,"fixture row count");
                BoundedDownloadRead.TransferRow direct=source.transfer(task(1));
                require(direct!=null&&direct.taskId==task(1)&&direct.externalId.equals(transferId(1))&&direct.progress==250&&direct.total==1000&&direct.status==DownloadModel.Transport.PROGRESS,"original transfer read not exact");
                OwnerPageRead reader=new OwnerPageRead(source);
                OwnerPageRead.Page first=reader.read(null);
                require(first.status==OwnerPageRead.Status.OBSERVED&&!first.hasMore&&first.rows.size()==7,"transfer first page");
                checkTransfer(first.rows.get(0),0,BoundedDownloadRead.Result.OBSERVED,DownloadModel.Transport.PROGRESS,250,1000);
                checkTransfer(first.rows.get(1),1,BoundedDownloadRead.Result.OBSERVED,DownloadModel.Transport.COMPLETED,1000,1000);
                checkTransfer(first.rows.get(2),2,BoundedDownloadRead.Result.CONFLICT,DownloadModel.Transport.UNKNOWN,-1,-1);
                checkTransfer(first.rows.get(3),3,BoundedDownloadRead.Result.NO_TRANSPORT_ROW,DownloadModel.Transport.UNKNOWN,-1,-1);
                checkTransfer(first.rows.get(4),4,BoundedDownloadRead.Result.CONFLICT,DownloadModel.Transport.UNKNOWN,-1,-1);
                checkTransfer(first.rows.get(5),5,BoundedDownloadRead.Result.OBSERVED,DownloadModel.Transport.PAUSED,100,-1);
                checkTransfer(first.rows.get(6),6,BoundedDownloadRead.Result.NO_TRANSPORT_ROW,DownloadModel.Transport.UNKNOWN,-1,-1);
                insertTransfer(adapter,row,state,1,transferId(1),750,1000,"PROGRESS");
                OwnerPageRead.Page fresh=reader.read(null);
                require(fresh.status==OwnerPageRead.Status.OBSERVED&&fresh.rows.size()==7,"transfer refresh page");
                checkTransfer(fresh.rows.get(0),0,BoundedDownloadRead.Result.OBSERVED,DownloadModel.Transport.PROGRESS,750,1000);
                checkTransfer(first.rows.get(0),0,BoundedDownloadRead.Result.OBSERVED,DownloadModel.Transport.PROGRESS,250,1000);
                require(transferCount(tr,rt)==5,"refresh unexpectedly added rows");
                // A second external identity with the SAME task_id is legal
                // under the original composite PK. Do not choose either row.
                insertTransfer(adapter,row,state,1,"cp-transfer-probe-duplicate",900,1000,"PROGRESS");
                require(transferCount(tr,rt)==6,"duplicate task fixture count");
                BoundedDownloadRead.TransferRow ambiguous=source.transfer(task(1));
                require(ambiguous!=null&&ambiguous.externalId==null&&ambiguous.status==null&&
                    ambiguous.progress==-1&&ambiguous.total==-1,"ambiguous task leaked identity");
                // Third duplicate must not consume the separate task's quota.
                insertTransfer(adapter,row,state,1,"cp-transfer-probe-third",950,1000,"PROGRESS");
                List<Integer> batchTasks=new ArrayList<>();
                for(int n=1;n<=24;n++)batchTasks.add(task(n));
                Map<Integer,BoundedDownloadRead.TransferRow> batched=source.transferPage(batchTasks);
                require(batched.size()==5&&batched.get(task(1)).externalId==null&&
                    batched.get(task(2)).status==DownloadModel.Transport.COMPLETED&&
                    batched.get(task(2)).progress==1000&&batched.get(task(4))==null,"bounded batch collision isolation");
                require(source.transferPage(Collections.emptyList()).isEmpty(),"empty batch");
                try{source.transferPage(Collections.nCopies(25,task(1)));throw new AssertionError("oversize batch accepted");}
                catch(IllegalArgumentException expected){ }
                require(transferCount(tr,rt)==7,"third duplicate missing");
                OwnerPageRead.Page collision=reader.read(null);
                require(collision.status==OwnerPageRead.Status.OBSERVED&&collision.rows.size()==7,"collision page");
                checkTransfer(collision.rows.get(0),0,BoundedDownloadRead.Result.CONFLICT,DownloadModel.Transport.UNKNOWN,-1,-1);
                checkTransfer(collision.rows.get(1),1,BoundedDownloadRead.Result.OBSERVED,DownloadModel.Transport.COMPLETED,1000,1000);
                checkTransfer(fresh.rows.get(0),0,BoundedDownloadRead.Result.OBSERVED,DownloadModel.Transport.PROGRESS,750,1000);
            }finally{end.invoke(tr);}
        }finally{end.invoke(ar);}
        source.checkOwnerWorker();
        require(source.page(null).isEmpty()&&transferCount(tr,rt)==0&&source.transfer(task(1))==null,"rollback leaked fixture");
    }
    @Override public void onStart(){
        Bundle result=new Bundle();
        try{
            Context app=getTargetContext().getApplicationContext();
            require(app instanceof Application,"not application context");
            require("com.cinemana.pro".equals(app.getPackageName())&&app.getPackageName().equals(Application.getProcessName()),"not real owner process");
            require("com.shabakaty.cinemana.CinemanaApplication".equals(app.getClass().getName()),"wrong original Application");
            require(Looper.myLooper()!=Looper.getMainLooper(),"instrumentation on main");
            ExistingOwnerPageSource source=new ExistingOwnerPageSource(app);
            AtomicBoolean rejected=new AtomicBoolean(false);
            runOnMainSync(()->{
                try{source.checkOwnerWorker();}
                catch(IllegalStateException expected){rejected.set("worker required".equals(expected.getMessage()));}
                catch(Exception e){throw new RuntimeException(e);}
            });
            require(rejected.get(),"main thread not rejected");
            // Exact original Room linkage and raw SELECT must succeed, not merely
            // a model result that hides an exception as UNAVAILABLE.
            source.checkOwnerWorker();
            java.util.List<BoundedDownloadRead.AppRow> raw=source.page(null);
            require(raw!=null&&raw.size()<=25,"raw page limit");
            OwnerPageRead reader=new OwnerPageRead(source);
            OwnerPageRead.Page first=reader.read(null);
            require(first.status==OwnerPageRead.Status.OBSERVED,"original Room page not observed: "+first.status);
            require(first.rows.size()<=24,"projected page limit");
            OwnerPageRead.Page second=reader.read(null);
            require(second.status==OwnerPageRead.Status.OBSERVED&&second.rows.size()<=24,"repeat read unavailable");
            String marker="CP_REAL_OWNER_ROOM_READ_PASS pid="+android.os.Process.myPid()+" raw="+raw.size()+" first="+first.rows.size()+" second="+second.rows.size()+" main_thread_blocked=1\n";
            if(fixture){
                populated(app,source);
                marker+="CP_REAL_OWNER_KEYS_SHIFT_PASS rows=49 shiftedIndex=1 stable=verified readerIsolation=verified rollback=verified\n";
                transferFixture(app,source);
                marker+="CP_REAL_OWNER_TRANSFER_BATCH_PASS tasks=24 limitPerTask=2 thirdDuplicate=isolated rollback=verified\n";
                marker+="CP_REAL_OWNER_TASK_COLLISION_PASS limit=2 conflict=1 rollback=verified\n";
                marker+="CP_REAL_OWNER_TRANSFER_PASS rows=7 transport=5 progress=250,750 conflicts=2 missing=2 rollback=verified\n";
                marker+="CP_REAL_OWNER_ROOM_POPULATED_PASS rows=49 pages=3 size=24,24,1 rollback=verified no_transport_rows=49\n";
            }
            result.putString("stream",marker);
            finish(Activity.RESULT_OK,result);
        }catch(Throwable e){result.putString("stream","CP_REAL_OWNER_ROOM_READ_FAIL "+android.util.Log.getStackTraceString(e));finish(Activity.RESULT_CANCELED,result);}
    }
}
