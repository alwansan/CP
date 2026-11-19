"use strict";
const {chromium}=require("playwright"),assert=require("node:assert/strict"),fs=require("node:fs"),path=require("node:path"),http=require("node:http");
(async()=>{const root=__dirname,server=http.createServer((req,res)=>{const name=["/","/index.html"].includes(req.url)?"index.html":req.url==="/style.css"?"style.css":req.url==="/app.js"?"app.js":null;if(!name){res.writeHead(404);return res.end()}res.writeHead(200,{"Content-Type":name.endsWith(".css")?"text/css":name.endsWith(".js")?"application/javascript":"text/html; charset=utf-8"});res.end(fs.readFileSync(path.join(root,name)))});await new Promise(r=>server.listen(0,"127.0.0.1",r));let browser,n=0;const ok=(a,b)=>{assert.equal(a,b);n++};try{browser=await chromium.launch({headless:true,args:["--no-sandbox"]});const ctx=await browser.newContext({viewport:{width:360,height:800},reducedMotion:"reduce"}),p=await ctx.newPage(),errors=[];p.on("pageerror",e=>errors.push(e.message));await p.goto("http://127.0.0.1:"+server.address().port);await ok(await p.locator("#dock button").count(),5);await ok(await p.locator("#main .hero").count(),1);
for(const [route,title] of [["categories","الأقسام"],["search","البحث"],["downloads","التحميلات"],["account","الحساب"],["home",""]]){await p.locator('#dock [data-route="'+route+'"]').click();if(title)await ok((await p.locator("#main h1").first().textContent()).trim(),title);await ok(await p.locator('#dock [data-route="'+route+'"]').getAttribute("aria-current"),"true")}
await p.locator("#main [data-item=a]").first().click();await ok(await p.locator("#main h1").first().textContent(),"مدينة الظلال");await p.locator("#main [data-action=back]").click();await p.locator("#main [data-action=back]").waitFor({state:"detached"});await ok(await p.locator("#main .hero").count(),1);
await p.locator("#dock [data-route=categories]").click();await p.locator("#main [data-genre=دراما]").click();await ok(await p.locator("#main #search-input").inputValue(),"دراما");await p.locator("#main [data-action=clear-search]").click();await ok(await p.locator("#main #search-input").inputValue(),"");
await p.locator("#dock [data-route=search]").click();await p.locator("#search-input").fill("لايوجد");await ok(await p.locator("#main .search-results .poster").count(),0);await ok(await p.locator("#main .empty").count(),1);await p.locator("#search-input").fill("مَدِينَة");await ok(await p.locator("#main .search-results .poster").count(),1);await p.locator('#main [data-search-type="أفلام"]').click();await ok(await p.locator("#main .search-results .poster").count(),0);
await p.locator("#dock [data-route=downloads]").click();await ok(await p.locator("#main .download-row").count(),3);await ok(await p.locator("#dock").evaluate(e=>getComputedStyle(e).backdropFilter),"none");await p.locator("#main [data-download-tab=groups]").click();await ok(await p.locator("#main .collection").count(),4);await p.locator("#main [data-download-tab=items]").click();await p.locator("#main [data-download=d1]").click();

// 452-row synthetic workload, bounded page, atomic invalid-batch rejection, coalesced in-place updates.
await p.locator("#main [data-demo-toggle]").click();
await ok(await p.locator("#main .download-row").count(),24);
await ok(await p.evaluate(()=>demoRows.size),452);
await p.evaluate(()=>{clearInterval(demoTimer);demoTimer=null;window.__row=document.querySelector("[data-demo-row=d1]");window.__page=document.querySelector("#main .page");});
await ok(await p.evaluate(()=>demoApplyBatch(Array.from({length:65},()=>({id:"d1",progress:11})))),false);
await ok(await p.evaluate(()=>{const before=demoRows.get("d1").progress;return !demoApplyBatch([{id:"d1",progress:11},{id:"unknown",progress:13}])&&demoRows.get("d1").progress===before}),true);
await p.evaluate(()=>{for(let n=0;n<8;n++)demoApplyBatch(Array.from({length:64},(_,i)=>({id:"d"+(i+1),progress:n+1})));});
await p.waitForTimeout(300);
await ok(await p.evaluate(()=>window.__row===document.querySelector("[data-demo-row=d1]")&&window.__page===document.querySelector("#main .page")),true);
await ok(await p.locator("[data-demo-row=d1] .progress").evaluate(e=>e.style.getPropertyValue("--progress")),"8%");
await p.locator("#main [data-demo-page='1']").click();
await ok(await p.locator("#main .download-row").count(),24);
await ok(await p.locator("#main [data-demo-row=d25]").count(),1);
await p.locator("#dock [data-route=account]").click();
await p.evaluate(()=>{window.__hiddenPage=document.querySelector("#main .page");window.__hiddenWrites=demoStats.domWrites;demoApplyBatch([{id:"d25",progress:91}]);});
await p.waitForTimeout(300);
await ok(await p.evaluate(()=>window.__hiddenPage===document.querySelector("#main .page")&&window.__hiddenWrites===demoStats.domWrites),true);
await p.locator("#dock [data-route=downloads]").click();
await ok(await p.locator("[data-demo-row=d25] .progress").evaluate(e=>e.style.getPropertyValue("--progress")),"91%");

// Search/filter only the bounded results, preserve input and do not reset stress state.
await p.locator("#download-query").fill("حَلْقَة تجريبية 45");
await ok(await p.locator("#download-query").inputValue(),"حَلْقَة تجريبية 45");
await ok(await p.locator("#main .download-row").count(),4);
await p.locator("#download-query").fill("حلقة تجريبية 452");
await ok(await p.locator("#main .download-row").count(),1);
await p.locator("#main [data-download=d452]").click();
await p.waitForTimeout(250);
await p.locator("#download-filter").selectOption("paused");
await ok(await p.locator("#main [data-demo-row=d452]").count(),1);
await p.locator("#main [data-download=d452]").click();
await p.waitForTimeout(250);
await ok(await p.locator("#main .download-row").count(),0);
await p.locator("#download-query").fill("");
await p.locator("#download-filter").selectOption("all");
await ok(await p.locator("#main .download-row").count(),24);

await p.locator("#main [data-demo-toggle]").click();
await ok(await p.locator("#main .download-row").count(),3);

await p.locator("#dock [data-route=account]").click();
await p.locator("#main [data-sub=subtitles]").click();
await ok(await p.locator("#dock [data-route=account]").getAttribute("aria-current"),"true");
await p.locator("#demo-setting-size").selectOption("30");
await ok(await p.locator("#subtitle-sample").evaluate(e=>e.style.fontSize),"30px");
await p.locator("[data-action=save-demo-settings]").click();
await p.locator("#main [data-action=back]").click();await p.locator("#main [data-action=back]").waitFor({state:"detached"});
await p.locator("#main [data-sub=subtitles]").click();
await ok(await p.locator("#demo-setting-size").inputValue(),"30");
await p.locator("#main [data-action=back]").click();await p.locator("#main [data-action=back]").waitFor({state:"detached"});
await p.locator("#main [data-sub=downloads-settings]").click();
await p.locator("#demo-setting-quality").selectOption("720");
await p.locator("[data-action=save-demo-settings]").click();
await p.locator("#main [data-action=back]").click();await p.locator("#main [data-action=back]").waitFor({state:"detached"});
await p.locator("#main [data-sub=backup]").click();
await p.locator("[data-action=preview-backup]").click();
await ok(await p.locator("#preview-backup-text").evaluate(e=>JSON.parse(e.value).settings["downloads-settings"].quality),"720");
await p.locator("#main [data-action=back]").click();await p.locator("#main [data-action=back]").waitFor({state:"detached"});
await p.locator("#main [data-sub=appearance]").click();await ok(await p.locator("#main #theme").count(),1);await p.locator("#main #glass-mode").selectOption("balanced");await p.locator("#main #contrast").check();await p.locator("#main #theme").selectOption("oled");await p.locator("#main #dock-size").selectOption("large");await p.locator("#main #continue-style").selectOption("poster");await p.locator("#main #motion").uncheck();await p.locator("#main [data-action=save-appearance]").click();await ok(await p.locator("html").getAttribute("data-theme"),"oled");await ok(await p.locator("#dock").getAttribute("data-size"),"large");await ok(await p.locator("body").getAttribute("data-motion"),"off");await ok(await p.locator("body").getAttribute("data-material"),"balanced");await ok(await p.locator("body").getAttribute("data-contrast"),"true");
await p.reload();await ok(await p.locator("html").getAttribute("data-theme"),"oled");await ok(await p.locator("body").getAttribute("data-material"),"balanced");await ok(await p.locator("#dock .nav-indicator").count(),1);await ok(await p.locator("#dock").getAttribute("data-size"),"large");await p.locator("#dock [data-route=account]").click();await p.locator("#main [data-sub=appearance]").click();await p.locator("#main [data-action=back]").click();await p.locator("#main [data-action=back]").waitFor({state:"detached"});await ok(await p.locator("#main .profile-card").count(),1);
await p.locator("#dock [data-route=home]").click();await ok(await p.locator("#main .continue-rail").getAttribute("data-style"),"poster");await p.locator("#main .avatar-item[data-item=a]").dispatchEvent("contextmenu");await ok(await p.locator("#detail-dialog").evaluate(d=>d.open),true);await p.keyboard.press("Escape");await ok(await p.locator("#detail-dialog").evaluate(d=>d.open),false);
await p.locator(".topbar [data-action=notifications]").click();await ok((await p.locator("#toast").textContent()).includes("الإشعارات"),true);await p.locator(".topbar [data-route=account]").click();await ok(await p.locator("#main .profile-card").count(),1);await p.locator("#dock [data-route=home]").click();
for(const id of ["a","c","e"]){await p.locator("#main .continue-card[data-item="+id+"]").dispatchEvent("contextmenu");await p.locator("#detail-dialog [data-dialog-action=remove-continue]").click()}await ok(await p.locator("#main .continue-rail").count(),0);
await p.locator("#dock [data-route=categories]").click();await p.locator("#main [data-category=أفلام]").click();await ok(await p.locator("#main .rail .poster").count(),3);
for(const w of [280,320,412,768]){await p.setViewportSize({width:w,height:800});await ok(await p.evaluate(()=>document.documentElement.scrollWidth<=innerWidth),true)}
assert.deepEqual(errors,[]);n++;await p.evaluate(()=>localStorage.removeItem("cp-shell-prefs"));await p.reload();await p.setViewportSize({width:412,height:900});await p.screenshot({path:path.join(root,"shell-preview.png"),fullPage:true});console.log("CP_SHELL_BROWSER_PASS assertions="+n);
}finally{if(browser)await browser.close();await new Promise(r=>server.close(r))}})().catch(e=>{console.error(e);process.exitCode=1});
