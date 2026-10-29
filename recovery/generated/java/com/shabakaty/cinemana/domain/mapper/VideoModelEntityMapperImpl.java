package com.shabakaty.cinemana.domain.mapper;

import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.downloader.i25;

/* JADX INFO: loaded from: classes.dex */
public class VideoModelEntityMapperImpl implements VideoModelEntityMapper {
    @Override // com.shabakaty.downloader.nj
    public i25 mapDtoToDomain(VideoModel videoModel) {
        i25 i25Var;
        i25 i25Var2 = new i25(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, false, null, null, 0, null, null, null, null, false, null, null, 0, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0L, null, null, false, false, -1, 268435455);
        if (videoModel == null) {
            return i25Var2;
        }
        String str = videoModel.nb;
        if (str != null) {
            i25Var = i25Var2;
            i25Var.r = str;
        } else {
            i25Var = i25Var2;
        }
        String str2 = videoModel.enTitle;
        if (str2 != null) {
            i25Var.s = str2;
        }
        String str3 = videoModel.arTitle;
        if (str3 != null) {
            i25Var.t = str3;
        }
        String str4 = videoModel.stars;
        if (str4 != null) {
            i25Var.v = str4;
        }
        String str5 = videoModel.arContent;
        if (str5 != null) {
            i25Var.x = str5;
        }
        String str6 = videoModel.enContent;
        if (str6 != null) {
            i25Var.y = str6;
        }
        String str7 = videoModel.mDate;
        if (str7 != null) {
            i25Var.z = str7;
        }
        String str8 = videoModel.year;
        if (str8 != null) {
            i25Var.A = str8;
        }
        String str9 = videoModel.kind;
        if (str9 != null) {
            i25Var.B = str9;
        }
        String str10 = videoModel.season;
        if (str10 != null) {
            i25Var.C = str10;
        }
        String str11 = videoModel.imgObjUrl;
        if (str11 != null) {
            i25Var.G = str11;
        }
        String str12 = videoModel.imgMediumThumbObjUrl;
        if (str12 != null) {
            i25Var.H = str12;
        }
        String str13 = videoModel.filmRating;
        if (str13 != null) {
            i25Var.I = str13;
        }
        String str14 = videoModel.episodeNummer;
        if (str14 != null) {
            i25Var.K = str14;
        }
        String str15 = videoModel.rate;
        if (str15 != null) {
            i25Var.L = str15;
        }
        String str16 = videoModel.itemDate;
        if (str16 != null) {
            i25Var.N = str16;
        }
        String str17 = videoModel.duration;
        if (str17 != null) {
            i25Var.O = str17;
        }
        String str18 = videoModel.imdbUrlRef;
        if (str18 != null) {
            i25Var.P = str18;
        }
        String str19 = videoModel.rootSeries;
        if (str19 != null) {
            i25Var.Q = str19;
        }
        String str20 = videoModel.useParentImg;
        if (str20 != null) {
            i25Var.R = str20;
        }
        i25Var.S = videoModel.showComments;
        String str21 = videoModel.episodeFlag;
        if (str21 != null) {
            i25Var.T = str21;
        }
        String str22 = videoModel.trailer;
        if (str22 != null) {
            i25Var.U = str22;
        }
        i25Var.V = videoModel.isMock;
        String str23 = videoModel.parentSkipping;
        if (str23 != null) {
            i25Var.X = str23;
        }
        String str24 = videoModel.imgThumbObjUrl;
        if (str24 != null) {
            i25Var.a0 = str24;
        }
        String str25 = videoModel.arTranslationFilePath;
        if (str25 != null) {
            i25Var.c0 = str25;
        }
        i25Var.d0 = videoModel.hasIntroSkipping;
        String str26 = videoModel.videoLikesNumber;
        if (str26 != null) {
            i25Var.e0 = str26;
        }
        String str27 = videoModel.videoDisLikesNumber;
        if (str27 != null) {
            i25Var.f0 = str27;
        }
        i25Var.g0 = videoModel.videoCommentsNumber;
        String str28 = videoModel.videoViewsNumber;
        if (str28 != null) {
            i25Var.h0 = str28;
        }
        String str29 = videoModel.itemOrderList;
        if (str29 != null) {
            i25Var.i0 = str29;
        }
        String str30 = videoModel.listId;
        if (str30 != null) {
            i25Var.j0 = str30;
        }
        String str31 = videoModel.listSortOrder;
        if (str31 != null) {
            i25Var.k0 = str31;
        }
        String str32 = videoModel.castable;
        if (str32 != null) {
            i25Var.l0 = str32;
        }
        String str33 = videoModel.publishDate;
        if (str33 != null) {
            i25Var.m0 = str33;
        }
        String str34 = videoModel.episodeDesc;
        if (str34 != null) {
            i25Var.n0 = str34;
        }
        String str35 = videoModel.customArTitle;
        if (str35 != null) {
            i25Var.p0 = str35;
        }
        String str36 = videoModel.customEnTitle;
        if (str36 != null) {
            i25Var.q0 = str36;
        }
        i25Var.r0 = videoModel.finished;
        String str37 = videoModel.url;
        if (str37 != null) {
            i25Var.s0 = str37;
        }
        i25Var.t0 = videoModel.downloadTaskId;
        i25Var.u0 = videoModel.downloadedTime;
        String str38 = videoModel.size;
        if (str38 != null) {
            i25Var.v0 = str38;
        }
        String str39 = videoModel.description;
        if (str39 != null) {
            i25Var.w0 = str39;
        }
        i25Var.x0 = videoModel.isAddedToWatchLater;
        return i25Var;
    }
}
