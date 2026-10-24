.class public final Lcom/shabakaty/downloader/h15;
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

.field public final synthetic s:Lcom/shabakaty/cinemana/domain/models/local/Quality;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/d15;Lcom/shabakaty/cinemana/domain/models/local/Quality;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/h15;->r:Lcom/shabakaty/downloader/d15;

    iput-object p2, p0, Lcom/shabakaty/downloader/h15;->s:Lcom/shabakaty/cinemana/domain/models/local/Quality;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/h15;->r:Lcom/shabakaty/downloader/d15;

    iget-object v1, p0, Lcom/shabakaty/downloader/h15;->s:Lcom/shabakaty/cinemana/domain/models/local/Quality;

    .line 2
    iget-object v1, v1, Lcom/shabakaty/cinemana/domain/models/local/Quality;->url:Ljava/lang/String;

    .line 3
    sget-boolean v2, Lcom/shabakaty/downloader/d15;->A:Z

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Lcom/shabakaty/downloader/j51;->b()Lcom/shabakaty/downloader/j51;

    move-result-object v2

    new-instance v3, Lcom/shabakaty/downloader/xb4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/d15;->j2()Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v4, v1, v5, v0}, Lcom/shabakaty/downloader/xb4;-><init>(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Ljava/lang/String;Ljava/lang/Long;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/j51;->f(Ljava/lang/Object;)V

    .line 6
    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object v0
.end method
