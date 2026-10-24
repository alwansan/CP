.class public final Lcom/shabakaty/downloader/bx0$b;
.super Lcom/shabakaty/downloader/ui4;
.source "DownloadItemsFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.ui.profile_fragment.DownloadItemsFragment$onDownloadCanceledOrDeleted$1"
    f = "DownloadItemsFragment.kt"
    l = {
        0x57
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/bx0;->q0(Lcom/shabakaty/downloader/pw0;)V
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

.field public final synthetic w:Lcom/shabakaty/downloader/bx0;

.field public final synthetic x:Lcom/shabakaty/downloader/pw0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/bx0;Lcom/shabakaty/downloader/pw0;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/bx0;",
            "Lcom/shabakaty/downloader/pw0;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/bx0$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/bx0$b;->w:Lcom/shabakaty/downloader/bx0;

    iput-object p2, p0, Lcom/shabakaty/downloader/bx0$b;->x:Lcom/shabakaty/downloader/pw0;

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
    new-instance p1, Lcom/shabakaty/downloader/bx0$b;

    iget-object v0, p0, Lcom/shabakaty/downloader/bx0$b;->w:Lcom/shabakaty/downloader/bx0;

    iget-object v1, p0, Lcom/shabakaty/downloader/bx0$b;->x:Lcom/shabakaty/downloader/pw0;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/bx0$b;-><init>(Lcom/shabakaty/downloader/bx0;Lcom/shabakaty/downloader/pw0;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/bx0$b;->t(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance p1, Lcom/shabakaty/downloader/bx0$b;

    iget-object v0, p0, Lcom/shabakaty/downloader/bx0$b;->w:Lcom/shabakaty/downloader/bx0;

    iget-object v1, p0, Lcom/shabakaty/downloader/bx0$b;->x:Lcom/shabakaty/downloader/pw0;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/bx0$b;-><init>(Lcom/shabakaty/downloader/bx0;Lcom/shabakaty/downloader/pw0;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/bx0$b;->v:I

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
    iget-object p1, p0, Lcom/shabakaty/downloader/bx0$b;->w:Lcom/shabakaty/downloader/bx0;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/by0;

    iget-object v1, p0, Lcom/shabakaty/downloader/bx0$b;->x:Lcom/shabakaty/downloader/pw0;

    .line 5
    iget-object v1, v1, Lcom/shabakaty/downloader/pw0;->s:Ljava/lang/String;

    .line 6
    iput v2, p0, Lcom/shabakaty/downloader/bx0$b;->v:I

    .line 7
    iget-object p1, p1, Lcom/shabakaty/downloader/by0;->f:Lcom/shabakaty/downloader/qx0;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v2, Lcom/shabakaty/downloader/hu0;->b:Lcom/shabakaty/downloader/pe0;

    .line 9
    new-instance v3, Lcom/shabakaty/downloader/tx0;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v1, v4}, Lcom/shabakaty/downloader/tx0;-><init>(Lcom/shabakaty/downloader/qx0;Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)V

    invoke-static {v2, v3, p0}, Lcom/shabakaty/downloader/nh3;->M(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 10
    :cond_2
    :goto_0
    check-cast p1, Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;

    if-nez p1, :cond_3

    goto :goto_2

    .line 11
    :cond_3
    iget-object p1, p1, Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;->subtitles:Ljava/util/List;

    if-nez p1, :cond_4

    goto :goto_2

    .line 12
    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/cinemana/data/db/downloads/SubtitleDb;

    .line 13
    invoke-static {}, Lcom/shabakaty/downloader/vy0;->c()Lcom/shabakaty/downloader/i44;

    move-result-object v1

    .line 14
    iget v2, v0, Lcom/shabakaty/cinemana/data/db/downloads/SubtitleDb;->downloadTaskId:I

    .line 15
    iget-object v0, v0, Lcom/shabakaty/cinemana/data/db/downloads/SubtitleDb;->file:Ljava/lang/String;

    .line 16
    invoke-interface {v1, v2, v0}, Lcom/shabakaty/downloader/i44;->j(ILjava/lang/String;)V

    goto :goto_1

    .line 17
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/shabakaty/downloader/bx0$b;->w:Lcom/shabakaty/downloader/bx0;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/by0;

    iget-object v0, p0, Lcom/shabakaty/downloader/bx0$b;->x:Lcom/shabakaty/downloader/pw0;

    .line 18
    iget-object v0, v0, Lcom/shabakaty/downloader/pw0;->s:Ljava/lang/String;

    .line 19
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/by0;->l(Ljava/lang/String;)Lcom/shabakaty/downloader/e92;

    .line 20
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
