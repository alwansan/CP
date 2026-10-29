package com.shabakaty.cinemana.ca1;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.UUID;

/* JADX INFO: loaded from: classes6.dex */
public final class Fresh121 {
    static File marker(Object obj, String str) throws Exception {
        File file = new File((File) Restart108.call(obj, "getFilesDir", new Object[0]), "request121");
        if (file.isDirectory() || file.mkdirs()) {
            return new File(file, Lease115.digest(str) + ".epoch");
        }
        throw new IOException("request directory");
    }

    static synchronized String epoch(Object obj, String str) throws Exception {
        String utf;
        File fileMarker = marker(obj, str);
        if (fileMarker.exists()) {
            DataInputStream dataInputStream = new DataInputStream(new FileInputStream(fileMarker));
            try {
                utf = dataInputStream.readUTF();
                dataInputStream.close();
            } catch (Throwable th) {
                try {
                    dataInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } else {
            utf = "legacy";
        }
        return utf;
    }

    static synchronized void advance(Object obj, String str) throws Exception {
        File fileMarker = marker(obj, str);
        File file = new File(fileMarker.getPath() + "." + UUID.randomUUID() + ".tmp");
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                DataOutputStream dataOutputStream = new DataOutputStream(fileOutputStream);
                try {
                    dataOutputStream.writeUTF(UUID.randomUUID().toString());
                    dataOutputStream.flush();
                    fileOutputStream.getFD().sync();
                    dataOutputStream.close();
                    fileOutputStream.close();
                    if (!file.renameTo(fileMarker)) {
                        throw new IOException("request epoch commit");
                    }
                    file.delete();
                } catch (Throwable th) {
                    try {
                        dataOutputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                try {
                    fileOutputStream.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
            }
        } catch (Throwable th5) {
            file.delete();
            throw th5;
        }
    }

    public static void deleted(Object obj, String str) {
        try {
            Restart108.call(Class.forName("com.shabakaty.cinemana.ca1.Delete94"), "releaseAdmission", str);
        } catch (Exception e) {
            Restart108.log("request_delete_admission_error122", e);
        }
        try {
            advance(obj, str);
        } catch (Exception e2) {
            Restart108.log("request_delete_epoch_error121", e2);
        }
    }

    public static void begin(Object obj, Object obj2) throws Exception {
        String str = Restart108.str(obj2, "nb");
        if (str.isEmpty()) {
            throw new IOException("missing request identity");
        }
        Object objCall = Restart108.call(obj, "getApplicationContext", new Object[0]);
        Restart108.context = objCall;
        boolean zDeleted = Restart108.deleted(str);
        Restart108.call(Class.forName("com.shabakaty.cinemana.ca1.Delete94"), "reenqueue", str);
        advance(objCall, str);
        if (zDeleted) {
            Restart108.put(Restart108.prefs(objCall, "ca1_restart108"), Restart108.key(str), null);
        }
    }

    public static void skipped(Object obj, Object obj2) {
        try {
            Restart108.call(obj, "log", "enqueue_skip", "id=" + Restart108.str(obj2, "id") + " reason=in_memory_admission", null);
        } catch (Exception e) {
            Restart108.log("request_skip_log_error122", e);
        }
    }

    static void validate(Object obj, Object obj2) throws Exception {
        Lease115.Lease lease = Lease115.current.get();
        if (lease != null && lease.requestEpoch != null && !lease.requestEpoch.equals(epoch(obj, Restart108.str(obj2, "id")))) {
            throw new IOException("obsolete mux request");
        }
    }
}
