package com.shabakaty.cinemana.helpers.casting.receivers;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.shabakaty.downloader.j51;
import com.shabakaty.downloader.tu0;

/* JADX INFO: loaded from: classes.dex */
public class RemoteReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (action != null && action.equals("play")) {
            j51.b().f(new tu0(tu0.c));
            return;
        }
        if (action != null && action.equals("pause")) {
            j51.b().f(new tu0(tu0.d));
        } else {
            if (action == null || !action.equals("close")) {
                return;
            }
            j51.b().f(new tu0(tu0.e));
        }
    }
}
