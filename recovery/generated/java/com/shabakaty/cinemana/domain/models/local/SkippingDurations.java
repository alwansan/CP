package com.shabakaty.cinemana.domain.models.local;

import android.os.Parcel;
import android.os.Parcelable;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.um3;
import com.shabakaty.downloader.w21;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: VideoModelLocal.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\f\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\r\u0010\u000eR(\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR(\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0005\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\t¨\u0006\u000f"}, d2 = {"Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;", "Landroid/os/Parcelable;", BuildConfig.FLAVOR, BuildConfig.FLAVOR, "start", "Ljava/util/List;", "getStart", "()Ljava/util/List;", "setStart", "(Ljava/util/List;)V", "end", "getEnd", "setEnd", "<init>", "(Ljava/util/List;Ljava/util/List;)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final /* data */ class SkippingDurations implements Parcelable {
    public static final Parcelable.Creator<SkippingDurations> CREATOR = new a();
    public List<String> end;
    public List<String> start;

    /* JADX INFO: compiled from: VideoModelLocal.kt */
    public static final class a implements Parcelable.Creator<SkippingDurations> {
        @Override // android.os.Parcelable.Creator
        public SkippingDurations createFromParcel(Parcel parcel) {
            j32.e(parcel, "parcel");
            return new SkippingDurations(parcel.createStringArrayList(), parcel.createStringArrayList());
        }

        @Override // android.os.Parcelable.Creator
        public SkippingDurations[] newArray(int i) {
            return new SkippingDurations[i];
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public SkippingDurations() {
        List list = null;
        this(list, list, 3);
    }

    public SkippingDurations(List<String> list, List<String> list2) {
        j32.e(list, "start");
        j32.e(list2, "end");
        this.start = list;
        this.end = list2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SkippingDurations)) {
            return false;
        }
        SkippingDurations skippingDurations = (SkippingDurations) obj;
        return j32.a(this.start, skippingDurations.start) && j32.a(this.end, skippingDurations.end);
    }

    public int hashCode() {
        return this.end.hashCode() + (this.start.hashCode() * 31);
    }

    public String toString() {
        StringBuilder sbA = um3.a("SkippingDurations(start=");
        sbA.append(this.start);
        sbA.append(", end=");
        sbA.append(this.end);
        sbA.append(')');
        return sbA.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        j32.e(parcel, "out");
        parcel.writeStringList(this.start);
        parcel.writeStringList(this.end);
    }

    public /* synthetic */ SkippingDurations(List list, List list2, int i) {
        this((i & 1) != 0 ? w21.r : null, (i & 2) != 0 ? w21.r : null);
    }
}
