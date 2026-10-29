package com.shabakaty.cinemana.domain.mapper;

import com.shabakaty.downloader.q25;
import com.shabakaty.downloader.r25;

/* JADX INFO: loaded from: classes.dex */
public class VideoStatusMapperImpl implements VideoStatusMapper {
    @Override // com.shabakaty.downloader.nj
    public q25 mapDtoToDomain(r25 r25Var) {
        q25 q25Var = new q25();
        if (r25Var != null) {
            q25Var.r = r25Var.a;
            q25Var.s = r25Var.b;
            q25Var.t = r25Var.c;
            q25Var.u = r25Var.d;
            q25Var.v = r25Var.e;
            String str = r25Var.f;
            if (str != null) {
                q25Var.a(str);
            }
        }
        return q25Var;
    }
}
