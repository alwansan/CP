package com.shabakaty.cinemana.data.db.videostatus;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.recyclerview.widget.RecyclerView;
import com.connectsdk.service.airplay.PListParser;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.downloader.ik4;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.um3;
import kotlin.Metadata;

/* JADX INFO: compiled from: VideoStatusEntity.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0015\n\u0002\u0010\t\n\u0002\b\t\b\u0087\b\u0018\u00002\u00020\u0001Ba\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\b\b\u0002\u0010\r\u001a\u00020\f\u0012\b\b\u0002\u0010\u0013\u001a\u00020\f\u0012\b\b\u0002\u0010\u0016\u001a\u00020\f\u0012\b\b\u0002\u0010\u0019\u001a\u00020\f\u0012\b\b\u0002\u0010\u001c\u001a\u00020\f\u0012\b\b\u0002\u0010\u001f\u001a\u00020\u0002\u0012\b\b\u0002\u0010#\u001a\u00020\"¢\u0006\u0004\b)\u0010*R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\"\u0010\r\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\"\u0010\u0013\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u000e\u001a\u0004\b\u0014\u0010\u0010\"\u0004\b\u0015\u0010\u0012R\"\u0010\u0016\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u000e\u001a\u0004\b\u0017\u0010\u0010\"\u0004\b\u0018\u0010\u0012R\"\u0010\u0019\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u000e\u001a\u0004\b\u001a\u0010\u0010\"\u0004\b\u001b\u0010\u0012R\"\u0010\u001c\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u000e\u001a\u0004\b\u001d\u0010\u0010\"\u0004\b\u001e\u0010\u0012R\"\u0010\u001f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010\u0004\u001a\u0004\b \u0010\u0006\"\u0004\b!\u0010\bR\"\u0010#\u001a\u00020\"8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(¨\u0006+"}, d2 = {"Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;", "Landroid/os/Parcelable;", BuildConfig.FLAVOR, "id", "Ljava/lang/String;", "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "videoId", "getVideoId", "setVideoId", BuildConfig.FLAVOR, "liked", "Z", "getLiked", "()Z", "setLiked", "(Z)V", "watched", "getWatched", "setWatched", "annoying", "getAnnoying", "setAnnoying", "disLiked", "getDisLiked", "setDisLiked", "favorite", "getFavorite", "setFavorite", "watchLater", "getWatchLater", "setWatchLater", BuildConfig.FLAVOR, "videoProgress", "J", "getVideoProgress", "()J", "setVideoProgress", "(J)V", "<init>", "(Ljava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;J)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final /* data */ class VideoStatusEntity implements Parcelable {
    public static final Parcelable.Creator<VideoStatusEntity> CREATOR = new a();
    public boolean annoying;
    public boolean disLiked;
    public boolean favorite;
    public String id;
    public boolean liked;
    public String videoId;
    public long videoProgress;
    public String watchLater;
    public boolean watched;

    /* JADX INFO: compiled from: VideoStatusEntity.kt */
    public static final class a implements Parcelable.Creator<VideoStatusEntity> {
        @Override // android.os.Parcelable.Creator
        public VideoStatusEntity createFromParcel(Parcel parcel) {
            j32.e(parcel, "parcel");
            return new VideoStatusEntity(parcel.readString(), parcel.readString(), parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readString(), parcel.readLong());
        }

        @Override // android.os.Parcelable.Creator
        public VideoStatusEntity[] newArray(int i) {
            return new VideoStatusEntity[i];
        }
    }

    public VideoStatusEntity() {
        this(null, null, false, false, false, false, false, null, 0L, 511);
    }

    public VideoStatusEntity(String str, String str2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, String str3, long j) {
        j32.e(str, "id");
        j32.e(str2, "videoId");
        j32.e(str3, "watchLater");
        this.id = str;
        this.videoId = str2;
        this.liked = z;
        this.watched = z2;
        this.annoying = z3;
        this.disLiked = z4;
        this.favorite = z5;
        this.watchLater = str3;
        this.videoProgress = j;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VideoStatusEntity)) {
            return false;
        }
        VideoStatusEntity videoStatusEntity = (VideoStatusEntity) obj;
        return j32.a(this.id, videoStatusEntity.id) && j32.a(this.videoId, videoStatusEntity.videoId) && this.liked == videoStatusEntity.liked && this.watched == videoStatusEntity.watched && this.annoying == videoStatusEntity.annoying && this.disLiked == videoStatusEntity.disLiked && this.favorite == videoStatusEntity.favorite && j32.a(this.watchLater, videoStatusEntity.watchLater) && this.videoProgress == videoStatusEntity.videoProgress;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [int] */
    /* JADX WARN: Type inference failed for: r0v12, types: [int] */
    /* JADX WARN: Type inference failed for: r0v4, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6, types: [int] */
    /* JADX WARN: Type inference failed for: r0v8, types: [int] */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v2, types: [int] */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v4, types: [int] */
    /* JADX WARN: Type inference failed for: r1v6, types: [int] */
    /* JADX WARN: Type inference failed for: r1v8, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [int] */
    /* JADX WARN: Type inference failed for: r2v5 */
    public int hashCode() {
        int iA = ik4.a(this.videoId, this.id.hashCode() * 31, 31);
        boolean z = this.liked;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        int i = (iA + r1) * 31;
        boolean z2 = this.watched;
        ?? r2 = z2;
        if (z2) {
            r2 = 1;
        }
        int i2 = (i + r2) * 31;
        boolean z3 = this.annoying;
        ?? r3 = z3;
        if (z3) {
            r3 = 1;
        }
        int i3 = (i2 + r3) * 31;
        boolean z4 = this.disLiked;
        ?? r4 = z4;
        if (z4) {
            r4 = 1;
        }
        int i4 = (i3 + r4) * 31;
        boolean z5 = this.favorite;
        int iA2 = ik4.a(this.watchLater, (i4 + (z5 ? 1 : z5)) * 31, 31);
        long j = this.videoProgress;
        return iA2 + ((int) (j ^ (j >>> 32)));
    }

    public String toString() {
        StringBuilder sbA = um3.a("VideoStatusEntity(id=");
        sbA.append(this.id);
        sbA.append(", videoId=");
        sbA.append(this.videoId);
        sbA.append(", liked=");
        sbA.append(this.liked);
        sbA.append(", watched=");
        sbA.append(this.watched);
        sbA.append(", annoying=");
        sbA.append(this.annoying);
        sbA.append(", disLiked=");
        sbA.append(this.disLiked);
        sbA.append(", favorite=");
        sbA.append(this.favorite);
        sbA.append(", watchLater=");
        sbA.append(this.watchLater);
        sbA.append(", videoProgress=");
        sbA.append(this.videoProgress);
        sbA.append(')');
        return sbA.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        j32.e(parcel, "out");
        parcel.writeString(this.id);
        parcel.writeString(this.videoId);
        parcel.writeInt(this.liked ? 1 : 0);
        parcel.writeInt(this.watched ? 1 : 0);
        parcel.writeInt(this.annoying ? 1 : 0);
        parcel.writeInt(this.disLiked ? 1 : 0);
        parcel.writeInt(this.favorite ? 1 : 0);
        parcel.writeString(this.watchLater);
        parcel.writeLong(this.videoProgress);
    }

    public /* synthetic */ VideoStatusEntity(String str, String str2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, String str3, long j, int i) {
        this((i & 1) != 0 ? BuildConfig.FLAVOR : str, (i & 2) == 0 ? str2 : BuildConfig.FLAVOR, (i & 4) != 0 ? false : z, (i & 8) != 0 ? false : z2, (i & 16) != 0 ? false : z3, (i & 32) != 0 ? false : z4, (i & 64) == 0 ? z5 : false, (i & RecyclerView.b0.FLAG_IGNORE) != 0 ? PListParser.TAG_FALSE : null, (i & RecyclerView.b0.FLAG_TMP_DETACHED) != 0 ? 0L : j);
    }
}
