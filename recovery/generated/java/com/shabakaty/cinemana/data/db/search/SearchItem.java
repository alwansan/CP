package com.shabakaty.cinemana.data.db.search;

import android.os.Parcel;
import android.os.Parcelable;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.downloader.h61;
import com.shabakaty.downloader.ik4;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.um3;
import kotlin.Metadata;

/* JADX INFO: compiled from: SearchEntity.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b-\b\u0087\b\u0018\u00002\u00020\u0001B\u0089\u0001\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\b\b\u0002\u0010\f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u0002\u0012\b\b\u0002\u0010!\u001a\u00020\u0002\u0012\b\b\u0002\u0010$\u001a\u00020\u0002\u0012\b\b\u0002\u0010'\u001a\u00020\u0002\u0012\b\b\u0002\u0010*\u001a\u00020\u0002¢\u0006\u0004\b-\u0010.R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\"\u0010\f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0004\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\"\u0010\u000f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0004\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\"\u0010\u0012\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0004\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\"\u0010\u0015\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0004\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR\"\u0010\u0018\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0004\u001a\u0004\b\u0019\u0010\u0006\"\u0004\b\u001a\u0010\bR\"\u0010\u001b\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u0004\u001a\u0004\b\u001c\u0010\u0006\"\u0004\b\u001d\u0010\bR\"\u0010\u001e\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u0004\u001a\u0004\b\u001f\u0010\u0006\"\u0004\b \u0010\bR\"\u0010!\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\u0004\u001a\u0004\b\"\u0010\u0006\"\u0004\b#\u0010\bR\"\u0010$\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010\u0004\u001a\u0004\b%\u0010\u0006\"\u0004\b&\u0010\bR\"\u0010'\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010\u0004\u001a\u0004\b(\u0010\u0006\"\u0004\b)\u0010\bR\"\u0010*\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010\u0004\u001a\u0004\b+\u0010\u0006\"\u0004\b,\u0010\b¨\u0006/"}, d2 = {"Lcom/shabakaty/cinemana/data/db/search/SearchItem;", "Landroid/os/Parcelable;", BuildConfig.FLAVOR, "nb", "Ljava/lang/String;", "getNb", "()Ljava/lang/String;", "setNb", "(Ljava/lang/String;)V", "enTitle", "getEnTitle", "setEnTitle", "arTitle", "getArTitle", "setArTitle", "stars", "getStars", "setStars", "year", "getYear", "setYear", "kind", "getKind", "setKind", "season", "getSeason", "setSeason", "imgObjUrl", "getImgObjUrl", "setImgObjUrl", "episodeNummer", "getEpisodeNummer", "setEpisodeNummer", "rate", "getRate", "setRate", "imgMediumThumbObjUrl", "getImgMediumThumbObjUrl", "setImgMediumThumbObjUrl", "categoryEn", "getCategoryEn", "setCategoryEn", "categoryAr", "getCategoryAr", "setCategoryAr", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final /* data */ class SearchItem implements Parcelable {
    public static final Parcelable.Creator<SearchItem> CREATOR = new a();
    public String arTitle;
    public String categoryAr;
    public String categoryEn;
    public String enTitle;
    public String episodeNummer;
    public String imgMediumThumbObjUrl;
    public String imgObjUrl;
    public String kind;
    public String nb;
    public String rate;
    public String season;
    public String stars;
    public String year;

    /* JADX INFO: compiled from: SearchEntity.kt */
    public static final class a implements Parcelable.Creator<SearchItem> {
        @Override // android.os.Parcelable.Creator
        public SearchItem createFromParcel(Parcel parcel) {
            j32.e(parcel, "parcel");
            return new SearchItem(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public SearchItem[] newArray(int i) {
            return new SearchItem[i];
        }
    }

    public SearchItem(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13) {
        j32.e(str, "nb");
        j32.e(str2, "enTitle");
        j32.e(str3, "arTitle");
        j32.e(str4, "stars");
        j32.e(str5, "year");
        j32.e(str6, "kind");
        j32.e(str7, "season");
        j32.e(str8, "imgObjUrl");
        j32.e(str9, "episodeNummer");
        j32.e(str10, "rate");
        j32.e(str11, "imgMediumThumbObjUrl");
        j32.e(str12, "categoryEn");
        j32.e(str13, "categoryAr");
        this.nb = str;
        this.enTitle = str2;
        this.arTitle = str3;
        this.stars = str4;
        this.year = str5;
        this.kind = str6;
        this.season = str7;
        this.imgObjUrl = str8;
        this.episodeNummer = str9;
        this.rate = str10;
        this.imgMediumThumbObjUrl = str11;
        this.categoryEn = str12;
        this.categoryAr = str13;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SearchItem)) {
            return false;
        }
        SearchItem searchItem = (SearchItem) obj;
        return j32.a(this.nb, searchItem.nb) && j32.a(this.enTitle, searchItem.enTitle) && j32.a(this.arTitle, searchItem.arTitle) && j32.a(this.stars, searchItem.stars) && j32.a(this.year, searchItem.year) && j32.a(this.kind, searchItem.kind) && j32.a(this.season, searchItem.season) && j32.a(this.imgObjUrl, searchItem.imgObjUrl) && j32.a(this.episodeNummer, searchItem.episodeNummer) && j32.a(this.rate, searchItem.rate) && j32.a(this.imgMediumThumbObjUrl, searchItem.imgMediumThumbObjUrl) && j32.a(this.categoryEn, searchItem.categoryEn) && j32.a(this.categoryAr, searchItem.categoryAr);
    }

    public int hashCode() {
        return this.categoryAr.hashCode() + ik4.a(this.categoryEn, ik4.a(this.imgMediumThumbObjUrl, ik4.a(this.rate, ik4.a(this.episodeNummer, ik4.a(this.imgObjUrl, ik4.a(this.season, ik4.a(this.kind, ik4.a(this.year, ik4.a(this.stars, ik4.a(this.arTitle, ik4.a(this.enTitle, this.nb.hashCode() * 31, 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31);
    }

    public String toString() {
        StringBuilder sbA = um3.a("SearchItem(nb=");
        sbA.append(this.nb);
        sbA.append(", enTitle=");
        sbA.append(this.enTitle);
        sbA.append(", arTitle=");
        sbA.append(this.arTitle);
        sbA.append(", stars=");
        sbA.append(this.stars);
        sbA.append(", year=");
        sbA.append(this.year);
        sbA.append(", kind=");
        sbA.append(this.kind);
        sbA.append(", season=");
        sbA.append(this.season);
        sbA.append(", imgObjUrl=");
        sbA.append(this.imgObjUrl);
        sbA.append(", episodeNummer=");
        sbA.append(this.episodeNummer);
        sbA.append(", rate=");
        sbA.append(this.rate);
        sbA.append(", imgMediumThumbObjUrl=");
        sbA.append(this.imgMediumThumbObjUrl);
        sbA.append(", categoryEn=");
        sbA.append(this.categoryEn);
        sbA.append(", categoryAr=");
        return h61.a(sbA, this.categoryAr, ')');
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        j32.e(parcel, "out");
        parcel.writeString(this.nb);
        parcel.writeString(this.enTitle);
        parcel.writeString(this.arTitle);
        parcel.writeString(this.stars);
        parcel.writeString(this.year);
        parcel.writeString(this.kind);
        parcel.writeString(this.season);
        parcel.writeString(this.imgObjUrl);
        parcel.writeString(this.episodeNummer);
        parcel.writeString(this.rate);
        parcel.writeString(this.imgMediumThumbObjUrl);
        parcel.writeString(this.categoryEn);
        parcel.writeString(this.categoryAr);
    }

    public SearchItem() {
        this("0", BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR);
    }
}
