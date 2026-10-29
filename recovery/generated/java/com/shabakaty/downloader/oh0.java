package com.shabakaty.downloader;

import android.util.Log;
import com.cinemana.pro.R;
import com.connectsdk.device.ConnectableDevice;
import com.connectsdk.device.ConnectableDeviceListener;
import com.connectsdk.service.DeviceService;
import com.connectsdk.service.command.ServiceCommandError;
import com.shabakaty.cinemana.helpers.casting.DLNAControllerService;
import java.util.List;

/* JADX INFO: compiled from: DLNAConnectableDeviceListener.kt */
/* JADX INFO: loaded from: classes.dex */
public final class oh0 implements ConnectableDeviceListener {
    public final DLNAControllerService a;

    public oh0(DLNAControllerService dLNAControllerService) {
        this.a = dLNAControllerService;
    }

    @Override // com.connectsdk.device.ConnectableDeviceListener
    public void onCapabilityUpdated(ConnectableDevice connectableDevice, List<String> list, List<String> list2) {
        Log.i("ConnectableDeviceListen", "er ===>> onCapabilityUpdated");
    }

    @Override // com.connectsdk.device.ConnectableDeviceListener
    public void onConnectionFailed(ConnectableDevice connectableDevice, ServiceCommandError serviceCommandError) {
        Log.i("ConnectableDeviceListen", "er ===>> onConnectionFailed");
        DLNAControllerService dLNAControllerService = this.a;
        if (dLNAControllerService == null) {
            return;
        }
        dLNAControllerService.b().setImageResource(R.drawable.ic_mr_button_disconnected_dark);
    }

    @Override // com.connectsdk.device.ConnectableDeviceListener
    public void onDeviceDisconnected(ConnectableDevice connectableDevice) {
        Log.i("ConnectableDeviceListen", "er ===>> onDeviceDisconnected");
        DLNAControllerService dLNAControllerService = this.a;
        if ((dLNAControllerService == null ? null : dLNAControllerService.v) != null && j32.a(connectableDevice, dLNAControllerService.v)) {
            DLNAControllerService.H = false;
            DLNAControllerService dLNAControllerService2 = this.a;
            dLNAControllerService2.w = null;
            dLNAControllerService2.u = null;
            dLNAControllerService2.v = null;
        }
        DLNAControllerService dLNAControllerService3 = this.a;
        if (dLNAControllerService3 != null) {
            dLNAControllerService3.stopForeground(true);
        }
        DLNAControllerService dLNAControllerService4 = this.a;
        if (dLNAControllerService4 == null) {
            return;
        }
        dLNAControllerService4.b().setImageResource(R.drawable.ic_mr_button_disconnected_dark);
    }

    @Override // com.connectsdk.device.ConnectableDeviceListener
    public void onDeviceReady(ConnectableDevice connectableDevice) {
        Log.i("ConnectableDeviceListen", "er ===>> onDeviceReady");
        DLNAControllerService dLNAControllerService = this.a;
        if (dLNAControllerService == null) {
            return;
        }
        dLNAControllerService.b().setImageResource(R.drawable.mr_button_connected_dark);
    }

    @Override // com.connectsdk.device.ConnectableDeviceListener
    public void onPairingRequired(ConnectableDevice connectableDevice, DeviceService deviceService, DeviceService.PairingType pairingType) {
        Log.i("ConnectableDeviceListen", "er ===>> onPairingRequired");
    }
}
