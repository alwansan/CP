package com.alwansan.cinemana.htmlpreview;

import android.app.Activity;
import android.os.Bundle;
import android.net.Uri;
import android.webkit.*;
import android.view.ViewGroup;
import android.graphics.Color;
import android.widget.TextView;
import android.util.Log;
import java.io.*;
import java.util.*;
import org.json.JSONObject;

/** Standalone synthetic preview; no Internet permission, real account, DAO or downloader. */
public final class PreviewActivity extends Activity {
    static final String ORIGIN="https://appassets.androidplatform.net";
    static final String PAGE=ORIGIN+"/preview/index.html";
    static final String CSP="default-src 'none'; script-src 'self'; style-src 'self' 'unsafe-inline'; img-src 'self' data:; connect-src 'none'; frame-src 'none'; child-src 'none'; object-src 'none'; base-uri 'none'; form-action 'none'; frame-ancestors 'none'; worker-src 'none'";
    private WebView web;
    private WebMessagePort port;
    private boolean sent;
    private int requests;
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
        s.setBlockNetworkLoads(true);s.setMixedContentMode(WebSettings.MIXED_CONTENT_NEVER_ALLOW);
        s.setJavaScriptCanOpenWindowsAutomatically(false);s.setSupportMultipleWindows(false);
        s.setGeolocationEnabled(false);s.setSaveFormData(false);
        CookieManager.getInstance().setAcceptCookie(false);
        web.setWebChromeClient(new WebChromeClient(){
            @Override public boolean onConsoleMessage(ConsoleMessage m){Log.i("CPPreview","JS "+m.messageLevel()+" line="+m.lineNumber()+" "+m.message());return true;}
        });
        web.setWebViewClient(new WebViewClient(){
            @Override public WebResourceResponse shouldInterceptRequest(WebView v,WebResourceRequest r){
                if(!"GET".equals(r.getMethod()))return denied();
                return response(asset(r.getUrl()));
            }
            @Override public boolean shouldOverrideUrlLoading(WebView v,WebResourceRequest r){
                // No navigation to another document or frame. Same-document hashes are local.
                return !r.isForMainFrame()||!page(r.getUrl().toString());
            }
            @Override public boolean shouldOverrideUrlLoading(WebView v,String url){return !page(url);}
            @Override public void onPageStarted(WebView v,String url,android.graphics.Bitmap icon){
                closePort();sent=false;requests=0;
                if(!page(url)){v.stopLoading();fallback();}
            }
            @Override public void onPageFinished(WebView v,String url){
                Log.i("CPPreview","pageFinished local="+page(url)+" current="+page(v.getUrl()));
                if(web!=v||sent||!page(url)||!page(v.getUrl()))return;
                sent=true;
                try{
                    WebMessagePort[] pair=v.createWebMessageChannel();
                    port=pair[0];
                    port.setWebMessageCallback(new WebMessagePort.WebMessageCallback(){
                        @Override public void onMessage(WebMessagePort p,WebMessage msg){reply(p,msg);}
                    });
                    v.postWebMessage(new WebMessage("CP_PREVIEW_PORT_V1",new WebMessagePort[]{pair[1]}),Uri.parse(ORIGIN));
                }catch(RuntimeException e){Log.w("CPPreview","port setup failed",e);closePort();fallback();}
            }
            @Override public boolean onRenderProcessGone(WebView v,RenderProcessGoneDetail detail){
                closePort();web=null;
                if(v.getParent() instanceof ViewGroup)((ViewGroup)v.getParent()).removeView(v);
                v.destroy();fallback();return true;
            }
        });
        setContentView(web);
        // All executable assets are bundled into one document with CSP SHA-256
        // hashes. No WebView network request is needed even for local resources.
        try(InputStream in=getAssets().open("preview/bundle.html")){
            ByteArrayOutputStream out=new ByteArrayOutputStream();
            byte[] buf=new byte[4096];int n;
            while((n=in.read(buf))!=-1){if(out.size()+n>256*1024)throw new IOException("bundle cap");out.write(buf,0,n);}
            web.loadDataWithBaseURL(PAGE,out.toString("UTF-8"),"text/html","UTF-8",PAGE);
        }catch(IOException e){fallback();}
    }
    private void reply(WebMessagePort p,WebMessage m){
        if(p!=port||web==null||!page(web.getUrl())||++requests>8){closePort();return;}
        Log.i("CPPreview","native port received");
        String raw=m.getData();
        if(raw==null||raw.length()>1024||m.getPorts()!=null&&m.getPorts().length>0){closePort();return;}
        try{
            JSONObject q=new JSONObject(raw);
            String id=q.optString("id","");
            if(!id.matches("[A-Za-z0-9_-]{1,128}"))return;
            boolean ok=q.length()==4&&q.optInt("v",-1)==1&&"app.bootstrap".equals(q.optString("action"))
               &&q.optJSONObject("args")!=null&&q.optJSONObject("args").length()==0;
            JSONObject r=new JSONObject().put("v",1).put("id",id).put("ok",ok).put("status",ok?"RESULT":"FAILED");
            if(ok)r.put("data",new JSONObject().put("mode","synthetic-preview").put("nativeTransport",true).put("writeCommands",false));
            else r.put("error",new JSONObject().put("code","ACTION_NOT_ALLOWED").put("message","Preview only"));
            p.postMessage(new WebMessage(r.toString()));
            Log.i("CPPreview","bootstrap reply ok="+ok);
        }catch(Exception ignored){closePort();}
    }
    private void closePort(){if(port!=null){try{port.close();}catch(RuntimeException ignored){}port=null;}}
    private void fallback(){
        TextView t=new TextView(this);t.setText("تعذر فتح المعاينة الآمنة. أغلق التطبيق وأعد فتحه.");t.setTextSize(18);t.setPadding(28,60,28,28);setContentView(t);
    }
    @Override public void onBackPressed(){
        if(web!=null&&web.canGoBack())web.goBack();else super.onBackPressed();
    }
    @Override protected void onDestroy(){closePort();if(web!=null){if(web.getParent() instanceof ViewGroup)((ViewGroup)web.getParent()).removeView(web);web.destroy();web=null;}super.onDestroy();}
}
