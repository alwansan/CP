.class public final Lcom/shabakaty/downloader/id3;
.super Lcom/shabakaty/downloader/af2;
.source "PlayerBottomSheetController.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ed3;

.field public final synthetic s:Lcom/shabakaty/cinemana/domain/models/local/Quality;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ed3;Lcom/shabakaty/cinemana/domain/models/local/Quality;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/id3;->r:Lcom/shabakaty/downloader/ed3;

    iput-object p2, p0, Lcom/shabakaty/downloader/id3;->s:Lcom/shabakaty/cinemana/domain/models/local/Quality;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/id3;->r:Lcom/shabakaty/downloader/ed3;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/ed3;->d:Lcom/shabakaty/downloader/sd3;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/id3;->s:Lcom/shabakaty/cinemana/domain/models/local/Quality;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/sd3;->b(Lcom/shabakaty/cinemana/domain/models/local/Quality;)V

    .line 4
    :goto_0
    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object v0
.end method
