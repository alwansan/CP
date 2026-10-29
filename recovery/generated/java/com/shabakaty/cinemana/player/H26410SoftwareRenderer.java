package com.shabakaty.cinemana.player;

import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import android.view.Surface;
import androidx.media3.decoder.VideoDecoderOutputBuffer;
import com.connectsdk.R;
import com.liulishuo.filedownloader.model.FileDownloadStatus;
import com.shabakaty.downloader.bk;
import com.shabakaty.downloader.bn0;
import com.shabakaty.downloader.jp0;
import com.shabakaty.downloader.o25;
import com.shabakaty.downloader.or;
import com.shabakaty.downloader.p25;
import com.shabakaty.downloader.wh1;
import io.github.anilbeesetti.nextlib.media3ext.ffdecoder.FfmpegLibrary;
import io.github.anilbeesetti.nextlib.media3ext.ffdecoder.FfmpegVideoDecoder;
import java.util.List;
import java.util.Locale;
import zendesk.support.request.CellBase;

/* JADX INFO: loaded from: classes10.dex */
public final class H26410SoftwareRenderer extends bk {
    private static final long DROP_LATE_US = 250000;
    private static final long MAX_EARLY_US = 50000;
    private static final int RESULT_BUFFER_READ = -4;
    private static final int RESULT_FORMAT_READ = -5;
    private static final int RESULT_NOTHING_READ = -3;
    private static final int VIDEO_TRACK_TYPE = 2;
    private static wh1 lastHigh10Format;
    private static boolean subtitleRefreshPending;
    private boolean configured;
    private wh1 currentFormat;
    private long decodedFrames;
    private final FfmpegVideoDecoder decoder;
    private boolean ended;
    private final o25.a eventDispatcher;
    private long failedFrames;
    private boolean firstFrameReported;
    private boolean forceHigh10AfterRefresh;
    private final bn0 input;
    private int lastLoggedDecodeOutputState;
    private int lastLoggedReadResult;
    private int lastLoggedReadyState;
    private int lastLoggedRenderGate;
    private int lastLoggedRenderResult;
    private p25 lastVideoSize;
    private int noOutputSamples;
    private boolean noOutputWarningReported;
    private long outputStartUs;
    private VideoDecoderOutputBuffer pending;
    private int renderGateRepeatCounter;
    private boolean streamRefreshPendingPositionReset;
    private Surface surface;

    private static boolean isAmbiguousAvc(wh1 wh1Var) {
        if (wh1Var == null || !"video/avc".equals(wh1Var.C)) {
            return false;
        }
        String str = wh1Var.z;
        if (str != null && str.length() > 0) {
            return false;
        }
        List<byte[]> list = wh1Var.E;
        if (list == null) {
            return true;
        }
        for (byte[] bArr : list) {
            if (bArr != null && bArr.length > 0) {
                return false;
            }
        }
        return true;
    }

    private void logRenderGate() {
        int i;
        String str;
        if (this.surface != null) {
            i = this.ended ? 2 : 0;
        } else {
            i = 1;
        }
        if (i == this.lastLoggedRenderGate) {
            int i2 = this.renderGateRepeatCounter + 1;
            this.renderGateRepeatCounter = i2;
            if (i2 % R.styleable.AppCompatTheme_windowFixedHeightMajor == 0 && this.lastLoggedRenderGate == 1) {
                logSurfaceState("render_skip_surface_null_persisting");
                return;
            }
            return;
        }
        this.renderGateRepeatCounter = 0;
        this.lastLoggedRenderGate = i;
        PlayerDiagnosticLog.value("renderer_render_gate_state", Integer.valueOf(i));
        if (i != 0) {
            str = i == 1 ? "render_skip_surface_null" : "render_skip_ended";
        } else {
            str = "render_loop_active";
        }
        logSurfaceState(str);
    }

    private void logSurfaceState(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("renderer_surface_snapshot stage=");
        sb.append(str);
        Surface surface = this.surface;
        if (surface != null) {
            sb.append(" surfacePresent=true surfaceId=");
            sb.append(Integer.toHexString(System.identityHashCode(surface)));
            sb.append(" surfaceValid=");
            sb.append(Boolean.valueOf(surface.isValid()));
        } else {
            sb.append(" surfacePresent=false surfaceId=none surfaceValid=false");
        }
        sb.append(" configured=");
        sb.append(Boolean.valueOf(this.configured));
        sb.append(" ended=");
        sb.append(Boolean.valueOf(this.ended));
        sb.append(" baseRendererState=");
        sb.append(this.v);
        sb.append(" sampleStreamAttached=");
        sb.append(Boolean.valueOf(this.w != null));
        sb.append(" currentFormat=");
        sb.append(String.valueOf(this.currentFormat));
        sb.append(" decodedFrames=");
        sb.append(this.decodedFrames);
        sb.append(" failedFrames=");
        sb.append(this.failedFrames);
        sb.append(" noOutputSamples=");
        sb.append(this.noOutputSamples);
        sb.append(" firstFrameReported=");
        sb.append(Boolean.valueOf(this.firstFrameReported));
        sb.append(" streamRefreshPendingPositionReset=");
        sb.append(Boolean.valueOf(this.streamRefreshPendingPositionReset));
        sb.append(" pendingFrame=");
        sb.append(Boolean.valueOf(this.pending != null));
        PlayerDiagnosticLog.event(sb.toString());
    }

    public static void markSubtitleRefresh() {
        PlayerDiagnosticLog.event("decoder_policy_subtitle_refresh_check");
        wh1 wh1Var = lastHigh10Format;
        if (wh1Var != null && isHigh10(wh1Var) && wh1Var.F == null && FfmpegLibrary.isH264Available()) {
            subtitleRefreshPending = true;
            Log.i("CinemanaDecoderPolicy", "Subtitle-driven MediaItem refresh armed to preserve the active High 10 FFmpeg decoder");
            PlayerDiagnosticLog.event("decoder_policy_subtitle_refresh_armed");
        }
    }

    private void notifyFirstFrame() {
        if (this.firstFrameReported) {
            return;
        }
        PlayerDiagnosticLog.event("renderer_first_frame_notification");
        this.firstFrameReported = true;
        Handler handler = this.eventDispatcher.a;
        if (handler != null) {
            handler.post(new jp0(this.eventDispatcher, this.surface, SystemClock.elapsedRealtime()));
        }
    }

    private wh1 resolveRefreshFormat(wh1 wh1Var) {
        wh1 wh1Var2;
        if (wh1Var != null && isHigh10(wh1Var)) {
            lastHigh10Format = wh1Var;
            this.forceHigh10AfterRefresh = false;
            subtitleRefreshPending = false;
            return wh1Var;
        }
        if ((subtitleRefreshPending || this.forceHigh10AfterRefresh) && ((wh1Var == null || isAmbiguousAvc(wh1Var)) && (((wh1Var2 = this.currentFormat) != null && isHigh10(wh1Var2)) || ((wh1Var2 = lastHigh10Format) != null && isHigh10(wh1Var2))))) {
            this.forceHigh10AfterRefresh = true;
            subtitleRefreshPending = false;
            Log.i("CinemanaDecoderPolicy", "Subtitle refresh produced an ambiguous H.264 format; reusing the last verified High 10 Format and FFmpeg decoder");
            return wh1Var2;
        }
        this.forceHigh10AfterRefresh = false;
        subtitleRefreshPending = false;
        lastHigh10Format = null;
        return wh1Var;
    }

    public static boolean shouldUseSoftware(wh1 wh1Var) {
        wh1 wh1Var2;
        PlayerDiagnosticLog.value("decoder_policy_should_use_software_check", wh1Var);
        if (wh1Var != null) {
            if (isHigh10(wh1Var)) {
                PlayerDiagnosticLog.event("decoder_policy_high10_true");
                return true;
            }
            if (subtitleRefreshPending && (wh1Var2 = lastHigh10Format) != null && isHigh10(wh1Var2) && wh1Var.F == null && isAmbiguousAvc(wh1Var)) {
                PlayerDiagnosticLog.event("decoder_policy_ambiguous_refresh_true");
                return true;
            }
        }
        PlayerDiagnosticLog.event("decoder_policy_software_false");
        return false;
    }

    @Override // com.shabakaty.downloader.bk
    public void D(long j, boolean z) {
        PlayerDiagnosticLog.value("renderer_position_reset_position_us", Long.valueOf(j));
        PlayerDiagnosticLog.value("renderer_position_reset_flag", Boolean.valueOf(z));
        logSurfaceState("position_reset_enter");
        this.outputStartUs = j;
        this.ended = false;
        this.firstFrameReported = false;
        this.lastLoggedReadResult = CellBase.GROUP_ID_SYSTEM_MESSAGE;
        this.lastLoggedDecodeOutputState = -1;
        this.lastLoggedRenderResult = -1;
        releasePending();
        if (this.streamRefreshPendingPositionReset) {
            this.streamRefreshPendingPositionReset = false;
            PlayerDiagnosticLog.event("renderer_position_reset_reconfigure_after_stream_change");
            boolean zConfigure = configure(this.currentFormat);
            PlayerDiagnosticLog.value("renderer_position_reset_reconfigure_result", Boolean.valueOf(zConfigure));
            if (zConfigure) {
                logSurfaceState("position_reset_after_configure");
                return;
            }
        } else {
            if (!this.configured) {
                return;
            }
            boolean zReset = this.decoder.reset();
            PlayerDiagnosticLog.value("renderer_position_reset_decoder_reset_result", Boolean.valueOf(zReset));
            if (zReset || configure(this.currentFormat)) {
                return;
            }
        }
        reportDecoderError();
        this.ended = true;
    }

    @Override // com.shabakaty.downloader.bk
    public void H(wh1[] wh1VarArr, long j, long j2) {
        PlayerDiagnosticLog.event("renderer_stream_refresh_enter");
        logSurfaceState("stream_refresh_enter");
        this.streamRefreshPendingPositionReset = false;
        wh1 wh1VarResolveRefreshFormat = resolveRefreshFormat((wh1VarArr == null || wh1VarArr.length <= 0) ? this.currentFormat : wh1VarArr[0]);
        this.currentFormat = wh1VarResolveRefreshFormat;
        PlayerDiagnosticLog.value("renderer_resolved_format", wh1VarResolveRefreshFormat);
        this.outputStartUs = j;
        this.ended = false;
        this.firstFrameReported = false;
        this.lastVideoSize = null;
        this.noOutputSamples = 0;
        this.noOutputWarningReported = false;
        this.lastLoggedReadResult = CellBase.GROUP_ID_SYSTEM_MESSAGE;
        this.lastLoggedDecodeOutputState = -1;
        this.lastLoggedRenderResult = -1;
        releasePending();
        if (wh1VarResolveRefreshFormat != null && shouldUseSoftware(wh1VarResolveRefreshFormat)) {
            this.decoder.release();
            this.configured = false;
            this.streamRefreshPendingPositionReset = true;
            PlayerDiagnosticLog.event("renderer_stream_refresh_waiting_for_position_reset");
            logSurfaceState("stream_refresh_waiting_position_reset");
            return;
        }
        configure(wh1VarResolveRefreshFormat);
        if (this.configured) {
            Log.i("CinemanaDecoderPolicy", "FFmpeg video decoder configured for refreshed stream");
            PlayerDiagnosticLog.event("renderer_stream_refresh_configured");
        } else {
            Log.e("CinemanaDecoderPolicy", "FFmpeg video decoder configuration failed for refreshed stream");
            PlayerDiagnosticLog.event("renderer_stream_refresh_configuration_failed");
        }
    }

    @Override // com.shabakaty.downloader.mr3
    public int a(wh1 wh1Var) {
        if (!shouldUseSoftware(wh1Var) || wh1Var.F != null || !FfmpegLibrary.isH264Available()) {
            return 0;
        }
        if (!isHigh10(wh1Var)) {
            return 4;
        }
        lastHigh10Format = wh1Var;
        return 4;
    }

    @Override // com.shabakaty.downloader.bk, com.shabakaty.downloader.vd3.b
    public void p(int i, Object obj) {
        PlayerDiagnosticLog.value("renderer_surface_message_type", Integer.valueOf(i));
        PlayerDiagnosticLog.value("renderer_output_message_payload_class", obj != null ? obj.getClass().getName() : "null");
        if (i != 1) {
            super.p(i, obj);
            return;
        }
        logSurfaceState("output_message_surface_before");
        Surface surface = obj instanceof Surface ? (Surface) obj : null;
        if (surface != this.surface) {
            this.firstFrameReported = false;
        }
        this.surface = surface;
        logSurfaceState("output_message_surface_after");
        PlayerDiagnosticLog.value("renderer_surface_attached", Boolean.valueOf(surface != null));
    }

    public H26410SoftwareRenderer(Handler handler, o25 o25Var) {
        super(2);
        this.decoder = new FfmpegVideoDecoder();
        this.input = new bn0(2);
        this.outputStartUs = Long.MIN_VALUE;
        this.eventDispatcher = new o25.a(handler, o25Var);
        this.streamRefreshPendingPositionReset = false;
        this.lastLoggedReadResult = CellBase.GROUP_ID_SYSTEM_MESSAGE;
        this.lastLoggedDecodeOutputState = -1;
        this.lastLoggedRenderResult = -1;
        this.lastLoggedRenderGate = -1;
        this.lastLoggedReadyState = -1;
    }

    @Override // com.shabakaty.downloader.lr3, com.shabakaty.downloader.mr3
    public String getName() {
        return "H264-High10-FFmpeg";
    }

    public static boolean isHigh10(wh1 wh1Var) {
        int i;
        if (wh1Var == null || !"video/avc".equals(wh1Var.C)) {
            return false;
        }
        String str = wh1Var.z;
        if (str != null) {
            for (String str2 : str.toLowerCase(Locale.US).split(",")) {
                String strTrim = str2.trim();
                if ((strTrim.startsWith("avc1.6e") || strTrim.startsWith("avc3.6e")) && strTrim.length() >= 8) {
                    return true;
                }
            }
        }
        List<byte[]> list = wh1Var.E;
        if (list != null) {
            for (byte[] bArr : list) {
                if (bArr != null) {
                    int i2 = 0;
                    while (true) {
                        int i3 = i2 + 2;
                        if (i3 >= bArr.length) {
                            break;
                        }
                        int i4 = i2 + 4;
                        if (i4 >= bArr.length || bArr[i2] != 0 || bArr[i2 + 1] != 0 || bArr[i3] != 0 || bArr[i2 + 3] != 1) {
                            i4 = (bArr[i2] == 0 && bArr[i2 + 1] == 0 && bArr[i3] == 1) ? i2 + 3 : -1;
                        }
                        if (i4 >= 0 && (i = i4 + 1) < bArr.length && (bArr[i4] & 31) == 7 && (bArr[i] & FileDownloadStatus.error) == 110) {
                            return true;
                        }
                        i2++;
                    }
                }
            }
        }
        return false;
    }

    private boolean configure(wh1 wh1Var) {
        PlayerDiagnosticLog.value("ffmpeg_configure_enter", wh1Var);
        this.configured = false;
        this.decoder.release();
        if (!isHigh10(wh1Var) || wh1Var.F != null) {
            return false;
        }
        boolean zConfigure = this.decoder.configure(wh1Var.E, wh1Var.K);
        this.configured = zConfigure;
        PlayerDiagnosticLog.value("ffmpeg_configure_result", Boolean.valueOf(zConfigure));
        return this.configured;
    }

    @Override // com.shabakaty.downloader.bk
    public void B() {
        PlayerDiagnosticLog.event("renderer_lifecycle_B_cleanup_enter");
        logSurfaceState("B_before_cleanup");
        releasePending();
        this.decoder.release();
        this.configured = false;
        this.streamRefreshPendingPositionReset = false;
        PlayerDiagnosticLog.event("renderer_surface_retained_by_B_cleanup");
        this.currentFormat = null;
        this.lastVideoSize = null;
        this.firstFrameReported = false;
        this.ended = false;
        PlayerDiagnosticLog.event("renderer_lifecycle_B_cleanup_complete");
        logSurfaceState("B_cleanup_complete");
    }

    @Override // com.shabakaty.downloader.bk
    public void E() {
        PlayerDiagnosticLog.event("renderer_lifecycle_E_reset_enter");
        logSurfaceState("E_before_cleanup");
        B();
    }

    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Type inference failed for: r9v8, types: [boolean, int] */
    @Override // com.shabakaty.downloader.lr3
    public void o(long j, long j2) {
        wh1 wh1Var;
        logRenderGate();
        if (this.surface == null || this.ended) {
            return;
        }
        if (this.pending != null) {
            long j3 = this.pending.s - j;
            if (j3 > MAX_EARLY_US) {
                return;
            }
            if (j3 < -250000) {
                releasePending();
                return;
            }
            VideoDecoderOutputBuffer videoDecoderOutputBuffer = this.pending;
            this.pending = null;
            boolean zRender = this.decoder.render(videoDecoderOutputBuffer, this.surface);
            if (zRender) {
                this.forceHigh10AfterRefresh = false;
                notifyVideoSize(videoDecoderOutputBuffer.width, videoDecoderOutputBuffer.height);
                notifyFirstFrame();
            }
            this.decoder.releaseFrame(videoDecoderOutputBuffer);
            if (zRender) {
                this.decodedFrames++;
                return;
            } else {
                this.failedFrames++;
                return;
            }
        }
        for (int i = 0; i < 8; i++) {
            this.input.H();
            int I = I(A(), this.input, 0);
            if (I != this.lastLoggedReadResult) {
                this.lastLoggedReadResult = I;
                PlayerDiagnosticLog.value("renderer_sample_read_result", Integer.valueOf(I));
            }
            if (I == RESULT_NOTHING_READ) {
                return;
            }
            if (I == RESULT_FORMAT_READ) {
                Object obj = this.s.t;
                if (!(obj instanceof wh1)) {
                    return;
                }
                wh1 wh1VarResolveRefreshFormat = resolveRefreshFormat((wh1) obj);
                if (!this.configured || (wh1Var = this.currentFormat) == null || wh1VarResolveRefreshFormat == null || !wh1VarResolveRefreshFormat.equals(wh1Var)) {
                    this.currentFormat = wh1VarResolveRefreshFormat;
                    Log.i("CinemanaDecoderPolicy", "Software renderer received a new video Format from SampleStream");
                    configure(this.currentFormat);
                    if (this.configured) {
                        Log.i("CinemanaDecoderPolicy", "FFmpeg video decoder configured after stream refresh");
                    } else {
                        Log.e("CinemanaDecoderPolicy", "FFmpeg video decoder configuration failed after stream refresh");
                    }
                } else {
                    PlayerDiagnosticLog.event("renderer_stream_format_unchanged_after_position_reset");
                }
            } else {
                if (I != RESULT_BUFFER_READ) {
                    return;
                }
                if (this.input.F()) {
                    this.ended = true;
                    return;
                }
                if (!this.configured && !configure(this.currentFormat)) {
                    reportDecoderError();
                    this.ended = true;
                    return;
                }
                this.input.K();
                VideoDecoderOutputBuffer videoDecoderOutputBufferDecode = this.decoder.decode(this.input.t, this.input.v, this.outputStartUs);
                ?? r9 = videoDecoderOutputBufferDecode != null ? 1 : 0;
                if (r9 != this.lastLoggedDecodeOutputState) {
                    this.lastLoggedDecodeOutputState = r9;
                    PlayerDiagnosticLog.value("renderer_decode_output_available", Boolean.valueOf((boolean) r9));
                }
                if (videoDecoderOutputBufferDecode != null) {
                    this.noOutputSamples = 0;
                    this.noOutputWarningReported = false;
                    this.pending = videoDecoderOutputBufferDecode;
                    if (this.pending.s - j > MAX_EARLY_US) {
                        return;
                    }
                    VideoDecoderOutputBuffer videoDecoderOutputBuffer2 = this.pending;
                    this.pending = null;
                    boolean zRender2 = this.decoder.render(videoDecoderOutputBuffer2, this.surface);
                    ?? r3 = zRender2 ? 1 : 0;
                    if (r3 != this.lastLoggedRenderResult) {
                        this.lastLoggedRenderResult = r3;
                        PlayerDiagnosticLog.value("renderer_surface_render_success", Boolean.valueOf((boolean) r3));
                    }
                    if (zRender2) {
                        this.forceHigh10AfterRefresh = false;
                        notifyVideoSize(videoDecoderOutputBuffer2.width, videoDecoderOutputBuffer2.height);
                        notifyFirstFrame();
                    }
                    this.decoder.releaseFrame(videoDecoderOutputBuffer2);
                    if (zRender2) {
                        this.decodedFrames++;
                        return;
                    } else {
                        this.failedFrames++;
                        return;
                    }
                }
                int i2 = this.noOutputSamples + 1;
                this.noOutputSamples = i2;
                if (i2 >= 120 && !this.noOutputWarningReported) {
                    this.noOutputWarningReported = true;
                    Log.e("CinemanaDecoderPolicy", "FFmpeg consumed 120 video samples without producing a frame after source refresh; verify the active Format, codec-specific data, and packet stream");
                }
            }
        }
    }

    private void notifyVideoSize(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            return;
        }
        if (this.lastVideoSize != null && this.lastVideoSize.a == i && this.lastVideoSize.b == i2) {
            return;
        }
        this.lastVideoSize = new p25(i, i2, 0, 1.0f);
        Handler handler = this.eventDispatcher.a;
        if (handler != null) {
            handler.post(new or(this.eventDispatcher, this.lastVideoSize));
        }
    }

    private void reportDecoderError() {
        Handler handler = this.eventDispatcher.a;
        if (handler != null) {
            handler.post(new or(this.eventDispatcher, new IllegalStateException("H.264 High 10 software decoder initialization failed")));
        }
    }

    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r0v4 */
    @Override // com.shabakaty.downloader.lr3
    public boolean b() {
        ?? r0 = (this.surface == null || !this.configured) ? 0 : 1;
        if (r0 != this.lastLoggedReadyState) {
            this.lastLoggedReadyState = r0;
            PlayerDiagnosticLog.value("renderer_is_ready", Boolean.valueOf((boolean) r0));
            logSurfaceState(r0 != 0 ? "isReady_true" : "isReady_false");
        }
        return r0;
    }

    @Override // com.shabakaty.downloader.lr3
    public boolean d() {
        return this.ended && this.pending == null;
    }

    private void releasePending() {
        if (this.pending != null) {
            this.decoder.releaseFrame(this.pending);
            this.pending = null;
        }
    }
}
