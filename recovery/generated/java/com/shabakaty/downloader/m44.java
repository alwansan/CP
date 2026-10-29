package com.shabakaty.downloader;

/* JADX INFO: compiled from: ShabakatyValidator.kt */
/* JADX INFO: loaded from: classes.dex */
public final class m44 extends af2 implements tm1<String, Boolean> {
    public final /* synthetic */ j44.a r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m44(j44.a aVar) {
        super(1);
        this.r = aVar;
    }

    @Override // com.shabakaty.downloader.tm1
    public Boolean invoke(String str) {
        String str2 = str;
        j32.e(str2, "it");
        return Boolean.valueOf(((mq3) this.r.d.getValue()).a(str2));
    }
}
