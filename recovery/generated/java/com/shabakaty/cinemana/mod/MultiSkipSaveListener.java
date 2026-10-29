package com.shabakaty.cinemana.mod;

import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.widget.EditText;
import android.widget.Switch;
import com.shabakaty.cinemana.player.CinemanaPlayerControllerView;

/* JADX INFO: loaded from: classes2.dex */
public final class MultiSkipSaveListener implements DialogInterface.OnClickListener {
    private final Context context;
    private final CinemanaPlayerControllerView controller;
    private final EditText edit;
    private final Switch toggle;

    public MultiSkipSaveListener(Context context, EditText editText, Switch r3, CinemanaPlayerControllerView cinemanaPlayerControllerView) {
        this.context = context;
        this.edit = editText;
        this.toggle = r3;
        this.controller = cinemanaPlayerControllerView;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        int i2;
        SharedPreferences.Editor editorEdit = this.context.getSharedPreferences("cinemana_player_prefs", 0).edit();
        try {
            i2 = Integer.parseInt(this.edit.getText().toString());
            if (i2 < 1) {
                i2 = 85;
            } else if (i2 > 3600) {
                i2 = 3600;
            }
        } catch (NumberFormatException unused) {
            i2 = 85;
        }
        editorEdit.putInt("multi_skip_seconds", i2);
        editorEdit.putBoolean("multi_skip_enabled", this.toggle.isChecked());
        editorEdit.apply();
        PlayerEnhancements.refreshMultiSkipButton(this.controller);
    }
}
