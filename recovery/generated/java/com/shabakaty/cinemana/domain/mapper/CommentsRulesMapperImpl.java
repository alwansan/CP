package com.shabakaty.cinemana.domain.mapper;

import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.domain.models.local.CommentsRules;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.w21;
import com.shabakaty.downloader.w60;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class CommentsRulesMapperImpl implements CommentsRulesMapper {
    @Override // com.shabakaty.downloader.nj
    public CommentsRules mapDtoToDomain(w60 w60Var) {
        CommentsRules commentsRules = new CommentsRules();
        if (w60Var != null) {
            j32.e(BuildConfig.FLAVOR, "<set-?>");
            commentsRules.commentRulesHead = BuildConfig.FLAVOR;
            ArrayList arrayList = new ArrayList(w21.r);
            j32.e(arrayList, "<set-?>");
            commentsRules.commentRules = arrayList;
        }
        return commentsRules;
    }
}
