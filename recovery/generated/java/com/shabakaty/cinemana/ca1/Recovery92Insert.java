package com.shabakaty.cinemana.ca1;

import com.shabakaty.cinemana.data.db.downloads.CinemanaDownloadItem;
import com.shabakaty.cinemana.data.db.downloads.SkippingDurationsDB;
import com.shabakaty.downloader.ci4;
import com.shabakaty.downloader.kw0;
import com.shabakaty.downloader.vt3;
import com.shabakaty.downloader.x31;

/* JADX INFO: compiled from: DownloadDao_Impl.java */
/* JADX INFO: loaded from: classes6.dex */
public class Recovery92Insert extends x31<CinemanaDownloadItem> {
    public final /* synthetic */ kw0 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Recovery92Insert(kw0 kw0Var, vt3 vt3Var) {
        super(vt3Var);
        this.d = kw0Var;
    }

    @Override // com.shabakaty.downloader.f54
    public String c() {
        return "INSERT OR IGNORE INTO `CinemanaDownloadItem` (`id`,`downloadTaskId`,`title`,`stars`,`kind`,`sizeMB`,`season`,`imgObjUrl`,`filmRating`,`tvShowRating`,`path`,`episodeNumber`,`special`,`useParentImg`,`parentSkipping`,`collectionID`,`imgThumbObjUrl`,`qualityName`,`rootEpisode`,`hasIntroSkipping`,`episodeFlag`,`lastUpdated`,`skippingDurations_start`,`skippingDurations_end`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
    }

    @Override // com.shabakaty.downloader.x31
    public void e(ci4 ci4Var, CinemanaDownloadItem cinemanaDownloadItem) {
        CinemanaDownloadItem cinemanaDownloadItem2 = cinemanaDownloadItem;
        String str = cinemanaDownloadItem2.id;
        if (str == null) {
            ci4Var.T0(1);
        } else {
            ci4Var.I(1, str);
        }
        ci4Var.h0(2, cinemanaDownloadItem2.downloadTaskId);
        String str2 = cinemanaDownloadItem2.title;
        if (str2 == null) {
            ci4Var.T0(3);
        } else {
            ci4Var.I(3, str2);
        }
        String str3 = cinemanaDownloadItem2.stars;
        if (str3 == null) {
            ci4Var.T0(4);
        } else {
            ci4Var.I(4, str3);
        }
        String str4 = cinemanaDownloadItem2.kind;
        if (str4 == null) {
            ci4Var.T0(5);
        } else {
            ci4Var.I(5, str4);
        }
        ci4Var.h0(6, cinemanaDownloadItem2.sizeMB);
        String str5 = cinemanaDownloadItem2.season;
        if (str5 == null) {
            ci4Var.T0(7);
        } else {
            ci4Var.I(7, str5);
        }
        String str6 = cinemanaDownloadItem2.imgObjUrl;
        if (str6 == null) {
            ci4Var.T0(8);
        } else {
            ci4Var.I(8, str6);
        }
        String str7 = cinemanaDownloadItem2.filmRating;
        if (str7 == null) {
            ci4Var.T0(9);
        } else {
            ci4Var.I(9, str7);
        }
        String str8 = cinemanaDownloadItem2.tvShowRating;
        if (str8 == null) {
            ci4Var.T0(10);
        } else {
            ci4Var.I(10, str8);
        }
        String str9 = cinemanaDownloadItem2.path;
        if (str9 == null) {
            ci4Var.T0(11);
        } else {
            ci4Var.I(11, str9);
        }
        String str10 = cinemanaDownloadItem2.episodeNumber;
        if (str10 == null) {
            ci4Var.T0(12);
        } else {
            ci4Var.I(12, str10);
        }
        String str11 = cinemanaDownloadItem2.special;
        if (str11 == null) {
            ci4Var.T0(13);
        } else {
            ci4Var.I(13, str11);
        }
        String str12 = cinemanaDownloadItem2.useParentImg;
        if (str12 == null) {
            ci4Var.T0(14);
        } else {
            ci4Var.I(14, str12);
        }
        String str13 = cinemanaDownloadItem2.parentSkipping;
        if (str13 == null) {
            ci4Var.T0(15);
        } else {
            ci4Var.I(15, str13);
        }
        ci4Var.h0(16, cinemanaDownloadItem2.collectionID);
        String str14 = cinemanaDownloadItem2.imgThumbObjUrl;
        if (str14 == null) {
            ci4Var.T0(17);
        } else {
            ci4Var.I(17, str14);
        }
        String str15 = cinemanaDownloadItem2.qualityName;
        if (str15 == null) {
            ci4Var.T0(18);
        } else {
            ci4Var.I(18, str15);
        }
        String str16 = cinemanaDownloadItem2.rootEpisode;
        if (str16 == null) {
            ci4Var.T0(19);
        } else {
            ci4Var.I(19, str16);
        }
        ci4Var.h0(20, cinemanaDownloadItem2.hasIntroSkipping ? 1L : 0L);
        String str17 = cinemanaDownloadItem2.episodeFlag;
        if (str17 == null) {
            ci4Var.T0(21);
        } else {
            ci4Var.I(21, str17);
        }
        String str18 = cinemanaDownloadItem2.lastUpdated;
        if (str18 == null) {
            ci4Var.T0(22);
        } else {
            ci4Var.I(22, str18);
        }
        SkippingDurationsDB skippingDurationsDB = cinemanaDownloadItem2.skippingDurations;
        if (skippingDurationsDB != null) {
            ci4Var.I(23, this.d.c.a(skippingDurationsDB.start));
            ci4Var.I(24, this.d.c.a(skippingDurationsDB.end));
        } else {
            ci4Var.T0(23);
            ci4Var.T0(24);
        }
    }
}
