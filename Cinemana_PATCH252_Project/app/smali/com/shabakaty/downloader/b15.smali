.class public final Lcom/shabakaty/downloader/b15;
.super Lcom/shabakaty/downloader/af2;
.source "VideoInfoFragment.kt"

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
.field public final synthetic r:Lcom/shabakaty/downloader/d15;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/d15;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/b15;->r:Lcom/shabakaty/downloader/d15;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/b15;->r:Lcom/shabakaty/downloader/d15;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/d15;->j2()Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/d15;->m2(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object v0
.end method
