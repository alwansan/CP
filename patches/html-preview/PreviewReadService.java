package com.alwansan.cinemana.htmlpreview;
import android.app.Service;
import android.content.Intent;
import android.os.*;
import com.shabakaty.cinemana.htmlbridge.model.BoundedDownloadRead;
import com.shabakaty.cinemana.htmlbridge.model.DownloadModel;
import org.json.*;
import java.util.*;
/** Private separate-process fixture. Never opens production DB or accepts user IDs. */
public final class PreviewReadService extends Service {
    public static final int READ=1, RESULT=2;
    private HandlerThread worker;
    private Messenger endpoint;
    @Override public void onCreate(){
        super.onCreate();
        worker=new HandlerThread("cp-preview-read",android.os.Process.THREAD_PRIORITY_BACKGROUND);worker.start();
        endpoint=new Messenger(new Handler(worker.getLooper(),m->{
            if(m.what!=READ||m.sendingUid!=android.os.Process.myUid()||m.replyTo==null)return true;
            Message response=Message.obtain(null,RESULT,m.arg1,0);
            Bundle payload=new Bundle();
            try{
                List<String> ids=new ArrayList<>();
                for(int i=1;i<=24;i++)ids.add("fixture-"+i);
                BoundedDownloadRead read=new BoundedDownloadRead(new BoundedDownloadRead.Source(){
                    public void checkWorker(){if(Looper.myLooper()==Looper.getMainLooper())throw new IllegalStateException("main");}
                    public BoundedDownloadRead.AppRow app(String id){int n=Integer.parseInt(id.substring(8));return new BoundedDownloadRead.AppRow(id,n,0,"fixture",null);}
                    public BoundedDownloadRead.TransferRow transfer(int task){return new BoundedDownloadRead.TransferRow("fixture-"+task,task,task*10L,1000,DownloadModel.Transport.PROGRESS);}
                });
                JSONArray rows=new JSONArray();
                for(BoundedDownloadRead.Observation o:read.read(ids))rows.put(new JSONObject().put("index",o.index).put("observation",o.result.name()).put("transport",o.transport.name()).put("progressBytes",o.progressBytes).put("totalBytes",o.totalBytes));
                payload.putString("json",new JSONObject().put("mode","synthetic-native-read").put("workerPid",android.os.Process.myPid()).put("rows",rows).toString());
            }catch(Exception e){payload.putString("json","");}
            response.setData(payload);
            try{m.replyTo.send(response);}catch(RemoteException ignored){}
            return true;
        }));
    }
    @Override public IBinder onBind(Intent i){return endpoint.getBinder();}
    @Override public void onDestroy(){if(worker!=null)worker.quitSafely();super.onDestroy();}
}
