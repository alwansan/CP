.class public final Lcom/shabakaty/downloader/d15$f;
.super Lcom/shabakaty/downloader/ui4;
.source "VideoInfoFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.ui.video_info.VideoInfoFragment$playDownloadedVideo$1"
    f = "VideoInfoFragment.kt"
    l = {
        0xec
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/d15;->m2(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ui4;",
        "Lcom/shabakaty/downloader/hn1<",
        "Lcom/shabakaty/downloader/se0;",
        "Lcom/shabakaty/downloader/ud0<",
        "-",
        "Lcom/shabakaty/downloader/qv4;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public v:I

.field public final synthetic w:Lcom/shabakaty/downloader/d15;

.field public final synthetic x:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/d15;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/d15;",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/d15$f;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/d15$f;->w:Lcom/shabakaty/downloader/d15;

    iput-object p2, p0, Lcom/shabakaty/downloader/d15$f;->x:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/shabakaty/downloader/se0;

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance p1, Lcom/shabakaty/downloader/d15$f;

    iget-object v0, p0, Lcom/shabakaty/downloader/d15$f;->w:Lcom/shabakaty/downloader/d15;

    iget-object v1, p0, Lcom/shabakaty/downloader/d15$f;->x:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/d15$f;-><init>(Lcom/shabakaty/downloader/d15;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/d15$f;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/downloader/ud0<",
            "*>;)",
            "Lcom/shabakaty/downloader/ud0<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/shabakaty/downloader/d15$f;

    iget-object v0, p0, Lcom/shabakaty/downloader/d15$f;->w:Lcom/shabakaty/downloader/d15;

    iget-object v1, p0, Lcom/shabakaty/downloader/d15$f;->x:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/d15$f;-><init>(Lcom/shabakaty/downloader/d15;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/d15$f;->v:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/d15$f;->w:Lcom/shabakaty/downloader/d15;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/u15;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/u15;->k:Lcom/shabakaty/downloader/jw0;

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/d15$f;->x:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 7
    iget-object v1, v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 8
    iput v2, p0, Lcom/shabakaty/downloader/d15$f;->v:I

    invoke-interface {p1, v1, p0}, Lcom/shabakaty/downloader/jw0;->n(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 9
    :cond_2
    :goto_0
    check-cast p1, Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;

    .line 10
    iget-object v0, p0, Lcom/shabakaty/downloader/d15$f;->w:Lcom/shabakaty/downloader/d15;

    .line 11
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    if-nez p1, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    iget-object v3, p1, Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;->cinemanaDownloadItem:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    if-nez v3, :cond_4

    goto :goto_1

    .line 13
    :cond_4
    iget-object v2, p1, Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;->subtitles:Ljava/util/List;

    .line 14
    iget-object p1, p1, Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;->skippableScenes:Ljava/util/List;

    .line 15
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "requireContext()"

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v3, v2, p1, v4}, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->b(Ljava/util/List;Ljava/util/List;Landroid/content/Context;)Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object v2

    :goto_1
    const-string p1, "VideoModelArg"

    .line 17
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 18
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 19
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
