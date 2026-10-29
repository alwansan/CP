package com.shabakaty.downloader;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.DocumentsContract;
import android.util.Log;
import android.view.Display;
import android.webkit.MimeTypeMap;
import androidx.recyclerview.widget.RecyclerView;
import com.connectsdk.etc.helper.HttpMessage;
import com.connectsdk.service.DLNAService;
import com.connectsdk.service.command.ServiceCommand;
import com.google.android.exoplayer2.source.rtsp.RtspMediaSource;
import com.google.android.material.chip.ChipGroup;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.CinemanaApplication;
import com.shabakaty.cinemana.domain.models.local.Subtitle;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.cinemana.player.CinemanaPlayerControllerView;
import com.shabakaty.cinemana.player.VideoPlayerActivity;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.UnknownHostException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.RandomAccess;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import zendesk.core.Constants;
import zendesk.support.request.CellBase;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class cu implements ar.c, fj4.a, lw3.b, si2.a, si2.b, wc0, dm.d, wo2.g, oh3.a, com.google.android.exoplayer2.source.rtsp.b.a, com.google.android.exoplayer2.source.rtsp.f.c, q83.a, q05.a.InterfaceC0178a, np0.a, td0, kh4, wa3, ChipGroup.d, wl, n3, ze2 {
    public final /* synthetic */ int r = 8;
    public final /* synthetic */ Object s;

    public /* synthetic */ cu(SQLiteDatabase sQLiteDatabase) {
        this.s = sQLiteDatabase;
    }

    public /* synthetic */ cu(androidx.camera.view.e eVar) {
        this.s = eVar;
    }

    public /* synthetic */ cu(RtspMediaSource rtspMediaSource) {
        this.s = rtspMediaSource;
    }

    public /* synthetic */ cu(com.google.android.exoplayer2.source.rtsp.f.d dVar) {
        this.s = dVar;
    }

    public /* synthetic */ cu(com.google.firebase.remoteconfig.internal.a.C0090a c0090a) {
        this.s = c0090a;
    }

    public /* synthetic */ cu(CinemanaApplication cinemanaApplication) {
        this.s = cinemanaApplication;
    }

    public /* synthetic */ cu(CinemanaPlayerControllerView cinemanaPlayerControllerView) {
        this.s = cinemanaPlayerControllerView;
    }

    public /* synthetic */ cu(VideoPlayerActivity videoPlayerActivity) {
        this.s = videoPlayerActivity;
    }

    public /* synthetic */ cu(ay ayVar) {
        this.s = ayVar;
    }

    public /* synthetic */ cu(b24 b24Var) {
        this.s = b24Var;
    }

    public /* synthetic */ cu(bd3 bd3Var) {
        this.s = bd3Var;
    }

    public /* synthetic */ cu(du duVar) {
        this.s = duVar;
    }

    public /* synthetic */ cu(hp0 hp0Var) {
        this.s = hp0Var;
    }

    public /* synthetic */ cu(hp2 hp2Var) {
        this.s = hp2Var;
    }

    public /* synthetic */ cu(ky3 ky3Var) {
        this.s = ky3Var;
    }

    public /* synthetic */ cu(p75 p75Var) {
        this.s = p75Var;
    }

    public /* synthetic */ cu(pi2 pi2Var) {
        this.s = pi2Var;
    }

    public /* synthetic */ cu(q05 q05Var) {
        this.s = q05Var;
    }

    public /* synthetic */ cu(q10 q10Var) {
        this.s = q10Var;
    }

    public /* synthetic */ cu(s91 s91Var) {
        this.s = s91Var;
    }

    public /* synthetic */ cu(u4 u4Var) {
        this.s = u4Var;
    }

    public /* synthetic */ cu(wh1 wh1Var) {
        this.s = wh1Var;
    }

    public /* synthetic */ cu(x51 x51Var) {
        this.s = x51Var;
    }

    public /* synthetic */ cu(xx xxVar) {
        this.s = xxVar;
    }

    public /* synthetic */ cu(z64 z64Var) {
        this.s = z64Var;
    }

    public /* synthetic */ cu(Map map) {
        this.s = map;
    }

    public /* synthetic */ cu(CountDownLatch countDownLatch) {
        this.s = countDownLatch;
    }

    @Override // com.shabakaty.downloader.td0
    public Object M(uk4 uk4Var) {
        switch (this.r) {
            case 22:
                b24 b24Var = (b24) this.s;
                Objects.requireNonNull(b24Var);
                boolean z = false;
                if (uk4Var.l()) {
                    lg0 lg0Var = (lg0) uk4Var.h();
                    StringBuilder sbA = um3.a("Crashlytics report successfully enqueued to DataTransport: ");
                    sbA.append(lg0Var.b());
                    String string = sbA.toString();
                    if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                        Log.d("FirebaseCrashlytics", string, null);
                    }
                    kg0 kg0Var = b24Var.b;
                    final String strB = lg0Var.b();
                    FilenameFilter filenameFilter = new FilenameFilter() { // from class: com.shabakaty.downloader.ig0
                        @Override // java.io.FilenameFilter
                        public final boolean accept(File file, String str) {
                            return str.startsWith(strB);
                        }
                    };
                    Iterator it = ((ArrayList) kg0.a(kg0.e(kg0Var.c, filenameFilter), kg0.e(kg0Var.e, filenameFilter), kg0.e(kg0Var.d, filenameFilter))).iterator();
                    while (it.hasNext()) {
                        ((File) it.next()).delete();
                    }
                    z = true;
                } else {
                    Log.w("FirebaseCrashlytics", "Crashlytics report could not be enqueued to DataTransport", uk4Var.g());
                }
                return Boolean.valueOf(z);
            default:
                CountDownLatch countDownLatch = (CountDownLatch) this.s;
                ExecutorService executorService = xy4.a;
                countDownLatch.countDown();
                return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:162:0x02db  */
    /* JADX WARN: Code duplicated, block: B:171:0x02fd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:172:0x02ff  */
    /* JADX WARN: Code duplicated, block: B:173:0x0300 A[Catch: all -> 0x030e, TryCatch #7 {all -> 0x030e, blocks: (B:153:0x02b0, B:157:0x02c3, B:168:0x02f7, B:173:0x0300, B:180:0x030d, B:179:0x030a, B:156:0x02bf), top: B:235:0x02b0 }] */
    /* JADX WARN: Code duplicated, block: B:178:0x0309  */
    /* JADX WARN: Code duplicated, block: B:179:0x030a A[Catch: all -> 0x030e, TryCatch #7 {all -> 0x030e, blocks: (B:153:0x02b0, B:157:0x02c3, B:168:0x02f7, B:173:0x0300, B:180:0x030d, B:179:0x030a, B:156:0x02bf), top: B:235:0x02b0 }] */
    /* JADX WARN: Code duplicated, block: B:190:0x032a  */
    @Override // com.shabakaty.downloader.n3
    public void a(Object obj) {
        Object next;
        String path;
        File cacheDir;
        Object objB;
        Cursor cursorQuery;
        Object objB2;
        File file;
        ContentResolver contentResolver;
        InputStream inputStreamOpenInputStream;
        ContentResolver contentResolver2;
        List listO;
        List<Subtitle> list;
        int i;
        int iH;
        VideoPlayerActivity videoPlayerActivity = (VideoPlayerActivity) this.s;
        Uri uri = (Uri) obj;
        int i2 = VideoPlayerActivity.A;
        if (uri != null) {
            q10 q10VarF = videoPlayerActivity.F();
            VideoModel value = q10VarF.z.getValue();
            boolean z = true;
            if (value != null && (list = value.subtitles) != null) {
                if (list instanceof RandomAccess) {
                    int iH2 = iq6.h(list);
                    if (iH2 >= 0) {
                        int i3 = 0;
                        i = 0;
                        while (true) {
                            int i4 = i3 + 1;
                            Subtitle subtitle = list.get(i3);
                            Subtitle subtitle2 = subtitle;
                            j32.e(subtitle2, "it");
                            if (!Boolean.valueOf(j32.a(subtitle2.name, "file")).booleanValue()) {
                                if (i != i3) {
                                    list.set(i, subtitle);
                                }
                                i++;
                            }
                            if (i3 == iH2) {
                                break;
                            } else {
                                i3 = i4;
                            }
                        }
                    } else {
                        i = 0;
                    }
                    if (i < list.size() && i <= (iH = iq6.h(list))) {
                        while (true) {
                            int i5 = iH - 1;
                            list.remove(iH);
                            if (iH == i) {
                                break;
                            } else {
                                iH = i5;
                            }
                        }
                    }
                } else {
                    Iterator<T> it = list.iterator();
                    while (it.hasNext()) {
                        Subtitle subtitle3 = (Subtitle) it.next();
                        j32.e(subtitle3, "it");
                        if (Boolean.valueOf(j32.a(subtitle3.name, "file")).booleanValue()) {
                            it.remove();
                        }
                    }
                }
            }
            List<Subtitle> listS = q10VarF.s();
            ArrayList arrayList = new ArrayList(i50.O(listS, 10));
            Iterator<T> it2 = listS.iterator();
            while (it2.hasNext()) {
                arrayList.add(Integer.valueOf(vd5.B(((Subtitle) it2.next()).id)));
            }
            Iterator it3 = arrayList.iterator();
            File[] fileArrListFiles = null;
            if (it3.hasNext()) {
                next = it3.next();
                if (it3.hasNext()) {
                    int iIntValue = ((Number) next).intValue();
                    do {
                        Object next2 = it3.next();
                        int iIntValue2 = ((Number) next2).intValue();
                        if (iIntValue < iIntValue2) {
                            next = next2;
                            iIntValue = iIntValue2;
                        }
                    } while (it3.hasNext());
                }
            } else {
                next = null;
            }
            Integer num = (Integer) next;
            String strValueOf = String.valueOf(num == null ? null : Integer.valueOf(num.intValue() + 1));
            Context context = q10VarF.m.get();
            if (DocumentsContract.isDocumentUri(context, uri)) {
                if (j32.a(uri.getAuthority(), "com.android.externalstorage.documents")) {
                    String documentId = DocumentsContract.getDocumentId(uri);
                    j32.d(documentId, "docId");
                    Pattern patternCompile = Pattern.compile(":");
                    j32.d(patternCompile, "compile(pattern)");
                    re4.b0(0);
                    Matcher matcher = patternCompile.matcher(documentId);
                    if (matcher.find()) {
                        ArrayList arrayList2 = new ArrayList(10);
                        int iEnd = 0;
                        do {
                            arrayList2.add(documentId.subSequence(iEnd, matcher.start()).toString());
                            iEnd = matcher.end();
                        } while (matcher.find());
                        arrayList2.add(documentId.subSequence(iEnd, documentId.length()).toString());
                        listO = arrayList2;
                    } else {
                        listO = iq6.o(documentId.toString());
                    }
                    Object[] array = listO.toArray(new String[0]);
                    Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                    String[] strArr = (String[]) array;
                    if (ne4.C("primary", strArr[0], true) || Build.VERSION.SDK_INT == 21) {
                        path = Environment.getExternalStorageDirectory().getAbsolutePath() + '/' + strArr[1];
                    } else {
                        path = null;
                    }
                } else if (j32.a(uri.getAuthority(), "com.android.providers.downloads.documents")) {
                    String documentId2 = DocumentsContract.getDocumentId(uri);
                    if (documentId2 == null || ne4.D(documentId2)) {
                        path = null;
                    } else {
                        j32.d(documentId2, "id");
                        if (ne4.L(documentId2, "raw:", false, 2)) {
                            Pattern patternCompile2 = Pattern.compile("raw:");
                            j32.d(patternCompile2, "compile(pattern)");
                            path = patternCompile2.matcher(documentId2).replaceFirst(BuildConfig.FLAVOR);
                            j32.d(path, "nativePattern.matcher(in…replaceFirst(replacement)");
                        } else if (ne4.L(documentId2, "msf:", false, 2)) {
                            String extensionFromMimeType = MimeTypeMap.getSingleton().getExtensionFromMimeType((context == null || (contentResolver2 = context.getContentResolver()) == null) ? null : contentResolver2.getType(uri));
                            try {
                                if (j32.a(extensionFromMimeType, "txt")) {
                                    file = new File(context == null ? null : context.getCacheDir(), "TEMP_FILE.srt");
                                } else {
                                    file = new File(context == null ? null : context.getCacheDir(), j32.j("TEMP_FILE.", extensionFromMimeType));
                                }
                                if (file.exists()) {
                                    file.delete();
                                }
                                File parentFile = file.getParentFile();
                                if (parentFile != null) {
                                    parentFile.mkdirs();
                                }
                                if (context != null && (contentResolver = context.getContentResolver()) != null && (inputStreamOpenInputStream = contentResolver.openInputStream(uri)) != null) {
                                    try {
                                        FileOutputStream fileOutputStream = new FileOutputStream(file);
                                        try {
                                            bp.i(inputStreamOpenInputStream, fileOutputStream, RecyclerView.b0.FLAG_BOUNCED_FROM_HIDDEN_LIST);
                                            fileOutputStream.flush();
                                            he0.d(fileOutputStream, null);
                                            he0.d(inputStreamOpenInputStream, null);
                                        } catch (Throwable th) {
                                            try {
                                                throw th;
                                            } catch (Throwable th2) {
                                                he0.d(fileOutputStream, th);
                                                throw th2;
                                            }
                                        }
                                    } catch (Throwable th3) {
                                        try {
                                            throw th3;
                                        } catch (Throwable th4) {
                                            he0.d(inputStreamOpenInputStream, th3);
                                            throw th4;
                                        }
                                    }
                                }
                                objB2 = file.getAbsolutePath();
                            } catch (Throwable th5) {
                                objB2 = j96.b(th5);
                            }
                            if (objB2 instanceof dt3.a) {
                                objB2 = null;
                            }
                            path = (String) objB2;
                        } else {
                            try {
                                Uri uri2 = Uri.parse("content://downloads/public_downloads");
                                Long lA = me4.A(documentId2);
                                Uri uriWithAppendedId = ContentUris.withAppendedId(uri2, lA == null ? 0L : lA.longValue());
                                j32.d(uriWithAppendedId, "contentUri");
                                String[] strArr2 = {"_data"};
                                if (context == null) {
                                    cursorQuery = null;
                                } else {
                                    try {
                                        ContentResolver contentResolver3 = context.getContentResolver();
                                        if (contentResolver3 == null) {
                                            cursorQuery = null;
                                        } else {
                                            cursorQuery = contentResolver3.query(uriWithAppendedId, strArr2, null, null, null);
                                        }
                                    } catch (Throwable th6) {
                                        th = th6;
                                        cursorQuery = null;
                                        if (cursorQuery == null) {
                                            cursorQuery.close();
                                        }
                                        throw th;
                                    }
                                }
                                if (cursorQuery != null) {
                                    try {
                                        if (cursorQuery.moveToFirst()) {
                                            objB = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data"));
                                            cursorQuery.close();
                                        } else {
                                            if (cursorQuery == null) {
                                                cursorQuery.close();
                                            }
                                            objB = null;
                                        }
                                    } catch (Throwable th7) {
                                        th = th7;
                                        if (cursorQuery == null) {
                                            cursorQuery.close();
                                        }
                                        throw th;
                                    }
                                } else {
                                    if (cursorQuery == null) {
                                        cursorQuery.close();
                                    }
                                    objB = null;
                                }
                            } catch (Throwable th8) {
                                objB = j96.b(th8);
                            }
                            if (objB instanceof dt3.a) {
                                objB = null;
                            }
                            path = (String) objB;
                        }
                    }
                } else {
                    path = null;
                }
            } else if (ne4.C("file", uri.getScheme(), true)) {
                path = uri.getPath();
            } else {
                path = null;
            }
            if (path == null) {
                path = BuildConfig.FLAVOR;
            }
            String name = new File(path).getName();
            j32.d(name, "name");
            String strI0 = re4.i0(name, '.', BuildConfig.FLAVOR);
            Locale locale = Locale.ENGLISH;
            j32.d(locale, "ENGLISH");
            String lowerCase = strI0.toLowerCase(locale);
            j32.d(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            if (!j32.a(lowerCase, DLNAService.DEFAULT_SUBTITLE_TYPE) && !j32.a(lowerCase, "vtt") && !j32.a(lowerCase, "ass") && !j32.a(lowerCase, "ssa") && !j32.a(lowerCase, "txt")) {
                z = false;
            }
            if (z) {
                Subtitle subtitle4 = new Subtitle(strValueOf, "file", "file", lowerCase, path);
                ep0.e eVarA = q10VarF.j.e().a();
                eVarA.g("file");
                q10VarF.j.j(eVarA);
                nh3.y(hl3.e(q10VarF), null, 0, new y10(q10VarF, subtitle4, null), 3, null);
                Context context2 = q10VarF.m.get();
                if (context2 != null && (cacheDir = context2.getCacheDir()) != null) {
                    fileArrListFiles = cacheDir.listFiles();
                }
                if (fileArrListFiles != null) {
                    Iterator itQ = bp.q(fileArrListFiles);
                    while (true) {
                        q02 q02Var = (q02) itQ;
                        if (!q02Var.hasNext()) {
                            break;
                        }
                        File file2 = (File) q02Var.next();
                        String name2 = file2.getName();
                        j32.d(name2, "file.name");
                        if (re4.N(name2, "TEMP_FILE", false, 2)) {
                            file2.delete();
                        }
                    }
                }
            } else {
                q10VarF.f().z0("Wrong file type (" + lowerCase + ')');
            }
        }
        videoPlayerActivity.p0().H();
    }

    @Override // com.shabakaty.downloader.wc0
    public void accept(Object obj) {
        ((s01.a) obj).e((Exception) this.s);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.shabakaty.downloader.wl
    public Object apply(Object obj, Object obj2) {
        q10 q10Var = (q10) this.s;
        tj tjVar = (tj) obj;
        tj tjVar2 = (tj) obj2;
        j32.e(q10Var, "this$0");
        j32.e(tjVar, "videoModel");
        j32.e(tjVar2, "transcodeFiles");
        VideoModel videoModel = (VideoModel) tjVar.b;
        if (videoModel == null) {
            videoModel = new VideoModel(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, false, null, 0, null, null, null, null, false, null, null, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0L, null, null, false, null, null, null, null, false, -1, Integer.MAX_VALUE);
        }
        q10Var.m(videoModel, (List) tjVar2.b);
        return videoModel;
    }

    @Override // com.google.android.material.chip.ChipGroup.d
    public void b(ChipGroup chipGroup, int i) {
        CinemanaPlayerControllerView.u((CinemanaPlayerControllerView) this.s, chipGroup, i);
    }

    @Override // com.shabakaty.downloader.dm.d
    public long c(long j) {
        return ((vd1) this.s).g(j);
    }

    @Override // com.shabakaty.downloader.wa3
    public String create(String str) {
        int length;
        StringBuilder sb = new StringBuilder();
        sb.append(Environment.getExternalStorageDirectory().getAbsolutePath());
        sb.append("/Cinemana/work/");
        if (str != null) {
            str = str.trim();
            if (str.length() > 0 && (length = (str = str.replace("/", "_").replace("\\", "_").replace(":", "_").replace("?", "_").replace("*", "_").replace("|", "_").replace("<", "_").replace(">", "_").trim()).length()) > 0) {
                if (length > 180) {
                    str = str.substring(0, 180);
                }
                sb.append(str);
                return sb.toString();
            }
        }
        Double dValueOf = Double.valueOf(Math.random());
        if (str == null) {
            str = BuildConfig.FLAVOR;
        }
        String strJ = j32.j(str, dValueOf);
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("md5");
            messageDigest.update(strJ.getBytes(hz.b));
            byte[] bArrDigest = messageDigest.digest();
            StringBuilder sb2 = new StringBuilder();
            for (byte b : bArrDigest) {
                sb2.append(String.format("%02X", Byte.valueOf(b)));
            }
            sb.append(sb2.toString().toLowerCase(Locale.ROOT));
            return sb.toString();
        } catch (NoSuchAlgorithmException unused) {
            sb.append("download");
            return sb.toString();
        }
    }

    @Override // com.shabakaty.downloader.wo2.g
    public int d(Object obj) {
        wh1 wh1Var = (wh1) this.s;
        ro2 ro2Var = (ro2) obj;
        Pattern pattern = wo2.a;
        try {
            return ro2Var.e(wh1Var) ? 1 : 0;
        } catch (wo2.c unused) {
            return -1;
        }
    }

    @Override // com.shabakaty.downloader.np0.a
    public void e(pj3 pj3Var) {
        dg0 dg0Var = (dg0) this.s;
        Objects.requireNonNull(dg0Var);
        if (Log.isLoggable("FirebaseCrashlytics", 3)) {
            Log.d("FirebaseCrashlytics", "Crashlytics native component now available.", null);
        }
        dg0Var.b.set((bg0) pj3Var.get());
    }

    @Override // com.shabakaty.downloader.fj4.a
    public Object execute() {
        switch (this.r) {
            case 5:
                return Integer.valueOf(((x51) this.s).C());
            default:
                p75 p75Var = (p75) this.s;
                Iterator<oq4> it = p75Var.b.a0().iterator();
                while (it.hasNext()) {
                    p75Var.c.b(it.next(), 1);
                }
                return null;
        }
    }

    @Override // com.shabakaty.downloader.ar.c
    public Object f(ar.a aVar) {
        switch (this.r) {
            case 0:
                du duVar = (du) this.s;
                synchronized (duVar.a) {
                    duVar.e = aVar;
                    break;
                }
                return "CameraRepository-deinit";
            case 1:
                hp0 hp0Var = (hp0) this.s;
                synchronized (hp0Var.a) {
                    hp0Var.d = aVar;
                    break;
                }
                return "DeferrableSurface-termination(" + hp0Var + ")";
            case 2:
                pi2 pi2Var = (pi2) this.s;
                ko1.f(false, pi2Var, ko1.a, aVar, jl3.a());
                return "nonCancellationPropagating[" + pi2Var + "]";
            default:
                ((androidx.camera.view.e) this.s).j.set(aVar);
                return "textureViewImpl_waitForNextFrame";
        }
    }

    @Override // com.shabakaty.downloader.kh4
    public uk4 g(Object obj) {
        com.google.firebase.remoteconfig.internal.a.C0090a c0090a = (com.google.firebase.remoteconfig.internal.a.C0090a) this.s;
        int[] iArr = com.google.firebase.remoteconfig.internal.a.j;
        return kl4.e(c0090a);
    }

    @Override // com.shabakaty.downloader.si2.b
    public void h(Object obj, xd1 xd1Var) {
        ((bd3.c) obj).E((bd3) this.s, new bd3.d(xd1Var));
    }

    public void i(Display display) {
        q05 q05Var = (q05) this.s;
        Objects.requireNonNull(q05Var);
        if (display != null) {
            long refreshRate = (long) (1.0E9d / ((double) display.getRefreshRate()));
            q05Var.j = refreshRate;
            q05Var.k = (refreshRate * 80) / 100;
        } else {
            Log.w("VideoFrameReleaseHelper", "Unable to query display refresh rate");
            q05Var.j = CellBase.ID_SYSTEM_MESSAGE_REQUEST_CLOSED;
            q05Var.k = CellBase.ID_SYSTEM_MESSAGE_REQUEST_CLOSED;
        }
    }

    @Override // com.shabakaty.downloader.si2.a
    public void invoke(Object obj) {
        ((bd3.c) obj).R((hp2) this.s);
    }

    public void j(q83 q83Var) {
        switch (this.r) {
            case 18:
                z64 z64Var = (z64) this.s;
                mg4 mg4Var = (mg4) q83Var;
                synchronized (z64Var.b) {
                    mg4Var.I();
                    O[] oArr = z64Var.f;
                    int i = z64Var.h;
                    z64Var.h = i + 1;
                    oArr[i] = mg4Var;
                    z64Var.h();
                    break;
                }
                return;
            default:
                ay ayVar = (ay) this.s;
                ay.c cVar = (ay.c) q83Var;
                Objects.requireNonNull(ayVar);
                cVar.r = 0;
                cVar.t = null;
                ayVar.b.add(cVar);
                return;
        }
    }

    @Override // com.shabakaty.downloader.lw3.b
    public Object apply(Object obj) throws IOException {
        switch (this.r) {
            case 4:
                xx xxVar = (xx) this.s;
                xx.a aVar = (xx.a) obj;
                Objects.requireNonNull(xxVar);
                fl3.l("CctTransportBackend", "Making request to: %s", aVar.a);
                HttpURLConnection httpURLConnection = (HttpURLConnection) aVar.a.openConnection();
                httpURLConnection.setConnectTimeout(30000);
                httpURLConnection.setReadTimeout(xxVar.g);
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setInstanceFollowRedirects(false);
                httpURLConnection.setRequestMethod(ServiceCommand.TYPE_POST);
                httpURLConnection.setRequestProperty("User-Agent", String.format("datatransport/%s android/", "3.0.0"));
                httpURLConnection.setRequestProperty("Content-Encoding", "gzip");
                httpURLConnection.setRequestProperty(HttpMessage.CONTENT_TYPE_HEADER, Constants.APPLICATION_JSON);
                httpURLConnection.setRequestProperty("Accept-Encoding", "gzip");
                String str = aVar.c;
                if (str != null) {
                    httpURLConnection.setRequestProperty("X-Goog-Api-Key", str);
                }
                try {
                    OutputStream outputStream = httpURLConnection.getOutputStream();
                    try {
                        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
                        try {
                            ((v92) xxVar.a).b(aVar.b, new BufferedWriter(new OutputStreamWriter(gZIPOutputStream)));
                            gZIPOutputStream.close();
                            if (outputStream != null) {
                                outputStream.close();
                            }
                            int responseCode = httpURLConnection.getResponseCode();
                            fl3.q("CctTransportBackend", "Status Code: " + responseCode);
                            fl3.q("CctTransportBackend", "Content-Type: " + httpURLConnection.getHeaderField(HttpMessage.CONTENT_TYPE_HEADER));
                            fl3.q("CctTransportBackend", "Content-Encoding: " + httpURLConnection.getHeaderField("Content-Encoding"));
                            if (responseCode == 302 || responseCode == 301 || responseCode == 307) {
                                return new xx.b(responseCode, new URL(httpURLConnection.getHeaderField("Location")), 0L);
                            }
                            if (responseCode != 200) {
                                return new xx.b(responseCode, null, 0L);
                            }
                            InputStream inputStream = httpURLConnection.getInputStream();
                            try {
                                InputStream gZIPInputStream = "gzip".equals(httpURLConnection.getHeaderField("Content-Encoding")) ? new GZIPInputStream(inputStream) : inputStream;
                                try {
                                    xx.b bVar = new xx.b(responseCode, null, ((oh) jk2.a(new BufferedReader(new InputStreamReader(gZIPInputStream)))).a);
                                    if (gZIPInputStream != null) {
                                        gZIPInputStream.close();
                                    }
                                    if (inputStream != null) {
                                        inputStream.close();
                                    }
                                    return bVar;
                                } catch (Throwable th) {
                                    if (gZIPInputStream != null) {
                                        try {
                                            gZIPInputStream.close();
                                        } catch (Throwable th2) {
                                            th.addSuppressed(th2);
                                        }
                                        break;
                                    }
                                    throw th;
                                }
                            } catch (Throwable th3) {
                                if (inputStream != null) {
                                    try {
                                        inputStream.close();
                                    } catch (Throwable th4) {
                                        th3.addSuppressed(th4);
                                    }
                                    break;
                                }
                                throw th3;
                            }
                        } catch (Throwable th5) {
                            try {
                                gZIPOutputStream.close();
                                break;
                            } catch (Throwable th6) {
                                th5.addSuppressed(th6);
                            }
                            throw th5;
                        }
                    } catch (Throwable th7) {
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (Throwable th8) {
                                th7.addSuppressed(th8);
                            }
                            break;
                        }
                        throw th7;
                    }
                } catch (p31 e) {
                    e = e;
                    fl3.n("CctTransportBackend", "Couldn't encode request, returning with 400", e);
                    return new xx.b(400, null, 0L);
                } catch (ConnectException e2) {
                    e = e2;
                    fl3.n("CctTransportBackend", "Couldn't open connection, returning with 500", e);
                    return new xx.b(500, null, 0L);
                } catch (UnknownHostException e3) {
                    e = e3;
                    fl3.n("CctTransportBackend", "Couldn't open connection, returning with 500", e);
                    return new xx.b(500, null, 0L);
                } catch (IOException e4) {
                    e = e4;
                    fl3.n("CctTransportBackend", "Couldn't encode request, returning with 400", e);
                    return new xx.b(400, null, 0L);
                }
            default:
                Map map = (Map) this.s;
                Cursor cursor = (Cursor) obj;
                o31 o31Var = lw3.v;
                while (cursor.moveToNext()) {
                    long j = cursor.getLong(0);
                    Set hashSet = (Set) map.get(Long.valueOf(j));
                    if (hashSet == null) {
                        hashSet = new HashSet();
                        map.put(Long.valueOf(j), hashSet);
                    }
                    hashSet.add(new lw3.c(cursor.getString(1), cursor.getString(2), null));
                }
                return null;
        }
    }
}
