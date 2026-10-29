package com.shabakaty.cinemana.domain.mapper;

import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.domain.models.local.Comment;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.p60;

/* JADX INFO: loaded from: classes.dex */
public class CommentMapperImpl implements CommentMapper {
    @Override // com.shabakaty.downloader.nj
    public Comment mapDtoToDomain(p60 p60Var) {
        Comment comment = new Comment("0", BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR);
        if (p60Var != null) {
            String strValueOf = String.valueOf(p60Var.a);
            j32.e(strValueOf, "<set-?>");
            comment.videoNb = strValueOf;
            String str = p60Var.b;
            if (str != null) {
                comment.commentNb = str;
            }
            String str2 = p60Var.c;
            if (str2 != null) {
                comment.userName = str2;
            }
            String str3 = p60Var.d;
            if (str3 != null) {
                comment.userProfilePic = str3;
            }
            String str4 = p60Var.e;
            if (str4 != null) {
                comment.date = str4;
            }
            String str5 = p60Var.f;
            if (str5 != null) {
                comment.text = str5;
            }
            String str6 = p60Var.g;
            if (str6 != null) {
                comment.permission = str6;
            }
        }
        return comment;
    }
}
