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
        } finally {
            // Never call Room.setTransactionSuccessful (vt3.n) for the outer transaction.
            end.invoke(room);
        }
        source.checkOwnerWorker();
        require(source.page(null).isEmpty(),"rollback leaked fixture rows");
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
                marker+="CP_REAL_OWNER_ROOM_POPULATED_PASS rows=49 pages=3 size=24,24,1 rollback=verified no_transport_rows=49\n";
            }
            result.putString("stream",marker);
            finish(Activity.RESULT_OK,result);
        }catch(Throwable e){result.putString("stream","CP_REAL_OWNER_ROOM_READ_FAIL "+android.util.Log.getStackTraceString(e));finish(Activity.RESULT_CANCELED,result);}
    }
}
