.class public final Lcom/shabakaty/downloader/rv5;
.super Lcom/shabakaty/downloader/my5;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/shabakaty/downloader/my5;-><init>(Ljava/util/Iterator;I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
