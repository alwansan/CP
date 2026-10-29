package com.shabakaty.cinemana.domain.models.remote;

import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.downloader.c14;
import com.shabakaty.downloader.ik4;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.um3;
import com.shabakaty.downloader.xh2;
import kotlin.Metadata;

/* JADX INFO: compiled from: RecommendationsApi.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\"\u0010\r\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/shabakaty/cinemana/domain/models/remote/RecommendationsRequest;", BuildConfig.FLAVOR, BuildConfig.FLAVOR, "movieId", "Ljava/lang/String;", "getMovieId", "()Ljava/lang/String;", "setMovieId", "(Ljava/lang/String;)V", "movieName", "getMovieName", "setMovieName", BuildConfig.FLAVOR, "reprocessIfExpired", "Z", "getReprocessIfExpired", "()Z", "setReprocessIfExpired", "(Z)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final /* data */ class RecommendationsRequest {

    @c14("MovieId")
    public String movieId;

    @c14("MovieName")
    public String movieName;

    @c14("ReProcessIfExpired")
    public boolean reprocessIfExpired;

    public RecommendationsRequest() {
        this(null, null, false, 7);
    }

    public RecommendationsRequest(String str, String str2, boolean z, int i) {
        str = (i & 1) != 0 ? BuildConfig.FLAVOR : str;
        str2 = (i & 2) != 0 ? BuildConfig.FLAVOR : str2;
        z = (i & 4) != 0 ? true : z;
        j32.e(str, "movieId");
        j32.e(str2, "movieName");
        this.movieId = str;
        this.movieName = str2;
        this.reprocessIfExpired = z;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RecommendationsRequest)) {
            return false;
        }
        RecommendationsRequest recommendationsRequest = (RecommendationsRequest) obj;
        return j32.a(this.movieId, recommendationsRequest.movieId) && j32.a(this.movieName, recommendationsRequest.movieName) && this.reprocessIfExpired == recommendationsRequest.reprocessIfExpired;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [int] */
    /* JADX WARN: Type inference failed for: r1v2, types: [int] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    public int hashCode() {
        int iA = ik4.a(this.movieName, this.movieId.hashCode() * 31, 31);
        boolean z = this.reprocessIfExpired;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        return iA + r1;
    }

    public String toString() {
        StringBuilder sbA = um3.a("RecommendationsRequest(movieId=");
        sbA.append(this.movieId);
        sbA.append(", movieName=");
        sbA.append(this.movieName);
        sbA.append(", reprocessIfExpired=");
        return xh2.a(sbA, this.reprocessIfExpired, ')');
    }
}
