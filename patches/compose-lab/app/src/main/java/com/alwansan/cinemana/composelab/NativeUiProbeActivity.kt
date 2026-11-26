package com.alwansan.cinemana.composelab

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalLayoutDirection
import androidx.compose.ui.unit.LayoutDirection
import androidx.compose.ui.unit.dp

/** Actual Compose renderer in :nativeui, private/opt-in, independent of normal lab launcher. */
class NativeUiProbeActivity : ComponentActivity() {
    private var foreground by mutableStateOf(false)
    private var samePackageGate = false
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        if (packageName == "com.cinemana.pro") {
            check(android.os.Build.VERSION.SDK_INT >= 28 &&
                android.app.Application.getProcessName() == "com.cinemana.pro:nativeui" &&
                application.javaClass.name == "cp.nativegate.NativeGateApplication") { "invalid original package renderer process" }
            samePackageGate = true
            window.statusBarColor = 0xff090a0d.toInt()
            window.navigationBarColor = 0xff090a0d.toInt()
            val realOwner = intent.getBooleanExtra("cp_real_owner",false)
            val presentation = realOwner && intent.getBooleanExtra("cp_download_presentation",false)
            setContent { SamePackageRendererGate(realOwner,foreground,presentation) { finish() } }
            return
        }
        if (!LabStartupEvidence.uiReady()) { finish(); return }
        window.statusBarColor=0xff090a0d.toInt()
        window.navigationBarColor=0xff090a0d.toInt()
        setContent {
            MaterialTheme(colorScheme=darkColorScheme(background=Color(0xff090a0d), onBackground=Color(0xfff8f4ee))) {
                CompositionLocalProvider(
                LocalLayoutDirection provides LayoutDirection.Rtl,
                LocalContentColor provides MaterialTheme.colorScheme.onBackground,
            ) {
                    Column(Modifier.fillMaxSize().background(MaterialTheme.colorScheme.background).windowInsetsPadding(WindowInsets.safeDrawing).padding(16.dp)) {
                        Text("CP_NATIVE_UI_READY")
                        Text("PID: "+android.os.Process.myPid())
                        TextButton(onClick={requestedOrientation=android.content.pm.ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE}) {Text("CP_ROTATE_LANDSCAPE")}
                        TextButton(onClick={requestedOrientation=android.content.pm.ActivityInfo.SCREEN_ORIENTATION_PORTRAIT}) {Text("CP_ROTATE_PORTRAIT")}
                        OwnerReadPanel(foreground,onDrawState={ state,w,h ->
                            LabStartupEvidence.uiDraw(state.state,state.page,state.rows.size,state.responseSerial,state.pid,w,h)
                        }) { finish() }
                    }
                }
            }
        }
    }
    override fun onResume(){super.onResume();foreground=true;if (!samePackageGate) { LabStartupEvidence.uiResume(true) };android.util.Log.i("CPNativeUi","CP_NATIVE_UI_RESUME pid="+android.os.Process.myPid())}
    override fun onWindowFocusChanged(hasFocus:Boolean){super.onWindowFocusChanged(hasFocus);if (!samePackageGate) LabStartupEvidence.uiFocus(hasFocus);android.util.Log.i("CPNativeUi","focus="+hasFocus)}
    override fun onPause(){foreground=false;if (!samePackageGate) { LabStartupEvidence.uiResume(false) };super.onPause()}
}

/** Installed real Compose proof only. No queue, DB, owner fixture, network or user data. */
@Composable
private fun SamePackageRendererGate(realOwner:Boolean,foreground:Boolean,presentation:Boolean,close:()->Unit) {
    var count by remember { mutableIntStateOf(0) }
    val rows = remember { (1..48).toList() }
    MaterialTheme(colorScheme=darkColorScheme(background=Color(0xff090a0d), onBackground=Color(0xfff8f4ee))) {
        CompositionLocalProvider(
                LocalLayoutDirection provides LayoutDirection.Rtl,
                LocalContentColor provides MaterialTheme.colorScheme.onBackground,
            ) {
            Column(Modifier.fillMaxSize().background(MaterialTheme.colorScheme.background)
                .windowInsetsPadding(WindowInsets.safeDrawing).padding(16.dp)) {
                if(presentation) {
                    OwnerReadPanel(foreground,presentation=true,close=close)
                    return@Column
                }
                Text("CP_SAME_PACKAGE_COMPOSE_READY")
                Text("PID: "+android.os.Process.myPid())
                Text("واجهة Cinemana المستقلة",style=MaterialTheme.typography.headlineSmall)
                Button(onClick={count++}) { Text("CP_COMPOSE_INCREMENT") }
                Text("CP_COMPOSE_COUNT_"+count)
                HorizontalDivider()
                if(realOwner) {
                    Box(Modifier.weight(1f)) {
                        OwnerReadPanel(foreground) { /* diagnostic view stays open */ }
                    }
                } else LazyColumn(Modifier.weight(1f),verticalArrangement=Arrangement.spacedBy(8.dp)) {
                    items(rows,key={it}) { row ->
                        Card(Modifier.fillMaxWidth()) {
                            Column(Modifier.padding(12.dp)) {
                                Text("CP_COMPOSE_ROW_"+row)
                                LinearProgressIndicator(progress={ (row%10)/10f },modifier=Modifier.fillMaxWidth())
                            }
                        }
                    }
                }
            }
        }
    }
}
