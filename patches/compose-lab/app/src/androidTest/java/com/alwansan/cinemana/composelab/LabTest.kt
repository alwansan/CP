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
        val durations = Collections.synchronizedList(mutableListOf<Long>())
        val listener = Window.OnFrameMetricsAvailableListener { _, metrics, _ ->
            val value = metrics.getMetric(FrameMetrics.TOTAL_DURATION)
            if (value > 0 && durations.size < 4096) durations.add(value)
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
        val frames = synchronized(durations) { durations.sorted() }
        check(frames.size >= 10) { "insufficient frame samples" }
        val p95 = frames[(kotlin.math.ceil(frames.size*.95).toInt()-1).coerceAtLeast(0)]
        val p99 = frames[(kotlin.math.ceil(frames.size*.99).toInt()-1).coerceAtLeast(0)]
        println("$label frames=${frames.size} durationP95Ns=$p95 durationP99Ns=$p99 over16_67ms=${frames.count { it > 16666667 }} callbackP95Ms=${callbacks.sorted()[23]}")
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
    @Test fun smokeAndPressure() {
        node("disclosure").assertIsDisplayed()
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
            assertEquals(worker, pid())
            assertTrue(SystemClock.elapsedRealtime() - started < 40000)
            println("CP_COMPOSE_LAB_PASS workerPid=$worker uiPid=${android.os.Process.myPid()}")
        } finally { rule.runOnIdle { rule.activity.stopService(load) } }
    }
}
