.class public final Lcom/shabakaty/downloader/ch5;
.super Lcom/shabakaty/downloader/se5;
.source "com.google.mlkit:common@@17.1.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/se5<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final t:Lcom/shabakaty/downloader/th5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/th5<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/th5;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/th5<",
            "TE;>;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/shabakaty/downloader/se5;-><init>(II)V

    iput-object p1, p0, Lcom/shabakaty/downloader/ch5;->t:Lcom/shabakaty/downloader/th5;

    return-void
.end method
