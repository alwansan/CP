"use strict";
const { chromium } = require("playwright");
const assert=require("node:assert/strict"), http=require("node:http"), fs=require("node:fs"), path=require("node:path");
(async()=>{
 const html=fs.readFileSync(path.join(__dirname,"index.html"));
 const server=http.createServer((req,res)=>{if(req.url==="/"){res.writeHead(200,{"Content-Type":"text/html; charset=utf-8"});res.end(html)}else{res.writeHead(404);res.end()}});
 await new Promise(resolve=>server.listen(0,"127.0.0.1",resolve));
 let browser,n=0;
 try{
  browser=await chromium.launch({headless:true,args:["--no-sandbox"]});
  const ctx=await browser.newContext({viewport:{width:360,height:800},reducedMotion:"reduce"});
  const page=await ctx.newPage(), errors=[];page.on("pageerror",e=>errors.push(e.message));
  await page.goto("http://127.0.0.1:"+server.address().port+"/");
  const dock=page.locator("#dock"), items=dock.locator("button");
  assert.equal(await items.count(),5);n++;
  for(const name of ["البحث","التحميلات","الحساب","الرئيسية","الأقسام"]){
    await dock.getByRole("button",{name,exact:true}).click();
    assert.equal(await page.locator("#route").textContent(),name);assert.equal(await dock.locator('[aria-current="page"]').count(),1);n+=2;
  }
  for(const width of [280,320,360,412,768]){
    await page.setViewportSize({width,height:800});
    for(const style of ["adaptive","expanded","compact","classic"]){
      await page.locator("#pref-style").selectOption(style);
      const r=await dock.boundingBox();assert.ok(r.x>=-1&&r.x+r.width<=width+1);n++;
      for(const i of await items.all()){const x=await i.boundingBox();assert.ok(x.width>=48&&x.height>=48);n++;}
    }
  }
  await page.setViewportSize({width:360,height:800});
  await page.locator("#pref-style").selectOption("compact");assert.equal(await dock.getAttribute("data-labels"),"false");n++;
  await page.locator("#pref-style").selectOption("expanded");assert.equal(await dock.getAttribute("data-labels"),"true");n++;
  await page.locator("#pref-theme").selectOption("light");assert.equal(await page.locator("body").getAttribute("data-theme"),"light");n++;
  await page.reload();assert.equal(await page.locator("#pref-theme").inputValue(),"light");n++;
  const home=await dock.getByRole("button",{name:"الرئيسية",exact:true}).boundingBox(),search=await dock.getByRole("button",{name:"البحث",exact:true}).boundingBox();
  await page.mouse.move(home.x+home.width/2,home.y+home.height/2);await page.mouse.down();await page.mouse.move(search.x+search.width/2,search.y+search.height/2,{steps:8});await page.mouse.up();
  assert.equal(await page.locator("#route").textContent(),"البحث");n++;
  const account=dock.getByRole("button",{name:"الحساب",exact:true});await account.focus();await page.keyboard.press("Enter");assert.equal(await page.locator("#route").textContent(),"الحساب");n++;
  await page.locator("#pref-font").selectOption("serif");await page.locator("#pref-text").evaluate(el=>{el.value="140";el.dispatchEvent(new Event("input",{bubbles:true}))});assert.equal(await page.evaluate(()=>document.documentElement.style.fontSize),"140%");n++;
  await page.locator("#reset").click();assert.equal(await page.locator("#pref-theme").inputValue(),"dark");n++;
  await page.locator("#pref-style").selectOption("adaptive");
  await page.evaluate(()=>window.scrollTo(0,0));await page.waitForFunction(()=>document.querySelector("#dock").dataset.labels==="true");n++;
  await page.evaluate(()=>window.scrollTo(0,document.body.scrollHeight));await page.waitForFunction(()=>document.querySelector("#dock").dataset.labels==="false");n++;
  await page.evaluate(()=>window.scrollTo(0,0));await page.waitForFunction(()=>document.querySelector("#dock").dataset.labels==="true");n++;
  assert.deepEqual(errors,[]);n++;
  await page.screenshot({path:path.join(__dirname,"lab-preview.png")});
  console.log("CP_NAV_BROWSER_PASS assertions="+n);
 }finally{if(browser)await browser.close();await new Promise(resolve=>server.close(resolve));}
})().catch(err=>{console.error(err);process.exitCode=1;});
