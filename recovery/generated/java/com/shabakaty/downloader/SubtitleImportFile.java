package com.shabakaty.downloader;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import androidx.recyclerview.widget.RecyclerView;
import com.connectsdk.service.DLNAService;
import com.shabakaty.cinemana.features.SubtitleCompat131;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public final class SubtitleImportFile {
    private SubtitleImportFile() {
    }

    /* JADX WARN: Code duplicated, block: B:18:0x003f A[PHI: r5
      0x003f: PHI (r5v2 android.net.Uri) = (r5v0 android.net.Uri), (r5v4 android.net.Uri) binds: [B:9:0x001d, B:11:0x0027] A[DONT_GENERATE, DONT_INLINE]] */
    public static Uri a(Context context, Uri uri) throws IOException {
        String strB;
        InputStream inputStreamOpenInputStream;
        int columnIndex;
        Uri uri2 = null;
        if (context != null && uri != null) {
            if (j32.a("file", uri.getScheme())) {
                return uri;
            }
            String lastPathSegment = null;
            String[] strArr = {"_display_name"};
            ContentResolver contentResolver = context.getContentResolver();
            if (contentResolver != null) {
                uri2 = null;
                Cursor cursorQuery = contentResolver.query(uri, strArr, null, null, null);
                if (cursorQuery != null) {
                    if (cursorQuery.moveToFirst() && (columnIndex = cursorQuery.getColumnIndex("_display_name")) >= 0) {
                        lastPathSegment = cursorQuery.getString(columnIndex);
                    }
                    cursorQuery.close();
                } else {
                    lastPathSegment = uri.getLastPathSegment();
                }
            } else {
                lastPathSegment = uri.getLastPathSegment();
            }
            if (lastPathSegment != null && (strB = b(lastPathSegment)) != null) {
                File file = new File(context.getCacheDir(), "USER_SUBTITLE_" + System.currentTimeMillis() + "." + strB);
                ContentResolver contentResolver2 = context.getContentResolver();
                if (contentResolver2 != null && (inputStreamOpenInputStream = contentResolver2.openInputStream(uri)) != null) {
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    try {
                        bp.i(inputStreamOpenInputStream, fileOutputStream, RecyclerView.b0.FLAG_BOUNCED_FROM_HIDDEN_LIST);
                        fileOutputStream.flush();
                        he0.d(fileOutputStream, null);
                        he0.d(inputStreamOpenInputStream, null);
                        SubtitleCompat131.cleanupOldImportsExcept(context, file.getAbsolutePath());
                        return Uri.fromFile(file);
                    } catch (Throwable th) {
                        he0.d(fileOutputStream, th);
                        he0.d(inputStreamOpenInputStream, th);
                        return uri2;
                    }
                }
            }
        }
        return uri2;
    }

    private static String b(String str) {
        String strSubstring;
        int iLastIndexOf;
        if (str == null || (iLastIndexOf = (strSubstring = str.substring(str.lastIndexOf("/") + 1)).lastIndexOf(".")) < 0) {
            return null;
        }
        String lowerCase = strSubstring.substring(iLastIndexOf + 1).toLowerCase(Locale.ENGLISH);
        if (j32.a(lowerCase, DLNAService.DEFAULT_SUBTITLE_TYPE) || j32.a(lowerCase, "vtt") || j32.a(lowerCase, "ass") || j32.a(lowerCase, "ssa")) {
            return lowerCase;
        }
        return null;
    }
}
