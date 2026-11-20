package com.alwansan.cinemana.composelab

import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.MaterialTheme
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.Modifier
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.test.ext.junit.runners.AndroidJUnit4
import java.util.concurrent.atomic.AtomicInteger
import org.junit.Assert.*
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith

/** Exercises the actual production-candidate list composable with bounded,
 * synthetic validated snapshots; counts list-scope commits, not every row
 * or frame. No IPC or disk workload in this controlled regression. */
@RunWith(AndroidJUnit4::class)
class OwnerRecompositionTest {
    @get:Rule val rule=createComposeRule()

    @Test fun metadataDoesNotRecomposeRowsButDataAndFreshnessDo() {
        val row=OwnerRow(0,25,100,"PROGRESS","OBSERVED","حلقة اختبار")
        val state=mutableStateOf(OwnerScreen("observed",123,1,listOf(row),false,false,1))
        val read:()->OwnerScreen={state.value}
        val commits=AtomicInteger()
        val count:()->Unit={commits.incrementAndGet();Unit}
        rule.setContent {
            MaterialTheme {
                OwnerReadRows(read,true,true,Modifier.fillMaxSize(),onComposed=count)
            }
        }
        rule.onNodeWithText("25%").assertIsDisplayed()
        val initial=rule.runOnIdle { commits.get() }
        assertTrue(initial>0)
        repeat(8) { i ->
            rule.runOnIdle {
                state.value=state.value.copy(busy=i%2==0,responseSerial=i+2)
            }
            rule.waitForIdle()
            assertEquals("metadata-only update ${i+1}",initial,commits.get())
        }
        rule.onNodeWithText("25%").assertIsDisplayed()
        rule.runOnIdle { state.value=state.value.copy(rows=listOf(row.copy(progress=75)),busy=false,responseSerial=10) }
        rule.onNodeWithText("75%").assertIsDisplayed()
        val changed=rule.runOnIdle { commits.get() }
        assertTrue("data update must compose",changed>initial)
        rule.runOnIdle { state.value=state.value.copy(state="reading",busy=true,responseSerial=11) }
        rule.onNodeWithText("بيانات سابقة").assertIsDisplayed()
        rule.onNodeWithText("75%").assertDoesNotExist()
        val stale=rule.runOnIdle { commits.get() }
        assertTrue("freshness loss must compose",stale>changed)
        rule.runOnIdle { state.value=state.value.copy(state="observed",busy=false,responseSerial=12) }
        rule.onNodeWithText("75%").assertIsDisplayed()
        val fresh=rule.runOnIdle { commits.get() }
        assertTrue("freshness restoration must compose",fresh>stale)
        rule.runOnIdle { state.value=state.value.copy(rows=emptyList(),responseSerial=13) }
        rule.onNodeWithText("حلقة اختبار").assertDoesNotExist()
        val empty=rule.runOnIdle { commits.get() }
        assertTrue("removed rows must compose",empty>fresh)
        println("CP_COMPOSE_OWNER_RECOMPOSITION_PASS metadataUpdates=8 unchanged=$initial data=$changed stale=$stale fresh=$fresh empty=$empty")
    }
}
