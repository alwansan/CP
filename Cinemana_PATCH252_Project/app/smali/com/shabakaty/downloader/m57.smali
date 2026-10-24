.class public final Lcom/shabakaty/downloader/m57;
.super Lcom/shabakaty/downloader/ok6;
.source "com.google.mlkit:vision-common@@16.3.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/ok6<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final t:Lcom/shabakaty/downloader/la7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/la7<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/la7;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/la7<",
            "TE;>;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/shabakaty/downloader/ok6;-><init>(II)V

    iput-object p1, p0, Lcom/shabakaty/downloader/m57;->t:Lcom/shabakaty/downloader/la7;

    return-void
.end method
