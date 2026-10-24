.class public final Lcom/shabakaty/downloader/d32;
.super Lcom/shabakaty/downloader/af2;
.source "InternalSeasonFragment.kt"

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
.field public final synthetic r:Lcom/shabakaty/downloader/c32;

.field public final synthetic s:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/c32;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/d32;->r:Lcom/shabakaty/downloader/c32;

    iput-object p2, p0, Lcom/shabakaty/downloader/d32;->s:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/d32;->r:Lcom/shabakaty/downloader/c32;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/shabakaty/downloader/d15;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/shabakaty/downloader/d15;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/d32;->s:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/d15;->m2(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V

    .line 2
    :goto_1
    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object v0
.end method
