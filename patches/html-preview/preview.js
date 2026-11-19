"use strict";
(function(){
 const banner=document.createElement("div");
 banner.id="preview-status";banner.setAttribute("role","status");
 banner.style.cssText="position:relative;z-index:20;padding:8px 12px;text-align:center;font-size:12px;background:#292537;color:#fff";
 banner.textContent="معاينة مستقلة • بيانات وهمية • الاتصال المحلي قيد التحقق";
 document.body.insertBefore(banner,document.body.firstChild);
 let got=false;
 console.info("CP_PREVIEW_JS_READY");
 window.addEventListener("message",function(e){
   if(got||window.top!==window||location.origin!=="https://appassets.androidplatform.net"||e.data!=="CP_PREVIEW_PORT_V1"||!e.ports||e.ports.length!==1)return;
   got=true;console.info("CP_PREVIEW_PORT_RECEIVED");
   const p=e.ports[0],client=new CPBridgeClient({send:raw=>p.postMessage(raw),timeoutMs:8000});
   p.onmessage=ev=>client.receive(ev.data);p.start();
   client.request("app.bootstrap",{}).then(r=>{
      if(r.data&&r.data.mode==="synthetic-preview"&&r.data.nativeTransport===true&&r.data.writeCommands===false){
        banner.textContent="معاينة مستقلة • بيانات وهمية • الاتصال المحلي ناجح";
        banner.dataset.connected="true";
        // Exercise a harmless prohibited command; the native allowlist must reject it.
        client.request("downloads.snapshot",{}).then(()=>{banner.dataset.readGuard="failed";}).catch(err=>{banner.dataset.readGuard=err.code==="ACTION_NOT_ALLOWED"?"passed":"failed";});
      }
   }).catch(e=>{console.info("CP_PREVIEW_BOOTSTRAP_FAILED "+e.code);banner.textContent="معاينة مستقلة • بيانات وهمية • الاتصال المحلي غير متاح";});
   window.addEventListener("pagehide",()=>{client.close();p.close()},{once:true});
 });
})();
