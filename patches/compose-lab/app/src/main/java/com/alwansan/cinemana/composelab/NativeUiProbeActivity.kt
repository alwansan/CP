package com.alwansan.cinemana.composelab

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
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
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        if (!LabStartupEvidence.uiReady()) { finish(); return }
        window.statusBarColor=0xff090a0d.toInt()
        window.navigationBarColor=0xff090a0d.toInt()
        setContent {
            MaterialTheme(colorScheme=darkColorScheme(background=Color(0xff090a0d))) {
                CompositionLocalProvider(LocalLayoutDirection provides LayoutDirection.Rtl) {
                    Column(Modifier.fillMaxSize().background(MaterialTheme.colorScheme.background).padding(16.dp)) {
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
    override fun onResume(){super.onResume();LabStartupEvidence.uiResume(true);foreground=true;android.util.Log.i("CPNativeUi","CP_NATIVE_UI_RESUME pid="+android.os.Process.myPid())}
    override fun onWindowFocusChanged(hasFocus:Boolean){super.onWindowFocusChanged(hasFocus);LabStartupEvidence.uiFocus(hasFocus);android.util.Log.i("CPNativeUi","focus="+hasFocus)}
    override fun onPause(){foreground=false;LabStartupEvidence.uiResume(false);super.onPause()}
}
