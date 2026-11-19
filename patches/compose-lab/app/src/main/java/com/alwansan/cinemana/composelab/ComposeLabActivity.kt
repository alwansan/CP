package com.alwansan.cinemana.composelab

import android.os.Bundle
import android.content.Intent
import androidx.compose.ui.platform.LocalContext
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.compose.BackHandler
import androidx.compose.animation.core.animateFloatAsState
import androidx.compose.animation.core.tween
import androidx.compose.foundation.*
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.saveable.rememberSaveableStateHolder
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalLayoutDirection
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.LayoutDirection
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import kotlinx.coroutines.delay

private val Obsidian = Color(0xff090a0d)
private val Panel = Color(0xff17191e)
private val Ivory = Color(0xfff8f4ee)
private val Coral = Color(0xffff856c)
private val Muted = Color(0xffb7b6bb)
private val routes = listOf("الرئيسية", "الأقسام", "البحث", "التحميلات", "الحساب")
private val icons = listOf("⌂", "▦", "⌕", "↓", "◉")
private val titles = listOf("أفق بعيد", "مدينة الليل", "الرحلة الأخيرة", "عالم آخر", "أسرار البحر")
private const val TOTAL = 452
private const val PAGE = 24
private const val PAGES = 19

class ComposeLabActivity : ComponentActivity() {
    private var foreground by mutableStateOf(false)
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        window.statusBarColor = 0xff090a0d.toInt()
        window.navigationBarColor = 0xff090a0d.toInt()
        setContent { LabShell(foreground) }
    }
    override fun onResume() { super.onResume(); foreground = true }
    override fun onPause() { foreground = false; super.onPause() }
}

@Composable
private fun LabShell(foreground: Boolean) {
    val context=LocalContext.current
    var route by rememberSaveable { mutableIntStateOf(0) }
    var detail by rememberSaveable { mutableStateOf("") }
    var appearance by rememberSaveable { mutableStateOf(false) }
    var oled by rememberSaveable { mutableStateOf(false) }
    var motion by rememberSaveable { mutableStateOf(true) }
    var continueStyle by rememberSaveable { mutableIntStateOf(0) }
    var page by rememberSaveable { mutableIntStateOf(0) }
    var stress by rememberSaveable { mutableStateOf(false) }
    var ownerPanel by rememberSaveable { mutableStateOf(false) }
    val progress = remember { List(TOTAL) { mutableIntStateOf(0) } }
    val holder = rememberSaveableStateHolder()
    val bg = if (oled) Color.Black else Obsidian
    val active = if (detail.isNotBlank()) detail else if (appearance) "المظهر" else routes[route]
    // Never run the fixture ticker when this screen or the Activity is hidden.
    LaunchedEffect(foreground, route, stress, detail, appearance, ownerPanel) {
        if (foreground && route == 3 && stress && detail.isEmpty() && !appearance && !ownerPanel) {
            var cursor = 0
            while (true) {
                delay(200)
                // 64 synthetic in-memory updates only; no IO, no engine or IPC.
                repeat(64) { offset ->
                    val index = (cursor + offset) % TOTAL
                    val s = progress[index]
                    s.intValue = (s.intValue + 3) % 101
                }
                cursor = (cursor + 64) % TOTAL
            }
        }
    }
    BackHandler(enabled = ownerPanel || detail.isNotBlank() || appearance || route != 0) {
        when { ownerPanel -> ownerPanel = false; detail.isNotBlank() -> detail = ""; appearance -> appearance = false; else -> route = 0 }
    }
    MaterialTheme(colorScheme = darkColorScheme(background = bg, surface = Panel, primary = Coral, onSurface = Ivory, onBackground = Ivory, onPrimary = Obsidian)) {
        CompositionLocalProvider(LocalLayoutDirection provides LayoutDirection.Rtl) {
            Column(Modifier.fillMaxSize().background(bg).windowInsetsPadding(WindowInsets.safeDrawing).padding(horizontal = 14.dp)) {
                Row(Modifier.fillMaxWidth().height(52.dp), verticalAlignment = Alignment.CenterVertically) {
                    Text("CINEMANA", fontWeight = FontWeight.Black, letterSpacing = 2.sp, fontSize = 20.sp, color = Ivory)
                    Spacer(Modifier.weight(1f))
                    Text("NATIVE / 01", color = Coral, fontSize = 11.sp)
                    if(route==4 && android.os.Build.VERSION.SDK_INT>=28) TextButton(onClick={context.startActivity(Intent(context,NativeUiProbeActivity::class.java))},modifier=Modifier.testTag("nativeui-open")) {Text("UI مستقل",fontSize=11.sp)}
                }
                Text("معاينة مستقلة · بيانات وهمية فقط", color = Muted, fontSize = 12.sp, modifier = Modifier.testTag("disclosure"))
                Row(Modifier.fillMaxWidth().padding(vertical = 8.dp), verticalAlignment = Alignment.CenterVertically) {
                    if (detail.isNotBlank() || appearance) TextButton(onClick = { detail = ""; appearance = false }) { Text("رجوع") }
                    Text(active, Modifier.testTag("active-$route"), fontSize = 25.sp, fontWeight = FontWeight.Bold, color = Ivory)
                }
                Box(Modifier.weight(1f).fillMaxWidth()) {
                    when {
                        route == 3 && ownerPanel -> OwnerReadPanel(foreground) { ownerPanel = false }
                        detail.isNotBlank() -> Detail(detail) { detail = "" }
                        appearance -> Appearance(oled, motion, continueStyle, { oled = it }, { motion = it }, { continueStyle = it })
                        else -> holder.SaveableStateProvider(route) {
                            when (route) {
                                0 -> Home(continueStyle) { detail = it }
                                1 -> Categories { detail = it }
                                2 -> Search { detail = it }
                                3 -> Downloads(page, progress, stress, { stress = !stress }, { page = it }, { ownerPanel = true })
                                4 -> Account { appearance = true }
                            }
                        }
                    }
                }
                Row(
                    Modifier.fillMaxWidth().padding(vertical = 8.dp).clip(RoundedCornerShape(24.dp)).background(Panel).padding(4.dp),
                    horizontalArrangement = Arrangement.SpaceEvenly
                ) {
                    routes.forEachIndexed { i, label ->
                        val selected = route == i
                        val tint by animateFloatAsState(if (selected) 1f else 0f, animationSpec = tween(if (motion) 180 else 0), label = "dock")
                        Column(
                            Modifier.weight(1f).clip(RoundedCornerShape(20.dp))
                                .background(Ivory.copy(alpha = tint)).clickable { route = i; detail = ""; appearance = false; ownerPanel = false }
                                .testTag("route-$i").height(56.dp),
                            horizontalAlignment = Alignment.CenterHorizontally, verticalArrangement = Arrangement.Center
                        ) {
                            val color = if (selected) Obsidian else Muted
                            Text(icons[i], color = color, fontSize = 21.sp)
                            Text(label, color = color, fontSize = 10.sp, maxLines = 1)
                        }
                    }
                }
            }
        }
    }
}

@Composable
private fun CardLabel(title: String, subtitle: String, modifier: Modifier = Modifier, onClick: () -> Unit) {
    Column(modifier.clip(RoundedCornerShape(16.dp)).background(Panel).clickable(onClick = onClick).padding(12.dp)) {
        Text(title, color = Ivory, fontWeight = FontWeight.Bold, fontSize = 17.sp)
        Text(subtitle, color = Muted, fontSize = 12.sp)
    }
}

@Composable
private fun Home(style: Int, open: (String) -> Unit) {
    LazyColumn(verticalArrangement = Arrangement.spacedBy(12.dp), modifier = Modifier.fillMaxSize()) {
        item(key = "hero") {
            Column(Modifier.fillMaxWidth().height(210.dp).clip(RoundedCornerShape(26.dp))
                .background(Brush.linearGradient(listOf(Color(0xff42384d), Color(0xff1c202c), Obsidian))).padding(20.dp),
                verticalArrangement = Arrangement.Bottom) {
                Text("اختيار اليوم", color = Coral, fontSize = 13.sp)
                Text("أفق بعيد", color = Ivory, fontSize = 31.sp, fontWeight = FontWeight.Black)
                Text("فيلم تجريبي · 2026", color = Muted)
                Button(onClick = { open(titles[0]) }, modifier = Modifier.testTag("hero-detail"),
                    colors = ButtonDefaults.buttonColors(containerColor = Ivory, contentColor = Obsidian)) { Text("عرض التفاصيل") }
            }
        }
        item(key = "continue") {
            Text("أكمل المشاهدة", color = Ivory, fontWeight = FontWeight.Bold)
            if (style == 1) CardLabel(titles[1], "42% · نمط عريض", Modifier.fillMaxWidth()) { open(titles[1]) }
            else LazyRow(horizontalArrangement = Arrangement.spacedBy(9.dp)) {
                items(titles.take(3), key = { it }) { title ->
                    CardLabel(title, "42% · معاينة", Modifier.width(if (style == 2) 105.dp else 190.dp).height(if (style == 2) 142.dp else 86.dp)) { open(title) }
                }
            }
        }
        items(listOf("أحدث الأفلام", "مسلسلات مختارة", "مجموعات"), key = { it }) { section ->
            Column {
                Text(section, color = Ivory, fontWeight = FontWeight.Bold, modifier = Modifier.padding(bottom = 8.dp))
                LazyRow(horizontalArrangement = Arrangement.spacedBy(9.dp)) {
                    items(titles, key = { it }) { title ->
                        CardLabel(title, "عنصر وهمي", Modifier.width(112.dp).height(132.dp)) { open(title) }
                    }
                }
            }
        }
    }
}

@Composable
private fun Categories(open: (String) -> Unit) {
    LazyColumn(verticalArrangement = Arrangement.spacedBy(8.dp)) {
        items(listOf("أفلام", "مسلسلات", "أنمي", "مغامرة", "دراما", "خيال علمي"), key = { it }) {
            CardLabel(it, "تصنيف تجريبي", Modifier.fillMaxWidth().height(78.dp)) { open(it) }
        }
    }
}
@Composable
private fun Search(open: (String) -> Unit) {
    var query by rememberSaveable { mutableStateOf("") }
    Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
        OutlinedTextField(query, { query = it.take(100) }, modifier = Modifier.fillMaxWidth().testTag("search-field"), singleLine = true, label = { Text("ابحث") })
        val normalized = query.trim().replace(Regex("[\\u064B-\\u065F\\u0670]"), "").replace(Regex("[أإآ]"), "ا").replace('ى','ي')
        LazyColumn(verticalArrangement = Arrangement.spacedBy(6.dp)) {
            items(titles.filter { it.replace(Regex("[أإآ]"), "ا").replace('ى','ي').contains(normalized, ignoreCase = true) }, key = { it }) {
                CardLabel(it, "نتيجة تجريبية", Modifier.fillMaxWidth()) { open(it) }
            }
        }
    }
}
@Composable
private fun Detail(title: String, close: () -> Unit) {
    Column(verticalArrangement = Arrangement.spacedBy(12.dp)) {
        Box(Modifier.fillMaxWidth().height(235.dp).clip(RoundedCornerShape(22.dp)).background(Brush.verticalGradient(listOf(Color(0xff493c59), Panel))), contentAlignment = Alignment.Center) {
            Text(title, color = Ivory, fontSize = 28.sp)
        }
        Text("تفاصيل مصطنعة · لا يوجد تشغيل أو تنزيل حقيقي", color = Muted)
        Button(onClick = close, modifier = Modifier.testTag("detail-close")) { Text("إغلاق") }
    }
}
@Composable
private fun Downloads(page: Int, progress: List<MutableIntState>, stress: Boolean, toggle: () -> Unit, navigate: (Int) -> Unit, openOwner: () -> Unit) {
    val start = page * PAGE
    val count = minOf(PAGE, TOTAL - start)
    Column(Modifier.fillMaxSize(), verticalArrangement = Arrangement.spacedBy(8.dp)) {
        Text("452 حلقة تجريبية · $count في الصفحة", Modifier.testTag("page-count"), color = Muted)
        Row { Button(onClick = toggle, modifier = Modifier.testTag("stress")) { Text(if (stress) "إيقاف تحديثات العرض" else "تشغيل تحديثات العرض") }; TextButton(onClick=openOwner,modifier=Modifier.testTag("owner-open")) { Text("IPC") } }
        Row(Modifier.fillMaxWidth(), verticalAlignment = Alignment.CenterVertically, horizontalArrangement = Arrangement.SpaceBetween) {
            TextButton(onClick = { navigate(page - 1) }, enabled = page > 0, modifier = Modifier.testTag("prev")) { Text("السابق") }
            Text("${page + 1} / $PAGES", Modifier.testTag("page-index"), color = Ivory)
            TextButton(onClick = { navigate(page + 1) }, enabled = page < PAGES - 1, modifier = Modifier.testTag("next")) { Text("التالي") }
        }
        key(page) {
            LazyColumn(Modifier.weight(1f).fillMaxWidth().testTag("download-list"), verticalArrangement = Arrangement.spacedBy(6.dp)) {
                items(count, key = { start + it }, contentType = { "download" }) { pos -> DownloadRow(start + pos, progress[start + pos]) }
            }
        }
    }
}
@Composable
private fun DownloadRow(id: Int, progress: MutableIntState) {
    val value = progress.intValue
    Column(Modifier.fillMaxWidth().clip(RoundedCornerShape(14.dp)).background(Panel).padding(12.dp).testTag("row-$id")) {
        Text("الحلقة ${id + 1}", color = Ivory)
        LinearProgressIndicator(progress = { value / 100f }, modifier = Modifier.fillMaxWidth().padding(vertical = 8.dp), color = Coral, trackColor = Obsidian)
        Text("$value%", color = Muted, fontSize = 12.sp)
    }
}
@Composable
private fun Account(appearance: () -> Unit) {
    Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
        CardLabel("حساب تجريبي", "لا اتصال بالحساب الحقيقي", Modifier.fillMaxWidth()) {}
        Button(onClick = appearance, modifier = Modifier.testTag("appearance")) { Text("المظهر والتخصيص") }
        Text("النسخة 0.1 · Jetpack Compose · Android Native", color = Muted)
    }
}
@Composable
private fun Appearance(oled: Boolean, motion: Boolean, continueStyle: Int, setOled: (Boolean) -> Unit, setMotion: (Boolean) -> Unit, setStyle: (Int) -> Unit) {
    Column(verticalArrangement = Arrangement.spacedBy(12.dp)) {
        Row(verticalAlignment = Alignment.CenterVertically) { Text("OLED", Modifier.weight(1f), color = Ivory); Switch(oled, setOled, Modifier.testTag("oled")) }
        Row(verticalAlignment = Alignment.CenterVertically) { Text("حركات خفيفة", Modifier.weight(1f), color = Ivory); Switch(motion, setMotion, Modifier.testTag("motion")) }
        Text("أكمل المشاهدة", color = Ivory)
        Row(horizontalArrangement = Arrangement.spacedBy(4.dp)) {
            listOf("بطاقة", "عريض", "ملصق").forEachIndexed { index, name ->
                FilterChip(selected = continueStyle == index, onClick = { setStyle(index) }, label = { Text(name) }, modifier = Modifier.testTag("style-$index"))
            }
        }
        Text("الوضع الخفيف افتراضياً، بدون مؤثرات ضبابية مستمرة.", color = Muted)
    }
}
