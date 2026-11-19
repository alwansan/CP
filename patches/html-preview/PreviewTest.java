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
    @Override public void onStart(){
        Bundle result=new Bundle();
        try{
            Intent i=new Intent().setClassName("com.alwansan.cinemana.htmlpreview","com.alwansan.cinemana.htmlpreview.PreviewActivity").addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            Activity a=startActivitySync(i);WebView[] ref={null};
            runOnMainSync(()->ref[0]=find(a.getWindow().getDecorView()));
            WebView w=ref[0];check(w!=null,"WebView missing");
            boolean ok=false;
            for(int n=0;n<40;n++){if("true".equals(eval(w,"!!document.querySelector('#preview-status[data-connected=true]')"))){ok=true;break;}Thread.sleep(500);}
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
            // Start a separate process with bounded synthetic CPU and fsync load.
            Intent load=new Intent().setClassName("com.alwansan.cinemana.htmlpreview","com.alwansan.cinemana.htmlpreview.PreviewLoadService");
            runOnMainSync(()->a.startService(load));
            Thread.sleep(800);
            check("true".equals(eval(w,"window.__cpFrames=[];window.__cpLast=performance.now();window.__cpMeasure=true;requestAnimationFrame(function tick(t){if(!window.__cpMeasure)return;window.__cpFrames.push(t-window.__cpLast);window.__cpLast=t;requestAnimationFrame(tick)});true")),"frame sampler");
            long worst=0;
            for(int k=0;k<25;k++){
                String route=new String[]{"home","categories","search","downloads","account"}[k%5];
                long start=SystemClock.elapsedRealtime();
                check("true".equals(eval(w,"document.querySelector('#dock [data-route="+route+"]').click(); document.querySelector('#dock [data-route="+route+"]').getAttribute('aria-current')==='true'")),"load route "+route);
                worst=Math.max(worst,SystemClock.elapsedRealtime()-start);
                Thread.sleep(80);
            }
            Thread.sleep(400);
            String metrics=eval(w,"window.__cpMeasure=false;JSON.stringify({frames:window.__cpFrames.length,maxGap:Math.max(...window.__cpFrames),p95:window.__cpFrames.slice().sort((a,b)=>a-b)[Math.floor(window.__cpFrames.length*.95)]})");
            result.putString("stream","CP_HTML_PREVIEW_LOAD_METRICS routeWorstMs="+worst+" frames="+metrics+"\n");
            check(worst<2000,"navigation stall under synthetic load");
            runOnMainSync(()->{a.stopService(load);a.finish();});
            result.putString("stream",result.getString("stream","")+"CP_HTML_PREVIEW_PASS: bootstrap, local origin, five tabs, mock disclosure\n");
            finish(Activity.RESULT_OK,result);
        }catch(Throwable e){result.putString("stream","CP_HTML_PREVIEW_FAIL: "+e.getClass().getSimpleName()+": "+e.getMessage()+"\n");finish(Activity.RESULT_CANCELED,result);}
    }
}
