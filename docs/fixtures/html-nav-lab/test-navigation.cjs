"use strict";
const model=require("./navigation-model.js");
const runTests=function runTests(m){let n=0;const eq=(actual,expected,name)=>{if(JSON.stringify(actual)!==JSON.stringify(expected))throw Error(name+": "+JSON.stringify(actual)+" != "+JSON.stringify(expected));n++;};
eq(m.sanitize(null),m.defaults,"defaults");eq(m.sanitize({width:1,height:999,icon:NaN,accent:"url(x)",motion:"yes"}).width,72,"width bound");eq(m.sanitize({height:999}).height,84,"height bound");eq(m.sanitize({icon:NaN}).icon,24,"NaN");eq(m.sanitize({accent:"url(x)"}).accent,"#ff786f","invalid color");eq(m.sanitize({motion:false}).motion,false,"false preserved");eq(m.sanitize({style:"bad"}).style,"adaptive","invalid style");eq(m.sanitize({font:"https://example.org/a.ttf"}).font,"system","external font rejected");
for(const rtl of [false,true])for(let i=0;i<5;i++){let v=m.logicalToVisual(i,5,rtl);eq(m.hit(10+(v+.5)*60,10,300,5,rtl),i,"roundtrip "+rtl+i);}
eq(m.logicalToVisual(-1,5,true),-1,"invalid index");eq(m.hit(1000,0,0,5,true),-1,"invalid width");eq(m.hit(-10,0,300,5,true),4,"left clamp");eq(m.hit(310,0,300,5,true),0,"right clamp");
for(const w of [280,320,360,412,768])for(const st of ["adaptive","expanded","compact","classic"]){const g=m.geometry({style:st,width:72},w,true);eq(g.width<=w-12,true,"fit "+w+st);eq(g.slot>=48,true,"touch "+w+st);}
eq(m.geometry({style:"compact"},360,false).labels,false,"compact");eq(m.geometry({style:"expanded"},360,true).labels,true,"expanded");eq(m.scrollCollapsed(false,13),true,"collapse");eq(m.scrollCollapsed(true,-15),false,"expand");eq(m.scrollCollapsed(true,0,true),false,"top");
eq(m.releaseGesture({x:270,y:20,left:0,width:300},{x:150,y:22},0,5,true),2,"RTL drag search");eq(m.releaseGesture({x:270,y:20,left:0,width:300},{x:150,y:22},0,5,true,true),0,"cancel");eq(m.releaseGesture({x:270,y:20,left:0,width:300},{x:268,y:90},0,5,true),0,"vertical cancel");
return n;};
console.log("CP_NAV_MODEL_PASS assertions="+runTests(model));
