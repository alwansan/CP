package com.shabakaty.cinemana.helpers.casting;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.IBinder;
import android.util.Log;
import android.widget.RemoteViews;
import com.cinemana.pro.R;
import com.connectsdk.core.MediaInfo;
import com.connectsdk.core.SubtitleInfo;
import com.connectsdk.device.ConnectableDevice;
import com.connectsdk.discovery.CapabilityFilter;
import com.connectsdk.service.DLNAService;
import com.connectsdk.service.DeviceService;
import com.connectsdk.service.NetcastTVService;
import com.connectsdk.service.capability.MediaControl;
import com.connectsdk.service.capability.MediaPlayer;
import com.connectsdk.service.command.ServiceCommandError;
import com.facebook.common.executors.UiThreadImmediateExecutorService;
import com.facebook.common.internal.Fn;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.references.CloseableReference;
import com.facebook.datasource.AbstractDataSource;
import com.facebook.datasource.DataSource;
import com.facebook.imagepipeline.core.ImagePipelineFactory;
import com.facebook.imagepipeline.image.CloseableImage;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.imagepipeline.request.ImageRequestBuilder;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.liulishuo.filedownloader.BuildConfig;
import com.liulishuo.filedownloader.services.FileDownloadBroadcastHandler;
import com.shabakaty.cinemana.domain.models.local.SkippingDurations;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.cinemana.helpers.casting.DLNAControllerService;
import com.shabakaty.cinemana.helpers.casting.receivers.RemoteReceiver;
import com.shabakaty.downloader.bn4;
import com.shabakaty.downloader.cf4;
import com.shabakaty.downloader.do1;
import com.shabakaty.downloader.e7;
import com.shabakaty.downloader.f00;
import com.shabakaty.downloader.g00;
import com.shabakaty.downloader.hc1;
import com.shabakaty.downloader.ho3;
import com.shabakaty.downloader.hy1;
import com.shabakaty.downloader.i50;
import com.shabakaty.downloader.iq6;
import com.shabakaty.downloader.j2;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.j51;
import com.shabakaty.downloader.jl4;
import com.shabakaty.downloader.m03;
import com.shabakaty.downloader.ms1;
import com.shabakaty.downloader.mu0;
import com.shabakaty.downloader.n03;
import com.shabakaty.downloader.n24;
import com.shabakaty.downloader.n5;
import com.shabakaty.downloader.ne4;
import com.shabakaty.downloader.nx4;
import com.shabakaty.downloader.oh0;
import com.shabakaty.downloader.re4;
import com.shabakaty.downloader.t43;
import com.shabakaty.downloader.tu0;
import com.shabakaty.downloader.uh0;
import com.shabakaty.downloader.uv3;
import com.shabakaty.downloader.vh0;
import com.shabakaty.downloader.vj3;
import com.shabakaty.downloader.wt2;
import com.shabakaty.downloader.xb4;
import com.shabakaty.downloader.xc0;
import com.shabakaty.downloader.zh0;
import com.shabakaty.downloader.zw;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;

/* JADX INFO: compiled from: DLNAControllerService.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¨\u0006\u000b"}, d2 = {"Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;", "Landroid/app/Service;", "Lcom/shabakaty/downloader/tu0;", "dlnaEvent", "Lcom/shabakaty/downloader/qv4;", "onDlnaNotificationEvent", "Lcom/shabakaty/downloader/xb4;", NetcastTVService.UDAP_API_EVENT, "onStartDlnaCastEvent", "<init>", "()V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final class DLNAControllerService extends Service {
    public static DLNAControllerService G;
    public static boolean H;
    public m03 A;
    public RemoteViews B;
    public NotificationManager C;
    public int D;
    public n24 F;
    public mu0 r;
    public mu0 s;
    public FloatingActionButton t;
    public DLNAService u;
    public ConnectableDevice v;
    public MediaPlayer.MediaLaunchObject w;
    public VideoModel x;
    public MediaControl.PlayStateStatus y = MediaControl.PlayStateStatus.Unknown;
    public String z = BuildConfig.FLAVOR;
    public oh0 E = new oh0(this);

    /* JADX INFO: compiled from: DLNAControllerService.kt */
    public static final class a implements MediaPlayer.LaunchListener {
        public final /* synthetic */ Context b;
        public final /* synthetic */ String c;

        public a(Context context, String str) {
            this.b = context;
            this.c = str;
        }

        @Override // com.connectsdk.service.capability.listeners.ErrorListener
        public void onError(ServiceCommandError serviceCommandError) {
            String message;
            if (serviceCommandError != null) {
                hc1.a().b(serviceCommandError);
            }
            if (serviceCommandError != null && serviceCommandError.getCode() == 500) {
                wt2.m(DLNAControllerService.this, "something went wrong, please try again");
            } else {
                DLNAControllerService dLNAControllerService = DLNAControllerService.this;
                if (serviceCommandError == null || (message = serviceCommandError.getMessage()) == null) {
                    message = BuildConfig.FLAVOR;
                }
                wt2.m(dLNAControllerService, message);
            }
            DLNAControllerService dLNAControllerService2 = DLNAControllerService.this;
            int i = dLNAControllerService2.D;
            if (i <= 3) {
                dLNAControllerService2.D = i + 1;
                dLNAControllerService2.g(this.c, this.b);
            } else {
                dLNAControllerService2.D = 0;
                j51.b().f(new zw(Boolean.FALSE, 1));
            }
        }

        @Override // com.connectsdk.service.capability.listeners.ResponseListener
        public void onSuccess(MediaPlayer.MediaLaunchObject mediaLaunchObject) {
            Uri uri;
            DLNAControllerService dLNAControllerService = DLNAControllerService.this;
            DLNAControllerService dLNAControllerService2 = DLNAControllerService.G;
            Objects.requireNonNull(dLNAControllerService);
            j51.b().f(new zw(Boolean.FALSE, 1));
            DLNAControllerService dLNAControllerService3 = DLNAControllerService.this;
            dLNAControllerService3.w = mediaLaunchObject;
            VideoModel videoModel = dLNAControllerService3.x;
            Object systemService = dLNAControllerService3.getSystemService("notification");
            Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
            dLNAControllerService3.C = (NotificationManager) systemService;
            RemoteViews remoteViews = new RemoteViews(dLNAControllerService3.getPackageName(), R.layout.notification_dlna);
            j32.e(remoteViews, "<set-?>");
            dLNAControllerService3.B = remoteViews;
            new Intent(dLNAControllerService3, (Class<?>) RemoteReceiver.class).setAction("pause");
            new Intent(dLNAControllerService3, (Class<?>) RemoteReceiver.class).setAction("close");
            ImageRequest imageRequestA = null;
            dLNAControllerService3.e().setTextViewText(R.id.notification_title, videoModel == null ? null : videoModel.enTitle);
            Intent intent = new Intent(dLNAControllerService3, (Class<?>) DLNAControlsActivity.class);
            intent.putExtra("VideoModelArg", videoModel);
            intent.putExtra("VideoModelArg", dLNAControllerService3.x);
            intent.putExtra("VIDEO_URL", dLNAControllerService3.z);
            jl4 jl4Var = new jl4(dLNAControllerService3);
            jl4Var.d(intent);
            PendingIntent pendingIntentI = jl4Var.i(4302948, 134217728);
            int i = Build.VERSION.SDK_INT;
            if (i >= 26) {
                NotificationChannel notificationChannel = new NotificationChannel("com.cinemana.pro", "Cinemana", 2);
                notificationChannel.setDescription("Casting Remote");
                NotificationManager notificationManager = dLNAControllerService3.C;
                if (notificationManager != null) {
                    notificationManager.createNotificationChannel(notificationChannel);
                }
            }
            m03 m03Var = new m03(dLNAControllerService3, "com.cinemana.pro");
            j32.e(m03Var, "<set-?>");
            dLNAControllerService3.A = m03Var;
            m03 m03VarD = dLNAControllerService3.d();
            m03VarD.B.icon = R.drawable.cast_ic_notification_small_icon;
            m03VarD.m(new n03());
            m03VarD.w = dLNAControllerService3.e();
            m03VarD.B.vibrate = new long[]{0};
            m03VarD.g = pendingIntentI;
            Notification notificationC = m03VarD.c();
            j32.d(notificationC, "notificationBuilder\n\t\t\t\t…ndingIntent)\n\t\t\t\t.build()");
            if (i >= 26) {
                dLNAControllerService3.startForeground(987, notificationC);
            } else {
                NotificationManager notificationManager2 = dLNAControllerService3.C;
                if (notificationManager2 != null) {
                    notificationManager2.notify(987, notificationC);
                }
            }
            DLNAControllerService dLNAControllerService4 = DLNAControllerService.this;
            VideoModel videoModel2 = dLNAControllerService4.x;
            String str = videoModel2 == null ? null : videoModel2.imgObjUrl;
            Fn<ImageRequest, Uri> fn = ImageRequest.t;
            if (str != null && str.length() != 0 && (uri = Uri.parse(str)) != null) {
                imageRequestA = ImageRequestBuilder.b(uri).a();
            }
            ImageRequest imageRequest = imageRequestA;
            ImagePipelineFactory imagePipelineFactory = ImagePipelineFactory.t;
            Preconditions.c(imagePipelineFactory, "ImagePipelineFactory was not initialized!");
            if (imagePipelineFactory.k == null) {
                imagePipelineFactory.k = imagePipelineFactory.a();
            }
            DataSource<CloseableReference<CloseableImage>> dataSourceA = imagePipelineFactory.k.a(imageRequest, null, ImageRequest.RequestLevel.FULL_FETCH, null, null);
            vh0 vh0Var = new vh0(dLNAControllerService4);
            if (UiThreadImmediateExecutorService.s == null) {
                UiThreadImmediateExecutorService.s = new UiThreadImmediateExecutorService();
            }
            ((AbstractDataSource) dataSourceA).h(vh0Var, UiThreadImmediateExecutorService.s);
            Intent intent2 = new Intent(this.b, (Class<?>) DLNAControlsActivity.class);
            intent2.setFlags(268435456);
            intent2.putExtra("VideoModelArg", DLNAControllerService.this.x);
            intent2.putExtra("VideoModelArg", DLNAControllerService.this.x);
            intent2.putExtra("VIDEO_URL", this.c);
            this.b.startActivity(intent2);
            final DLNAControllerService dLNAControllerService5 = DLNAControllerService.this;
            VideoModel videoModel3 = dLNAControllerService5.x;
            if (videoModel3 != null) {
                j32.e(videoModel3, FileDownloadBroadcastHandler.KEY_MODEL);
                SkippingDurations skippingDurations = videoModel3.skippingDurations;
                List<String> list = skippingDurations.start;
                ArrayList arrayList = new ArrayList(i50.O(list, 10));
                Iterator<T> it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(Double.valueOf(Double.parseDouble((String) it.next())));
                }
                final long[] jArrH = dLNAControllerService5.h(arrayList);
                List<String> list2 = skippingDurations.end;
                ArrayList arrayList2 = new ArrayList(i50.O(list2, 10));
                Iterator<T> it2 = list2.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(Double.valueOf(Double.parseDouble((String) it2.next())));
                }
                final long[] jArrH2 = dLNAControllerService5.h(arrayList2);
                final ho3 ho3Var = new ho3();
                final vj3 vj3Var = new vj3();
                final zh0 zh0Var = new zh0(vj3Var, 250, ho3Var);
                t43 t43VarA = uv3.a(vj3Var);
                final int i2 = 250;
                xc0 xc0Var = new xc0(jArrH, jArrH2, ho3Var, zh0Var, vj3Var, i2) { // from class: com.shabakaty.downloader.th0
                    public final /* synthetic */ long[] s;
                    public final /* synthetic */ long[] t;
                    public final /* synthetic */ ho3 u;
                    public final /* synthetic */ zh0 v;
                    public final /* synthetic */ vj3 w;

                    @Override // com.shabakaty.downloader.xc0
                    public final void accept(Object obj) {
                        MediaPlayer.MediaLaunchObject mediaLaunchObject2;
                        MediaControl mediaControl;
                        DLNAControllerService dLNAControllerService6 = this.r;
                        long[] jArr = this.s;
                        long[] jArr2 = this.t;
                        ho3 ho3Var2 = this.u;
                        zh0 zh0Var2 = this.v;
                        vj3 vj3Var2 = this.w;
                        DLNAControllerService dLNAControllerService7 = DLNAControllerService.G;
                        j32.e(dLNAControllerService6, "this$0");
                        j32.e(jArr, "$startTime");
                        j32.e(jArr2, "$endTime");
                        j32.e(ho3Var2, "$isSeeking");
                        j32.e(zh0Var2, "$responseListener");
                        j32.e(vj3Var2, "$publisher");
                        MediaPlayer.MediaLaunchObject mediaLaunchObject3 = dLNAControllerService6.w;
                        if ((mediaLaunchObject3 == null ? null : mediaLaunchObject3.mediaControl) != null) {
                            n24 n24Var = dLNAControllerService6.F;
                            if (n24Var == null) {
                                j32.l("settings");
                                throw null;
                            }
                            if (!n24Var.f() || (mediaLaunchObject2 = dLNAControllerService6.w) == null || (mediaControl = mediaLaunchObject2.mediaControl) == null) {
                                return;
                            }
                            mediaControl.getPosition(new yh0(dLNAControllerService6, jArr, jArr2, ho3Var2, zh0Var2, vj3Var2, 250));
                        }
                    }
                };
                xc0<? super Throwable> xc0Var2 = do1.d;
                j2 j2Var = do1.c;
                dLNAControllerService5.r = t43VarA.d(xc0Var, xc0Var2, j2Var, j2Var).h(nx4.t, g00.u, j2Var, xc0Var2);
                if (!skippingDurations.start.isEmpty()) {
                    vj3Var.e(Long.valueOf(250));
                }
            }
            DLNAControllerService dLNAControllerService6 = DLNAControllerService.this;
            DLNAService dLNAService = dLNAControllerService6.u;
            if (dLNAService == null) {
                return;
            }
            dLNAService.subscribePlayState(new com.shabakaty.cinemana.helpers.casting.a(dLNAControllerService6));
        }
    }

    public static final DLNAControllerService c() {
        DLNAControllerService dLNAControllerService = G;
        if (dLNAControllerService != null) {
            return dLNAControllerService;
        }
        j32.l("instance");
        throw null;
    }

    public final boolean a(String str, Collection<? extends DeviceService> collection) {
        Iterator<? extends DeviceService> it = collection.iterator();
        while (it.hasNext()) {
            String serviceName = it.next().getServiceName();
            j32.d(serviceName, "service.serviceName");
            if (re4.N(serviceName, str, false, 2)) {
                return true;
            }
        }
        return false;
    }

    public final FloatingActionButton b() {
        FloatingActionButton floatingActionButton = this.t;
        if (floatingActionButton != null) {
            return floatingActionButton;
        }
        j32.l("dlnaButton");
        throw null;
    }

    public final m03 d() {
        m03 m03Var = this.A;
        if (m03Var != null) {
            return m03Var;
        }
        j32.l("notificationBuilder");
        throw null;
    }

    public final RemoteViews e() {
        RemoteViews remoteViews = this.B;
        if (remoteViews != null) {
            return remoteViews;
        }
        j32.l("notificationLayout");
        throw null;
    }

    public final void f(Context context) {
        CapabilityFilter capabilityFilter = new CapabilityFilter("MediaPlayer.Play.Video", MediaPlayer.Subtitle_WebVTT, MediaPlayer.Subtitle_SRT);
        CapabilityFilter capabilityFilter2 = new CapabilityFilter();
        t43 t43VarA = uv3.a(t43.f(2L, TimeUnit.SECONDS));
        f00 f00Var = new f00(this);
        xc0<? super Throwable> xc0Var = do1.d;
        j2 j2Var = do1.c;
        this.s = t43VarA.d(f00Var, xc0Var, j2Var, j2Var).h(n5.t, uh0.s, j2Var, xc0Var);
        new Thread(new hy1(this, context, capabilityFilter, capabilityFilter2)).start();
    }

    public final void g(String str, Context context) {
        String str2;
        String strC;
        String str3;
        MediaPlayer mediaPlayer;
        String str4;
        j32.e(str, "videoUrl");
        j32.e(context, "context");
        VideoModel videoModel = this.x;
        String str5 = BuildConfig.FLAVOR;
        SubtitleInfo subtitleInfoBuild = new SubtitleInfo.Builder((videoModel == null || (str2 = videoModel.arTranslationFilePath) == null) ? BuildConfig.FLAVOR : ne4.H(str2, "https://", "http://", false, 4)).setMimeType(BuildConfig.FLAVOR).setLanguage(BuildConfig.FLAVOR).setLabel(BuildConfig.FLAVOR).build();
        MediaInfo.Builder builder = new MediaInfo.Builder(ne4.H(str, "https://", "http://", false, 4), "video/mp4");
        VideoModel videoModel2 = this.x;
        if (videoModel2 == null || (strC = videoModel2.c()) == null) {
            strC = BuildConfig.FLAVOR;
        }
        MediaInfo.Builder title = builder.setTitle(strC);
        VideoModel videoModel3 = this.x;
        if (videoModel3 == null || (str3 = videoModel3.description) == null) {
            str3 = BuildConfig.FLAVOR;
        }
        MediaInfo.Builder description = title.setDescription(str3);
        VideoModel videoModel4 = this.x;
        if (videoModel4 != null && (str4 = videoModel4.imgMediumThumbObjUrl) != null) {
            str5 = str4;
        }
        MediaInfo mediaInfoBuild = description.setIcon(str5).setSubtitleInfo(subtitleInfoBuild).build();
        DLNAService dLNAService = this.u;
        if (dLNAService != null) {
            dLNAService.play(null);
        }
        DLNAService dLNAService2 = this.u;
        if (dLNAService2 == null || (mediaPlayer = dLNAService2.getMediaPlayer()) == null) {
            return;
        }
        mediaPlayer.playMedia(mediaInfoBuild, false, new a(context, str));
    }

    public final long[] h(List<Double> list) {
        long[] jArr = new long[list.size()];
        int size = list.size() - 1;
        if (size >= 0) {
            int i = 0;
            while (true) {
                int i2 = i + 1;
                jArr[i] = (long) (list.get(i).doubleValue() * 1000);
                if (i2 > size) {
                    break;
                }
                i = i2;
            }
        }
        return jArr;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        j32.e(intent, "intent");
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        ComponentCallbacks2 application = getApplication();
        if (!(application instanceof ms1)) {
            throw new RuntimeException(String.format("%s does not implement %s", application.getClass().getCanonicalName(), ms1.class.getCanonicalName()));
        }
        ms1 ms1Var = (ms1) application;
        e7<Object> e7VarA = ms1Var.a();
        iq6.d(e7VarA, "%s.androidInjector() returned null", ms1Var.getClass());
        e7VarA.a(this);
        super.onCreate();
        j32.e(this, "<set-?>");
        G = this;
        j51.b().k(this);
        try {
            Context applicationContext = getApplicationContext();
            j32.d(applicationContext, "applicationContext");
            f(applicationContext);
        } catch (Exception e) {
            String message = e.getMessage();
            if (message == null) {
                message = BuildConfig.FLAVOR;
            }
            Log.e("marti", message);
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        mu0 mu0Var = this.s;
        if (mu0Var != null) {
            mu0Var.h();
        }
        mu0 mu0Var2 = this.r;
        if (mu0Var2 != null) {
            mu0Var2.h();
        }
        j51.b().m(this);
        super.onDestroy();
    }

    @cf4(threadMode = bn4.MAIN)
    public final void onDlnaNotificationEvent(tu0 tu0Var) {
        j32.e(tu0Var, "dlnaEvent");
        Integer num = tu0Var.b;
        Intent intent = new Intent(this, (Class<?>) RemoteReceiver.class);
        if (j32.a(num, tu0.c)) {
            DLNAService dLNAService = this.u;
            if (dLNAService != null) {
                dLNAService.play(null);
            }
            intent.setAction("pause");
            NotificationManager notificationManager = this.C;
            if (notificationManager == null) {
                return;
            }
            notificationManager.notify(987, d().c());
            return;
        }
        if (j32.a(num, tu0.d)) {
            DLNAService dLNAService2 = this.u;
            if (dLNAService2 != null) {
                dLNAService2.pause(null);
            }
            intent.setAction("play");
            PendingIntent.getBroadcast(this, 0, intent, 0);
            NotificationManager notificationManager2 = this.C;
            if (notificationManager2 == null) {
                return;
            }
            notificationManager2.notify(987, d().c());
            return;
        }
        if (j32.a(num, tu0.e)) {
            stopForeground(true);
            DLNAService dLNAService3 = this.u;
            if (dLNAService3 != null) {
                dLNAService3.disconnect();
            }
            ConnectableDevice connectableDevice = this.v;
            if (connectableDevice != null) {
                connectableDevice.disconnect();
            }
            H = false;
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        return 2;
    }

    @cf4(threadMode = bn4.MAIN)
    public final void onStartDlnaCastEvent(xb4 xb4Var) {
        j32.e(xb4Var, NetcastTVService.UDAP_API_EVENT);
        VideoModel videoModel = xb4Var.a;
        j32.d(videoModel, "event.videoModel");
        String str = xb4Var.b;
        j32.d(str, "event.videoUrl");
        this.x = videoModel;
        this.z = str;
        String str2 = xb4Var.b;
        j32.d(str2, "event.videoUrl");
        Context context = xb4Var.c;
        j32.d(context, "event.context");
        g(str2, context);
    }

    @Override // android.app.Service
    public void onTaskRemoved(Intent intent) {
        NotificationManager notificationManager = this.C;
        if (notificationManager != null) {
            notificationManager.cancelAll();
        }
        super.onTaskRemoved(intent);
    }
}
