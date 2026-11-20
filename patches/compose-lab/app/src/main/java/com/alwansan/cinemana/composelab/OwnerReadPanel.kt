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
import androidx.compose.ui.text.style.TextOverflow

@Composable
internal fun OwnerReadPanel(foreground: Boolean, onDrawState: ((OwnerScreen,Int,Int)->Unit)?=null, presentation: Boolean=false, close: () -> Unit) {
    val context = LocalContext.current
    val realOwner = context.packageName == "com.cinemana.pro"
    var client by remember { mutableStateOf<LabOwnerClient?>(null) }
    var reconnect by remember { mutableIntStateOf(0) }
    DisposableEffect(foreground, context, reconnect, presentation) {
        val connection=if(foreground) LabOwnerClient(context,autoRefresh=realOwner && presentation) else null
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
        if(presentation) {
            Text("التنزيلات",style=MaterialTheme.typography.headlineMedium)
            Text(when(state.state) {
                "observed" -> "تحديث تلقائي · آخر قراءة من محرك التنزيل"
                "connecting","reading" -> "جارٍ تحديث البيانات"
                "changed" -> "تغيرت القائمة، حدّث البيانات"
                else -> "تعذر تحديث البيانات"
            },Modifier.testTag("owner-status"))
        } else {
            Text(if(realOwner) "تنزيلات Cinemana · قراءة فقط" else "قراءة IPC مستقلة · بيانات اختبار فقط")
            Text("حالة: ${state.state}",Modifier.testTag("owner-status"))
            if(realOwner && state.state=="observed") Text("CP_REAL_OWNER_UI_OBSERVED")
            Text("PID: ${state.pid}",Modifier.testTag("owner-pid"))
            Text("Reply: ${state.responseSerial}",Modifier.testTag("owner-serial"))
        }
        if (!state.busy && state.pid==0) TextButton(onClick={reconnect++},modifier=Modifier.testTag("owner-reconnect")) {Text("إعادة الاتصال")}
        Text("صفحة ${state.page} · ${state.rows.size} عنصر",Modifier.testTag("owner-count"))
        Row {
            TextButton(onClick={current?.request(1)},enabled=!state.busy && state.pid>0,modifier=Modifier.testTag("owner-first")){Text("الأولى")}
            TextButton(onClick={current?.request(2)},enabled=!state.busy&&state.more,modifier=Modifier.testTag("owner-next")){Text("التالي")}
            TextButton(onClick={current?.request(3)},enabled=!state.busy&&state.page>0,modifier=Modifier.testTag("owner-refresh")){Text("تحديث")}
            TextButton(onClick=close,modifier=Modifier.testTag("owner-close")){Text("إغلاق")}
        }
        if(presentation && state.state=="observed" && state.rows.isEmpty()) Text("لا توجد تنزيلات")
        LazyColumn(Modifier.weight(1f),verticalArrangement=Arrangement.spacedBy(6.dp)) {
            items(state.rows,key={it.index},contentType={"ipc"}) { row ->
                if(presentation) DownloadObservationCard(row,state.state=="observed") else Text("عنصر ${row.index+1} · ${row.progress}/${row.total} · ${row.transport}" +
                    if(realOwner) " · ${row.observation}" else "",Modifier.fillMaxWidth().padding(8.dp))
            }
        }
    }
}

/** Read-only view. Transport completion is never MKV readiness. */
@Composable
private fun DownloadObservationCard(row:OwnerRow,fresh:Boolean) {
    val observed=fresh && row.observation=="OBSERVED"
    val label=when {
        !fresh -> "بيانات سابقة"
        row.observation=="CONFLICT" -> "تعارض بيانات النقل"
        row.observation=="NO_TRANSPORT_ROW" -> "حالة النقل غير متاحة"
        !observed -> "تعذر قراءة حالة النقل"
        else -> when(row.transport) {
            "PENDING" -> "في الطابور"
            "STARTED","PROGRESS" -> "جارٍ التنزيل"
            "PAUSED" -> "متوقف مؤقتاً"
            "RETRY" -> "إعادة المحاولة"
            "ERROR" -> "تعذر التنزيل"
            "COMPLETED" -> "اكتمل النقل · لم تثبت جاهزية الملف"
            else -> "حالة النقل غير مؤكدة"
        }
    }
    Card(Modifier.fillMaxWidth()) {
        Column(Modifier.padding(12.dp),verticalArrangement=Arrangement.spacedBy(4.dp)) {
            Text(row.title.ifBlank { "عنصر ${row.index+1}" },maxLines=2,overflow=TextOverflow.Ellipsis,style=MaterialTheme.typography.titleMedium)
            Text(label,style=MaterialTheme.typography.bodyMedium)
            if(observed && row.total>0) {
                val ratio=(row.progress.toDouble()/row.total.toDouble()).coerceIn(0.0,1.0)
                LinearProgressIndicator(progress={ratio.toFloat()},modifier=Modifier.fillMaxWidth())
                Text("${(ratio*100).toInt()}%")
            } else if(observed && row.progress>=0) {
                Text("${row.progress} بايت · الحجم غير معروف")
            }
        }
    }
}
