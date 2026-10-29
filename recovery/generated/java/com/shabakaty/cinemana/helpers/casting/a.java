package com.shabakaty.cinemana.helpers.casting;

import android.app.NotificationManager;
import com.connectsdk.service.capability.MediaControl;
import com.connectsdk.service.command.ServiceCommandError;
import com.shabakaty.downloader.hc1;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.j51;
import com.shabakaty.downloader.tu0;
import java.util.Objects;

/* JADX INFO: compiled from: DLNAControllerService.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a implements MediaControl.PlayStateListener {
    public final /* synthetic */ DLNAControllerService a;

    public a(DLNAControllerService dLNAControllerService) {
        this.a = dLNAControllerService;
    }

    @Override // com.connectsdk.service.capability.listeners.ErrorListener
    public void onError(ServiceCommandError serviceCommandError) {
        if (serviceCommandError != null) {
            hc1.a().b(serviceCommandError);
        }
        j51.b().f(new tu0(tu0.e));
    }

    @Override // com.connectsdk.service.capability.listeners.ResponseListener
    public void onSuccess(MediaControl.PlayStateStatus playStateStatus) {
        NotificationManager notificationManager;
        MediaControl.PlayStateStatus playStateStatus2 = playStateStatus;
        if (playStateStatus2 == null) {
            return;
        }
        DLNAControllerService dLNAControllerService = this.a;
        Objects.requireNonNull(dLNAControllerService);
        j32.e(playStateStatus2, "<set-?>");
        dLNAControllerService.y = playStateStatus2;
        if (playStateStatus2 == MediaControl.PlayStateStatus.Unknown || playStateStatus2 == MediaControl.PlayStateStatus.Idle) {
            j51.b().f(new tu0(tu0.e));
        } else {
            if (playStateStatus2 != MediaControl.PlayStateStatus.Finished || (notificationManager = dLNAControllerService.C) == null) {
                return;
            }
            notificationManager.cancelAll();
        }
    }
}
