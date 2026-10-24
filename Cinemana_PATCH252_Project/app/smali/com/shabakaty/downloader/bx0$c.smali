.class public final Lcom/shabakaty/downloader/bx0$c;
.super Lcom/shabakaty/downloader/ui4;
.source "DownloadItemsFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.ui.profile_fragment.DownloadItemsFragment$onDownloadItemClicked$1"
    f = "DownloadItemsFragment.kt"
    l = {
        0x61,
        0x62,
        0x63
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/bx0;->U0(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)V
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

.field public final synthetic w:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

.field public final synthetic x:Lcom/shabakaty/downloader/bx0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/bx0;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;",
            "Lcom/shabakaty/downloader/bx0;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/bx0$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/bx0$c;->w:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    iput-object p2, p0, Lcom/shabakaty/downloader/bx0$c;->x:Lcom/shabakaty/downloader/bx0;

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
    new-instance p1, Lcom/shabakaty/downloader/bx0$c;

    iget-object v0, p0, Lcom/shabakaty/downloader/bx0$c;->w:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    iget-object v1, p0, Lcom/shabakaty/downloader/bx0$c;->x:Lcom/shabakaty/downloader/bx0;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/bx0$c;-><init>(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/bx0;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/bx0$c;->t(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance p1, Lcom/shabakaty/downloader/bx0$c;

    iget-object v0, p0, Lcom/shabakaty/downloader/bx0$c;->w:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    iget-object v1, p0, Lcom/shabakaty/downloader/bx0$c;->x:Lcom/shabakaty/downloader/bx0;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/bx0$c;-><init>(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/bx0;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/bx0$c;->v:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_5

    :cond_2
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/bx0$c;->w:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    iput v4, p0, Lcom/shabakaty/downloader/bx0$c;->v:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Lcom/shabakaty/downloader/vy0;->b()Lcom/shabakaty/downloader/az0;

    move-result-object v1

    .line 6
    iget-object p1, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->id:Ljava/lang/String;

    .line 7
    invoke-interface {v1, p1, p0}, Lcom/shabakaty/downloader/az0;->h(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 8
    :cond_4
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/shabakaty/downloader/bx0$c;->x:Lcom/shabakaty/downloader/bx0;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/shabakaty/downloader/bx0$c;->w:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    invoke-static {v1, v4}, Lcom/shabakaty/cinemana/features/MkvPlaybackGuard;->blockIfBusy(Landroid/content/Context;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 9
    iget-object p1, p0, Lcom/shabakaty/downloader/bx0$c;->x:Lcom/shabakaty/downloader/bx0;

    iget-object v1, p0, Lcom/shabakaty/downloader/bx0$c;->w:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    iput v3, p0, Lcom/shabakaty/downloader/bx0$c;->v:I

    invoke-static {p1, v1, p0}, Lcom/shabakaty/downloader/bx0;->k2(Lcom/shabakaty/downloader/bx0;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    .line 10
    :cond_5
    iget-object p1, p0, Lcom/shabakaty/downloader/bx0$c;->x:Lcom/shabakaty/downloader/bx0;

    iput v2, p0, Lcom/shabakaty/downloader/bx0$c;->v:I

    sget v1, Lcom/shabakaty/downloader/bx0;->z:I

    .line 11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v1, Lcom/shabakaty/downloader/hu0;->a:Lcom/shabakaty/downloader/pe0;

    .line 13
    sget-object v1, Lcom/shabakaty/downloader/wl2;->a:Lcom/shabakaty/downloader/vl2;

    .line 14
    new-instance v2, Lcom/shabakaty/downloader/wj;

    const/4 v3, 0x0

    const v4, 0x7f1200db

    invoke-direct {v2, p1, v4, v3}, Lcom/shabakaty/downloader/wj;-><init>(Lcom/shabakaty/downloader/vj;ILcom/shabakaty/downloader/ud0;)V

    invoke-static {v1, v2, p0}, Lcom/shabakaty/downloader/nh3;->M(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    goto :goto_2

    :cond_6
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_2
    if-ne p1, v0, :cond_7

    goto :goto_3

    .line 15
    :cond_7
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_3
    if-ne p1, v0, :cond_8

    goto :goto_4

    .line 16
    :cond_8
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_4
    if-ne p1, v0, :cond_9

    return-object v0

    .line 17
    :cond_9
    :goto_5
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
