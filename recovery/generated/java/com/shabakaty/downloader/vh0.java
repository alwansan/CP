package com.shabakaty.downloader;

import com.facebook.common.references.CloseableReference;
import com.facebook.datasource.DataSource;
import com.facebook.imagepipeline.datasource.BaseBitmapDataSubscriber;
import com.facebook.imagepipeline.image.CloseableImage;
import com.shabakaty.cinemana.helpers.casting.DLNAControllerService;

/* JADX INFO: compiled from: DLNAControllerService.kt */
/* JADX INFO: loaded from: classes.dex */
public final class vh0 extends BaseBitmapDataSubscriber {
    public final /* synthetic */ DLNAControllerService a;

    public vh0(DLNAControllerService dLNAControllerService) {
        this.a = dLNAControllerService;
    }

    @Override // com.facebook.datasource.BaseDataSubscriber
    public void e(DataSource<CloseableReference<CloseableImage>> dataSource) {
        j32.e(dataSource, "dataSource");
    }
}
