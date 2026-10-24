.class public final Lcom/shabakaty/downloader/us5;
.super Lcom/shabakaty/downloader/xj5;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/xj5<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final t:Lcom/shabakaty/downloader/iu5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/iu5<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/iu5;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/iu5<",
            "TE;>;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/shabakaty/downloader/xj5;-><init>(II)V

    iput-object p1, p0, Lcom/shabakaty/downloader/us5;->t:Lcom/shabakaty/downloader/iu5;

    return-void
.end method
