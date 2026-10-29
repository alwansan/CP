package com.shabakaty.cinemana.domain.models.remote;

import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.downloader.c14;
import com.shabakaty.downloader.ik4;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.j60;
import com.shabakaty.downloader.um3;
import com.shabakaty.downloader.w21;
import com.shabakaty.downloader.xh2;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: RecommendationsApi.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\"\u0010\u0010\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0004\u001a\u0004\b\u0011\u0010\u0006\"\u0004\b\u0012\u0010\bR(\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\"\u0010\u001c\u001a\u00020\u001b8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!¨\u0006\""}, d2 = {"Lcom/shabakaty/cinemana/domain/models/remote/RecommendationsApi;", BuildConfig.FLAVOR, BuildConfig.FLAVOR, "expirationDate", "Ljava/lang/String;", "getExpirationDate", "()Ljava/lang/String;", "setExpirationDate", "(Ljava/lang/String;)V", BuildConfig.FLAVOR, "movieId", "I", "getMovieId", "()I", "setMovieId", "(I)V", "movieName", "getMovieName", "setMovieName", BuildConfig.FLAVOR, "Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;", "recommendations", "Ljava/util/List;", "getRecommendations", "()Ljava/util/List;", "setRecommendations", "(Ljava/util/List;)V", BuildConfig.FLAVOR, "temp", "Z", "getTemp", "()Z", "setTemp", "(Z)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final /* data */ class RecommendationsApi {

    @c14("expirationDate")
    public String expirationDate;

    @c14("movieId")
    public int movieId;

    @c14("movieName")
    public String movieName;

    @c14("recommendations")
    public List<VideoModelApi> recommendations;

    @c14("temp")
    public boolean temp;

    public RecommendationsApi() {
        w21 w21Var = w21.r;
        j32.e(BuildConfig.FLAVOR, "expirationDate");
        j32.e(BuildConfig.FLAVOR, "movieName");
        j32.e(w21Var, "recommendations");
        this.expirationDate = BuildConfig.FLAVOR;
        this.movieId = 0;
        this.movieName = BuildConfig.FLAVOR;
        this.recommendations = w21Var;
        this.temp = false;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RecommendationsApi)) {
            return false;
        }
        RecommendationsApi recommendationsApi = (RecommendationsApi) obj;
        return j32.a(this.expirationDate, recommendationsApi.expirationDate) && this.movieId == recommendationsApi.movieId && j32.a(this.movieName, recommendationsApi.movieName) && j32.a(this.recommendations, recommendationsApi.recommendations) && this.temp == recommendationsApi.temp;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [int] */
    /* JADX WARN: Type inference failed for: r1v4, types: [int] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    public int hashCode() {
        int iA = j60.a(this.recommendations, ik4.a(this.movieName, ((this.expirationDate.hashCode() * 31) + this.movieId) * 31, 31), 31);
        boolean z = this.temp;
        int r1 = z ? 1 : 0;
        if (z) {
            r1 = 1;
        }
        return iA + r1;
    }

    public String toString() {
        StringBuilder sbA = um3.a("RecommendationsApi(expirationDate=");
        sbA.append(this.expirationDate);
        sbA.append(", movieId=");
        sbA.append(this.movieId);
        sbA.append(", movieName=");
        sbA.append(this.movieName);
        sbA.append(", recommendations=");
        sbA.append(this.recommendations);
        sbA.append(", temp=");
        return xh2.a(sbA, this.temp, ')');
    }
}
