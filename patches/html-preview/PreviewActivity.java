package com.alwansan.cinemana.htmlpreview;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.IBinder;
import android.os.RemoteException;
import android.content.*;
import android.net.Uri;
import android.webkit.*;
import android.view.ViewGroup;
import android.graphics.Color;
import android.widget.TextView;
import android.util.Log;
import java.io.*;
import java.util.*;
import org.json.JSONObject;

/** Standalone synthetic preview; no remote content, real account, DAO or downloader. */
public final class PreviewActivity extends Activity {
    static final String ORIGIN="https://appassets.androidplatform.net";
    static final String PAGE=ORIGIN+"/preview/index.html";
    static final String CSP="default-src 'none'; script-src 'self'; style-src 'self' 'unsafe-inline'; img-src 'self' data:; connect-src 'none'; frame-src 'none'; child-src 'none'; object-src 'none'; base-uri 'none'; form-action 'none'; frame-ancestors 'none'; worker-src 'none'";
    private WebView web;
    private ReadCall readCall;
    private int readSerial;
    private WebMessagePort port;
    private boolean sent, probing;
    private int requests, documentGeneration;
    private final Handler main = new Handler(Looper.getMainLooper());
    private static String asset(Uri uri) {
        if(uri==null||!ORIGIN.equals(uri.getScheme()+"://"+uri.getEncodedAuthority())||uri.getEncodedQuery()!=null)return null;
        String p=uri.getEncodedPath();
        if("/preview/index.html".equals(p))return "index.html";
        if("/preview/app.js".equals(p))return "app.js";
        if("/preview/style.css".equals(p))return "style.css";
        if("/preview/bridge-protocol.js".equals(p))return "bridge-protocol.js";
        if("/preview/preview.js".equals(p))return "preview.js";
        return null;
    }
    private static boolean page(String s){return s!=null&&"index.html".equals(asset(Uri.parse(s)));}
    private WebResourceResponse response(String name){
        if(name==null)return denied();
        try{
            String mime=name.endsWith(".html")?"text/html":name.endsWith(".css")?"text/css":"application/javascript";
            Map<String,String> headers=new HashMap<>();
            headers.put("Content-Security-Policy",CSP);headers.put("X-Content-Type-Options","nosniff");
            headers.put("Cache-Control","no-store");headers.put("Referrer-Policy","no-referrer");
            return new WebResourceResponse(mime,"UTF-8",200,"OK",headers,getAssets().open("preview/"+name));
        }catch(IOException e){return denied();}
    }
    private static WebResourceResponse denied(){
        return new WebResourceResponse("text/plain","UTF-8",403,"Forbidden",
            Collections.singletonMap("Cache-Control","no-store"),new ByteArrayInputStream(new byte[0]));
    }
    @Override public void onCreate(Bundle state){
        super.onCreate(state);
        web=new WebView(this);web.setBackgroundColor(Color.rgb(16,19,27));
        WebView.setWebContentsDebuggingEnabled(false);
        WebSettings s=web.getSettings();s.setJavaScriptEnabled(true);s.setDomStorageEnabled(true);
        s.setAllowFileAccess(false);s.setAllowContentAccess(false);
        s.setAllowFileAccessFromFileURLs(false);s.setAllowUniversalAccessFromFileURLs(false);
        // HTTPS asset interception needs WebView network loads enabled; every request is intercepted below.
        s.setBlockNetworkLoads(false);s.setMixedContentMode(WebSettings.MIXED_CONTENT_NEVER_ALLOW);
        s.setJavaScriptCanOpenWindowsAutomatically(false);s.setSupportMultipleWindows(false);
        s.setGeolocationEnabled(false);s.setSaveFormData(false);
        CookieManager.getInstance().setAcceptCookie(false);
        web.setWebChromeClient(new WebChromeClient(){
            @Override public boolean onConsoleMessage(ConsoleMessage m){Log.i("CPPreview","JS "+m.messageLevel()+" line="+m.lineNumber()+" "+m.message());return true;}
        });
        web.setWebViewClient(new WebViewClient(){
            @Override public WebResourceResponse shouldInterceptRequest(WebView v,WebResourceRequest r){
                if(!"GET".equals(r.getMethod()))return denied();
                String name=asset(r.getUrl());
                if(name==null){Log.i("CPPreview","blocked non-asset request");return denied();}
                Log.i("CPPreview","local asset "+name);
                return response(name);
            }
            @Override public boolean shouldOverrideUrlLoading(WebView v,WebResourceRequest r){
                // No navigation to another document or frame. Same-document hashes are local.
                return !r.isForMainFrame()||!page(r.getUrl().toString());
            }
            @Override public boolean shouldOverrideUrlLoading(WebView v,String url){return !page(url);}
            @Override public void onPageStarted(WebView v,String url,android.graphics.Bitmap icon){
                closePort();sent=false;probing=false;requests=0;documentGeneration++;
                if(!page(url)){v.stopLoading();fallback();}
            }
            @Override public void onReceivedError(WebView v,WebResourceRequest r,WebResourceError e){
                if(r.isForMainFrame()){Log.w("CPPreview","main document error code="+e.getErrorCode());closePort();documentGeneration++;probing=false;sent=true;}
            }
            @Override public void onPageFinished(WebView v,String url){
                Log.i("CPPreview","pageFinished local="+page(url)+" current="+page(v.getUrl()));
                if(web!=v||sent||probing||!page(url)||!page(v.getUrl()))return;
                probing=true;
                probeReady(v,documentGeneration,0);
            }
            @Override public boolean onRenderProcessGone(WebView v,RenderProcessGoneDetail detail){
                closePort();documentGeneration++;probing=false;web=null;
                if(v.getParent() instanceof ViewGroup)((ViewGroup)v.getParent()).removeView(v);
                v.destroy();fallback();return true;
            }
        });
        setContentView(web);
        web.loadUrl(PAGE);
    }
    /** onPageFinished may be delivered early by history.replaceState.
     * Never transfer a port until the current main document explicitly reports
     * that the message listener is installed. No wildcard origin, bounded retry,
     * at most one outstanding probe and one transfer per document generation.
     */
    private boolean current(WebView v,int generation){
        return web==v&&documentGeneration==generation&&page(v.getUrl())&&!sent;
    }
    private void probeReady(WebView v,int generation,int attempt){
        if(!current(v,generation))return;
        if(attempt>=50){probing=false;sent=true;Log.w("CPPreview","ready probe exhausted");return;}
        try{
            v.evaluateJavascript("(window.top===window && location.origin==='https://appassets.androidplatform.net' && location.pathname==='/preview/index.html' && window.__cpPreviewPortReady===true)",value->{
                if(!current(v,generation))return;
                if("true".equals(value)){
                    probing=false;sent=true;
                    WebMessagePort[] pair=null;
                    try{
                        pair=v.createWebMessageChannel();
                        port=pair[0];
                        port.setWebMessageCallback(new WebMessagePort.WebMessageCallback(){
                            @Override public void onMessage(WebMessagePort p,WebMessage msg){reply(p,msg);}
                        });
                        v.postWebMessage(new WebMessage("CP_PREVIEW_PORT_V1",new WebMessagePort[]{pair[1]}),Uri.parse(ORIGIN));
                        Log.i("CPPreview","port transferred after ready probe attempt="+attempt);
                    }catch(RuntimeException e){
                        Log.w("CPPreview","port setup failed",e);closePort();
                        if(pair!=null)try{pair[1].close();}catch(RuntimeException ignored){}
                    }
                }else main.postDelayed(()->probeReady(v,generation,attempt+1),100);
            });
        }catch(RuntimeException e){probing=false;sent=true;Log.w("CPPreview","ready probe failed",e);}
    }
    private void reply(WebMessagePort p,WebMessage m){
        if(p!=port)return;
        if(web==null||!page(web.getUrl())||++requests>8){closePort();return;}
        Log.i("CPPreview","native port received");
        String raw=m.getData();
        if(raw==null||raw.length()>1024||m.getPorts()!=null&&m.getPorts().length>0){closePort();return;}
        try{
            JSONObject q=new JSONObject(raw);
            String id=q.opt("id") instanceof String?(String)q.opt("id"):"";
            if(!id.matches("[A-Za-z0-9_-]{1,128}"))return;
            boolean valid=q.length()==4&&Integer.valueOf(1).equals(q.opt("v"))&&q.opt("action") instanceof String
               &&q.optJSONObject("args")!=null&&q.optJSONObject("args").length()==0;
            if(valid&&"downloads.snapshot".equals(q.opt("action"))){startRead(p,id);return;}
            boolean ok=valid&&"app.bootstrap".equals(q.opt("action"));
            JSONObject r=new JSONObject().put("v",1).put("id",id).put("ok",ok).put("status",ok?"RESULT":"FAILED");
            if(ok)r.put("data",new JSONObject().put("mode","synthetic-preview").put("nativeTransport",true).put("writeCommands",false));
            else r.put("code","ACTION_NOT_ALLOWED").put("message","Preview only");
            p.postMessage(new WebMessage(r.toString()));
            Log.i("CPPreview","bootstrap reply ok="+ok);
        }catch(Exception ignored){closePort();}
    }
    // One asynchronous read, bound to the current document and exact reply channel.
    private final class ReadCall implements ServiceConnection {
        final WebMessagePort target;final String id;final int generation,serial;
        boolean bound;
        final Runnable timeout=()->complete(null);
        ReadCall(WebMessagePort p,String id){target=p;this.id=id;generation=documentGeneration;serial=++readSerial;}
        void complete(JSONObject data){
            if(readCall!=this)return;
            cancelRead();
            if(port!=target||generation!=documentGeneration)return;
            sendRead(target,id,data);
        }
        @Override public void onServiceConnected(ComponentName n,IBinder b){
            if(readCall!=this)return;
            Messenger responses=new Messenger(new Handler(Looper.getMainLooper(),m->{
                if(readCall!=this||m.what!=PreviewReadService.RESULT||m.arg1!=serial||m.sendingUid!=android.os.Process.myUid())return true;
                try{
                    String raw=m.getData().getString("json","");
                    if(raw.length()>8192)throw new IllegalArgumentException();
                    JSONObject data=new JSONObject(raw);
                    if(!"synthetic-native-read".equals(data.optString("mode"))||data.optInt("workerPid",0)<=0||data.optInt("workerPid")==android.os.Process.myPid()||data.getJSONArray("rows").length()!=24)throw new IllegalArgumentException();
                    complete(data);
                }catch(Exception e){complete(null);}
                return true;
            }));
            Message request=Message.obtain(null,PreviewReadService.READ,serial,0);request.replyTo=responses;
            try{new Messenger(b).send(request);}catch(RemoteException e){complete(null);}
        }
        @Override public void onServiceDisconnected(ComponentName n){complete(null);}
        @Override public void onBindingDied(ComponentName n){complete(null);}
        @Override public void onNullBinding(ComponentName n){complete(null);}
    }
    private void sendRead(WebMessagePort p,String id,JSONObject data){
        try{
            JSONObject r=new JSONObject().put("v",1).put("id",id).put("ok",data!=null).put("status",data!=null?"RESULT":"FAILED");
            if(data!=null)r.put("data",data);else r.put("code","READ_UNAVAILABLE").put("message","Preview read unavailable");
            p.postMessage(new WebMessage(r.toString()));
        }catch(Exception ignored){}
    }
    private void startRead(WebMessagePort p,String id){
        if(readCall!=null){sendRead(p,id,null);return;}
        ReadCall c=new ReadCall(p,id);readCall=c;
        try{c.bound=bindService(new Intent(this,PreviewReadService.class),c,Context.BIND_AUTO_CREATE);if(!c.bound){c.complete(null);return;}main.postDelayed(c.timeout,5000);}
        catch(RuntimeException e){c.complete(null);}
    }
    private void cancelRead(){
        ReadCall c=readCall;readCall=null;if(c==null)return;
        main.removeCallbacks(c.timeout);if(c.bound)try{unbindService(c);}catch(RuntimeException ignored){}
    }
    private void closePort(){cancelRead();if(port!=null){try{port.close();}catch(RuntimeException ignored){}port=null;}}
    private void fallback(){
        TextView t=new TextView(this);t.setText("تعذر فتح المعاينة الآمنة. أغلق التطبيق وأعد فتحه.");t.setTextSize(18);t.setPadding(28,60,28,28);setContentView(t);
    }
    @Override public void onBackPressed(){
        if(web!=null&&web.canGoBack())web.goBack();else super.onBackPressed();
    }
    @Override protected void onDestroy(){documentGeneration++;main.removeCallbacksAndMessages(null);closePort();if(web!=null){if(web.getParent() instanceof ViewGroup)((ViewGroup)web.getParent()).removeView(web);web.destroy();web=null;}super.onDestroy();}
}
