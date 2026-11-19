package com.alwansan.cinemana.nativeuilab.test;
import android.app.*;
import android.content.*;
import android.os.*;
import android.view.*;
import android.widget.*;
import java.util.*;
public final class NativeLabTest extends Instrumentation {
    @Override public void onCreate(Bundle b){super.onCreate(b);start();}
    private void check(boolean b,String name){if(!b)throw new AssertionError(name);}
    private View find(Activity a,String tag){return a.getWindow().getDecorView().findViewWithTag(tag);}
    private void tap(Activity a,String tag){runOnMainSync(()->{View v=find(a,tag);check(v!=null&&v.performClick(),tag);});}
    private int loadPid(Activity a){ActivityManager am=(ActivityManager)a.getSystemService(Context.ACTIVITY_SERVICE);for(ActivityManager.RunningServiceInfo s:am.getRunningServices(100))if(s.service.getClassName().equals("com.alwansan.cinemana.nativeuilab.LabLoadService"))return s.pid;return 0;}
    private static long percentile(List<Long> a,double p){Collections.sort(a);return a.get(Math.min(a.size()-1,(int)Math.ceil(a.size()*p)-1));}
    private String measure(Activity a,String label)throws Exception{
        HandlerThread worker=new HandlerThread("frame-metrics");worker.start();
        List<Long> frames=Collections.synchronizedList(new ArrayList<Long>());
        Window.OnFrameMetricsAvailableListener listener=(win,m,dropped)->{long v=m.getMetric(FrameMetrics.TOTAL_DURATION);if(v>0&&frames.size()<4096)frames.add(v);};
        runOnMainSync(()->a.getWindow().addOnFrameMetricsAvailableListener(listener,new Handler(worker.getLooper())));
        ArrayList<Long> callbacks=new ArrayList<>();
        try{
            for(int k=0;k<25;k++){
                final int route=k%5;long t=SystemClock.elapsedRealtime();
                runOnMainSync(()->{View b=find(a,"route-"+route);check(b.performClick(),"click route");check(find(a,"active-"+route)!=null,"route active");});
                callbacks.add(SystemClock.elapsedRealtime()-t);
                Thread.sleep(80);
                if(route==3)runOnMainSync(()->{ListView l=(ListView)find(a,"rows");l.smoothScrollBy(150,150);});
            }
            Thread.sleep(500);
        }finally{runOnMainSync(()->a.getWindow().removeOnFrameMetricsAvailableListener(listener));worker.quitSafely();worker.join(3000);}
        ArrayList<Long> measures=new ArrayList<>(frames);check(measures.size()>=10,"insufficient real frame samples");
        long slow=measures.stream().filter(n->n>16666667L).count();
        return label+" frames="+measures.size()+" durationP95Ns="+percentile(measures,.95)+" durationP99Ns="+percentile(measures,.99)+" over16_67ms="+slow+" callbackP95Ms="+percentile(callbacks,.95);
    }
    @Override public void onStart(){
        Bundle out=new Bundle();Activity a=null;Intent load=new Intent().setClassName("com.alwansan.cinemana.nativeuilab","com.alwansan.cinemana.nativeuilab.LabLoadService");
        try{
            a=startActivitySync(new Intent().setClassName("com.alwansan.cinemana.nativeuilab","com.alwansan.cinemana.nativeuilab.NativeLabActivity").addFlags(Intent.FLAG_ACTIVITY_NEW_TASK));
            final Activity act=a;
            for(int i=0;i<5;i++)tap(a,"route-"+i);
            tap(a,"route-3");runOnMainSync(()->check(((ListView)find(act,"rows")).getAdapter().getCount()==24,"page size"));
            for(int i=1;i<19;i++)tap(a,"next");
            runOnMainSync(()->check(((ListView)find(act,"rows")).getAdapter().getCount()==20&&find(act,"page-18")!=null&&!find(act,"next").isEnabled(),"last page"));
            for(int i=1;i<19;i++)tap(a,"prev");
            tap(a,"stress");Thread.sleep(500);
            runOnMainSync(()->{ListView l=(ListView)find(act,"rows");check(l.getAdapter().getItemId(0)==0&&l.getAdapter().hasStableIds(),"stable IDs");});
            String idle=measure(a,"CP_NATIVE_UI_IDLE");
            runOnMainSync(()->act.startService(load));int pid=0;
            for(int i=0;i<30&&pid<=0;i++){Thread.sleep(200);pid=loadPid(a);}
            check(pid>0&&pid!=android.os.Process.myPid(),"separate load process");
            long started=SystemClock.elapsedRealtime();String pressure=measure(a,"CP_NATIVE_UI_LOAD");
            check(loadPid(a)==pid&&SystemClock.elapsedRealtime()-started<40000,"worker overlap window");
            out.putString("stream",idle+"\n"+pressure+" workerPid="+pid+" uiPid="+android.os.Process.myPid()+"\nCP_NATIVE_UI_LAB_PASS\n");finish(Activity.RESULT_OK,out);
        }catch(Throwable e){out.putString("stream","CP_NATIVE_UI_LAB_FAIL "+e.getClass().getSimpleName()+": "+e.getMessage()+"\n");finish(Activity.RESULT_CANCELED,out);}
        finally{if(a!=null){final Activity act=a;runOnMainSync(()->{act.stopService(load);act.finish();});}}
    }
}
