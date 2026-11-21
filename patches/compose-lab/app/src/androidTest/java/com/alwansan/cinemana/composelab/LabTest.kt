package com.alwansan.cinemana.composelab

import android.app.ActivityManager
import android.content.Context
import android.content.Intent
import android.os.Handler
import android.os.HandlerThread
import android.os.SystemClock
import android.view.FrameMetrics
import android.view.Window
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.test.ext.junit.runners.AndroidJUnit4
import org.junit.Assert.*
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import java.util.Collections

@RunWith(AndroidJUnit4::class)
class LabTest {
    @get:Rule val rule = createAndroidComposeRule<ComposeLabActivity>()
    private fun node(tag: String) = rule.onNodeWithTag(tag)
    private fun open(i: Int) { node("route-$i").performClick(); node("active-$i").assertIsDisplayed() }
    private fun pid(): Int {
        val manager = rule.activity.getSystemService(Context.ACTIVITY_SERVICE) as ActivityManager
        @Suppress("DEPRECATION")
        return manager.getRunningServices(100).firstOrNull { it.service.className == LabLoadService::class.java.name }?.pid ?: 0
    }
    private fun measure(label: String) {
        val worker = HandlerThread("compose-frame-metrics").apply { start() }
        // Each frame's total and stages share one sample, collected off UI
        // thread. Stage metrics are diagnostic (not a physical FPS guarantee).
        val samples = Collections.synchronizedList(mutableListOf<LongArray>())
        val listener = Window.OnFrameMetricsAvailableListener { _, metrics, _ ->
            val total = metrics.getMetric(FrameMetrics.TOTAL_DURATION)
            if (total > 0 && samples.size < 4096) {
                samples.add(longArrayOf(
                    total,
                    metrics.getMetric(FrameMetrics.INPUT_HANDLING_DURATION),
                    metrics.getMetric(FrameMetrics.LAYOUT_MEASURE_DURATION),
                    metrics.getMetric(FrameMetrics.DRAW_DURATION),
                    metrics.getMetric(FrameMetrics.SYNC_DURATION),
                    metrics.getMetric(FrameMetrics.GPU_DURATION)
                ))
            }
        }
        rule.runOnIdle { rule.activity.window.addOnFrameMetricsAvailableListener(listener, Handler(worker.looper)) }
        val callbacks = mutableListOf<Long>()
        try {
            repeat(25) { k ->
                val t = SystemClock.elapsedRealtime()
                open(k % 5)
                callbacks.add(SystemClock.elapsedRealtime() - t)
                Thread.sleep(80)
            }
            Thread.sleep(500)
        } finally {
            rule.runOnIdle { rule.activity.window.removeOnFrameMetricsAvailableListener(listener) }
            worker.quitSafely(); worker.join(3000)
        }
        val frames = synchronized(samples) { samples.toList() }
        check(frames.size >= 10) { "insufficient frame samples" }
        fun percentile(index: Int, p: Double): Long {
            val sorted = frames.map { it[index] }.sorted()
            return sorted[(kotlin.math.ceil(sorted.size*p).toInt()-1).coerceAtLeast(0)]
        }
        // FrameMetrics.getMetric returns -1 if a phase is unavailable (not 0 ns).
        fun phaseP95(index: Int): String {
            val valid = frames.map { it[index] }.filter { it >= 0 }.sorted()
            if (valid.isEmpty()) return "unavailable"
            return valid[(kotlin.math.ceil(valid.size * .95).toInt() - 1).coerceAtLeast(0)].toString()
        }
        println("$label frames=${frames.size} durationP95Ns=${percentile(0,.95)} durationP99Ns=${percentile(0,.99)} " +
            "over16_67ms=${frames.count { it[0] > 16666667 }} callbackP95Ms=${callbacks.sorted()[23]} " +
            "inputP95Ns=${phaseP95(1)} layoutP95Ns=${phaseP95(2)} " +
            "drawP95Ns=${phaseP95(3)} syncP95Ns=${phaseP95(4)} gpuP95Ns=${phaseP95(5)}")
    }
    // Keep a service binding alive during the timed-out read so the same owner process
    // receives a replacement client while the old ticket is still physically running.
    private fun testOwnerTimeoutAndDeath() {
        val context=rule.activity.applicationContext
        val ready=java.util.concurrent.CountDownLatch(1)
        val keeper=object: android.content.ServiceConnection {
            override fun onServiceConnected(name: android.content.ComponentName,binder: android.os.IBinder){ready.countDown()}
            override fun onServiceDisconnected(name: android.content.ComponentName){}
        }
        assertTrue(context.bindService(Intent(context,LabOwnerService::class.java),keeper,Context.BIND_AUTO_CREATE))
        var first: LabOwnerClient?=null
        var second: LabOwnerClient?=null
        var third: LabOwnerClient?=null
        fun create(timeout: Long): LabOwnerClient = rule.runOnIdle { LabOwnerClient(context,timeout) }
        fun state(client: LabOwnerClient): OwnerScreen = rule.runOnIdle { client.screen }
        fun wait(client: LabOwnerClient, description: String, predicate: (OwnerScreen)->Boolean): OwnerScreen {
            val until=SystemClock.elapsedRealtime()+15000L
            while(SystemClock.elapsedRealtime()<until){
                val s=state(client)
                if(predicate(s))return s
                Thread.sleep(50)
            }
            throw AssertionError("$description timed out: ${state(client)}")
        }
        try{
            assertTrue(ready.await(10,java.util.concurrent.TimeUnit.SECONDS))
            val a=create(2500);first=a
            val initial=wait(a,"first page"){it.state=="observed"&&it.page==1&&it.responseSerial==1}
            assertTrue(initial.pid>0&&initial.pid!=android.os.Process.myPid())
            rule.runOnIdle { a.request(2,8000) }
            wait(a,"read started"){it.state=="reading"}
            // Navigation remains responsive while the owner source is sleeping.
            open(1);open(3)
            val lost=wait(a,"read timeout"){it.state=="timeout"}
            assertTrue(lost.rows.isEmpty()&&lost.pid==0&&lost.page==0&&!lost.busy)
            rule.runOnIdle { a.request(2) }
            assertEquals("timeout",state(a).state)
            val b=create(12000);second=b
            val busy=wait(b,"replacement blocked by old read"){it.state=="busy"}
            assertEquals(initial.pid,busy.pid);assertEquals(0,busy.page);assertTrue(busy.rows.isEmpty())
            // Each rejected read is explicit; FIRST may be retried but NEXT is not replayed.
            val retryUntil=SystemClock.elapsedRealtime()+14000L
            var recovered=busy
            while(recovered.state!="observed"&&SystemClock.elapsedRealtime()<retryUntil){
                val before=recovered.responseSerial
                rule.runOnIdle { b.request(1) }
                recovered=wait(b,"replacement retry"){!it.busy&&it.responseSerial>before}
                if(recovered.state!="observed")Thread.sleep(250)
            }
            assertEquals("observed",recovered.state);assertEquals(1,recovered.page);assertEquals(24,recovered.rows.size)
            assertEquals("timeout",state(a).state)
            // Kill only the verified remote synthetic owner (same UID); never the UI/real app.
            assertEquals(initial.pid,recovered.pid)
            assertTrue(recovered.pid!=android.os.Process.myPid())
            android.os.Process.killProcess(recovered.pid)
            val disconnected=wait(b,"binder death"){it.state=="disconnected"}
            assertTrue(disconnected.pid==0&&disconnected.rows.isEmpty())
            val c=create(12000);third=c
            val fresh=wait(c,"fresh service after death"){it.state=="observed"&&it.responseSerial==1}
            assertEquals(1,fresh.page);assertEquals(24,fresh.rows.size);assertNotEquals(recovered.pid,fresh.pid)
            println("CP_COMPOSE_OWNER_TIMEOUT_DEATH_PASS oldPid=${recovered.pid} newPid=${fresh.pid} uiPid=${android.os.Process.myPid()}")
        } finally {
            rule.runOnIdle { first?.close();second?.close();third?.close() }
            context.unbindService(keeper)
        }
    }
    // Real Application/provider hooks in 3 processes and a visible Compose+IPC renderer in :nativeui.
    private fun testNativeUiStartup() {
        val context=rule.activity.applicationContext
        val pkg=context.packageName
        fun snapshot(suffix: String): android.os.Bundle {
            val uri=android.net.Uri.parse("content://$pkg.$suffix-startup")
            val deadline=SystemClock.elapsedRealtime()+12000L
            var latest:android.os.Bundle?=null
            do {
                latest=context.contentResolver.call(uri,"snapshot",null,null)
                // Provider can be published before Application.onCreate; poll observation,
                // do not move the recorded provider-order event or weaken exact assertions.
                if(latest!=null&&latest.getInt("create")>0) {
                    println("CP_NATIVEUI_STARTUP_SNAPSHOT $suffix $latest")
                    return latest
                }
                Thread.sleep(100)
            } while(SystemClock.elapsedRealtime()<deadline)
            throw AssertionError("startup not completed for $suffix: $latest")
        }
        fun verify(bundle: android.os.Bundle, name: String, role:String, legacy:Boolean, owner:Boolean, ui:Boolean): Int {
            assertEquals(name,bundle.getString("process"))
            assertEquals(role,bundle.getString("role"))
            val expectedClass="$pkg."+(if(ui)"LabMinimalApplication" else "LabStartupApplication")
            assertEquals(expectedClass,bundle.getString("applicationClass"))
            assertEquals(expectedClass,bundle.getString("providerApplicationClass"))
            assertEquals(if(legacy)1 else 0,bundle.getInt("legacyConstructor"))
            assertEquals(if(ui)1 else 0,bundle.getInt("minimalConstructor"))
            assertEquals(1,bundle.getInt("attach"))
            assertEquals(1,bundle.getInt("create"))
            assertEquals(1,bundle.getInt("provider"))
            assertEquals(if(legacy)1 else 0,bundle.getInt("legacyAttach"))
            assertEquals(if(legacy)1 else 0,bundle.getInt("legacyCreate"))
            assertTrue(bundle.getBoolean("providerAfterAttach"))
            assertTrue(bundle.getBoolean("providerBeforeCreate"))
            assertEquals(owner,bundle.getBoolean("allowOwnerRead"))
            assertEquals(ui,bundle.getBoolean("allowNewUi"))
            return bundle.getInt("pid").also{assertTrue(it>0)}
        }
        val ownerPid=verify(snapshot("owner"),pkg,"OWNER",true,true,false)
        val uiPid=verify(snapshot("ui"),"$pkg:nativeui","UI_ONLY",false,false,true)
        val downloaderPid=verify(snapshot("downloader"),"$pkg:filedownloader","LEGACY_DOWNLOADER",true,false,false)
        assertEquals(android.os.Process.myPid(),ownerPid)
        assertEquals(3,setOf(ownerPid,uiPid,downloaderPid).size)
        val instrumentation=androidx.test.platform.app.InstrumentationRegistry.getInstrumentation()
        val automation=instrumentation.uiAutomation
        fun visibleTexts(): List<String> {
            val root=automation.rootInActiveWindow ?: return emptyList()
            val texts=mutableListOf<String>()
            fun walk(n: android.view.accessibility.AccessibilityNodeInfo, depth: Int) {
                if(depth>20||texts.size>=80)return
                n.text?.toString()?.let{texts.add(it)}
                n.contentDescription?.toString()?.let{texts.add(it)}
                for(j in 0 until minOf(n.childCount,40)){
                    n.getChild(j)?.let{walk(it,depth+1)}
                }
            }
            walk(root,0)
            return texts
        }
        try {
            assertTrue("initial portrait",automation.setRotation(android.app.UiAutomation.ROTATION_FREEZE_0))
            open(4)
            node("nativeui-open").performClick()
            val limit=SystemClock.elapsedRealtime()+25000L
            val uri=android.net.Uri.parse("content://$pkg.ui-startup")
            var final:android.os.Bundle?=null
            while(SystemClock.elapsedRealtime()<limit){
                val s=context.contentResolver.call(uri,"snapshot",null,null)
                final=s
                if(s!=null&&s.getInt("pid")==uiPid&&s.getBoolean("resumed")&&s.getBoolean("focused")&&
                    s.getString("drawState")=="observed"&&s.getInt("drawPage")==1&&s.getInt("drawRows")==24&&
                    s.getInt("drawSerial")==1&&s.getInt("drawOwnerPid")>0&&s.getInt("drawOwnerPid")!=uiPid&&
                    s.getInt("drawWidth")>0&&s.getInt("drawHeight")>0)break
                Thread.sleep(150)
            }
            println("CP_NATIVEUI_REMOTE_DRAW_SNAPSHOT $final")
            println("CP_NATIVEUI_ACCESSIBILITY "+visibleTexts().joinToString("|").take(3000))
            val actual=final ?: throw AssertionError("missing remote draw snapshot")
            assertEquals(uiPid,actual.getInt("pid"))
            assertTrue("remote window resumed",actual.getBoolean("resumed"))
            assertTrue("remote window focused",actual.getBoolean("focused"))
            assertEquals("observed",actual.getString("drawState"))
            assertEquals(1,actual.getInt("drawPage"));assertEquals(24,actual.getInt("drawRows"))
            assertEquals(1,actual.getInt("drawSerial"))
            assertTrue(actual.getInt("drawOwnerPid")>0&&actual.getInt("drawOwnerPid")!=uiPid)
            assertTrue(actual.getInt("drawWidth")>0&&actual.getInt("drawHeight")>0)
            assertEquals(uiPid,verify(snapshot("ui"),"$pkg:nativeui","UI_ONLY",false,false,true))
            // Use Android's actual device rotation, not an accessibility ACTION_CLICK
            // that may fail for merged Compose semantics. Keep all real draw/config gates.
            assertTrue("starting portrait draw",actual.getInt("drawHeight")>actual.getInt("drawWidth"))
            val beforeConfig=actual.getInt("configCount")
            assertTrue("freeze system landscape rotation",automation.setRotation(android.app.UiAutomation.ROTATION_FREEZE_90))
            val rotateUntil=SystemClock.elapsedRealtime()+20000L
            var rotated:android.os.Bundle?=null
            while(SystemClock.elapsedRealtime()<rotateUntil){
                val s=context.contentResolver.call(uri,"snapshot",null,null)
                if(s!=null&&s.getInt("pid")==uiPid&&s.getInt("configCount")>beforeConfig&&s.getInt("lastOrientation")==android.content.res.Configuration.ORIENTATION_LANDSCAPE&&s.getInt("drawWidth")>s.getInt("drawHeight")&&s.getString("drawState")=="observed"&&s.getInt("drawRows")==24&&s.getBoolean("focused")){
                    rotated=s;break
                }
                Thread.sleep(150)
            }
            assertNotNull("native UI did not survive real landscape configuration",rotated)
            val landscape=rotated ?: throw AssertionError("missing landscape snapshot")
            assertTrue("freeze system portrait rotation",automation.setRotation(android.app.UiAutomation.ROTATION_FREEZE_0))
            val portraitUntil=SystemClock.elapsedRealtime()+20000L
            var portrait:android.os.Bundle?=null
            while(SystemClock.elapsedRealtime()<portraitUntil){
                val s=context.contentResolver.call(uri,"snapshot",null,null)
                if(s!=null&&s.getInt("pid")==uiPid&&s.getInt("configCount")>landscape.getInt("configCount")&&s.getInt("lastOrientation")==android.content.res.Configuration.ORIENTATION_PORTRAIT&&s.getInt("drawHeight")>s.getInt("drawWidth")&&s.getString("drawState")=="observed"&&s.getInt("drawRows")==24&&s.getBoolean("focused")){portrait=s;break}
                Thread.sleep(150)
            }
            assertNotNull("native UI did not survive real portrait configuration",portrait)
            println("CP_COMPOSE_NATIVEUI_FACTORY_PASS landscape=$landscape portrait=$portrait")
            assertTrue("remote UI still visible",visibleTexts().contains("CP_NATIVE_UI_READY"))
            println("CP_COMPOSE_NATIVEUI_STARTUP_PASS ownerPid=$ownerPid nativeUiPid=$uiPid legacyDownloaderPid=$downloaderPid providerBeforeCreate=true remotePage=24")
        } finally {
            automation.setRotation(android.app.UiAutomation.ROTATION_UNFREEZE)
            // Only close our own remote window, never dismiss unrelated system dialogs.
            if(automation.rootInActiveWindow?.packageName?.toString()==pkg&&visibleTexts().contains("CP_NATIVE_UI_READY")){
                automation.executeShellCommand("input keyevent 4").close()
            }
        }
        rule.waitUntil(timeoutMillis=15000){rule.activity.hasWindowFocus()}
    }
    private fun testOwnerListProjection() {
        val row=OwnerRow(0,25,100,"PROGRESS","OBSERVED","حلقة")
        val observed=OwnerScreen("observed",123,1,listOf(row),true,false,1)
        val reading=observed.copy(state="reading",busy=true,responseSerial=2)
        val auto=observed.copy(busy=true,responseSerial=2)
        assertEquals(ownerListSlice(observed,false),ownerListSlice(reading,false))
        assertEquals(ownerListSlice(observed,true),ownerListSlice(auto,true))
        assertNotEquals(ownerListSlice(observed,true),ownerListSlice(reading,true))
        assertNotEquals(ownerListSlice(observed,true),ownerListSlice(observed.copy(state="changed"),true))
        assertNotEquals(ownerListSlice(observed,true),ownerListSlice(observed.copy(state="unavailable"),true))
        assertNotEquals(ownerListSlice(observed,true),ownerListSlice(observed.copy(rows=listOf(row.copy(progress=75))),true))
        assertNotEquals(ownerListSlice(observed,false),ownerListSlice(observed.copy(page=2),false))
        assertNotEquals(ownerListSlice(observed,true),ownerListSlice(observed.copy(rows=emptyList()),true))
        assertEquals(ownerListSlice(observed,true),ownerListSlice(observed.copy(rows=listOf(row.copy()),responseSerial=3),true))
        assertFalse(ownerListSlice(reading,true).fresh)
        println("CP_COMPOSE_OWNER_LIST_PROJECTION_PASS assertions=10")
    }
    @Test fun smokeAndPressure() {
        testOwnerListProjection()
        node("disclosure").assertIsDisplayed()
        // Run foreground lifecycle/configuration before synthetic CPU/fsync load.
        testNativeUiStartup()
        open(0)
        node("hero-detail").performClick(); node("detail-close").assertIsDisplayed().performClick()
        open(2); node("search-field").performTextInput("أفق"); rule.onNodeWithText("أفق بعيد").assertIsDisplayed()
        open(4); node("appearance").performClick(); node("oled").performClick(); node("motion").performClick(); node("style-2").performClick()
        open(3)
        node("page-index").assertTextEquals("1 / 19")
        node("page-count").assertTextEquals("452 حلقة تجريبية · 24 في الصفحة")
        node("row-0").assertIsDisplayed()
        repeat(18) { node("next").performClick() }
        node("page-index").assertTextEquals("19 / 19")
        node("page-count").assertTextEquals("452 حلقة تجريبية · 20 في الصفحة")
        node("next").assertIsNotEnabled()
        repeat(18) { node("prev").performClick() }
        node("owner-open").performClick()
        fun waitPage(page: Int, count: Int, serial: Int) {
            rule.waitUntil(timeoutMillis=15000) { rule.onAllNodesWithText("Reply: $serial").fetchSemanticsNodes().isNotEmpty() && rule.onAllNodesWithText("صفحة $page · $count عنصر").fetchSemanticsNodes().isNotEmpty() }
            node("owner-status").assertTextEquals("حالة: observed")
        }
        waitPage(1,24,1)
        val ownerPid = node("owner-pid").fetchSemanticsNode().config[androidx.compose.ui.semantics.SemanticsProperties.Text].first().text.substringAfter("PID: ").toInt()
        assertTrue(ownerPid>0&&ownerPid!=android.os.Process.myPid())
        repeat(18) { node("owner-next").performClick(); waitPage(it+2,if(it==17)20 else 24,it+2) }
        node("owner-next").assertIsNotEnabled()
        node("owner-refresh").performClick(); waitPage(19,20,20)
        node("owner-first").performClick(); waitPage(1,24,21)
        open(0); open(3); node("owner-open").performClick(); waitPage(1,24,1)
        node("owner-close").performClick()
        println("CP_COMPOSE_OWNER_IPC_PASS rows=452 pages=19 ownerPid=$ownerPid uiPid=${android.os.Process.myPid()}")
        testOwnerTimeoutAndDeath()
        node("stress").performClick()
        Thread.sleep(600)
        node("row-0").assertIsDisplayed()
        measure("CP_COMPOSE_IDLE")
        val load = Intent(rule.activity, LabLoadService::class.java)
        try {
            rule.runOnIdle { rule.activity.startService(load) }
            var worker = 0
            repeat(30) { if (worker <= 0) { Thread.sleep(200); worker = pid() } }
            assertTrue(worker > 0 && worker != android.os.Process.myPid())
            val started = SystemClock.elapsedRealtime()
            measure("CP_COMPOSE_LOAD")
            println("CP_COMPOSE_FRAME_PHASES_PASS metrics=input,layout,draw,sync,gpu stages=idle,load")
            assertEquals(worker, pid())
            assertTrue(SystemClock.elapsedRealtime() - started < 40000)
            println("CP_COMPOSE_LAB_PASS workerPid=$worker uiPid=${android.os.Process.myPid()}")
        } finally { rule.runOnIdle { rule.activity.stopService(load) } }
    }
}
