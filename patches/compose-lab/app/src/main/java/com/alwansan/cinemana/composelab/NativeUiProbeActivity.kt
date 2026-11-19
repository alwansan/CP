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
        if (!LabStartupApplication.uiReady()) { finish(); return }
        window.statusBarColor=0xff090a0d.toInt()
        window.navigationBarColor=0xff090a0d.toInt()
        setContent {
            MaterialTheme(colorScheme=darkColorScheme(background=Color(0xff090a0d))) {
                CompositionLocalProvider(LocalLayoutDirection provides LayoutDirection.Rtl) {
                    Column(Modifier.fillMaxSize().background(MaterialTheme.colorScheme.background).padding(16.dp)) {
                        Text("CP_NATIVE_UI_READY")
                        Text("PID: "+android.os.Process.myPid())
                        OwnerReadPanel(foreground) { finish() }
                    }
                }
            }
        }
    }
    override fun onResume(){super.onResume();foreground=true}
    override fun onPause(){foreground=false;super.onPause()}
}
