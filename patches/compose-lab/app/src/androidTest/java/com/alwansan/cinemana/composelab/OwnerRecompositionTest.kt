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

    @Test fun keyedRowsKeepEpisodeProgressWhenAnEarlierRowArrives() {
        // Same bounded presentation composable as the owner UI, but synthetic
        // immutable IPC snapshots. A newly inserted earlier key must not take
        // the existing row's progress or stale/fresh state.
        val firstKey="a".repeat(64)
        val secondKey="b".repeat(64)
        val earlierKey="c".repeat(64)
        val first=OwnerRow(0,25,100,"PROGRESS","OBSERVED","حلقة ألف",firstKey)
        val second=OwnerRow(1,75,100,"PROGRESS","OBSERVED","حلقة باء",secondKey)
        val state=mutableStateOf(OwnerScreen("observed",501,1,listOf(first,second),false,false,1))
        val read:()->OwnerScreen={state.value}
        rule.setContent {
            MaterialTheme {
                OwnerReadRows(read,true,true,Modifier.fillMaxSize())
            }
        }
        rule.onNodeWithText("حلقة ألف").assertIsDisplayed()
        rule.onNodeWithText("حلقة باء").assertIsDisplayed()
        rule.onNodeWithText("25%").assertIsDisplayed()
        rule.onNodeWithText("75%").assertIsDisplayed()
        val oldTop=rule.onNodeWithText("حلقة ألف").fetchSemanticsNode().boundsInRoot.top
        val originalKey=rule.runOnIdle { state.value.rows.first().displayKey }
        assertEquals(firstKey,originalKey)

        val earlier=OwnerRow(0,-1,-1,"UNKNOWN","NO_TRANSPORT_ROW","حلقة جديدة",earlierKey)
        rule.runOnIdle {
            state.value=state.value.copy(
                rows=listOf(earlier,first.copy(index=1),second.copy(index=2)),
                responseSerial=2
            )
        }
        rule.onNodeWithText("حلقة جديدة").assertIsDisplayed()
        rule.onNodeWithText("حالة النقل غير متاحة").assertIsDisplayed()
        rule.onNodeWithText("حلقة ألف").assertIsDisplayed()
        rule.onNodeWithText("حلقة باء").assertIsDisplayed()
        rule.onNodeWithText("25%").assertIsDisplayed()
        rule.onNodeWithText("75%").assertIsDisplayed()
        val shifted=rule.runOnIdle { state.value.rows }
        assertEquals(listOf(earlierKey,firstKey,secondKey),shifted.map { it.displayKey })
        assertEquals(listOf(0,1,2),shifted.map { it.index })
        val insertedTop=rule.onNodeWithText("حلقة جديدة").fetchSemanticsNode().boundsInRoot.top
        val movedTop=rule.onNodeWithText("حلقة ألف").fetchSemanticsNode().boundsInRoot.top
        assertTrue("new row must render above the preserved first item",insertedTop<movedTop)
        assertTrue("old row position must move down",movedTop>oldTop)

        // A changed owner snapshot must not continue showing old progress as
        // current, even when the serialized keys remain identical.
        rule.runOnIdle { state.value=state.value.copy(state="changed",responseSerial=3) }
        rule.onAllNodesWithText("بيانات سابقة").assertCountEquals(3)
        rule.onNodeWithText("25%").assertDoesNotExist()
        rule.onNodeWithText("75%").assertDoesNotExist()
        rule.runOnIdle { state.value=state.value.copy(state="observed",responseSerial=4) }
        rule.onNodeWithText("25%").assertIsDisplayed()
        rule.onNodeWithText("75%").assertIsDisplayed()
        rule.runOnIdle {
            state.value=state.value.copy(
                rows=listOf(first,second),responseSerial=5
            )
        }
        rule.onNodeWithText("حلقة جديدة").assertDoesNotExist()
        rule.onNodeWithText("حلقة ألف").assertIsDisplayed()
        rule.onNodeWithText("25%").assertIsDisplayed()
        println("CP_COMPOSE_OWNER_KEYSET_SHIFT_PASS rows=2,3,2 stable=verified progress=25,75 stale=hidden removed=verified")
    }

}
