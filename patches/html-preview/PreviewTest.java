package com.alwansan.cinemana.htmlpreview.test;
import android.app.*;
import android.content.*;
import android.os.*;
import android.view.*;
import android.webkit.*;
import java.util.concurrent.*;
public final class PreviewTest extends Instrumentation {
    @Override public void onCreate(Bundle b){super.onCreate(b);start();}
    private WebView find(View v){
        if(v instanceof WebView)return (WebView)v;
        if(v instanceof ViewGroup){ViewGroup g=(ViewGroup)v;for(int i=0;i<g.getChildCount();i++){WebView w=find(g.getChildAt(i));if(w!=null)return w;}}
        return null;
    }
    private String eval(WebView w,String js)throws Exception{
        CountDownLatch latch=new CountDownLatch(1);String[] result={null};
        runOnMainSync(()->w.evaluateJavascript(js,x->{result[0]=x;latch.countDown();}));
        if(!latch.await(8,TimeUnit.SECONDS))throw new AssertionError("JS timeout");
        return result[0];
    }
    private void check(boolean b,String label){if(!b)throw new AssertionError(label);}
    private boolean connected(WebView w)throws Exception{
        for(int n=0;n<50;n++){
            if("true".equals(eval(w,"!!document.querySelector(\'#preview-status[data-connected=true]\') && window.__cpPreviewPortReady===true")))return true;
            Thread.sleep(300);
        }
        return false;
    }
    private String measure(WebView w,String label)throws Exception{
        check("true".equals(eval(w,"window.__cpFrames=[];window.__cpLast=performance.now();window.__cpMeasure=true;requestAnimationFrame(function tick(t){if(!window.__cpMeasure)return;window.__cpFrames.push(t-window.__cpLast);window.__cpLast=t;requestAnimationFrame(tick)});true")),"frame sampler "+label);
        long worst=0,startAll=SystemClock.elapsedRealtime();
        long[] latency=new long[25];
        for(int k=0;k<25;k++){
            String route=new String[]{"home","categories","search","downloads","account"}[k%5];
            long t=SystemClock.elapsedRealtime();
            check("true".equals(eval(w,"document.querySelector('#dock [data-route="+route+"]').click(); document.querySelector('#dock [data-route="+route+"]').getAttribute('aria-current')==='true'")),"route "+label+" "+route);
            latency[k]=SystemClock.elapsedRealtime()-t;
            worst=Math.max(worst,latency[k]);Thread.sleep(80);
        }
        Thread.sleep(400);
        String metrics=eval(w,"window.__cpMeasure=false;JSON.stringify({frames:window.__cpFrames.length,maxGap:Math.max(...window.__cpFrames),p95:window.__cpFrames.slice().sort((a,b)=>a-b)[Math.floor(window.__cpFrames.length*.95)],over50:window.__cpFrames.filter(x=>x>50).length})");
        check("true".equals(eval(w,"window.__cpFrames.length>=10 && window.__cpFrames.every(x=>Number.isFinite(x))")),"frame sampler insufficient "+label);
        check(worst<2000,"navigation stall "+label);
        java.util.Arrays.sort(latency);
        return label+" routeWorstMs="+worst+" routeP95Ms="+latency[23]+" elapsedMs="+(SystemClock.elapsedRealtime()-startAll)+" frames="+metrics;
    }
    private int loadPid(Activity a){
        ActivityManager am=(ActivityManager)a.getSystemService(Context.ACTIVITY_SERVICE);
        for(ActivityManager.RunningServiceInfo s:am.getRunningServices(100)){
            if(s.service.getClassName().equals("com.alwansan.cinemana.htmlpreview.PreviewLoadService"))return s.pid;
        }return 0;
    }
    @Override public void onStart(){
        Bundle result=new Bundle();
        try{
            Intent i=new Intent().setClassName("com.alwansan.cinemana.htmlpreview","com.alwansan.cinemana.htmlpreview.PreviewActivity").addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            Activity a=startActivitySync(i);WebView[] ref={null};
            runOnMainSync(()->ref[0]=find(a.getWindow().getDecorView()));
            WebView w=ref[0];check(w!=null,"WebView missing");
            boolean ok=connected(w);
            check(ok,"bootstrap unavailable: "+eval(w,"JSON.stringify({href:location.href,ready:document.readyState,banner:document.querySelector(\'#preview-status\')?.textContent||null,client:typeof CPBridgeClient,main:!!document.querySelector(\'#main .hero\')})"));
            check("true".equals(eval(w,"location.origin==='https://appassets.androidplatform.net' && document.querySelectorAll('#dock [data-route]').length===5")),"origin or dock");
            for(String route:new String[]{"categories","search","downloads","account","home"}){
                check("true".equals(eval(w,"document.querySelector('#dock [data-route="+route+"]').click(); document.querySelector('#dock [data-route="+route+"]').getAttribute('aria-current')==='true'")),"route "+route);
            }
            boolean denied=false;
            for(int n=0;n<20;n++){if("true".equals(eval(w,"document.querySelector('#preview-status').dataset.readGuard==='passed'"))){denied=true;break;}Thread.sleep(200);}
            check(denied,"native action allowlist");
            check("true".equals(eval(w,"window.__cpFetchBlocked=false;fetch('https://example.invalid/probe').then(()=>{},()=>window.__cpFetchBlocked=true);true")),"CSP probe start");
            Thread.sleep(500);
            check("true".equals(eval(w,"window.__cpFetchBlocked===true")),"remote fetch blocked");
            check("true".equals(eval(w,"typeof window.Android==='undefined' && typeof window.Cinemana==='undefined'")),"unexpected bridge");
            check("true".equals(eval(w,"document.querySelector('#preview-status').textContent.includes('بيانات وهمية')")),"mock disclosure");
            // A full document reload must create a new channel, never reuse the old port.
            runOnMainSync(()->w.reload());
            Thread.sleep(900);
            check(connected(w),"reload bootstrap unavailable");
            // Exercise the bounded synthetic download list before the CPU/fsync test.
            check("true".equals(eval(w,"document.querySelector('#dock [data-route=downloads]').click();document.querySelector('[data-demo-toggle]').click();demoRows.size===452 && document.querySelectorAll('[data-demo-row]').length===24")),"bounded download page");
            check("true".equals(eval(w,"window.__cpRow=document.querySelector('[data-demo-row=d1]');window.__cpPage=document.querySelector('#main .page');clearInterval(demoTimer);demoTimer=null;demoApplyBatch([{id:'d1',progress:37}])")),"queued progress");
            Thread.sleep(350);
            check("true".equals(eval(w,"window.__cpRow===document.querySelector('[data-demo-row=d1]') && window.__cpPage===document.querySelector('#main .page') && window.__cpRow.querySelector('.progress').style.getPropertyValue('--progress')==='37%'")),"in-place download progress");
            check("true".equals(eval(w,"document.querySelector('[data-demo-toggle]').click();document.querySelectorAll('[data-demo-row]').length===3")),"restore fixture");
            // Same route sequence with and without CPU/fsync service, in one emulator process.
            check("true".equals(eval(w,"document.querySelector('#dock [data-route=account]').click();document.querySelector('[data-sub=subtitles]').click();document.querySelector('#demo-setting-size').value='30';subtitleSample();document.querySelector('#subtitle-sample').style.fontSize==='30px'")),"subtitle preview");
            check("true".equals(eval(w,"document.querySelector('[data-action=save-demo-settings]').click();document.querySelector('#dock [data-route=home]').click();true")),"save preview only");
            String idle=measure(w,"CP_HTML_PREVIEW_IDLE_METRICS");
            Intent load=new Intent().setClassName("com.alwansan.cinemana.htmlpreview","com.alwansan.cinemana.htmlpreview.PreviewLoadService");
            runOnMainSync(()->a.startService(load));
            int pid=0;for(int n=0;n<30&&pid<=0;n++){Thread.sleep(200);pid=loadPid(a);}
            check(pid>0&&pid!=android.os.Process.myPid(),"separate load process");
            long loadStart=SystemClock.elapsedRealtime();
            String pressure=measure(w,"CP_HTML_PREVIEW_LOAD_METRICS");
            check(loadPid(a)==pid&&SystemClock.elapsedRealtime()-loadStart<40000,"load overlap window");
            result.putString("stream",idle+"\n"+pressure+" loadPid="+pid+" uiPid="+android.os.Process.myPid()+"\n");
            runOnMainSync(()->{a.stopService(load);a.finish();});
            result.putString("stream",result.getString("stream","")+"CP_HTML_PREVIEW_PASS: bootstrap, local origin, five tabs, mock disclosure\n");
            finish(Activity.RESULT_OK,result);
        }catch(Throwable e){result.putString("stream","CP_HTML_PREVIEW_FAIL: "+e.getClass().getSimpleName()+": "+e.getMessage()+"\n");finish(Activity.RESULT_CANCELED,result);}
    }
}
