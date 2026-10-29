package com.shabakaty.downloader;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Toast;
import androidx.mediarouter.app.MediaRouteButton;
import com.cinemana.pro.R;
import com.connectsdk.device.ConnectableDevice;
import com.connectsdk.device.DevicePicker;
import com.connectsdk.service.CastService;
import com.connectsdk.service.DIALService;
import com.connectsdk.service.DLNAService;
import com.connectsdk.service.DeviceService;
import com.connectsdk.service.capability.MediaControl;
import com.connectsdk.service.upnp.DLNAHttpServer;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.cinemana.helpers.casting.DLNAControllerService;
import com.shabakaty.cinemana.ui.home_activity.CastButton;
import com.shabakaty.cinemana.ui.home_fragment.FranchisesView;
import com.shabakaty.cinemana.ui.home_fragment.HorizontalScrollVideosView;
import com.shabakaty.cinemana.ui.home_fragment.WideVerticalVideosView;
import com.shabakaty.cinemana.utils.ExpandableTextView;
import com.shabakaty.cinemana.utils.StatusView;
import com.shabakaty.epom_view.ui.EpomView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ck implements View.OnClickListener {
    public final /* synthetic */ int r = 10;
    public final /* synthetic */ Object s;

    public /* synthetic */ ck(Dialog dialog) {
        this.s = dialog;
    }

    public /* synthetic */ ck(FranchisesView franchisesView) {
        this.s = franchisesView;
    }

    public /* synthetic */ ck(HorizontalScrollVideosView horizontalScrollVideosView) {
        this.s = horizontalScrollVideosView;
    }

    public /* synthetic */ ck(WideVerticalVideosView wideVerticalVideosView) {
        this.s = wideVerticalVideosView;
    }

    public /* synthetic */ ck(StatusView statusView) {
        this.s = statusView;
    }

    public /* synthetic */ ck(ek ekVar) {
        this.s = ekVar;
    }

    public /* synthetic */ ck(u60 u60Var) {
        this.s = u60Var;
    }

    public /* synthetic */ ck(zv0 zv0Var) {
        this.s = zv0Var;
    }

    public /* synthetic */ ck(EpomView epomView) {
        this.s = epomView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.r) {
            case 0:
                ek ekVar = (ek) this.s;
                int i = ek.x;
                j32.e(ekVar, "this$0");
                ekVar.Z1();
                return;
            case 1:
                CastButton castButton = (CastButton) this.s;
                final DLNAControllerService dLNAControllerServiceC = DLNAControllerService.c();
                final MediaRouteButton mediaRouteButton = castButton.w;
                final FloatingActionButton floatingActionButton = castButton.v;
                final Context context = castButton.getContext();
                j32.d(context, "context");
                j32.e(mediaRouteButton, "mediaRouteButton");
                j32.e(floatingActionButton, "dlnaButton");
                dLNAControllerServiceC.t = floatingActionButton;
                AdapterView.OnItemClickListener onItemClickListener = new AdapterView.OnItemClickListener() { // from class: com.shabakaty.downloader.sh0
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public final void onItemClick(AdapterView adapterView, View view2, int i2, long j) {
                        DLNAControllerService dLNAControllerService = dLNAControllerServiceC;
                        Context context2 = context;
                        MediaRouteButton mediaRouteButton2 = mediaRouteButton;
                        FloatingActionButton floatingActionButton2 = floatingActionButton;
                        DLNAControllerService dLNAControllerService2 = DLNAControllerService.G;
                        j32.e(dLNAControllerService, "this$0");
                        j32.e(context2, "$context");
                        j32.e(mediaRouteButton2, "$mediaRouteButton");
                        j32.e(floatingActionButton2, "$dlnaButton");
                        Object itemAtPosition = adapterView == null ? null : adapterView.getItemAtPosition(i2);
                        Objects.requireNonNull(itemAtPosition, "null cannot be cast to non-null type com.connectsdk.device.ConnectableDevice");
                        ConnectableDevice connectableDevice = (ConnectableDevice) itemAtPosition;
                        Collection<DeviceService> services = connectableDevice.getServices();
                        j32.d(services, "device.services");
                        if (dLNAControllerService.a(DLNAService.ID, services)) {
                            try {
                                DLNAService dLNAService = new DLNAService(connectableDevice.getServiceByName(DLNAService.ID).getServiceDescription(), connectableDevice.getServiceByName(DLNAService.ID).getServiceConfig(), dLNAControllerService, new DLNAHttpServer());
                                dLNAControllerService.u = dLNAService;
                                connectableDevice.addService(dLNAService);
                                Toast.makeText(context2, context2.getString(R.string.msg_connected_to_dlna_device), 0).show();
                                dLNAControllerService.v = connectableDevice;
                                DLNAControllerService.H = true;
                                connectableDevice.addListener(dLNAControllerService.E);
                                DLNAService dLNAService2 = dLNAControllerService.u;
                                if (dLNAService2 != null) {
                                    dLNAService2.subscribePlayState(new xh0(dLNAControllerService));
                                }
                                connectableDevice.connect();
                                return;
                            } catch (Exception e) {
                                Log.e("marti", BuildConfig.FLAVOR, e);
                                return;
                            }
                        }
                        Collection<DeviceService> services2 = connectableDevice.getServices();
                        j32.d(services2, "device.services");
                        if (!dLNAControllerService.a(CastService.ID, services2)) {
                            Collection<DeviceService> services3 = connectableDevice.getServices();
                            j32.d(services3, "device.services");
                            if (!dLNAControllerService.a(DIALService.ID, services3)) {
                                Toast.makeText(context2.getApplicationContext(), context2.getString(R.string.msg_device_not_supported), 0).show();
                                return;
                            }
                        }
                        s45.j(floatingActionButton2);
                        s45.l(mediaRouteButton2);
                        try {
                            List<WeakReference<MenuItem>> list = sw.a;
                            com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
                            com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
                            tw twVarE = tw.e(context2);
                            if (twVarE != null) {
                                mediaRouteButton2.setRouteSelector(twVarE.b());
                            }
                            ((ArrayList) sw.b).add(new WeakReference(mediaRouteButton2));
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                        mediaRouteButton2.performClick();
                        s45.j(mediaRouteButton2);
                        s45.l(floatingActionButton2);
                    }
                };
                if (d15.A) {
                    s45.j(floatingActionButton);
                    s45.l(mediaRouteButton);
                    mediaRouteButton.performClick();
                    s45.j(mediaRouteButton);
                    s45.l(floatingActionButton);
                    return;
                }
                if (!DLNAControllerService.H) {
                    AlertDialog pickerDialog = new DevicePicker((r9) context).getPickerDialog("Select Device", onItemClickListener);
                    j32.d(pickerDialog, "devicePicker.getPickerDi… deviceSelectionListener)");
                    pickerDialog.show();
                    return;
                }
                r9 r9Var = (r9) context;
                androidx.appcompat.app.b.a aVar = new androidx.appcompat.app.b.a(r9Var);
                aVar.a.f = r9Var.getString(R.string.txt_disconnect_with_tv);
                aVar.f(r9Var.getString(R.string.disconnect), new ph0(dLNAControllerServiceC));
                aVar.d(r9Var.getString(R.string.cancel), rh0.s);
                MediaControl.PlayStateStatus playStateStatus = dLNAControllerServiceC.y;
                if ((playStateStatus == MediaControl.PlayStateStatus.Playing || playStateStatus == MediaControl.PlayStateStatus.Buffering || playStateStatus == MediaControl.PlayStateStatus.Paused) && dLNAControllerServiceC.x != null && dLNAControllerServiceC.w != null) {
                    aVar.e(r9Var.getString(R.string.remote_controller), new qh0(r9Var, dLNAControllerServiceC));
                }
                androidx.appcompat.app.b bVarCreate = aVar.create();
                j32.d(bVarCreate, "builder.create()");
                bVarCreate.show();
                return;
            case 2:
                FranchisesView franchisesView = (FranchisesView) this.s;
                int i2 = FranchisesView.M;
                j32.e(franchisesView, "this$0");
                rm1<qv4> seeMoreClickListener = franchisesView.getSeeMoreClickListener();
                if (seeMoreClickListener == null) {
                    return;
                }
                seeMoreClickListener.invoke();
                return;
            case 3:
                HorizontalScrollVideosView horizontalScrollVideosView = (HorizontalScrollVideosView) this.s;
                int i3 = HorizontalScrollVideosView.T;
                j32.e(horizontalScrollVideosView, "this$0");
                hn1<? super List<VideoModel>, ? super String, qv4> hn1Var = horizontalScrollVideosView.K;
                if (hn1Var == null) {
                    return;
                }
                hn1Var.o(horizontalScrollVideosView.getVideos(), horizontalScrollVideosView.getTitle());
                return;
            case 4:
                WideVerticalVideosView wideVerticalVideosView = (WideVerticalVideosView) this.s;
                int i4 = WideVerticalVideosView.S;
                j32.e(wideVerticalVideosView, "this$0");
                wideVerticalVideosView.getBinding().N.t0(0);
                return;
            case 5:
                zv0 zv0Var = (zv0) this.s;
                j32.e(zv0Var, "this$0");
                zv0Var.e.invoke();
                return;
            case 6:
                u60 u60Var = (u60) this.s;
                int i5 = u60.S;
                j32.e(u60Var, "this$0");
                androidx.appcompat.app.b bVar = u60Var.Q;
                if (bVar != null) {
                    bVar.dismiss();
                    return;
                } else {
                    j32.l("updateCommentDialog");
                    throw null;
                }
            case 7:
                x60 x60Var = (x60) this.s;
                int i6 = x60.I;
                j32.e(x60Var, "this$0");
                x60Var.Y1(false, false);
                return;
            case 8:
                ExpandableTextView expandableTextView = (ExpandableTextView) this.s;
                int i7 = ExpandableTextView.w;
                j32.e(expandableTextView, "this$0");
                expandableTextView.u = !expandableTextView.u;
                expandableTextView.e();
                return;
            case 9:
                StatusView statusView = (StatusView) this.s;
                int i8 = StatusView.N;
                j32.e(statusView, "this$0");
                vj navigator = statusView.getK();
                if (navigator == null) {
                    return;
                }
                navigator.o();
                return;
            case 10:
                Dialog dialog = (Dialog) this.s;
                j32.e(dialog, "$imageDialog");
                dialog.create();
                dialog.show();
                return;
            default:
                EpomView epomView = (EpomView) this.s;
                int i9 = EpomView.T;
                j32.e(epomView, "this$0");
                epomView.e();
                return;
        }
    }
}
