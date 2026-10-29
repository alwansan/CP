package com.shabakaty.cinemana.domain.models.remote;

import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.downloader.c14;
import com.shabakaty.downloader.h61;
import com.shabakaty.downloader.ik4;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.um3;
import kotlin.Metadata;

/* JADX INFO: compiled from: TranscodeFileApi.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0013\b\u0086\b\u0018\u00002\u00020\u0001R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\"\u0010\f\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0004\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\"\u0010\u000f\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0004\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\"\u0010\u0012\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0004\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\b¨\u0006\u0015"}, d2 = {"Lcom/shabakaty/cinemana/domain/models/remote/TranscodeFileApi;", BuildConfig.FLAVOR, BuildConfig.FLAVOR, "name", "Ljava/lang/String;", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "resolution", "getResolution", "setResolution", "container", "getContainer", "setContainer", "transcoddedFileName", "getTranscoddedFileName", "setTranscoddedFileName", "videoUrl", "getVideoUrl", "setVideoUrl", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final /* data */ class TranscodeFileApi {

    @c14("container")
    public String container;

    @c14("name")
    public String name;

    @c14("resolution")
    public String resolution;

    @c14("transcoddedFileName")
    public String transcoddedFileName;

    @c14("videoUrl")
    public String videoUrl;

    public TranscodeFileApi() {
        j32.e(BuildConfig.FLAVOR, "name");
        j32.e(BuildConfig.FLAVOR, "resolution");
        j32.e(BuildConfig.FLAVOR, "container");
        j32.e(BuildConfig.FLAVOR, "transcoddedFileName");
        j32.e(BuildConfig.FLAVOR, "videoUrl");
        this.name = BuildConfig.FLAVOR;
        this.resolution = BuildConfig.FLAVOR;
        this.container = BuildConfig.FLAVOR;
        this.transcoddedFileName = BuildConfig.FLAVOR;
        this.videoUrl = BuildConfig.FLAVOR;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TranscodeFileApi)) {
            return false;
        }
        TranscodeFileApi transcodeFileApi = (TranscodeFileApi) obj;
        return j32.a(this.name, transcodeFileApi.name) && j32.a(this.resolution, transcodeFileApi.resolution) && j32.a(this.container, transcodeFileApi.container) && j32.a(this.transcoddedFileName, transcodeFileApi.transcoddedFileName) && j32.a(this.videoUrl, transcodeFileApi.videoUrl);
    }

    public int hashCode() {
        return this.videoUrl.hashCode() + ik4.a(this.transcoddedFileName, ik4.a(this.container, ik4.a(this.resolution, this.name.hashCode() * 31, 31), 31), 31);
    }

    public String toString() {
        StringBuilder sbA = um3.a("TranscodeFileApi(name=");
        sbA.append(this.name);
        sbA.append(", resolution=");
        sbA.append(this.resolution);
        sbA.append(", container=");
        sbA.append(this.container);
        sbA.append(", transcoddedFileName=");
        sbA.append(this.transcoddedFileName);
        sbA.append(", videoUrl=");
        return h61.a(sbA, this.videoUrl, ')');
    }
}
