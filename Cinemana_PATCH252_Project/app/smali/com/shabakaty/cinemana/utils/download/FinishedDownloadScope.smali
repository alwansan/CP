.class public final Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;
.super Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;
.source "FinishedDownloadHandler.kt"


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
        "Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;",
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
.field public w:Landroidx/fragment/app/Fragment;

.field public x:Lcom/shabakaty/downloader/rm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/rm1<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation
.end field

.field public y:Lcom/shabakaty/downloader/rm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/rm1<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation
.end field

.field public final z:Lcom/shabakaty/downloader/kf2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroidx/fragment/app/Fragment;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;-><init>(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroidx/fragment/app/Fragment;)V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;->w:Landroidx/fragment/app/Fragment;

    .line 3
    new-instance p1, Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope$b;

    invoke-direct {p1, p0}, Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope$b;-><init>(Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;->z:Lcom/shabakaty/downloader/kf2;

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->g()Lcom/shabakaty/downloader/se0;

    move-result-object v0

    new-instance v3, Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope$a;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope$a;-><init>(Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;Lcom/shabakaty/downloader/ud0;)V

    const/4 v1, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    return-void
.end method

.method public static final p(Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v0, p1, Lcom/shabakaty/downloader/xb1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/xb1;

    iget v1, v0, Lcom/shabakaty/downloader/xb1;->x:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/xb1;->x:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/xb1;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/xb1;-><init>(Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p1, v0, Lcom/shabakaty/downloader/xb1;->v:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 3
    iget v2, v0, Lcom/shabakaty/downloader/xb1;->x:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/shabakaty/downloader/xb1;->u:Ljava/lang/Object;

    check-cast p0, Lcom/shabakaty/downloader/pw0;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_3

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_2
    iget-object p0, v0, Lcom/shabakaty/downloader/xb1;->u:Ljava/lang/Object;

    check-cast p0, Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 6
    iput-object p0, v0, Lcom/shabakaty/downloader/xb1;->u:Ljava/lang/Object;

    iput v4, v0, Lcom/shabakaty/downloader/xb1;->x:I

    invoke-virtual {p0, v0}, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->e(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_4

    :cond_4
    :goto_1
    check-cast p1, Lcom/shabakaty/downloader/pw0;

    if-nez p1, :cond_5

    goto :goto_3

    .line 7
    :cond_5
    iput-object p1, v0, Lcom/shabakaty/downloader/xb1;->u:Ljava/lang/Object;

    iput v3, v0, Lcom/shabakaty/downloader/xb1;->x:I

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p1}, Lcom/shabakaty/downloader/pw0;->c()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 9
    new-instance p1, Lcom/shabakaty/downloader/ac1;

    invoke-direct {p1, p0, v0}, Lcom/shabakaty/downloader/ac1;-><init>(Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;Lcom/shabakaty/downloader/ud0;)V

    .line 10
    sget-object p0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/ac1;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    move-object p0, p1

    goto :goto_2

    .line 11
    :cond_6
    sget-object p0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :cond_7
    :goto_2
    if-ne p0, v1, :cond_8

    goto :goto_4

    .line 12
    :cond_8
    :goto_3
    sget-object v1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_4
    return-object v1
.end method


# virtual methods
.method public f()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;->w:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final q(Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;Lcom/shabakaty/downloader/rm1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;",
            "Lcom/shabakaty/downloader/rm1<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p2, p1, Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;->y:Lcom/shabakaty/downloader/rm1;

    return-void
.end method

.method public final r(Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;Lcom/shabakaty/downloader/rm1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;",
            "Lcom/shabakaty/downloader/rm1<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p2, p1, Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;->x:Lcom/shabakaty/downloader/rm1;

    return-void
.end method
