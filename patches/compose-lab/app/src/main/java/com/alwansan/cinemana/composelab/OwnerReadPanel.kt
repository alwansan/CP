package com.alwansan.cinemana.composelab

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.drawWithContent
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.unit.dp

@Composable
internal fun OwnerReadPanel(foreground: Boolean, onDrawState: ((OwnerScreen,Int,Int)->Unit)?=null, close: () -> Unit) {
    val context = LocalContext.current
    var client by remember { mutableStateOf<LabOwnerClient?>(null) }
    var reconnect by remember { mutableIntStateOf(0) }
    DisposableEffect(foreground, context, reconnect) {
        val connection=if(foreground) LabOwnerClient(context) else null
        client=connection
        onDispose { connection?.close() }
    }
    val current = client
    val state = current?.screen ?: OwnerScreen()
    val drawObserver=if(onDrawState==null)Modifier else Modifier.drawWithContent {
        drawContent()
        onDrawState.invoke(state,size.width.toInt(),size.height.toInt())
    }
    Column(Modifier.fillMaxSize().then(drawObserver),verticalArrangement=Arrangement.spacedBy(8.dp)) {
        Text("قراءة IPC مستقلة · بيانات اختبار فقط")
        Text("حالة: ${state.state}",Modifier.testTag("owner-status"))
        Text("PID: ${state.pid}",Modifier.testTag("owner-pid"))
        Text("Reply: ${state.responseSerial}",Modifier.testTag("owner-serial"))
        if (!state.busy && state.pid==0) TextButton(onClick={reconnect++},modifier=Modifier.testTag("owner-reconnect")) {Text("إعادة الاتصال")}
        Text("صفحة ${state.page} · ${state.rows.size} عنصر",Modifier.testTag("owner-count"))
        Row {
            TextButton(onClick={current?.request(1)},enabled=!state.busy && state.pid>0,modifier=Modifier.testTag("owner-first")){Text("الأولى")}
            TextButton(onClick={current?.request(2)},enabled=!state.busy&&state.more,modifier=Modifier.testTag("owner-next")){Text("التالي")}
            TextButton(onClick={current?.request(3)},enabled=!state.busy&&state.page>0,modifier=Modifier.testTag("owner-refresh")){Text("تحديث")}
            TextButton(onClick=close,modifier=Modifier.testTag("owner-close")){Text("إغلاق")}
        }
        LazyColumn(Modifier.weight(1f),verticalArrangement=Arrangement.spacedBy(6.dp)) {
            items(state.rows,key={it.index},contentType={"ipc"}) { row ->
                Text("عنصر ${row.index+1} · ${row.progress}/${row.total} · ${row.transport}",Modifier.fillMaxWidth().padding(8.dp))
            }
        }
    }
}
