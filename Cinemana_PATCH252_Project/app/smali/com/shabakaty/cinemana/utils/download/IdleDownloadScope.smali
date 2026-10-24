.class public final Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope;
.super Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;
.source "IdleDownloadHandler.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope;",
        "Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;",
        "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
        "videoModel",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "<init>",
        "(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroidx/fragment/app/Fragment;)V",
        "app_productionBetaRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field public final A:Lcom/shabakaty/downloader/kf2;

.field public final w:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

.field public x:Landroidx/fragment/app/Fragment;

.field public y:Lcom/shabakaty/downloader/rm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/rm1<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation
.end field

.field public z:Lcom/shabakaty/downloader/rm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/rm1<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;-><init>(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroidx/fragment/app/Fragment;)V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope;->w:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope;->x:Landroidx/fragment/app/Fragment;

    .line 4
    new-instance p1, Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope$a;

    invoke-direct {p1, p0}, Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope$a;-><init>(Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope;->A:Lcom/shabakaty/downloader/kf2;

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/zx1;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/zx1;-><init>(Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope;)V

    .line 6
    new-instance p2, Lcom/shabakaty/downloader/lk3$a;

    invoke-direct {p2}, Lcom/shabakaty/downloader/lk3$a;-><init>()V

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/zx1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public f()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope;->x:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0
.end method
