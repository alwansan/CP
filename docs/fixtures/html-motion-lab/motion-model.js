"use strict";
const CPMotion=(function makeMotion(){
 const durations={press:110,page:230,sheet:280,poster:380,layout:260,close:240};
 function duration(kind,speed=100,reduced=false){return reduced?0:Math.round((durations[kind]||230)*Math.min(150,Math.max(50,Number.isFinite(speed)?speed:100))/100)}
 function inverse(from,to){if(!from||!to||![from.x,from.y,from.width,from.height,to.x,to.y,to.width,to.height].every(Number.isFinite)||Math.min(from.width,from.height,to.width,to.height)<=0)return null;return {x:from.x-to.x,y:from.y-to.y,sx:from.width/to.width,sy:from.height/to.height}}
 function validHold(start,end,elapsed){return !!start&&!!end&&elapsed>=450&&Math.hypot(end.x-start.x,end.y-start.y)<=12}
 function style(v){return ["card","wide","poster"].includes(v)?v:"card"}
 function isVisible(enabled,count){return enabled===true&&Number.isInteger(count)&&count>0}
 return {duration,inverse,validHold,style,isVisible};
})();
if(typeof module!=="undefined")module.exports=CPMotion;
