"use strict";
(function(){
 const banner=document.createElement("div");
 banner.id="preview-status";banner.setAttribute("role","status");
 banner.style.cssText="position:relative;z-index:20;padding:8px 12px;text-align:center;font-size:12px;background:#292537;color:#fff";
 banner.textContent="معاينة مستقلة • بيانات وهمية • الاتصال المحلي قيد التحقق";
 document.body.insertBefore(banner,document.body.firstChild);
 let got=false;
 window.addEventListener("message",function(e){
   if(got||window.top!==window||location.origin!=="https://appassets.androidplatform.net"||e.data!=="CP_PREVIEW_PORT_V1"||!e.ports||e.ports.length!==1)return;
   got=true;
   const p=e.ports[0],client=new CPBridgeClient({send:raw=>p.postMessage(raw),timeoutMs:8000});
   p.onmessage=ev=>client.receive(ev.data);
   client.request("app.bootstrap",{}).then(r=>{
      if(r.data&&r.data.mode==="synthetic-preview"&&r.data.nativeTransport===true&&r.data.writeCommands===false){
        banner.textContent="معاينة مستقلة • بيانات وهمية • الاتصال المحلي ناجح";
        banner.dataset.connected="true";
      }
   }).catch(()=>{banner.textContent="معاينة مستقلة • بيانات وهمية • الاتصال المحلي غير متاح";});
   window.addEventListener("pagehide",()=>{client.close();p.close()},{once:true});
 });
})();
