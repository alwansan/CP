package com.shabakaty.cinemana.local;

import android.R;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.BitmapFactory;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.SystemClock;
import android.util.AtomicFile;
import android.util.Log;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.connectsdk.service.airplay.PListParser;
import com.liulishuo.filedownloader.BuildConfig;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import com.liulishuo.filedownloader.model.FileDownloadStatus;
import com.shabakaty.cinemana.ca1.LocalAccountLog;
import com.shabakaty.downloader.ef4;
import com.shabakaty.downloader.f74;
import com.shabakaty.downloader.k9;
import com.shabakaty.downloader.lf4;
import com.shabakaty.downloader.lr1;
import com.shabakaty.downloader.mu0;
import com.shabakaty.downloader.qf1;
import com.shabakaty.downloader.wg1;
import com.shabakaty.downloader.y74;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URI;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;
import zendesk.core.Constants;
import zendesk.core.ZendeskBlipsProvider;

/* JADX INFO: loaded from: classes11.dex */
public final class LocalRuntime {
    static final long INTERVAL = 3600000;
    private static final String MODELS = "com.shabakaty.cinemana.domain.models.remote.";
    static volatile Object api;
    static volatile Context app;
    private static volatile long lastMigrationAttempt;
    private static long lastStateSnapshot;
    static volatile boolean scanCancelled;
    private static volatile boolean stateDirty;
    private static long storageProbe;
    static volatile LocalAccountStore store;
    public static final ScheduledExecutorService IO = Executors.newSingleThreadScheduledExecutor();
    static final ExecutorService METADATA = Executors.newSingleThreadExecutor();
    static final ExecutorService NETWORK = Executors.newSingleThreadExecutor();
    private static final AtomicBoolean scanning = new AtomicBoolean();
    private static final Set<String> mutedProgress = Collections.newSetFromMap(new ConcurrentHashMap());
    private static final ConcurrentHashMap<String, Long> pendingProgress = new ConcurrentHashMap<>();
    private static final AtomicBoolean progressScheduled = new AtomicBoolean();
    private static final lr1 JSON = new lr1();
    static final LinkedHashMap<String, String> cache = new LinkedHashMap<>();

    static final class Cancel implements mu0 {
        volatile boolean cancelled;

        Cancel() {
        }

        @Override // com.shabakaty.downloader.mu0
        public void h() {
            this.cancelled = true;
        }

        @Override // com.shabakaty.downloader.mu0
        public boolean n() {
            return this.cancelled;
        }
    }

    static final class CaptureSingle extends f74 {
        final String id;
        final f74 upstream;

        /* JADX INFO: renamed from: com.shabakaty.cinemana.local.LocalRuntime$CaptureSingle$1, reason: invalid class name */
        class AnonymousClass1 implements y74 {
            final /* synthetic */ y74 val$observer;
            final /* synthetic */ long val$started;

            AnonymousClass1(y74 y74Var, long j) {
                this.val$observer = y74Var;
                this.val$started = j;
            }

            @Override // com.shabakaty.downloader.y74
            public void b(final Throwable th) {
                LocalRuntime.log("detail_failed id=" + LocalRuntime.safeId(CaptureSingle.this.id) + " type=" + LocalRuntime.causeTypes(th));
                ScheduledExecutorService scheduledExecutorService = LocalRuntime.IO;
                final y74 y74Var = this.val$observer;
                scheduledExecutorService.execute(new Runnable() { // from class: com.shabakaty.cinemana.local.LocalRuntime$CaptureSingle$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m73x4905d409(y74Var, th);
                    }
                });
            }

            @Override // com.shabakaty.downloader.y74
            public void c(mu0 mu0Var) {
                this.val$observer.c(mu0Var);
            }

            /* JADX INFO: renamed from: lambda$b$0$com-shabakaty-cinemana-local-LocalRuntime$CaptureSingle$1, reason: not valid java name */
            /* synthetic */ void m73x4905d409(y74 y74Var, Throwable th) {
                try {
                    y74Var.onSuccess(LocalRuntime.cachedModel(CaptureSingle.this.id));
                    LocalRuntime.log("detail_local_fallback id=" + LocalRuntime.safeId(CaptureSingle.this.id));
                } catch (Exception unused) {
                    y74Var.b(th);
                }
            }

            @Override // com.shabakaty.downloader.y74
            public void onSuccess(final Object obj) {
                LocalRuntime.IO.execute(new Runnable() { // from class: com.shabakaty.cinemana.local.LocalRuntime.CaptureSingle.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        String str = "2";
                        LocalRuntime.capture(obj);
                        try {
                            JSONObject jSONObject = new JSONObject(LocalRuntime.JSON.i(obj));
                            StringBuilder sb = new StringBuilder("detail_result id=");
                            sb.append(LocalRuntime.safeId(CaptureSingle.this.id));
                            sb.append(" kind=");
                            if ("1".equals(jSONObject.optString("kind"))) {
                                str = "1";
                            } else if (!"2".equals(jSONObject.optString("kind"))) {
                                str = "other";
                            }
                            sb.append(str);
                            sb.append(" root=");
                            sb.append(LocalRuntime.safeId(jSONObject.optString("rootSeries")));
                            sb.append(" poster=");
                            sb.append(!jSONObject.optString("imgObjUrl").isEmpty());
                            sb.append(" elapsed_ms=");
                            sb.append(System.currentTimeMillis() - AnonymousClass1.this.val$started);
                            LocalRuntime.log(sb.toString());
                        } catch (Exception e) {
                            LocalRuntime.failure("detail_trace", e);
                        }
                    }
                });
                this.val$observer.onSuccess(obj);
            }
        }

        CaptureSingle(f74 f74Var, String str) {
            this.upstream = f74Var;
            this.id = str;
        }

        @Override // com.shabakaty.downloader.f74
        public void l(y74 y74Var) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            LocalRuntime.log("detail_begin id=" + LocalRuntime.safeId(this.id));
            this.upstream.a(new AnonymousClass1(y74Var, jCurrentTimeMillis));
        }
    }

    static final class CategorySingle extends f74 {
        final f74 source;

        CategorySingle(f74 f74Var) {
            this.source = f74Var;
        }

        @Override // com.shabakaty.downloader.f74
        public void l(final y74 y74Var) {
            this.source.a(new y74() { // from class: com.shabakaty.cinemana.local.LocalRuntime.CategorySingle.1
                @Override // com.shabakaty.downloader.y74
                public void b(Throwable th) {
                    y74Var.b(th);
                }

                @Override // com.shabakaty.downloader.y74
                public void c(mu0 mu0Var) {
                    y74Var.c(mu0Var);
                }

                @Override // com.shabakaty.downloader.y74
                public void onSuccess(Object obj) {
                    y74Var.onSuccess(LocalRuntime.categories(obj));
                }
            });
        }
    }

    static final class EpisodeFlow extends qf1 {
        final String id;
        final qf1 upstream;

        /* JADX INFO: renamed from: com.shabakaty.cinemana.local.LocalRuntime$EpisodeFlow$1, reason: invalid class name */
        class AnonymousClass1 implements wg1 {
            volatile ScheduledFuture<?> deadline;
            volatile lf4 subscription;
            final /* synthetic */ ef4 val$downstream;
            final AtomicBoolean terminal = new AtomicBoolean();
            final long started = System.currentTimeMillis();

            AnonymousClass1(ef4 ef4Var) {
                this.val$downstream = ef4Var;
            }

            @Override // com.shabakaty.downloader.ef4
            public void a() {
                if (this.terminal.compareAndSet(false, true)) {
                    if (this.deadline != null) {
                        this.deadline.cancel(false);
                    }
                    this.val$downstream.a();
                }
            }

            @Override // com.shabakaty.downloader.ef4
            public void b(Throwable th) {
                if (this.terminal.compareAndSet(false, true)) {
                    if (this.deadline != null) {
                        this.deadline.cancel(false);
                    }
                    LocalRuntime.log("season_failed id=" + LocalRuntime.safeId(EpisodeFlow.this.id) + " type=" + LocalRuntime.causeTypes(th));
                    this.val$downstream.b(th);
                }
            }

            @Override // com.shabakaty.downloader.wg1, com.shabakaty.downloader.ef4
            public void d(final lf4 lf4Var) {
                this.subscription = lf4Var;
                LocalRuntime.log("season_begin id=" + LocalRuntime.safeId(EpisodeFlow.this.id));
                ScheduledExecutorService scheduledExecutorService = LocalRuntime.IO;
                final ef4 ef4Var = this.val$downstream;
                this.deadline = scheduledExecutorService.schedule(new Runnable() { // from class: com.shabakaty.cinemana.local.LocalRuntime$EpisodeFlow$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m74x434c60e6(lf4Var, ef4Var);
                    }
                }, 35L, TimeUnit.SECONDS);
                this.val$downstream.d(new lf4() { // from class: com.shabakaty.cinemana.local.LocalRuntime.EpisodeFlow.1.1
                    @Override // com.shabakaty.downloader.lf4
                    public void cancel() {
                        AnonymousClass1.this.terminal.set(true);
                        if (AnonymousClass1.this.deadline != null) {
                            AnonymousClass1.this.deadline.cancel(false);
                        }
                        lf4Var.cancel();
                        LocalRuntime.log("season_cancel id=" + LocalRuntime.safeId(EpisodeFlow.this.id));
                    }

                    @Override // com.shabakaty.downloader.lf4
                    public void u(long j) {
                        lf4Var.u(j);
                    }
                });
            }

            @Override // com.shabakaty.downloader.ef4
            public void e(Object obj) {
                if (this.terminal.get()) {
                    return;
                }
                if (this.deadline != null) {
                    this.deadline.cancel(false);
                }
                LocalRuntime.log("season_result id=" + LocalRuntime.safeId(EpisodeFlow.this.id) + " count=" + (obj instanceof Collection ? ((Collection) obj).size() : -1) + " elapsed_ms=" + (System.currentTimeMillis() - this.started));
                LocalRuntime.observeEpisodes(EpisodeFlow.this.id, obj);
                this.val$downstream.e(obj);
            }

            /* JADX INFO: renamed from: lambda$d$0$com-shabakaty-cinemana-local-LocalRuntime$EpisodeFlow$1, reason: not valid java name */
            /* synthetic */ void m74x434c60e6(lf4 lf4Var, ef4 ef4Var) {
                if (this.terminal.compareAndSet(false, true)) {
                    lf4Var.cancel();
                    LocalRuntime.log("season_timeout id=" + LocalRuntime.safeId(EpisodeFlow.this.id));
                    ef4Var.b(new SocketTimeoutException("episode catalogue timeout"));
                }
            }
        }

        EpisodeFlow(qf1 qf1Var, String str) {
            this.upstream = qf1Var;
            this.id = str;
        }

        @Override // com.shabakaty.downloader.qf1
        public void i(ef4 ef4Var) {
            this.upstream.h(new AnonymousClass1(ef4Var));
        }
    }

    static final class LocalSingle extends f74 {
        final Callable<Object> call;
        final Executor executor;

        LocalSingle(Callable<Object> callable) {
            this(callable, LocalRuntime.IO);
        }

        LocalSingle(Callable<Object> callable, Executor executor) {
            this.call = callable;
            this.executor = executor;
        }

        @Override // com.shabakaty.downloader.f74
        public void l(final y74 y74Var) {
            final Cancel cancel = new Cancel();
            y74Var.c(cancel);
            this.executor.execute(new Runnable() { // from class: com.shabakaty.cinemana.local.LocalRuntime.LocalSingle.1
                @Override // java.lang.Runnable
                public void run() {
                    if (cancel.cancelled) {
                        return;
                    }
                    try {
                        Object objCall = LocalSingle.this.call.call();
                        if (cancel.cancelled) {
                            return;
                        }
                        y74Var.onSuccess(objCall);
                    } catch (Exception e) {
                        LocalRuntime.failure("local_operation", e);
                        if (cancel.cancelled) {
                            return;
                        }
                        y74Var.b(e);
                    }
                }
            });
        }
    }

    public static String avatar() {
        return app == null ? BuildConfig.FLAVOR : app.getSharedPreferences("local_profile", 0).getString("avatar", BuildConfig.FLAVOR);
    }

    static Object cachedModel(String str) throws Exception {
        for (LocalAccountStore.ListKind listKind : LocalAccountStore.ListKind.values()) {
            LocalAccountStore.Item itemFind = data().find(listKind, str);
            if (itemFind != null && !itemFind.payload.isEmpty()) {
                return dto("VideoModelApi", itemFind.payload);
            }
        }
        throw new IOException("no local metadata");
    }

    static String canonicalId(String str) {
        if (app == null) {
            return str;
        }
        for (String str2 : app.databaseList()) {
            if (!str2.endsWith("-wal") && !str2.endsWith("-shm") && !str2.endsWith("-journal")) {
                SQLiteDatabase sQLiteDatabaseOpenDatabase = null;
                try {
                    sQLiteDatabaseOpenDatabase = SQLiteDatabase.openDatabase(app.getDatabasePath(str2).getPath(), null, 1);
                    Cursor cursorRawQuery = sQLiteDatabaseOpenDatabase.rawQuery("SELECT videoId FROM video_status WHERE id=? OR videoId=? LIMIT 1", new String[]{str, str});
                    try {
                        if (cursorRawQuery.moveToFirst()) {
                            String string = cursorRawQuery.getString(0);
                            cursorRawQuery.close();
                            if (sQLiteDatabaseOpenDatabase != null) {
                                sQLiteDatabaseOpenDatabase.close();
                            }
                            return string;
                        }
                        cursorRawQuery.close();
                        if (sQLiteDatabaseOpenDatabase != null) {
                            sQLiteDatabaseOpenDatabase.close();
                        }
                    } catch (Throwable th) {
                        cursorRawQuery.close();
                        throw th;
                    }
                } catch (SQLException unused) {
                    if (sQLiteDatabaseOpenDatabase != null) {
                    }
                } catch (Throwable th2) {
                    if (sQLiteDatabaseOpenDatabase != null) {
                        sQLiteDatabaseOpenDatabase.close();
                    }
                    throw th2;
                }
            }
        }
        return str;
    }

    static void capture(Object obj) {
        try {
            JSONObject jSONObject = new JSONObject(JSON.i(obj));
            String strOptString = jSONObject.optString("nb");
            if (strOptString.matches("[A-Za-z0-9_-]{1,100}")) {
                JSONObject jSONObject2 = new JSONObject();
                String[] strArr = {"nb", "ar_title", "en_title", "custom_ar_title", "custom_en_title", "kind", "rootSeries", "season", "episodeNummer", "episode_flag", "imgObjUrl", "imgThumbObjUrl", "imgMediumThumbObjUrl", "year", "duration", "publishDate", "rate", "stars", "filmRating", "seriesRating", "finished", "ar_content", "en_content"};
                for (int i = 0; i < 23; i++) {
                    String str = strArr[i];
                    if (jSONObject.has(str)) {
                        Object objSubstring = jSONObject.get(str);
                        if ((objSubstring instanceof String) && ((String) objSubstring).length() > 4000) {
                            objSubstring = ((String) objSubstring).substring(0, 4000);
                        }
                        jSONObject2.put(str, objSubstring);
                    }
                }
                String string = jSONObject2.toString();
                if (string.length() > 20000) {
                    throw new IOException("metadata limit");
                }
                LinkedHashMap<String, String> linkedHashMap = cache;
                synchronized (linkedHashMap) {
                    linkedHashMap.put(strOptString, string);
                    while (true) {
                        LinkedHashMap<String, String> linkedHashMap2 = cache;
                        if (linkedHashMap2.size() > 64) {
                            linkedHashMap2.remove(linkedHashMap2.keySet().iterator().next());
                        }
                    }
                }
            }
        } catch (Exception e) {
            failure("metadata", e);
        }
    }

    static Object categories(Object obj) {
        if (!(obj instanceof List)) {
            return obj;
        }
        ArrayList arrayList = new ArrayList();
        List list = (List) obj;
        for (Object obj2 : list) {
            if (obj2 != null && Metadata269.category(obj2)) {
                arrayList.add(obj2);
            }
        }
        log("categories_filtered kept=" + arrayList.size() + " total=" + list.size());
        return arrayList;
    }

    static String causeTypes(Throwable th) {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (th != null && i < 4) {
            if (i > 0) {
                sb.append('/');
            }
            sb.append(th.getClass().getSimpleName());
            i++;
            th = th.getCause();
        }
        return sb.toString();
    }

    static synchronized LocalAccountStore data() throws IOException {
        if (app == null && store == null) {
            throw new IOException("local account not initialized");
        }
        if (app == null) {
            return store;
        }
        File file = new File(app.getFilesDir(), "data/local-account");
        if (store == null) {
            File fileSharedDirectory = sharedDirectory();
            boolean z = (fileSharedDirectory.isDirectory() || fileSharedDirectory.mkdirs()) && fileSharedDirectory.canWrite();
            File file2 = z ? fileSharedDirectory : file;
            File file3 = new File(file, "account.bin");
            boolean z2 = z && new File(fileSharedDirectory, "account.bin").isFile() && !file3.exists() && !app.getSharedPreferences("local_profile", 0).getBoolean("loaded_shared", false);
            if (z && file3.exists() && !new File(fileSharedDirectory, "account.bin").exists()) {
                store = new LocalAccountStore(file, new LocalAccountStore.Events() { // from class: com.shabakaty.cinemana.local.LocalRuntime.2
                    @Override // com.shabakaty.cinemana.local.LocalAccountStore.Events
                    public void record(String str, int i) {
                        LocalRuntime.log(str + " count=" + i);
                    }
                }).relocate(fileSharedDirectory);
            } else {
                store = new LocalAccountStore(file2, new LocalAccountStore.Events() { // from class: com.shabakaty.cinemana.local.LocalRuntime.3
                    @Override // com.shabakaty.cinemana.local.LocalAccountStore.Events
                    public void record(String str, int i) {
                        LocalRuntime.log(str + " count=" + i);
                    }
                });
            }
            if (z) {
                app.getSharedPreferences("local_profile", 0).edit().putBoolean("loaded_shared", true).apply();
                if (file3.exists()) {
                    file3.delete();
                    new File(file, "avatar.jpg").delete();
                }
            }
            storageProbe = System.currentTimeMillis();
            log("account_storage shared=" + z);
            updateProfile();
            if (z2) {
                IO.execute(new Runnable() { // from class: com.shabakaty.cinemana.local.LocalRuntime$$ExternalSyntheticLambda9
                    @Override // java.lang.Runnable
                    public final void run() {
                        LocalRuntime.lambda$data$0();
                    }
                });
            }
        } else if (store.directory().equals(file) && System.currentTimeMillis() - storageProbe > 30000) {
            storageProbe = System.currentTimeMillis();
            File fileSharedDirectory2 = sharedDirectory();
            if ((fileSharedDirectory2.isDirectory() || fileSharedDirectory2.mkdirs()) && fileSharedDirectory2.canWrite()) {
                store = store.relocate(fileSharedDirectory2);
                app.getSharedPreferences("local_profile", 0).edit().putBoolean("loaded_shared", true).apply();
                new File(file, "account.bin").delete();
                new File(file, "avatar.jpg").delete();
                updateProfile();
                log("account_storage shared=true");
            }
        }
        return store;
    }

    public static void decorate(final View view) {
        final Context context = view.getContext();
        View viewFindViewWithTag = view.findViewWithTag("local_account266");
        if (viewFindViewWithTag != null) {
            viewFindViewWithTag.setVisibility(8);
        }
        final String[] strArr = {"profile_logout_item", "profile_login_linear", "login_qr_button"};
        final View.OnLayoutChangeListener onLayoutChangeListener = new View.OnLayoutChangeListener() { // from class: com.shabakaty.cinemana.local.LocalRuntime$$ExternalSyntheticLambda2
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                LocalRuntime.lambda$decorate$6(strArr, context, view, view2, i, i2, i3, i4, i5, i6, i7, i8);
            }
        };
        view.addOnLayoutChangeListener(onLayoutChangeListener);
        view.post(new Runnable() { // from class: com.shabakaty.cinemana.local.LocalRuntime$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                onLayoutChangeListener.onLayoutChange(view, 0, 0, 0, 0, 0, 0, 0, 0);
            }
        });
    }

    static void deliver() throws Exception {
        if (Build.VERSION.SDK_INT >= 33 && app.checkSelfPermission("android.permission.POST_NOTIFICATIONS") != 0) {
            log("notification_permission_missing");
            return;
        }
        NotificationManager notificationManager = (NotificationManager) app.getSystemService("notification");
        if (Build.VERSION.SDK_INT >= 26) {
            notificationManager.createNotificationChannel(new NotificationChannel("local_episodes", "حلقات جديدة", 3));
        }
        if (Build.VERSION.SDK_INT >= 24 && !notificationManager.areNotificationsEnabled()) {
            log("notification_blocked reason=app_disabled");
            return;
        }
        if (Build.VERSION.SDK_INT >= 26 && notificationManager.getNotificationChannel("local_episodes").getImportance() == 0) {
            log("notification_blocked reason=channel_disabled");
            return;
        }
        LocalAccountStore localAccountStoreData = data();
        int i = 0;
        for (LocalAccountStore.Item item : localAccountStoreData.inbox()) {
            String str = "delivered_" + item.id;
            if (!localAccountStoreData.config(str, "0").equals("1")) {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("https://cinemana.shabakaty.cc/video/" + item.id));
                intent.setPackage(app.getPackageName());
                intent.addFlags(335544320);
                PendingIntent activity = PendingIntent.getActivity(app, item.id.hashCode(), intent, (Build.VERSION.SDK_INT >= 23 ? 67108864 : 0) | 134217728);
                Notification.Builder builder = Build.VERSION.SDK_INT >= 26 ? new Notification.Builder(app, "local_episodes") : new Notification.Builder(app);
                builder.setSmallIcon(R.drawable.ic_media_play).setContentTitle("حلقة جديدة").setContentText(item.title).setContentIntent(activity).setAutoCancel(true).setOnlyAlertOnce(true);
                notificationManager.notify("local_episode_" + item.id, 266, builder.build());
                log("notification_posted id=" + safeId(item.id));
                localAccountStoreData.setConfig(str, "1");
                i++;
            }
        }
        log("notifications_delivered count=" + i);
    }

    static Object dto(String str, String str2) throws Exception {
        return JSON.e(str2, Class.forName(MODELS + str));
    }

    static List<Object> dtoArray(JSONArray jSONArray) throws Exception {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(dto("VideoModelApi", jSONArray.getJSONObject(i).toString()));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void ensureLegacy() {
        try {
            if (data().config("legacy_seeded", "0").equals("1")) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - lastMigrationAttempt < 60000) {
                return;
            }
            lastMigrationAttempt = jCurrentTimeMillis;
            snapshotLegacy(true);
        } catch (Exception e) {
            failure("legacy_migration", e);
        }
    }

    static List<LocalAccountStore.Item> episodeItems(LocalAccountStore.Item item, JSONArray jSONArray) throws Exception {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject = jSONArray.getJSONObject(i);
            String strOptString = jSONObject.optString("nb");
            if (!strOptString.matches("[A-Za-z0-9_-]{1,100}")) {
                throw new IOException("invalid episode id");
            }
            JSONObject jSONObject2 = new JSONObject();
            String[] strArr = {"nb", "kind", "rootSeries", "season", "episodeNummer", "ar_title", "en_title", "imgObjUrl", "imgThumbObjUrl", "imgMediumThumbObjUrl", "publishDate", "duration"};
            for (int i2 = 0; i2 < 12; i2++) {
                String str = strArr[i2];
                if (jSONObject.has(str)) {
                    jSONObject2.put(str, jSONObject.get(str));
                }
            }
            arrayList.add(new LocalAccountStore.Item(strOptString, item.title + " — " + jSONObject.optString("season", BuildConfig.FLAVOR) + ":" + jSONObject.optString("episodeNummer", BuildConfig.FLAVOR), 0L, jSONObject2.toString()));
        }
        return arrayList;
    }

    static JSONArray episodes(String str) throws Exception {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL("https://cinemana.shabakaty.cc/api/android/videoSeason/id/" + str).openConnection();
        try {
            httpURLConnection.setConnectTimeout(8000);
            httpURLConnection.setReadTimeout(8000);
            httpURLConnection.setInstanceFollowRedirects(false);
            httpURLConnection.setRequestProperty(Constants.ACCEPT_HEADER, Constants.APPLICATION_JSON);
            int responseCode = httpURLConnection.getResponseCode();
            log("episode_http status=" + responseCode);
            if (responseCode != 200) {
                throw new IOException("episode http");
            }
            String contentType = httpURLConnection.getContentType();
            if (contentType == null || !contentType.toLowerCase(Locale.ROOT).contains("json")) {
                throw new IOException("episode content type");
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            InputStream inputStream = httpURLConnection.getInputStream();
            try {
                byte[] bArr = new byte[RecyclerView.b0.FLAG_BOUNCED_FROM_HIDDEN_LIST];
                while (true) {
                    int i = inputStream.read(bArr);
                    if (i == -1) {
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        JSONArray jSONArray = new JSONArray(new String(byteArrayOutputStream.toByteArray(), "UTF-8"));
                        if (jSONArray.length() > 10000) {
                            throw new IOException("episode limit");
                        }
                        httpURLConnection.disconnect();
                        return jSONArray;
                    }
                    if (byteArrayOutputStream.size() + i > 2097152) {
                        throw new IOException("episode response limit");
                    }
                    byteArrayOutputStream.write(bArr, 0, i);
                    httpURLConnection.disconnect();
                    throw th;
                }
            } catch (Throwable th) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            httpURLConnection.disconnect();
            throw th3;
        }
    }

    static void failure(String str, Throwable th) {
        String str2;
        for (StackTraceElement stackTraceElement : th.getStackTrace()) {
            if (stackTraceElement.getClassName().startsWith("com.shabakaty.cinemana.local")) {
                str2 = " source=" + stackTraceElement.getClassName().substring(stackTraceElement.getClassName().lastIndexOf(46) + 1) + "." + stackTraceElement.getMethodName() + ":" + stackTraceElement.getLineNumber();
                log(str + "_failed type=" + causeTypes(th) + str2);
            }
        }
        str2 = BuildConfig.FLAVOR;
        log(str + "_failed type=" + causeTypes(th) + str2);
    }

    static void flushProgress() throws Exception {
        HashMap map = new HashMap(pendingProgress);
        EnumMap enumMap = new EnumMap(LocalAccountStore.ListKind.class);
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : map.entrySet()) {
            String strCanonicalId = canonicalId((String) entry.getKey());
            if (!mutedProgress.contains(strCanonicalId)) {
                LocalAccountStore.Item item = item(strCanonicalId);
                arrayList.add(new LocalAccountStore.Item(item.id, item.title, ((Long) entry.getValue()).longValue(), item.payload));
            }
        }
        enumMap.put(LocalAccountStore.ListKind.PROGRESS, arrayList);
        if (!arrayList.isEmpty()) {
            data().merge(enumMap);
        }
        for (Map.Entry entry2 : map.entrySet()) {
            pendingProgress.remove(entry2.getKey(), entry2.getValue());
        }
        if (!stateDirty || System.currentTimeMillis() - lastStateSnapshot <= 60000) {
            return;
        }
        snapshotPreferences();
    }

    public static void flushProgressAsync() {
        IO.execute(new Runnable() { // from class: com.shabakaty.cinemana.local.LocalRuntime$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                LocalRuntime.lambda$flushProgressAsync$3();
            }
        });
    }

    public static void foreground(Context context) {
        init(context);
        log("foreground_episode_scan_requested");
        requestScan(true);
    }

    private static String hex(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            sb.append(String.format(Locale.ROOT, "%02x", Integer.valueOf(b & FileDownloadStatus.error)));
        }
        return sb.toString();
    }

    public static void httpRequest(Object obj) {
        try {
            String strRequestLabel = requestLabel(obj);
            if (strRequestLabel.isEmpty()) {
                return;
            }
            log("http_begin route=" + strRequestLabel);
        } catch (Exception unused) {
        }
    }

    public static void httpResponse(Object obj) {
        try {
            String strRequestLabel = requestLabel(obj.getClass().getField("s").get(obj));
            if (strRequestLabel.isEmpty()) {
                return;
            }
            log("http_result route=" + strRequestLabel + " status=" + obj.getClass().getField("v").getInt(obj));
        } catch (Exception unused) {
        }
    }

    static void importAccount(InputStream inputStream) throws Exception {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[RecyclerView.b0.FLAG_BOUNCED_FROM_HIDDEN_LIST];
        while (true) {
            int i = inputStream.read(bArr);
            if (i == -1) {
                File file = new File(app.getCacheDir(), "account-restore-stage");
                removeStage(file);
                if (!file.mkdirs()) {
                    throw new IOException("staging unavailable");
                }
                try {
                    LocalAccountStore localAccountStore = new LocalAccountStore(file, null);
                    localAccountStore.importZip(new ByteArrayInputStream(byteArrayOutputStream.toByteArray()));
                    byte[] bArrAvatar = localAccountStore.avatar();
                    if (bArrAvatar.length > 0) {
                        BitmapFactory.Options options = new BitmapFactory.Options();
                        options.inJustDecodeBounds = true;
                        BitmapFactory.decodeByteArray(bArrAvatar, 0, bArrAvatar.length, options);
                        if (options.outWidth <= 0 || options.outHeight <= 0 || options.outWidth > 1024 || options.outHeight > 1024) {
                            throw new IOException("invalid avatar");
                        }
                    }
                    for (LocalAccountStore.ListKind listKind : LocalAccountStore.ListKind.values()) {
                        for (LocalAccountStore.Item item : localAccountStore.list(listKind)) {
                            if (!item.payload.isEmpty()) {
                                JSONObject jSONObject = new JSONObject(item.payload);
                                if (listKind != LocalAccountStore.ListKind.STATE) {
                                    if (!item.id.equals(jSONObject.optString("nb"))) {
                                        throw new IOException("metadata id mismatch");
                                    }
                                } else if (item.id.equals("settings")) {
                                    Iterator<String> itKeys = jSONObject.keys();
                                    while (itKeys.hasNext()) {
                                        if (!itKeys.next().matches("(filter|app|subtitles)_[A-Za-z]+")) {
                                            throw new IOException("invalid settings");
                                        }
                                    }
                                } else {
                                    continue;
                                }
                            }
                        }
                    }
                    BackupState.decode(localAccountStore.list(LocalAccountStore.ListKind.STATE));
                    int i2 = Integer.parseInt(localAccountStore.config("parental", "0"));
                    int i3 = Integer.parseInt(localAccountStore.config("translation", "0"));
                    if (i2 < 0 || i2 > 3 || i3 < 0 || i3 > 1) {
                        throw new IOException("invalid filter");
                    }
                    pendingProgress.clear();
                    data().importZip(new ByteArrayInputStream(byteArrayOutputStream.toByteArray()));
                    data().setConfig("last_scan", "0");
                    data().setConfig("scan_cursor", "0");
                    log("notification_restore baselines_preserved=true scan_reset=true");
                    removeStage(file);
                    return;
                } catch (Throwable th) {
                    removeStage(file);
                    throw th;
                }
            }
            if (byteArrayOutputStream.size() + i > 33554432) {
                throw new IOException("archive limit");
            }
            byteArrayOutputStream.write(bArr, 0, i);
        }
    }

    public static synchronized void init(Context context) {
        if (app != null) {
            return;
        }
        app = context.getApplicationContext();
        LocalAccountLog.init(app);
        log("build=PATCH274");
        IO.execute(new Runnable() { // from class: com.shabakaty.cinemana.local.LocalRuntime.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    LocalRuntime.data();
                    LocalRuntime.ensureLegacy();
                    try {
                        if (!LocalRuntime.data().config("upgrade268", "0").equals("1")) {
                            LocalRuntime.snapshotLegacy(true);
                            LocalRuntime.data().setConfig("upgrade268", "1");
                            LocalRuntime.log("account_upgrade268_complete");
                        }
                    } catch (Exception e) {
                        LocalRuntime.failure("account_upgrade268", e);
                    }
                    LocalRuntime.schedule();
                    LocalRuntime.requestScan(false);
                } catch (Exception e2) {
                    LocalRuntime.failure(ZendeskBlipsProvider.ACTION_CORE_INIT, e2);
                }
            }
        });
    }

    static LocalAccountStore.Item item(String str) throws Exception {
        String str2;
        LinkedHashMap<String, String> linkedHashMap = cache;
        synchronized (linkedHashMap) {
            str2 = linkedHashMap.get(str);
        }
        if (str2 == null) {
            for (LocalAccountStore.ListKind listKind : LocalAccountStore.ListKind.values()) {
                LocalAccountStore.Item itemFind = data().find(listKind, str);
                if (itemFind != null && itemFind.payload.length() > 0) {
                    return itemFind;
                }
            }
        }
        if (str2 == null) {
            return new LocalAccountStore.Item(str, "عمل " + str, 0L);
        }
        JSONObject jSONObject = new JSONObject(str2);
        String strOptString = jSONObject.optString("ar_title");
        return new LocalAccountStore.Item(str, strOptString.length() == 0 ? jSONObject.optString("en_title", str) : strOptString, 0L, str2);
    }

    static LocalAccountStore.ListKind kind(String str) throws IOException {
        if (str.equals("3")) {
            return LocalAccountStore.ListKind.FAVORITE;
        }
        if (str.equals("2")) {
            return LocalAccountStore.ListKind.WATCH_LATER;
        }
        if (str.equals("1")) {
            return LocalAccountStore.ListKind.WATCHED;
        }
        throw new IOException("unsupported personal list");
    }

    static /* synthetic */ void lambda$data$0() {
        try {
            restoreLegacy();
            Class.forName("com.shabakaty.cinemana.ca1.Continue106").getMethod("portableReload", Object.class).invoke(null, app);
            log("account_reinstalled_restored");
        } catch (Exception e) {
            failure("reinstall_restore", e);
        }
    }

    static /* synthetic */ void lambda$decorate$6(String[] strArr, Context context, View view, View view2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        for (String str : strArr) {
            View viewFindViewById = view.findViewById(context.getResources().getIdentifier(str, "id", context.getPackageName()));
            if (viewFindViewById != null && viewFindViewById.getVisibility() != 8) {
                viewFindViewById.setVisibility(8);
            }
        }
    }

    static /* synthetic */ void lambda$flushProgressAsync$3() {
        try {
            flushProgress();
            if (stateDirty) {
                snapshotPreferences();
            }
        } catch (Exception e) {
            failure("progress", e);
        }
    }

    static /* synthetic */ Object lambda$logout$1() throws Exception {
        return new JSONObject();
    }

    static /* synthetic */ void lambda$observeEpisodes$8(String str, JSONArray jSONArray) {
        try {
            LocalAccountStore localAccountStoreData = data();
            LocalAccountStore.Item itemFind = localAccountStoreData.find(LocalAccountStore.ListKind.SUBSCRIPTION, str);
            if (itemFind == null) {
                return;
            }
            log("episode_observed id=" + safeId(str) + " previous=" + localAccountStoreData.baselineSize(str) + " fetched=" + jSONArray.length() + " new=" + localAccountStoreData.reconcile(str, episodeItems(itemFind, jSONArray)).size());
            deliver();
        } catch (Exception e) {
            failure("episode_observed", e);
        }
    }

    static /* synthetic */ void lambda$progress$2() {
        try {
            try {
                flushProgress();
            } catch (Exception e) {
                failure("progress", e);
            }
        } finally {
            progressScheduled.set(false);
        }
    }

    static /* synthetic */ void lambda$removeProgress$5(String str) {
        try {
            for (String str2 : new ArrayList(pendingProgress.keySet())) {
                if (str.equals(canonicalId(str2))) {
                    pendingProgress.remove(str2);
                }
            }
            data().removeProgress(str);
            for (String str3 : app.databaseList()) {
                if (!str3.endsWith("-wal") && !str3.endsWith("-shm") && !str3.endsWith("-journal")) {
                    SQLiteDatabase sQLiteDatabaseOpenDatabase = null;
                    try {
                        sQLiteDatabaseOpenDatabase = SQLiteDatabase.openDatabase(app.getDatabasePath(str3).getPath(), null, 0);
                        sQLiteDatabaseOpenDatabase.execSQL("UPDATE video_status SET videoProgress=0 WHERE videoId=?", new Object[]{str});
                        if (sQLiteDatabaseOpenDatabase != null) {
                            sQLiteDatabaseOpenDatabase.close();
                        }
                    } catch (SQLException unused) {
                        if (sQLiteDatabaseOpenDatabase != null) {
                        }
                    } catch (Throwable th) {
                        if (sQLiteDatabaseOpenDatabase != null) {
                            sQLiteDatabaseOpenDatabase.close();
                        }
                        throw th;
                    }
                }
            }
            snapshotPreferences();
            log("continue_removed id=" + safeId(str));
        } catch (Exception e) {
            failure("continue_remove", e);
        }
    }

    static /* synthetic */ void lambda$requestBaseline$9(String str) {
        try {
            LocalAccountStore localAccountStoreData = data();
            if (localAccountStoreData.find(LocalAccountStore.ListKind.SUBSCRIPTION, str) != null && !localAccountStoreData.hasBaseline(str)) {
                List<LocalAccountStore.Item> listEpisodeItems = episodeItems(item(str), episodes(str));
                if (listEpisodeItems.isEmpty()) {
                    return;
                }
                LocalAccountStore localAccountStoreData2 = data();
                localAccountStoreData2.reconcile(str, listEpisodeItems);
                log("subscription_baseline id=" + safeId(str) + " count=" + localAccountStoreData2.baselineSize(str));
            }
        } catch (Exception e) {
            failure("subscription_baseline", e);
        }
    }

    static /* synthetic */ void lambda$watchedChanged$4(String str, boolean z) {
        try {
            String strCanonicalId = canonicalId(str);
            if (z) {
                data().put(LocalAccountStore.ListKind.WATCHED, item(strCanonicalId));
            } else {
                data().remove(LocalAccountStore.ListKind.WATCHED, strCanonicalId);
            }
            log("watched_changed id=" + safeId(strCanonicalId) + " value=" + z);
        } catch (Exception e) {
            failure("watched_sync", e);
        }
    }

    static Object local(String str, Object[] objArr) throws Exception {
        LocalAccountStore localAccountStoreData = data();
        ensureLegacy();
        log("api_local operation=" + str);
        if (str.equals("f") || str.equals("r") || str.equals("x") || str.equals("E")) {
            throw new IOException("التعليقات على الخادم تحتاج حساب شبكتي؛ حسابك الحالي محلي");
        }
        if (str.equals("l")) {
            String strValueOf = String.valueOf(objArr[0]);
            ArrayList arrayList = new ArrayList();
            for (LocalAccountStore.Item item : localAccountStoreData.list(LocalAccountStore.ListKind.WATCHED)) {
                JSONObject jSONObjectModel = model(item);
                if (item.id.equals(strValueOf) || strValueOf.equals(jSONObjectModel.optString("rootSeries"))) {
                    arrayList.add(item.id);
                }
            }
            log("highlight_local id=" + safeId(strValueOf) + " count=" + arrayList.size());
            return arrayList;
        }
        if (str.equals("a")) {
            String strValueOf2 = String.valueOf(objArr[0]);
            JSONObject jSONObject = new JSONObject();
            String strConfig = localAccountStoreData.config("rating_" + strValueOf2, BuildConfig.FLAVOR);
            jSONObject.put("like", strConfig.equals("1")).put("dislike", strConfig.equals("0"));
            jSONObject.put("favorit", localAccountStoreData.find(LocalAccountStore.ListKind.FAVORITE, strValueOf2) != null).put("watched", localAccountStoreData.find(LocalAccountStore.ListKind.WATCHED, strValueOf2) != null).put("watchLater", localAccountStoreData.find(LocalAccountStore.ListKind.WATCH_LATER, strValueOf2) == null ? "0" : "1");
            return JSON.e(jSONObject.toString(), Class.forName("com.shabakaty.downloader.r25"));
        }
        if (str.equals("t") || str.equals("d")) {
            String strValueOf3 = String.valueOf(objArr[1]);
            LocalAccountStore.ListKind listKindKind = kind(String.valueOf(objArr[2]));
            if (str.equals("t")) {
                localAccountStoreData.put(listKindKind, item(strValueOf3));
            } else {
                localAccountStoreData.remove(listKindKind, strValueOf3);
            }
            return dto("user.LogoutResponseApi", "{\"status\":\"true\"}");
        }
        if (str.equals("v") || str.equals("y")) {
            String strValueOf4 = String.valueOf(objArr[1]);
            if (!str.equals("v")) {
                localAccountStoreData.remove(LocalAccountStore.ListKind.SUBSCRIPTION, strValueOf4);
                return PListParser.TAG_TRUE;
            }
            localAccountStoreData.put(LocalAccountStore.ListKind.SUBSCRIPTION, item(strValueOf4));
            log("subscription_baseline_pending");
            requestBaseline(strValueOf4);
            return PListParser.TAG_TRUE;
        }
        if (str.equals("e")) {
            int i = Integer.parseInt(String.valueOf(objArr[0]));
            List<LocalAccountStore.Item> list = localAccountStoreData.list(kind(String.valueOf(objArr[2])));
            Collections.reverse(list);
            if (i == 0) {
                Metadata269.hydrate(list.subList(0, Math.min(30, list.size())));
            }
            JSONArray jSONArray = new JSONArray();
            if (i < 0 || i > 100000) {
                throw new IOException("invalid page");
            }
            int i2 = i * 30;
            for (int i3 = i2; i3 < Math.min(i2 + 30, list.size()); i3++) {
                jSONArray.put(model(list.get(i3)));
            }
            return dto("user.UserListApi", new JSONObject().put(PListParser.TAG_DATA, jSONArray).put(FileDownloadModel.STATUS, "success").toString());
        }
        if (str.equals("p")) {
            JSONArray jSONArray2 = new JSONArray();
            Iterator<LocalAccountStore.Item> it = localAccountStoreData.list(LocalAccountStore.ListKind.SUBSCRIPTION).iterator();
            while (it.hasNext()) {
                jSONArray2.put(model(it.next()));
            }
            return dtoArray(jSONArray2);
        }
        if (!str.equals("q")) {
            if (!str.equals("C")) {
                return new JSONObject();
            }
            localAccountStoreData.setConfig("rating_" + String.valueOf(objArr[1]), String.valueOf(objArr[2]));
            return dto("user.LogoutResponseApi", "{\"status\":\"true\",\"likeNumber\":\"0\",\"dislikeNumebr\":\"0\"}");
        }
        JSONArray jSONArray3 = new JSONArray();
        List<LocalAccountStore.Item> listInbox = localAccountStoreData.inbox();
        Collections.reverse(listInbox);
        int iMax = Math.max(1, Math.min(100, Integer.parseInt(String.valueOf(objArr[0]))));
        for (int i4 = 0; i4 < Math.min(iMax, listInbox.size()); i4++) {
            jSONArray3.put(model(listInbox.get(i4)));
        }
        return dto("user.NotificationsListApi", new JSONObject().put("new", String.valueOf(listInbox.size())).put("notifications", jSONArray3).toString());
    }

    public static void log(String str) {
        Log.i("CinemanaLocal", str);
        LocalAccountLog.emit(str);
    }

    public static f74 logout() {
        return new LocalSingle(new Callable() { // from class: com.shabakaty.cinemana.local.LocalRuntime$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return LocalRuntime.lambda$logout$1();
            }
        });
    }

    static JSONObject model(LocalAccountStore.Item item) throws Exception {
        return Metadata269.enrich(item);
    }

    public static String name() {
        return app == null ? "حسابي" : app.getSharedPreferences("local_profile", 0).getString("name", "حسابي");
    }

    static void observeEpisodes(final String str, Object obj) {
        if (!(obj instanceof Collection) || ((Collection) obj).isEmpty()) {
            return;
        }
        try {
            final JSONArray jSONArray = new JSONArray(JSON.i(obj));
            NETWORK.execute(new Runnable() { // from class: com.shabakaty.cinemana.local.LocalRuntime$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    LocalRuntime.lambda$observeEpisodes$8(str, jSONArray);
                }
            });
        } catch (Exception e) {
            failure("episode_observed_decode", e);
        }
    }

    public static void open(Context context) {
        context.startActivity(new Intent(context, (Class<?>) LocalAccountActivity.class));
    }

    public static void overlay(Object obj) {
        LocalAccountStore localAccountStore = store;
        if (localAccountStore == null || obj == null) {
            return;
        }
        try {
            Class<?> cls = obj.getClass();
            String strValueOf = String.valueOf(cls.getField("nb").get(obj));
            String strValueOf2 = String.valueOf(cls.getField("rootSeries").get(obj));
            if (!strValueOf2.matches("[1-9][0-9]*")) {
                strValueOf2 = strValueOf;
            }
            Object objNewInstance = cls.getField(FileDownloadModel.STATUS).get(obj);
            if (objNewInstance == null) {
                objNewInstance = Class.forName("com.shabakaty.downloader.q25").newInstance();
                cls.getField(FileDownloadModel.STATUS).set(obj, objNewInstance);
            }
            boolean z = true;
            objNewInstance.getClass().getField("v").setBoolean(objNewInstance, localAccountStore.find(LocalAccountStore.ListKind.FAVORITE, strValueOf2) != null);
            Field field = objNewInstance.getClass().getField("s");
            if (localAccountStore.find(LocalAccountStore.ListKind.WATCHED, strValueOf) == null) {
                z = false;
            }
            field.setBoolean(objNewInstance, z);
            objNewInstance.getClass().getField("w").set(objNewInstance, localAccountStore.find(LocalAccountStore.ListKind.WATCH_LATER, strValueOf2) != null ? "1" : "0");
            LocalAccountStore.Item itemFind = localAccountStore.find(LocalAccountStore.ListKind.PROGRESS, strValueOf);
            if (itemFind != null) {
                objNewInstance.getClass().getField("x").setLong(objNewInstance, itemFind.positionMs);
            }
        } catch (Exception e) {
            failure("status_overlay", e);
        }
    }

    public static void profileResume(Object obj) {
        try {
            obj.getClass().getMethod("H0", String.class).invoke(obj, avatar());
        } catch (NoSuchMethodException unused) {
        } catch (Exception e) {
            failure("avatar_refresh", e);
        }
    }

    public static void profileState(Object obj) {
        try {
            Object obj2 = obj.getClass().getField("o").get(obj);
            obj2.getClass().getMethod("postValue", Object.class).invoke(obj2, name());
            Object obj3 = obj.getClass().getField("q").get(obj);
            obj3.getClass().getMethod("postValue", Object.class).invoke(obj3, avatar());
        } catch (Exception e) {
            failure("profile_refresh", e);
        }
    }

    public static void progress(String str, long j) {
        pendingProgress.put(str, Long.valueOf(j));
        if (progressScheduled.compareAndSet(false, true)) {
            IO.schedule(new Runnable() { // from class: com.shabakaty.cinemana.local.LocalRuntime$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    LocalRuntime.lambda$progress$2();
                }
            }, 10L, TimeUnit.SECONDS);
        }
    }

    public static long progressValue(String str) {
        try {
            LocalAccountStore.Item itemFind = data().find(LocalAccountStore.ListKind.PROGRESS, str);
            if (itemFind == null) {
                return 0L;
            }
            return itemFind.positionMs;
        } catch (Exception unused) {
            return 0L;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void refreshStorage() throws IOException {
        storageProbe = 0L;
        data();
    }

    public static void removeProgress(final String str) {
        mutedProgress.add(str);
        pendingProgress.remove(str);
        IO.execute(new Runnable() { // from class: com.shabakaty.cinemana.local.LocalRuntime$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                LocalRuntime.lambda$removeProgress$5(str);
            }
        });
    }

    private static void removeStage(File file) {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                file2.delete();
            }
        }
        file.delete();
    }

    static void requestBaseline(final String str) {
        NETWORK.execute(new Runnable() { // from class: com.shabakaty.cinemana.local.LocalRuntime$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                LocalRuntime.lambda$requestBaseline$9(str);
            }
        });
    }

    static String requestLabel(Object obj) throws Exception {
        String path = new URI(obj.getClass().getField("b").get(obj).toString()).getPath();
        String[] strArr = {"allVideoInfo", "videoSeason", "transcoddedFiles"};
        for (int i = 0; i < 3; i++) {
            String str = strArr[i];
            String str2 = "/" + str + "/id/";
            int iIndexOf = path.indexOf(str2);
            if (iIndexOf >= 0) {
                return str + " id=" + safeId(path.substring(iIndexOf + str2.length()));
            }
        }
        return BuildConfig.FLAVOR;
    }

    public static void requestScan(final boolean z) {
        if (app == null || !scanning.compareAndSet(false, true)) {
            return;
        }
        NETWORK.execute(new Runnable() { // from class: com.shabakaty.cinemana.local.LocalRuntime.5
            @Override // java.lang.Runnable
            public void run() {
                try {
                    try {
                        LocalRuntime.scanCancelled = false;
                        LocalRuntime.scan(z);
                    } catch (Exception e) {
                        LocalRuntime.failure("scan", e);
                    }
                } finally {
                    LocalRuntime.scanning.set(false);
                }
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:169:0x03fd  */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    static void restoreLegacy() throws Exception {
        int i;
        Integer num;
        String[] strArr;
        int i2;
        SQLiteDatabase sQLiteDatabaseOpenDatabase;
        String str;
        long j;
        Iterator it;
        String str2;
        data().setConfig("legacy_seeded", "1");
        String[] strArr2 = {"ca1_continue106", "ca1_episode_context107"};
        int i3 = 0;
        Integer num2 = 0;
        int i4 = 0;
        while (true) {
            i = 2;
            if (i4 >= 2) {
                break;
            }
            app.getSharedPreferences(strArr2[i4], 0).edit().clear().commit();
            i4++;
        }
        for (Map.Entry<String, Map<String, Object>> entry : BackupState.decode(data().list(LocalAccountStore.ListKind.STATE)).entrySet()) {
            SharedPreferences.Editor editorEdit = app.getSharedPreferences(entry.getKey(), 0).edit();
            for (Map.Entry<String, Object> entry2 : entry.getValue().entrySet()) {
                String key = entry2.getKey();
                Object value = entry2.getValue();
                if (value instanceof String) {
                    editorEdit.putString(key, (String) value);
                } else if (value instanceof Long) {
                    editorEdit.putLong(key, ((Long) value).longValue());
                } else if (value instanceof Integer) {
                    editorEdit.putInt(key, ((Integer) value).intValue());
                } else if (value instanceof Boolean) {
                    editorEdit.putBoolean(key, ((Boolean) value).booleanValue());
                } else if (value instanceof Float) {
                    editorEdit.putFloat(key, ((Float) value).floatValue());
                }
            }
            if (!editorEdit.commit()) {
                throw new IOException("preferences restore failed");
            }
        }
        app.getSharedPreferences("local_settings", 0).edit().putString("parental", data().config("parental", "0")).putString("translation", data().config("translation", "0")).apply();
        String[] strArrDatabaseList = app.databaseList();
        int length = strArrDatabaseList.length;
        int i5 = 0;
        while (i5 < length) {
            String str3 = strArrDatabaseList[i5];
            if (str3.endsWith("-wal") || str3.endsWith("-shm") || str3.endsWith("-journal")) {
                num = num2;
                strArr = strArrDatabaseList;
                i2 = length;
            } else {
                SQLiteDatabase sQLiteDatabase = null;
                try {
                    sQLiteDatabaseOpenDatabase = SQLiteDatabase.openDatabase(app.getDatabasePath(str3).getPath(), null, i3);
                    try {
                        try {
                            Cursor cursorRawQuery = sQLiteDatabaseOpenDatabase.rawQuery("SELECT name FROM sqlite_master WHERE type='table' AND name='video_status'", null);
                            try {
                                boolean zMoveToFirst = cursorRawQuery.moveToFirst();
                                cursorRawQuery.close();
                                if (zMoveToFirst) {
                                    sQLiteDatabaseOpenDatabase.beginTransaction();
                                    try {
                                        sQLiteDatabaseOpenDatabase.execSQL("UPDATE video_status SET favorite=0,watched=0,watchLater='false',videoProgress=0");
                                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                                        LocalAccountStore.ListKind[] listKindArr = new LocalAccountStore.ListKind[5];
                                        listKindArr[i3] = LocalAccountStore.ListKind.FAVORITE;
                                        listKindArr[1] = LocalAccountStore.ListKind.WATCH_LATER;
                                        listKindArr[i] = LocalAccountStore.ListKind.WATCHED;
                                        listKindArr[3] = LocalAccountStore.ListKind.PROGRESS;
                                        listKindArr[4] = LocalAccountStore.ListKind.SUBSCRIPTION;
                                        int i6 = 0;
                                        for (int i7 = 5; i6 < i7; i7 = 5) {
                                            for (LocalAccountStore.Item item : data().list(listKindArr[i6])) {
                                                linkedHashMap.put(item.id, item);
                                            }
                                            i6++;
                                        }
                                        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                                        Cursor cursorRawQuery2 = sQLiteDatabaseOpenDatabase.rawQuery("PRAGMA table_info(video_model)", null);
                                        while (cursorRawQuery2.moveToNext()) {
                                            try {
                                                linkedHashMap2.put(cursorRawQuery2.getString(1), cursorRawQuery2.getString(i));
                                            } catch (Throwable th) {
                                                cursorRawQuery2.close();
                                                throw th;
                                            }
                                        }
                                        cursorRawQuery2.close();
                                        Iterator it2 = linkedHashMap.values().iterator();
                                        while (it2.hasNext()) {
                                            try {
                                                LocalAccountStore.Item item2 = (LocalAccountStore.Item) it2.next();
                                                JSONObject jSONObjectModel = model(item2);
                                                ContentValues contentValues = new ContentValues();
                                                Iterator it3 = linkedHashMap2.entrySet().iterator();
                                                while (true) {
                                                    it = it2;
                                                    if (!it3.hasNext()) {
                                                        break;
                                                    }
                                                    Map.Entry entry3 = (Map.Entry) it3.next();
                                                    LinkedHashMap linkedHashMap3 = linkedHashMap2;
                                                    String str4 = (String) entry3.getKey();
                                                    String[] strArr3 = strArrDatabaseList;
                                                    try {
                                                        if (str4.equals("arTitle")) {
                                                            str2 = "ar_title";
                                                        } else if (str4.equals("enTitle")) {
                                                            str2 = "en_title";
                                                        } else if (str4.equals("arContent")) {
                                                            str2 = "ar_content";
                                                        } else {
                                                            str2 = str4.equals("enContent") ? "en_content" : str4;
                                                        }
                                                        String str5 = (String) entry3.getValue();
                                                        int i8 = length;
                                                        try {
                                                            if (str5.equalsIgnoreCase("TEXT")) {
                                                                contentValues.put(str4, jSONObjectModel.optString(str2, BuildConfig.FLAVOR));
                                                            } else {
                                                                contentValues.put(str4, num2);
                                                            }
                                                            length = i8;
                                                            it2 = it;
                                                            strArrDatabaseList = strArr3;
                                                            linkedHashMap2 = linkedHashMap3;
                                                        } catch (Throwable th2) {
                                                            th = th2;
                                                        }
                                                    } catch (Throwable th3) {
                                                        th = th3;
                                                    }
                                                    sQLiteDatabaseOpenDatabase.endTransaction();
                                                    throw th;
                                                }
                                                LinkedHashMap linkedHashMap4 = linkedHashMap2;
                                                String[] strArr4 = strArrDatabaseList;
                                                int i9 = length;
                                                contentValues.put("nb", item2.id);
                                                if (contentValues.getAsString("enTitle").isEmpty()) {
                                                    contentValues.put("enTitle", item2.title);
                                                }
                                                sQLiteDatabaseOpenDatabase.insertWithOnConflict("video_model", null, contentValues, 4);
                                                ContentValues contentValues2 = new ContentValues();
                                                contentValues2.put("id", item2.id);
                                                contentValues2.put("videoId", item2.id);
                                                contentValues2.put("liked", num2);
                                                contentValues2.put("disLiked", num2);
                                                contentValues2.put("annoying", num2);
                                                contentValues2.put("favorite", num2);
                                                contentValues2.put("watched", num2);
                                                contentValues2.put("watchLater", PListParser.TAG_FALSE);
                                                contentValues2.put("videoProgress", num2);
                                                sQLiteDatabaseOpenDatabase.insertWithOnConflict("video_status", null, contentValues2, 4);
                                                length = i9;
                                                it2 = it;
                                                strArrDatabaseList = strArr4;
                                                linkedHashMap2 = linkedHashMap4;
                                            } catch (Throwable th4) {
                                                th = th4;
                                            }
                                        }
                                        strArr = strArrDatabaseList;
                                        i2 = length;
                                        LocalAccountStore.ListKind[] listKindArr2 = new LocalAccountStore.ListKind[4];
                                        try {
                                            listKindArr2[0] = LocalAccountStore.ListKind.FAVORITE;
                                            listKindArr2[1] = LocalAccountStore.ListKind.WATCH_LATER;
                                            listKindArr2[2] = LocalAccountStore.ListKind.WATCHED;
                                            listKindArr2[3] = LocalAccountStore.ListKind.PROGRESS;
                                            int i10 = 0;
                                            for (int i11 = 4; i10 < i11; i11 = 4) {
                                                try {
                                                    LocalAccountStore.ListKind listKind = listKindArr2[i10];
                                                    for (LocalAccountStore.Item item3 : data().list(listKind)) {
                                                        if (listKind == LocalAccountStore.ListKind.FAVORITE) {
                                                            str = "favorite";
                                                        } else if (listKind == LocalAccountStore.ListKind.WATCH_LATER) {
                                                            str = "watchLater";
                                                        } else {
                                                            str = listKind == LocalAccountStore.ListKind.WATCHED ? "watched" : "videoProgress";
                                                        }
                                                        if (listKind == LocalAccountStore.ListKind.PROGRESS) {
                                                            try {
                                                                j = item3.positionMs;
                                                            } catch (Throwable th5) {
                                                                th = th5;
                                                            }
                                                        } else {
                                                            j = 1;
                                                        }
                                                        try {
                                                            Long lValueOf = Long.valueOf(j);
                                                            StringBuilder sb = new StringBuilder();
                                                            LocalAccountStore.ListKind listKind2 = listKind;
                                                            sb.append("UPDATE video_status SET ");
                                                            sb.append(str);
                                                            sb.append("=? WHERE videoId=? OR id=?");
                                                            String string = sb.toString();
                                                            Object[] objArr = new Object[3];
                                                            objArr[0] = lValueOf;
                                                            objArr[1] = item3.id;
                                                            try {
                                                                objArr[2] = item3.id;
                                                                sQLiteDatabaseOpenDatabase.execSQL(string, objArr);
                                                                num2 = num2;
                                                                listKindArr2 = listKindArr2;
                                                                listKind = listKind2;
                                                            } catch (Throwable th6) {
                                                                th = th6;
                                                                sQLiteDatabaseOpenDatabase.endTransaction();
                                                                throw th;
                                                            }
                                                        } catch (Throwable th7) {
                                                            th = th7;
                                                            sQLiteDatabaseOpenDatabase.endTransaction();
                                                            throw th;
                                                        }
                                                    }
                                                    i10++;
                                                    num2 = num2;
                                                } catch (Throwable th8) {
                                                    th = th8;
                                                }
                                            }
                                            num = num2;
                                            LocalAccountStore.Item itemFind = data().find(LocalAccountStore.ListKind.STATE, "settings");
                                            if (itemFind != null) {
                                                JSONObject jSONObject = new JSONObject(itemFind.payload);
                                                Iterator<String> itKeys = jSONObject.keys();
                                                ContentValues contentValues3 = new ContentValues();
                                                HashSet hashSet = new HashSet();
                                                Cursor cursorRawQuery3 = sQLiteDatabaseOpenDatabase.rawQuery("PRAGMA table_info(settings)", null);
                                                while (cursorRawQuery3.moveToNext()) {
                                                    try {
                                                        hashSet.add(cursorRawQuery3.getString(1));
                                                    } catch (Throwable th9) {
                                                        cursorRawQuery3.close();
                                                        throw th9;
                                                    }
                                                }
                                                cursorRawQuery3.close();
                                                while (itKeys.hasNext()) {
                                                    String next = itKeys.next();
                                                    if (hashSet.contains(next) && !next.equals("userId")) {
                                                        contentValues3.put(next, jSONObject.getString(next));
                                                    }
                                                }
                                                if (contentValues3.size() > 0) {
                                                    String[] strArr5 = new String[1];
                                                    try {
                                                        strArr5[0] = "local";
                                                        if (sQLiteDatabaseOpenDatabase.update("settings", contentValues3, "userId=?", strArr5) == 0) {
                                                            contentValues3.put("userId", "local");
                                                            sQLiteDatabaseOpenDatabase.insertWithOnConflict("settings", null, contentValues3, 4);
                                                        }
                                                    } catch (Throwable th10) {
                                                        th = th10;
                                                    }
                                                }
                                            }
                                            sQLiteDatabaseOpenDatabase.setTransactionSuccessful();
                                            try {
                                                sQLiteDatabaseOpenDatabase.endTransaction();
                                                log("legacy_progress_restored");
                                                if (sQLiteDatabaseOpenDatabase != null) {
                                                    sQLiteDatabaseOpenDatabase.close();
                                                }
                                            } catch (Exception e) {
                                                e = e;
                                                failure("legacy_restore", e);
                                                if (sQLiteDatabaseOpenDatabase != null) {
                                                }
                                                i5++;
                                                num2 = num;
                                                length = i2;
                                                strArrDatabaseList = strArr;
                                                i3 = 0;
                                                i = 2;
                                            }
                                        } catch (Throwable th11) {
                                            th = th11;
                                        }
                                    } catch (Throwable th12) {
                                        th = th12;
                                    }
                                } else {
                                    if (sQLiteDatabaseOpenDatabase != null) {
                                        sQLiteDatabaseOpenDatabase.close();
                                    }
                                    num = num2;
                                    strArr = strArrDatabaseList;
                                    i2 = length;
                                }
                            } catch (Throwable th13) {
                                cursorRawQuery.close();
                                throw th13;
                            }
                        } catch (Throwable th14) {
                            th = th14;
                            sQLiteDatabase = sQLiteDatabaseOpenDatabase;
                            if (sQLiteDatabase != null) {
                                sQLiteDatabase.close();
                            }
                            throw th;
                        }
                    } catch (Exception e2) {
                        e = e2;
                        num = num2;
                        strArr = strArrDatabaseList;
                        i2 = length;
                    }
                } catch (Exception e3) {
                    e = e3;
                    num = num2;
                    strArr = strArrDatabaseList;
                    i2 = length;
                    sQLiteDatabaseOpenDatabase = null;
                } catch (Throwable th15) {
                    th = th15;
                }
            }
            i5++;
            num2 = num;
            length = i2;
            strArrDatabaseList = strArr;
            i3 = 0;
            i = 2;
        }
    }

    public static void resumeProgress(String str) {
        mutedProgress.remove(str);
        stateDirty = true;
    }

    static String safeId(String str) {
        return (str == null || !str.matches("[A-Za-z0-9_-]{1,100}")) ? "invalid" : str;
    }

    static void scan(boolean z) throws Exception {
        int i;
        LocalAccountStore localAccountStoreData = data();
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = Long.parseLong(localAccountStoreData.config("last_scan", "0"));
        if (jCurrentTimeMillis >= j) {
            if (jCurrentTimeMillis - j < (z ? 60000L : INTERVAL)) {
                deliver();
                return;
            }
        }
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) app.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return;
        }
        List<LocalAccountStore.Item> list = localAccountStoreData.list(LocalAccountStore.ListKind.SUBSCRIPTION);
        if (list.isEmpty()) {
            return;
        }
        int i2 = Integer.parseInt(localAccountStoreData.config("scan_cursor", "0"));
        int iMin = Math.min(200, list.size());
        long jElapsedRealtime = SystemClock.elapsedRealtime() + 45000;
        LocalAccountStore localAccountStoreData2 = localAccountStoreData;
        int i3 = 0;
        while (i3 < iMin && !scanCancelled && SystemClock.elapsedRealtime() < jElapsedRealtime) {
            LocalAccountStore.Item item = list.get((i2 + i3) % list.size());
            try {
                JSONArray jSONArrayEpisodes = episodes(item.id);
                if (jSONArrayEpisodes.length() == 0) {
                    i = iMin;
                } else {
                    List<LocalAccountStore.Item> listEpisodeItems = episodeItems(item, jSONArrayEpisodes);
                    localAccountStoreData2 = data();
                    int iBaselineSize = localAccountStoreData2.baselineSize(item.id);
                    List<LocalAccountStore.Item> listReconcile = localAccountStoreData2.reconcile(item.id, listEpisodeItems);
                    StringBuilder sb = new StringBuilder();
                    i = iMin;
                    try {
                        sb.append("subscription_checked id=");
                        sb.append(safeId(item.id));
                        sb.append(" previous=");
                        sb.append(iBaselineSize);
                        sb.append(" fetched=");
                        sb.append(listEpisodeItems.size());
                        sb.append(" new=");
                        sb.append(listReconcile.size());
                        sb.append(" baseline=");
                        sb.append(localAccountStoreData2.baselineSize(item.id));
                        log(sb.toString());
                    } catch (Exception e) {
                        e = e;
                        failure("episode_fetch", e);
                    }
                }
            } catch (Exception e2) {
                e = e2;
                i = iMin;
            }
            i3++;
            iMin = i;
        }
        int i4 = i2 + i3;
        localAccountStoreData2.setConfig("scan_cursor", String.valueOf(i4 % list.size()));
        localAccountStoreData2.setConfig("last_scan", String.valueOf(jCurrentTimeMillis));
        log("scan_complete checked=" + i3 + " total=" + list.size() + " cursor=" + (i4 % list.size()));
        deliver();
    }

    static void schedule() {
        try {
            JobScheduler jobScheduler = (JobScheduler) app.getSystemService("jobscheduler");
            Iterator<JobInfo> it = jobScheduler.getAllPendingJobs().iterator();
            boolean z = false;
            while (it.hasNext()) {
                if (it.next().getId() == 26601) {
                    z = true;
                }
            }
            if (z) {
                for (JobInfo jobInfo : jobScheduler.getAllPendingJobs()) {
                    if (jobInfo.getId() == 26601 && jobInfo.getIntervalMillis() != INTERVAL) {
                        jobScheduler.cancel(26601);
                        z = false;
                    }
                }
            }
            if (z) {
                return;
            }
            jobScheduler.schedule(new JobInfo.Builder(26601, new ComponentName(app, (Class<?>) LocalEpisodeJob.class)).setRequiredNetworkType(1).setPeriodic(INTERVAL).setPersisted(true).build());
        } catch (Exception e) {
            failure("schedule", e);
        }
    }

    static String settings() {
        try {
            SharedPreferences sharedPreferences = app.getSharedPreferences("local_settings", 0);
            return new JSONObject().put("parentalLevelStatus", Integer.parseInt(sharedPreferences.getString("parental", "0"))).put("parentalControl", new JSONArray("[{\"id\":\"0\",\"name\":\"الافتراضي\"},{\"id\":\"1\",\"name\":\"الكل\"},{\"id\":\"2\",\"name\":\"للعائلة\"},{\"id\":\"3\",\"name\":\"للأطفال\"}]")).put("userTranslation", new JSONObject().put("name", "عرض الأعمال بدون ترجمة").put(FileDownloadModel.STATUS, Integer.parseInt(sharedPreferences.getString("translation", "0")))).toString();
        } catch (Exception unused) {
            return "{}";
        }
    }

    static File sharedDirectory() {
        return new File(Environment.getExternalStorageDirectory(), "Cinemana/work/data/local-account");
    }

    static void snapshotLegacy(boolean z) throws Exception {
        LocalAccountStore localAccountStore;
        String str;
        String str2;
        LocalAccountStore localAccountStore2;
        String[] strArr;
        int i;
        String str3;
        String str4;
        LocalAccountStore localAccountStore3;
        String str5 = "kind";
        String str6 = "nb";
        LocalAccountStore localAccountStoreData = data();
        EnumMap enumMap = new EnumMap(LocalAccountStore.ListKind.class);
        for (LocalAccountStore.ListKind listKind : LocalAccountStore.ListKind.values()) {
            enumMap.put(listKind, new ArrayList());
        }
        String[] strArrDatabaseList = app.databaseList();
        int length = strArrDatabaseList.length;
        boolean z2 = false;
        int i2 = 0;
        while (i2 < length) {
            SQLiteDatabase sQLiteDatabase = null;
            try {
                SQLiteDatabase sQLiteDatabaseOpenDatabase = SQLiteDatabase.openDatabase(app.getDatabasePath(strArrDatabaseList[i2]).getPath(), null, 1);
                try {
                    try {
                        Cursor cursorRawQuery = sQLiteDatabaseOpenDatabase.rawQuery("SELECT * FROM video_status", null);
                        while (cursorRawQuery.moveToNext()) {
                            try {
                                String string = cursorRawQuery.getString(cursorRawQuery.getColumnIndexOrThrow("videoId"));
                                if (string != null && string.matches("[A-Za-z0-9_-]{1,100}")) {
                                    String[] strArr2 = strArrDatabaseList;
                                    try {
                                        JSONObject jSONObjectPut = new JSONObject().put(str6, string).put("en_title", "عمل " + string).put(str5, "1");
                                        int i3 = length;
                                        try {
                                            Cursor cursorRawQuery2 = sQLiteDatabaseOpenDatabase.rawQuery("SELECT nb,arTitle,enTitle,kind,rootSeries,season,episodeNummer,imgObjUrl,imgThumbObjUrl,imgMediumThumbObjUrl FROM video_model WHERE nb=?", new String[]{string});
                                            try {
                                                if (cursorRawQuery2.moveToFirst()) {
                                                    localAccountStore3 = localAccountStoreData;
                                                    try {
                                                        String[] strArr3 = {str6, "ar_title", "en_title", str5, "rootSeries", "season", "episodeNummer", "imgObjUrl", "imgThumbObjUrl", "imgMediumThumbObjUrl"};
                                                        str3 = str5;
                                                        int i4 = 0;
                                                        for (int i5 = 10; i4 < i5; i5 = 10) {
                                                            try {
                                                                if (!cursorRawQuery2.isNull(i4)) {
                                                                    try {
                                                                        jSONObjectPut.put(strArr3[i4], cursorRawQuery2.getString(i4));
                                                                    } catch (Throwable th) {
                                                                        th = th;
                                                                        cursorRawQuery2.close();
                                                                        throw th;
                                                                    }
                                                                }
                                                                i4++;
                                                                str6 = str6;
                                                            } catch (Throwable th2) {
                                                                th = th2;
                                                                cursorRawQuery2.close();
                                                                throw th;
                                                            }
                                                        }
                                                        str4 = str6;
                                                        if (jSONObjectPut.optString("ar_title").isEmpty()) {
                                                            jSONObjectPut.optString("en_title", string);
                                                        }
                                                    } catch (Throwable th3) {
                                                        th = th3;
                                                    }
                                                } else {
                                                    str3 = str5;
                                                    str4 = str6;
                                                    localAccountStore3 = localAccountStoreData;
                                                }
                                                try {
                                                    cursorRawQuery2.close();
                                                    JSONObject jSONObjectMerge = Metadata269.merge(Metadata269.local(string), jSONObjectPut);
                                                    String strTitle = Metadata269.title(jSONObjectMerge, "عمل " + string);
                                                    long j = cursorRawQuery.getLong(cursorRawQuery.getColumnIndexOrThrow("videoProgress"));
                                                    LocalAccountStore.Item item = new LocalAccountStore.Item(string, strTitle, j, jSONObjectMerge.toString());
                                                    if (j > 0 && app.getSharedPreferences("ca1_continue106", 0).contains(string)) {
                                                        enumMap.get(LocalAccountStore.ListKind.PROGRESS).add(item);
                                                    }
                                                    if (z) {
                                                        if (cursorRawQuery.getInt(cursorRawQuery.getColumnIndexOrThrow("favorite")) != 0) {
                                                            enumMap.get(LocalAccountStore.ListKind.FAVORITE).add(item);
                                                        }
                                                        if (cursorRawQuery.getInt(cursorRawQuery.getColumnIndexOrThrow("watched")) != 0) {
                                                            enumMap.get(LocalAccountStore.ListKind.WATCHED).add(item);
                                                        }
                                                        if ("1".equals(cursorRawQuery.getString(cursorRawQuery.getColumnIndexOrThrow("watchLater")))) {
                                                            enumMap.get(LocalAccountStore.ListKind.WATCH_LATER).add(item);
                                                        }
                                                    }
                                                    strArrDatabaseList = strArr2;
                                                    length = i3;
                                                    localAccountStoreData = localAccountStore3;
                                                    str5 = str3;
                                                    str6 = str4;
                                                } catch (Throwable th4) {
                                                    th = th4;
                                                    cursorRawQuery.close();
                                                    throw th;
                                                }
                                            } catch (Throwable th5) {
                                                th = th5;
                                            }
                                        } catch (Throwable th6) {
                                            th = th6;
                                        }
                                    } catch (Throwable th7) {
                                        th = th7;
                                        cursorRawQuery.close();
                                        throw th;
                                    }
                                }
                            } catch (Throwable th8) {
                                th = th8;
                            }
                        }
                        str = str5;
                        str2 = str6;
                        localAccountStore2 = localAccountStoreData;
                        strArr = strArrDatabaseList;
                        i = length;
                        try {
                            cursorRawQuery.close();
                            try {
                                Cursor cursorRawQuery3 = sQLiteDatabaseOpenDatabase.rawQuery("SELECT * FROM settings WHERE userId=?", new String[]{"local"});
                                try {
                                    if (cursorRawQuery3.moveToFirst()) {
                                        JSONObject jSONObject = new JSONObject();
                                        for (int i6 = 0; i6 < cursorRawQuery3.getColumnCount(); i6++) {
                                            if (!cursorRawQuery3.isNull(i6) && !"userId".equals(cursorRawQuery3.getColumnName(i6))) {
                                                jSONObject.put(cursorRawQuery3.getColumnName(i6), cursorRawQuery3.getString(i6));
                                            }
                                        }
                                        enumMap.get(LocalAccountStore.ListKind.STATE).add(new LocalAccountStore.Item("settings", BuildConfig.FLAVOR, 0L, jSONObject.toString()));
                                    }
                                    cursorRawQuery3.close();
                                    if (sQLiteDatabaseOpenDatabase != null) {
                                        sQLiteDatabaseOpenDatabase.close();
                                    }
                                    z2 = true;
                                } catch (Throwable th9) {
                                    cursorRawQuery3.close();
                                    throw th9;
                                }
                            } catch (SQLException unused) {
                                sQLiteDatabase = sQLiteDatabaseOpenDatabase;
                                z2 = true;
                                if (sQLiteDatabase != null) {
                                    sQLiteDatabase.close();
                                }
                            }
                        } catch (SQLException unused2) {
                        }
                    } catch (SQLException unused3) {
                        str = str5;
                        str2 = str6;
                        localAccountStore2 = localAccountStoreData;
                        strArr = strArrDatabaseList;
                        i = length;
                        sQLiteDatabase = sQLiteDatabaseOpenDatabase;
                    }
                } catch (Throwable th10) {
                    th = th10;
                    sQLiteDatabase = sQLiteDatabaseOpenDatabase;
                    if (sQLiteDatabase != null) {
                        sQLiteDatabase.close();
                    }
                    throw th;
                }
            } catch (SQLException unused4) {
                str = str5;
                str2 = str6;
                localAccountStore2 = localAccountStoreData;
                strArr = strArrDatabaseList;
                i = length;
            } catch (Throwable th11) {
                th = th11;
            }
            i2++;
            strArrDatabaseList = strArr;
            length = i;
            localAccountStoreData = localAccountStore2;
            str5 = str;
            str6 = str2;
        }
        LocalAccountStore localAccountStore4 = localAccountStoreData;
        String str7 = new String[]{"ca1_continue106"}[0];
        for (Map.Entry<String, ?> entry : app.getSharedPreferences(str7, 0).getAll().entrySet()) {
            enumMap.get(LocalAccountStore.ListKind.STATE).addAll(BackupState.encode(str7, entry.getKey(), entry.getValue()));
        }
        if (z2) {
            localAccountStore = localAccountStore4;
            localAccountStore.replace(LocalAccountStore.ListKind.PROGRESS, enumMap.remove(LocalAccountStore.ListKind.PROGRESS));
        } else {
            localAccountStore = localAccountStore4;
        }
        localAccountStore.replace(LocalAccountStore.ListKind.STATE, enumMap.remove(LocalAccountStore.ListKind.STATE));
        localAccountStore.merge(enumMap);
        if (z && z2) {
            localAccountStore.setConfig("legacy_seeded", "1");
        }
        log("legacy_snapshot_complete");
    }

    static void snapshotPreferences() throws Exception {
        ArrayList arrayList = new ArrayList();
        LocalAccountStore.Item itemFind = data().find(LocalAccountStore.ListKind.STATE, "settings");
        if (itemFind != null) {
            arrayList.add(itemFind);
        }
        String str = new String[]{"ca1_continue106"}[0];
        for (Map.Entry<String, ?> entry : app.getSharedPreferences(str, 0).getAll().entrySet()) {
            arrayList.addAll(BackupState.encode(str, entry.getKey(), entry.getValue()));
        }
        data().replace(LocalAccountStore.ListKind.STATE, arrayList);
        stateDirty = false;
        lastStateSnapshot = System.currentTimeMillis();
    }

    public static void stateChanged() {
        stateDirty = true;
    }

    static void updateProfile() throws IOException {
        String string;
        FileOutputStream fileOutputStreamStartWrite;
        byte[] bArrAvatar = store.avatar();
        File fileDirectory = store.directory();
        if (bArrAvatar.length > 0) {
            try {
                File file = new File(fileDirectory, "avatar-" + hex(MessageDigest.getInstance("SHA-256").digest(bArrAvatar)).substring(0, 16) + ".jpg");
                if (!file.exists()) {
                    AtomicFile atomicFile = new AtomicFile(file);
                    try {
                        fileOutputStreamStartWrite = atomicFile.startWrite();
                        try {
                            fileOutputStreamStartWrite.write(bArrAvatar);
                            atomicFile.finishWrite(fileOutputStreamStartWrite);
                        } catch (IOException e) {
                            e = e;
                            if (fileOutputStreamStartWrite != null) {
                                atomicFile.failWrite(fileOutputStreamStartWrite);
                            }
                            throw e;
                        }
                    } catch (IOException e2) {
                        e = e2;
                        fileOutputStreamStartWrite = null;
                    }
                }
                string = Uri.fromFile(file).toString();
                File[] fileArrListFiles = fileDirectory.listFiles();
                if (fileArrListFiles != null) {
                    for (File file2 : fileArrListFiles) {
                        if ((file2.getName().equals("avatar.jpg") || file2.getName().matches("avatar-[0-9a-f]+\\.jpg")) && !file2.equals(file)) {
                            file2.delete();
                        }
                    }
                }
            } catch (NoSuchAlgorithmException e3) {
                throw new IOException(e3);
            }
        } else {
            string = BuildConfig.FLAVOR;
        }
        app.getSharedPreferences("local_profile", 0).edit().putString("name", store.name()).putString("avatar", string).apply();
    }

    public static void watchedChanged(final String str, final boolean z) {
        IO.execute(new Runnable() { // from class: com.shabakaty.cinemana.local.LocalRuntime$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                LocalRuntime.lambda$watchedChanged$4(str, z);
            }
        });
    }

    public static Object wrap(final Object obj) {
        api = obj;
        return Proxy.newProxyInstance(obj.getClass().getClassLoader(), new Class[]{k9.class}, new InvocationHandler() { // from class: com.shabakaty.cinemana.local.LocalRuntime.4
            @Override // java.lang.reflect.InvocationHandler
            public Object invoke(Object obj2, Method method, final Object[] objArr) throws Throwable {
                final String name = method.getName();
                if (method.getDeclaringClass() == Object.class) {
                    if (name.equals("toString")) {
                        return "LocalAccountApi";
                    }
                    if (name.equals("hashCode")) {
                        return Integer.valueOf(System.identityHashCode(obj2));
                    }
                    return Boolean.valueOf(obj2 == objArr[0]);
                }
                if (name.equals("I")) {
                    return LocalRuntime.dto("user.UserSettingsApi", LocalRuntime.settings());
                }
                if (name.equals("j") || name.equals("m")) {
                    final String str = name.equals("j") ? "parental" : "translation";
                    final String strValueOf = String.valueOf(objArr[0]);
                    LocalRuntime.app.getSharedPreferences("local_settings", 0).edit().putString(str, strValueOf).apply();
                    LocalRuntime.IO.execute(new Runnable() { // from class: com.shabakaty.cinemana.local.LocalRuntime.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                LocalRuntime.data().setConfig(str, strValueOf);
                            } catch (Exception e) {
                                LocalRuntime.failure("settings", e);
                            }
                        }
                    });
                    return Class.forName("com.shabakaty.downloader.qv4").getField("a").get(null);
                }
                if (Arrays.asList("a", "d", "e", "t", "p", "q", "v", "y", "s", "B", "C", "E", "f", "r", "x", "l").contains(name)) {
                    return new LocalSingle(new Callable<Object>() { // from class: com.shabakaty.cinemana.local.LocalRuntime.4.2
                        @Override // java.util.concurrent.Callable
                        public Object call() throws Exception {
                            return LocalRuntime.local(name, objArr);
                        }
                    }, (name.equals("e") || name.equals("p")) ? LocalRuntime.METADATA : LocalRuntime.IO);
                }
                try {
                    Object objInvoke = method.invoke(obj, objArr);
                    if (name.equals("D") && (objInvoke instanceof f74)) {
                        return new CategorySingle((f74) objInvoke);
                    }
                    if (name.equals("A") && (objInvoke instanceof f74)) {
                        return new CaptureSingle((f74) objInvoke, String.valueOf(objArr[0]));
                    }
                    return (name.equals("b") && (objInvoke instanceof qf1)) ? new EpisodeFlow((qf1) objInvoke, String.valueOf(objArr[0])) : objInvoke;
                } catch (InvocationTargetException e) {
                    throw e.getCause();
                }
            }
        });
    }
}
