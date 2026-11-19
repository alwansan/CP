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
            check(ok,"bootstrap unavailable");
            check("true".equals(eval(w,"location.origin==='https://appassets.androidplatform.net' && document.querySelectorAll('#dock [data-route]').length===5")),"origin or dock");
            for(String route:new String[]{"categories","search","downloads","account","home"}){
                check("true".equals(eval(w,"document.querySelector('#dock [data-route="+route+"]').click(); document.querySelector('#dock [data-route="+route+"]').getAttribute('aria-current')==='page'")),"route "+route);
            }
            check("true".equals(eval(w,"typeof window.Android==='undefined' && typeof window.Cinemana==='undefined'")),"unexpected bridge");
            check("true".equals(eval(w,"document.querySelector('#preview-status').textContent.includes('بيانات وهمية')")),"mock disclosure");
            runOnMainSync(()->a.finish());
            result.putString("stream","CP_HTML_PREVIEW_PASS: bootstrap, local origin, five tabs, mock disclosure\n");
            finish(Activity.RESULT_OK,result);
        }catch(Throwable e){result.putString("stream","CP_HTML_PREVIEW_FAIL: "+e.getClass().getSimpleName()+": "+e.getMessage()+"\n");finish(Activity.RESULT_CANCELED,result);}
    }
}
