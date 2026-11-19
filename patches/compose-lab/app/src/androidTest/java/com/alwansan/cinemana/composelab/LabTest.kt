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
        fun waitPage(page: Int, count: Int) {
            rule.waitUntil(timeoutMillis=15000) { rule.onAllNodesWithText("صفحة $page · $count عنصر").fetchSemanticsNodes().isNotEmpty() }
            node("owner-status").assertTextEquals("حالة: observed")
        }
        waitPage(1,24)
        val ownerPid = node("owner-pid").fetchSemanticsNode().config[androidx.compose.ui.semantics.SemanticsProperties.Text].first().text.substringAfter("PID: ").toInt()
        assertTrue(ownerPid>0&&ownerPid!=android.os.Process.myPid())
        repeat(18) { node("owner-next").performClick(); waitPage(it+2,if(it==17)20 else 24) }
        node("owner-next").assertIsNotEnabled()
        node("owner-refresh").performClick(); waitPage(19,20)
        node("owner-first").performClick(); waitPage(1,24)
        open(0); open(3); node("owner-open").performClick(); waitPage(1,24)
        node("owner-close").performClick()
        println("CP_COMPOSE_OWNER_IPC_PASS rows=452 pages=19 ownerPid=$ownerPid uiPid=${android.os.Process.myPid()}")
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
