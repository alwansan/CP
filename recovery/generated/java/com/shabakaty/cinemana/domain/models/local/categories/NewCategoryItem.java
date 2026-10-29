package com.shabakaty.cinemana.domain.models.local.categories;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.recyclerview.widget.RecyclerView;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.downloader.fz0;
import com.shabakaty.downloader.ik4;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.j60;
import com.shabakaty.downloader.w21;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: NewCategoryItemLocal.kt */
/* JADX INFO: loaded from: classes.dex */
public final class NewCategoryItem implements Parcelable {
    public static final Parcelable.Creator<NewCategoryItem> CREATOR = new a();
    public List<NewLanguageItem> A;
    public String B;
    public String C;
    public String D;
    public String E;
    public String F;
    public String G;
    public int r;
    public String s;
    public String t;
    public String u;
    public String v;
    public String w;
    public String x;
    public String y;
    public String z;

    /* JADX INFO: compiled from: NewCategoryItemLocal.kt */
    public static final class a implements Parcelable.Creator<NewCategoryItem> {
        @Override // android.os.Parcelable.Creator
        public NewCategoryItem createFromParcel(Parcel parcel) {
            j32.e(parcel, "parcel");
            int i = parcel.readInt();
            String string = parcel.readString();
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            String string4 = parcel.readString();
            String string5 = parcel.readString();
            String string6 = parcel.readString();
            String string7 = parcel.readString();
            String string8 = parcel.readString();
            int i2 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i2);
            int iA = 0;
            while (iA != i2) {
                iA = fz0.a(NewLanguageItem.CREATOR, parcel, arrayList, iA, 1);
            }
            return new NewCategoryItem(i, string, string2, string3, string4, string5, string6, string7, string8, arrayList, parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public NewCategoryItem[] newArray(int i) {
            return new NewCategoryItem[i];
        }
    }

    public NewCategoryItem() {
        this(0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 65535);
    }

    public NewCategoryItem(int i, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, List<NewLanguageItem> list, String str9, String str10, String str11, String str12, String str13, String str14) {
        j32.e(str, "arTitle");
        j32.e(str2, "enTitle");
        j32.e(str3, "img");
        j32.e(str4, "imgMediumThumb");
        j32.e(str5, "imgMediumThumbObjUrl");
        j32.e(str6, "imgObjUrl");
        j32.e(str7, "imgThumb");
        j32.e(str8, "imgThumbObjUrl");
        j32.e(list, "langArray");
        j32.e(str9, "nb");
        j32.e(str10, "objectUrlExpiration");
        j32.e(str11, "porder");
        j32.e(str12, "sort");
        j32.e(str13, "updateDateTime");
        j32.e(str14, "title");
        this.r = i;
        this.s = str;
        this.t = str2;
        this.u = str3;
        this.v = str4;
        this.w = str5;
        this.x = str6;
        this.y = str7;
        this.z = str8;
        this.A = list;
        this.B = str9;
        this.C = str10;
        this.D = str11;
        this.E = str12;
        this.F = str13;
        this.G = str14;
    }

    public final void a(String str) {
        j32.e(str, "<set-?>");
        this.G = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NewCategoryItem)) {
            return false;
        }
        NewCategoryItem newCategoryItem = (NewCategoryItem) obj;
        return this.r == newCategoryItem.r && j32.a(this.s, newCategoryItem.s) && j32.a(this.t, newCategoryItem.t) && j32.a(this.u, newCategoryItem.u) && j32.a(this.v, newCategoryItem.v) && j32.a(this.w, newCategoryItem.w) && j32.a(this.x, newCategoryItem.x) && j32.a(this.y, newCategoryItem.y) && j32.a(this.z, newCategoryItem.z) && j32.a(this.A, newCategoryItem.A) && j32.a(this.B, newCategoryItem.B) && j32.a(this.C, newCategoryItem.C) && j32.a(this.D, newCategoryItem.D) && j32.a(this.E, newCategoryItem.E) && j32.a(this.F, newCategoryItem.F) && j32.a(this.G, newCategoryItem.G);
    }

    public int hashCode() {
        return this.G.hashCode() + ik4.a(this.F, ik4.a(this.E, ik4.a(this.D, ik4.a(this.C, ik4.a(this.B, j60.a(this.A, ik4.a(this.z, ik4.a(this.y, ik4.a(this.x, ik4.a(this.w, ik4.a(this.v, ik4.a(this.u, ik4.a(this.t, ik4.a(this.s, this.r * 31, 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31);
    }

    public String toString() {
        return this.G;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        j32.e(parcel, "out");
        parcel.writeInt(this.r);
        parcel.writeString(this.s);
        parcel.writeString(this.t);
        parcel.writeString(this.u);
        parcel.writeString(this.v);
        parcel.writeString(this.w);
        parcel.writeString(this.x);
        parcel.writeString(this.y);
        parcel.writeString(this.z);
        List<NewLanguageItem> list = this.A;
        parcel.writeInt(list.size());
        Iterator<NewLanguageItem> it = list.iterator();
        while (it.hasNext()) {
            it.next().writeToParcel(parcel, i);
        }
        parcel.writeString(this.B);
        parcel.writeString(this.C);
        parcel.writeString(this.D);
        parcel.writeString(this.E);
        parcel.writeString(this.F);
        parcel.writeString(this.G);
    }

    /* JADX INFO: compiled from: NewCategoryItemLocal.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0018\b\u0087\b\u0018\u00002\u00020\u0001BC\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\b\b\u0002\u0010\f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0002¢\u0006\u0004\b\u0018\u0010\u0019R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\"\u0010\f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0004\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\"\u0010\u000f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0004\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\"\u0010\u0012\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0004\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\"\u0010\u0015\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0004\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\b¨\u0006\u001a"}, d2 = {"Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem$NewLanguageItem;", "Landroid/os/Parcelable;", BuildConfig.FLAVOR, "catNb", "Ljava/lang/String;", "getCatNb", "()Ljava/lang/String;", "setCatNb", "(Ljava/lang/String;)V", "langArTitle", "getLangArTitle", "setLangArTitle", "langEnTitle", "getLangEnTitle", "setLangEnTitle", "langFreq", "getLangFreq", "setLangFreq", "langNb", "getLangNb", "setLangNb", "title", "getTitle", "setTitle", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
    public static final /* data */ class NewLanguageItem implements Parcelable {
        public static final Parcelable.Creator<NewLanguageItem> CREATOR = new a();
        public String catNb;
        public String langArTitle;
        public String langEnTitle;
        public String langFreq;
        public String langNb;
        public String title;

        /* JADX INFO: compiled from: NewCategoryItemLocal.kt */
        public static final class a implements Parcelable.Creator<NewLanguageItem> {
            @Override // android.os.Parcelable.Creator
            public NewLanguageItem createFromParcel(Parcel parcel) {
                j32.e(parcel, "parcel");
                return new NewLanguageItem(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public NewLanguageItem[] newArray(int i) {
                return new NewLanguageItem[i];
            }
        }

        public NewLanguageItem() {
            this(null, null, null, null, null, null, 63);
        }

        public NewLanguageItem(String str, String str2, String str3, String str4, String str5, String str6) {
            j32.e(str, "catNb");
            j32.e(str2, "langArTitle");
            j32.e(str3, "langEnTitle");
            j32.e(str4, "langFreq");
            j32.e(str5, "langNb");
            j32.e(str6, "title");
            this.catNb = str;
            this.langArTitle = str2;
            this.langEnTitle = str3;
            this.langFreq = str4;
            this.langNb = str5;
            this.title = str6;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof NewLanguageItem)) {
                return false;
            }
            NewLanguageItem newLanguageItem = (NewLanguageItem) obj;
            return j32.a(this.catNb, newLanguageItem.catNb) && j32.a(this.langArTitle, newLanguageItem.langArTitle) && j32.a(this.langEnTitle, newLanguageItem.langEnTitle) && j32.a(this.langFreq, newLanguageItem.langFreq) && j32.a(this.langNb, newLanguageItem.langNb) && j32.a(this.title, newLanguageItem.title);
        }

        public int hashCode() {
            return this.title.hashCode() + ik4.a(this.langNb, ik4.a(this.langFreq, ik4.a(this.langEnTitle, ik4.a(this.langArTitle, this.catNb.hashCode() * 31, 31), 31), 31), 31);
        }

        /* JADX INFO: renamed from: toString, reason: from getter */
        public String getTitle() {
            return this.title;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            j32.e(parcel, "out");
            parcel.writeString(this.catNb);
            parcel.writeString(this.langArTitle);
            parcel.writeString(this.langEnTitle);
            parcel.writeString(this.langFreq);
            parcel.writeString(this.langNb);
            parcel.writeString(this.title);
        }

        public /* synthetic */ NewLanguageItem(String str, String str2, String str3, String str4, String str5, String str6, int i) {
            this((i & 1) != 0 ? BuildConfig.FLAVOR : str, (i & 2) != 0 ? BuildConfig.FLAVOR : str2, (i & 4) != 0 ? BuildConfig.FLAVOR : str3, (i & 8) != 0 ? BuildConfig.FLAVOR : str4, (i & 16) != 0 ? BuildConfig.FLAVOR : str5, (i & 32) == 0 ? null : BuildConfig.FLAVOR);
        }
    }

    public /* synthetic */ NewCategoryItem(int i, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, List list, String str9, String str10, String str11, String str12, String str13, String str14, int i2) {
        this((i2 & 1) != 0 ? 0 : i, (i2 & 2) != 0 ? BuildConfig.FLAVOR : str, (i2 & 4) != 0 ? BuildConfig.FLAVOR : str2, (i2 & 8) != 0 ? BuildConfig.FLAVOR : null, (i2 & 16) != 0 ? BuildConfig.FLAVOR : null, (i2 & 32) != 0 ? BuildConfig.FLAVOR : null, (i2 & 64) != 0 ? BuildConfig.FLAVOR : null, (i2 & RecyclerView.b0.FLAG_IGNORE) != 0 ? BuildConfig.FLAVOR : null, (i2 & RecyclerView.b0.FLAG_TMP_DETACHED) != 0 ? BuildConfig.FLAVOR : null, (i2 & RecyclerView.b0.FLAG_ADAPTER_POSITION_UNKNOWN) != 0 ? w21.r : null, (i2 & RecyclerView.b0.FLAG_ADAPTER_FULLUPDATE) != 0 ? BuildConfig.FLAVOR : str9, (i2 & 2048) != 0 ? BuildConfig.FLAVOR : null, (i2 & 4096) != 0 ? BuildConfig.FLAVOR : null, (i2 & RecyclerView.b0.FLAG_BOUNCED_FROM_HIDDEN_LIST) != 0 ? BuildConfig.FLAVOR : null, (i2 & 16384) != 0 ? BuildConfig.FLAVOR : null, (i2 & 32768) != 0 ? BuildConfig.FLAVOR : str14);
    }
}
