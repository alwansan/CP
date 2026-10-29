package com.shabakaty.downloader;

import com.onesignal.OSSubscriptionState;
import org.json.JSONObject;

/* JADX INFO: compiled from: OSSubscriptionStateChanges.java */
/* JADX INFO: loaded from: classes.dex */
public class e43 {
    public OSSubscriptionState a;
    public OSSubscriptionState b;

    public e43(OSSubscriptionState oSSubscriptionState, OSSubscriptionState oSSubscriptionState2) {
        this.a = oSSubscriptionState;
        this.b = oSSubscriptionState2;
    }

    public String toString() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("from", this.a.b());
            jSONObject.put("to", this.b.b());
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return jSONObject.toString();
    }
}
