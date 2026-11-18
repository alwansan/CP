"use strict";
const assert=require("node:assert/strict");const {CPBridgeClient}=require("./bridge-protocol.js");
(async()=>{let sent="",n=0,id=0;const client=new CPBridgeClient({send:raw=>{sent=raw},idFactory:()=> "req-"+(++id),timeoutMs:100});const eq=(a,b)=>{assert.equal(a,b);n++};
const p=client.request("catalog.search",{query:"مدينة",kind:"all"});const req=JSON.parse(sent);eq(req.v,1);eq(req.action,"catalog.search");eq(req.id,"req-1");eq(client.receive(JSON.stringify({v:1,id:req.id,ok:true,status:"RESULT",data:{items:[]}})),true);eq((await p).status,"RESULT");
assert.throws(()=>client.request("native.reflect",{method:"delete"}),/unknown native action/);n++;
assert.throws(()=>client.request("catalog.search",{filePath:"/private/video.mkv"}),/sensitive field/);n++;
assert.throws(()=>client.request("downloads.delete",{itemId:"x"}),/idempotencyKey/);n++;
const del=client.request("downloads.delete",{itemId:"opaque-1"},{idempotencyKey:"delete-1"});const delReq=JSON.parse(sent);eq(delReq.idempotencyKey,"delete-1");eq(client.receive(JSON.stringify({v:1,id:delReq.id,ok:true,status:"ACCEPTED",data:{requestId:"native-1"}})),true);eq((await del).status,"ACCEPTED");
const small=new CPBridgeClient({send:()=>{},maxBytes:100});assert.throws(()=>small.request("catalog.search",{query:"x".repeat(200)}),/payload limit/);n++;
let timeout;const slow=new CPBridgeClient({send:()=>{},timeoutMs:5,idFactory:()=>"slow"});try{await slow.request("app.bootstrap",{});assert.fail("expected timeout")}catch(e){eq(e.code,"TIMEOUT")}
const events=[],gaps=[];client.on("downloads.delta",x=>events.push(x.seq));client.on("resync-required",x=>gaps.push(x.event));client.setCursor("downloads.delta","boot-A",4);eq(client.receive(JSON.stringify({v:1,event:"downloads.delta",epoch:"boot-A",seq:5,baseRevision:4,revision:5,data:{}})),true);eq(events[0],5);eq(client.receive(JSON.stringify({v:1,event:"downloads.delta",epoch:"boot-A",seq:7,baseRevision:6,revision:7,data:{}})),false);eq(gaps[0],"downloads.delta");eq(client.receive(JSON.stringify({v:1,event:"unknown.event",epoch:"boot-A",seq:8})),false);eq(client.receive("not json"),false);
let closed;const pending=client.request("home.snapshot",{});try{client.close("renderer gone");await pending;assert.fail("expected close")}catch(e){eq(e.code,"CLOSED")}
eq(client.receive(JSON.stringify({v:1,id:"unknown",ok:true,status:"RESULT"})),false);
console.log("CP_BRIDGE_PROTOCOL_PASS assertions="+n);
})().catch(e=>{console.error(e);process.exitCode=1});
