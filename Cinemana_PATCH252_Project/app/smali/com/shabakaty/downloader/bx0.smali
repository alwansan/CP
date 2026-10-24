.class public final Lcom/shabakaty/downloader/bx0;
.super Lcom/shabakaty/downloader/hj;
.source "DownloadItemsFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/vj;
.implements Lcom/shabakaty/downloader/qw0;
.implements Lcom/shabakaty/downloader/gq1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/hj<",
        "Lcom/shabakaty/downloader/ej1;",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/by0;",
        ">;",
        "Lcom/shabakaty/downloader/gq1;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00012\u00020\u00032\u00020\u0005B\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/shabakaty/downloader/bx0;",
        "Lcom/shabakaty/downloader/hj;",
        "Lcom/shabakaty/downloader/ej1;",
        "",
        "Lcom/shabakaty/downloader/by0;",
        "Lcom/shabakaty/downloader/gq1;",
        "<init>",
        "()V",
        "app_productionBetaRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic z:I


# instance fields
.field public final x:Lcom/shabakaty/downloader/kf2;

.field public y:Landroidx/appcompat/app/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0d0071

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/hj;-><init>(I)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/bx0$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/bx0$a;-><init>(Lcom/shabakaty/downloader/bx0;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/bx0;->x:Lcom/shabakaty/downloader/kf2;

    return-void
.end method

.method public static final h2(Lcom/shabakaty/downloader/bx0;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v0, p2, Lcom/shabakaty/downloader/yw0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/yw0;

    iget v1, v0, Lcom/shabakaty/downloader/yw0;->y:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/yw0;->y:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/yw0;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/yw0;-><init>(Lcom/shabakaty/downloader/bx0;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p2, v0, Lcom/shabakaty/downloader/yw0;->w:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 3
    iget v2, v0, Lcom/shabakaty/downloader/yw0;->y:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/shabakaty/downloader/yw0;->v:Ljava/lang/Object;

    check-cast p0, Lcom/shabakaty/downloader/pw0;

    iget-object p1, v0, Lcom/shabakaty/downloader/yw0;->u:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/bx0;

    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_2

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_2
    iget-object p0, v0, Lcom/shabakaty/downloader/yw0;->v:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    iget-object p0, v0, Lcom/shabakaty/downloader/yw0;->u:Ljava/lang/Object;

    check-cast p0, Lcom/shabakaty/downloader/bx0;

    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 6
    invoke-static {}, Lcom/shabakaty/downloader/vy0;->b()Lcom/shabakaty/downloader/az0;

    move-result-object p2

    .line 7
    iget-object v2, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->id:Ljava/lang/String;

    .line 8
    iput-object p0, v0, Lcom/shabakaty/downloader/yw0;->u:Ljava/lang/Object;

    iput-object p1, v0, Lcom/shabakaty/downloader/yw0;->v:Ljava/lang/Object;

    iput v4, v0, Lcom/shabakaty/downloader/yw0;->y:I

    invoke-interface {p2, v2, v0}, Lcom/shabakaty/downloader/az0;->e(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto/16 :goto_6

    :cond_4
    :goto_1
    check-cast p2, Lcom/shabakaty/downloader/pw0;

    if-nez p2, :cond_5

    goto :goto_5

    .line 9
    :cond_5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/by0;

    .line 10
    iget-object p1, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->id:Ljava/lang/String;

    .line 11
    iput-object p0, v0, Lcom/shabakaty/downloader/yw0;->u:Ljava/lang/Object;

    iput-object p2, v0, Lcom/shabakaty/downloader/yw0;->v:Ljava/lang/Object;

    iput v3, v0, Lcom/shabakaty/downloader/yw0;->y:I

    .line 12
    iget-object v2, v2, Lcom/shabakaty/downloader/by0;->f:Lcom/shabakaty/downloader/qx0;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v3, Lcom/shabakaty/downloader/hu0;->b:Lcom/shabakaty/downloader/pe0;

    .line 14
    new-instance v4, Lcom/shabakaty/downloader/tx0;

    const/4 v5, 0x0

    invoke-direct {v4, v2, p1, v5}, Lcom/shabakaty/downloader/tx0;-><init>(Lcom/shabakaty/downloader/qx0;Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)V

    invoke-static {v3, v4, v0}, Lcom/shabakaty/downloader/nh3;->M(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    goto :goto_6

    :cond_6
    move-object v6, p1

    move-object p1, p0

    move-object p0, p2

    move-object p2, v6

    .line 15
    :goto_2
    check-cast p2, Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;

    .line 16
    invoke-static {}, Lcom/shabakaty/downloader/vy0;->c()Lcom/shabakaty/downloader/i44;

    move-result-object v0

    .line 17
    iget v1, p0, Lcom/shabakaty/downloader/pw0;->r:I

    .line 18
    iget-object v2, p0, Lcom/shabakaty/downloader/pw0;->x:Ljava/lang/String;

    .line 19
    invoke-interface {v0, v1, v2}, Lcom/shabakaty/downloader/i44;->j(ILjava/lang/String;)V

    if-nez p2, :cond_7

    goto :goto_4

    .line 20
    :cond_7
    iget-object p2, p2, Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;->subtitles:Ljava/util/List;

    if-nez p2, :cond_8

    goto :goto_4

    .line 21
    :cond_8
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/cinemana/data/db/downloads/SubtitleDb;

    .line 22
    invoke-static {}, Lcom/shabakaty/downloader/vy0;->c()Lcom/shabakaty/downloader/i44;

    move-result-object v1

    .line 23
    iget v2, v0, Lcom/shabakaty/cinemana/data/db/downloads/SubtitleDb;->downloadTaskId:I

    .line 24
    iget-object v0, v0, Lcom/shabakaty/cinemana/data/db/downloads/SubtitleDb;->file:Ljava/lang/String;

    .line 25
    invoke-interface {v1, v2, v0}, Lcom/shabakaty/downloader/i44;->j(ILjava/lang/String;)V

    goto :goto_3

    .line 26
    :cond_9
    :goto_4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/by0;

    .line 27
    iget-object p0, p0, Lcom/shabakaty/downloader/pw0;->s:Ljava/lang/String;

    .line 28
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/by0;->l(Ljava/lang/String;)Lcom/shabakaty/downloader/e92;

    .line 29
    :goto_5
    sget-object v1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_6
    return-object v1
.end method

.method public static final i2(Lcom/shabakaty/downloader/bx0;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v0, p2, Lcom/shabakaty/downloader/cx0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/cx0;

    iget v1, v0, Lcom/shabakaty/downloader/cx0;->y:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/cx0;->y:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/cx0;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/cx0;-><init>(Lcom/shabakaty/downloader/bx0;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p2, v0, Lcom/shabakaty/downloader/cx0;->w:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 3
    iget v2, v0, Lcom/shabakaty/downloader/cx0;->y:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lcom/shabakaty/downloader/cx0;->v:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    iget-object p0, v0, Lcom/shabakaty/downloader/cx0;->u:Ljava/lang/Object;

    check-cast p0, Lcom/shabakaty/downloader/bx0;

    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_2
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/by0;

    iput-object p0, v0, Lcom/shabakaty/downloader/cx0;->u:Ljava/lang/Object;

    iput-object p1, v0, Lcom/shabakaty/downloader/cx0;->v:Ljava/lang/Object;

    iput v4, v0, Lcom/shabakaty/downloader/cx0;->y:I

    .line 7
    iget-object p2, p2, Lcom/shabakaty/downloader/by0;->f:Lcom/shabakaty/downloader/qx0;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v2, Lcom/shabakaty/downloader/hu0;->b:Lcom/shabakaty/downloader/pe0;

    .line 9
    new-instance v4, Lcom/shabakaty/downloader/sx0;

    invoke-direct {v4, p2, v3}, Lcom/shabakaty/downloader/sx0;-><init>(Lcom/shabakaty/downloader/qx0;Lcom/shabakaty/downloader/ud0;)V

    invoke-static {v2, v4, v0}, Lcom/shabakaty/downloader/nh3;->M(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    goto :goto_4

    .line 10
    :cond_3
    :goto_1
    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_4

    goto :goto_3

    .line 11
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, Lcom/shabakaty/downloader/gz0;

    const/4 v5, 0x0

    .line 14
    iget-object v6, v0, Lcom/shabakaty/downloader/gz0;->s:Ljava/lang/String;

    const-string v1, "text"

    .line 15
    invoke-static {v6, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    .line 16
    new-instance v7, Lcom/shabakaty/downloader/dx0;

    invoke-direct {v7, p0, p1, v0}, Lcom/shabakaty/downloader/dx0;-><init>(Lcom/shabakaty/downloader/bx0;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/gz0;)V

    .line 17
    new-instance v0, Lcom/shabakaty/downloader/pl4;

    const-string v8, ""

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/shabakaty/downloader/pl4;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/shabakaty/downloader/rm1;Ljava/lang/String;Z)V

    .line 18
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    :goto_3
    if-nez v3, :cond_6

    .line 19
    sget-object v3, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    :cond_6
    invoke-static {v3}, Lcom/shabakaty/downloader/m50;->z0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    :goto_4
    return-object v1
.end method

.method public static final j2(Lcom/shabakaty/downloader/bx0;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v0, p2, Lcom/shabakaty/downloader/ex0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/ex0;

    iget v1, v0, Lcom/shabakaty/downloader/ex0;->z:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/ex0;->z:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/ex0;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/ex0;-><init>(Lcom/shabakaty/downloader/bx0;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p2, v0, Lcom/shabakaty/downloader/ex0;->x:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 3
    iget v2, v0, Lcom/shabakaty/downloader/ex0;->z:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_2
    :goto_1
    iget-object p0, v0, Lcom/shabakaty/downloader/ex0;->w:Ljava/lang/Object;

    check-cast p0, Lcom/shabakaty/downloader/pw0;

    iget-object p1, v0, Lcom/shabakaty/downloader/ex0;->v:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    iget-object v0, v0, Lcom/shabakaty/downloader/ex0;->u:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/bx0;

    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget-object p0, v0, Lcom/shabakaty/downloader/ex0;->v:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    iget-object p0, v0, Lcom/shabakaty/downloader/ex0;->u:Ljava/lang/Object;

    check-cast p0, Lcom/shabakaty/downloader/bx0;

    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 6
    invoke-static {}, Lcom/shabakaty/downloader/vy0;->b()Lcom/shabakaty/downloader/az0;

    move-result-object p2

    .line 7
    iget-object v2, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->id:Ljava/lang/String;

    .line 8
    iput-object p0, v0, Lcom/shabakaty/downloader/ex0;->u:Ljava/lang/Object;

    iput-object p1, v0, Lcom/shabakaty/downloader/ex0;->v:Ljava/lang/Object;

    iput v5, v0, Lcom/shabakaty/downloader/ex0;->z:I

    invoke-interface {p2, v2, v0}, Lcom/shabakaty/downloader/az0;->e(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    goto :goto_4

    :cond_5
    :goto_2
    check-cast p2, Lcom/shabakaty/downloader/pw0;

    if-nez p2, :cond_6

    move-object v0, p0

    move-object p0, v6

    goto :goto_3

    .line 9
    :cond_6
    invoke-virtual {p2}, Lcom/shabakaty/downloader/pw0;->d()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 10
    sget-object v2, Lcom/shabakaty/downloader/hu0;->a:Lcom/shabakaty/downloader/pe0;

    .line 11
    sget-object v2, Lcom/shabakaty/downloader/wl2;->a:Lcom/shabakaty/downloader/vl2;

    .line 12
    new-instance v3, Lcom/shabakaty/downloader/gx0;

    invoke-direct {v3, p0, p1, v6}, Lcom/shabakaty/downloader/gx0;-><init>(Lcom/shabakaty/downloader/bx0;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/ud0;)V

    iput-object p0, v0, Lcom/shabakaty/downloader/ex0;->u:Ljava/lang/Object;

    iput-object p1, v0, Lcom/shabakaty/downloader/ex0;->v:Ljava/lang/Object;

    iput-object p2, v0, Lcom/shabakaty/downloader/ex0;->w:Ljava/lang/Object;

    iput v4, v0, Lcom/shabakaty/downloader/ex0;->z:I

    invoke-static {v2, v3, v0}, Lcom/shabakaty/downloader/nh3;->M(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_8

    goto :goto_4

    .line 13
    :cond_7
    iput-object p0, v0, Lcom/shabakaty/downloader/ex0;->u:Ljava/lang/Object;

    iput-object p1, v0, Lcom/shabakaty/downloader/ex0;->v:Ljava/lang/Object;

    iput-object p2, v0, Lcom/shabakaty/downloader/ex0;->w:Ljava/lang/Object;

    iput v3, v0, Lcom/shabakaty/downloader/ex0;->z:I

    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/bx0;->m2(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_8

    goto :goto_4

    :cond_8
    move-object v0, p0

    move-object p0, p2

    :goto_3
    if-nez p0, :cond_9

    .line 14
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string p2, "requireContext()"

    invoke-static {p0, p2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1, v6, v6, p0}, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->b(Ljava/util/List;Ljava/util/List;Landroid/content/Context;)Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object p0

    .line 16
    invoke-static {}, Lcom/shabakaty/downloader/vy0;->c()Lcom/shabakaty/downloader/i44;

    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->url:Ljava/lang/String;

    .line 18
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->c()Ljava/lang/String;

    move-result-object v3

    .line 19
    iget-object v4, p0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->imgThumbObjUrl:Ljava/lang/String;

    const/4 v5, 0x0

    .line 20
    iget-object v6, p0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 21
    new-instance v7, Lcom/shabakaty/downloader/ax0;

    invoke-direct {v7, v0, p0}, Lcom/shabakaty/downloader/ax0;-><init>(Lcom/shabakaty/downloader/bx0;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V

    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lcom/shabakaty/downloader/i44$a;->a(Lcom/shabakaty/downloader/i44;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/tm1;ILjava/lang/Object;)V

    .line 22
    :cond_9
    sget-object v1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_4
    return-object v1
.end method

.method public static final k2(Lcom/shabakaty/downloader/bx0;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v0, p2, Lcom/shabakaty/downloader/ix0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/ix0;

    iget v1, v0, Lcom/shabakaty/downloader/ix0;->y:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/ix0;->y:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/ix0;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/ix0;-><init>(Lcom/shabakaty/downloader/bx0;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p2, v0, Lcom/shabakaty/downloader/ix0;->w:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 3
    iget v2, v0, Lcom/shabakaty/downloader/ix0;->y:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/shabakaty/downloader/ix0;->v:Ljava/lang/Object;

    check-cast p0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    iget-object p1, v0, Lcom/shabakaty/downloader/ix0;->u:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/bx0;

    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_2

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_2
    iget-object p0, v0, Lcom/shabakaty/downloader/ix0;->v:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    iget-object p0, v0, Lcom/shabakaty/downloader/ix0;->u:Ljava/lang/Object;

    check-cast p0, Lcom/shabakaty/downloader/bx0;

    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/by0;

    iput-object p0, v0, Lcom/shabakaty/downloader/ix0;->u:Ljava/lang/Object;

    iput-object p1, v0, Lcom/shabakaty/downloader/ix0;->v:Ljava/lang/Object;

    iput v4, v0, Lcom/shabakaty/downloader/ix0;->y:I

    .line 7
    iget-object p2, p2, Lcom/shabakaty/downloader/by0;->f:Lcom/shabakaty/downloader/qx0;

    invoke-virtual {p2, p1, v0}, Lcom/shabakaty/downloader/qx0;->e(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_3

    .line 8
    :cond_4
    :goto_1
    check-cast p2, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 9
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/by0;

    iput-object p0, v0, Lcom/shabakaty/downloader/ix0;->u:Ljava/lang/Object;

    iput-object p2, v0, Lcom/shabakaty/downloader/ix0;->v:Ljava/lang/Object;

    iput v3, v0, Lcom/shabakaty/downloader/ix0;->y:I

    .line 10
    iget-object v2, v2, Lcom/shabakaty/downloader/by0;->f:Lcom/shabakaty/downloader/qx0;

    invoke-virtual {v2, p1, v0}, Lcom/shabakaty/downloader/qx0;->d(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto :goto_3

    :cond_5
    move-object v5, p1

    move-object p1, p0

    move-object p0, p2

    move-object p2, v5

    .line 11
    :goto_2
    check-cast p2, Ljava/util/List;

    const-string v0, "<this>"

    .line 12
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14
    sput-object p2, Lcom/shabakaty/downloader/ol0;->a:Ljava/util/List;

    const-string p2, "VideoModelArg"

    .line 15
    invoke-virtual {v0, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 16
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 17
    sget-object v1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_3
    return-object v1
.end method


# virtual methods
.method public D0(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/views/DownloadButton;Lcom/facebook/drawee/view/SimpleDraweeView;)V
    .locals 10

    const-string v0, "cinemanaDownloadItem"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadButton"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "drawee"

    invoke-static {p3, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const v0, 0x7f1200d1

    const-string v1, "getString(R.string.delete_txt)"

    const-string v2, "text"

    .line 2
    invoke-static {p0, v0, v1, v2}, Lcom/shabakaty/downloader/fx0;->a(Lcom/shabakaty/downloader/bx0;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    .line 3
    new-instance v6, Lcom/shabakaty/downloader/vw0;

    invoke-direct {v6, p0, p1}, Lcom/shabakaty/downloader/vw0;-><init>(Lcom/shabakaty/downloader/bx0;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)V

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/pl4;

    const/4 v4, 0x0

    const-string v7, ""

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/shabakaty/downloader/pl4;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/shabakaty/downloader/rm1;Ljava/lang/String;Z)V

    .line 5
    invoke-static {v0, p2}, Lcom/shabakaty/downloader/tp6;->b(Lcom/shabakaty/downloader/gn;Ljava/util/List;)V

    .line 6
    iget v0, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->collectionID:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const v0, 0x7f12001d

    const-string v3, "getString(R.string.add_to_collection_txt)"

    .line 7
    invoke-static {p0, v0, v3, v2}, Lcom/shabakaty/downloader/fx0;->a(Lcom/shabakaty/downloader/bx0;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    .line 8
    new-instance v7, Lcom/shabakaty/downloader/tw0;

    invoke-direct {v7, p0, p1}, Lcom/shabakaty/downloader/tw0;-><init>(Lcom/shabakaty/downloader/bx0;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)V

    .line 9
    new-instance v0, Lcom/shabakaty/downloader/pl4;

    const/4 v5, 0x0

    const-string v8, ""

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/shabakaty/downloader/pl4;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/shabakaty/downloader/rm1;Ljava/lang/String;Z)V

    .line 10
    invoke-static {v0, p2, v1}, Lcom/shabakaty/downloader/tp6;->c(Lcom/shabakaty/downloader/gn;Ljava/util/List;I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f12020d

    const-string v3, "getString(R.string.remove_from_collection_txt)"

    .line 11
    invoke-static {p0, v0, v3, v2}, Lcom/shabakaty/downloader/fx0;->a(Lcom/shabakaty/downloader/bx0;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    .line 12
    new-instance v7, Lcom/shabakaty/downloader/ww0;

    invoke-direct {v7, p0, p1}, Lcom/shabakaty/downloader/ww0;-><init>(Lcom/shabakaty/downloader/bx0;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)V

    .line 13
    new-instance v0, Lcom/shabakaty/downloader/pl4;

    const/4 v5, 0x0

    const-string v8, ""

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/shabakaty/downloader/pl4;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/shabakaty/downloader/rm1;Ljava/lang/String;Z)V

    .line 14
    invoke-static {v0, p2, v1}, Lcom/shabakaty/downloader/tp6;->c(Lcom/shabakaty/downloader/gn;Ljava/util/List;I)V

    .line 15
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lcom/shabakaty/downloader/ji1;

    move-result-object v0

    instance-of v0, v0, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;

    if-eqz v0, :cond_1

    const/4 v4, 0x0

    const v0, 0x7f1202d5

    const-string v3, "getString(R.string.view_details_txt)"

    .line 16
    invoke-static {p0, v0, v3, v2}, Lcom/shabakaty/downloader/fx0;->a(Lcom/shabakaty/downloader/bx0;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    .line 17
    new-instance v6, Lcom/shabakaty/downloader/xw0;

    invoke-direct {v6, p0, p3, p1}, Lcom/shabakaty/downloader/xw0;-><init>(Lcom/shabakaty/downloader/bx0;Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)V

    .line 18
    new-instance p3, Lcom/shabakaty/downloader/pl4;

    const-string v7, ""

    move-object v3, p3

    invoke-direct/range {v3 .. v8}, Lcom/shabakaty/downloader/pl4;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/shabakaty/downloader/rm1;Ljava/lang/String;Z)V

    .line 19
    invoke-static {p3, p2, v1}, Lcom/shabakaty/downloader/tp6;->c(Lcom/shabakaty/downloader/gn;Ljava/util/List;I)V

    .line 20
    :cond_1
    iget-object p3, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->title:Ljava/lang/String;

    .line 21
    iget-object v0, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->kind:Ljava/lang/String;

    const-string v1, "2"

    .line 22
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x20

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 24
    :cond_2
    invoke-static {p3}, Lcom/shabakaty/downloader/q00;->ca1CleanPlayerTitle130(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance p1, Lcom/shabakaty/downloader/on;

    invoke-direct {p1}, Lcom/shabakaty/downloader/on;-><init>()V

    const-string v0, "items"

    .line 25
    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    .line 26
    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/q;

    move-result-object v0

    const-string v1, "childFragmentManager"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "fragmentManager"

    .line 28
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p3, p1, Lcom/shabakaty/downloader/on;->O:Ljava/lang/String;

    .line 30
    invoke-static {p2}, Lcom/shabakaty/downloader/m50;->z0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    .line 31
    iput-object p2, p1, Lcom/shabakaty/downloader/on;->N:Ljava/util/List;

    const-string p2, "listBottomSheet"

    .line 32
    invoke-virtual {p1, v0, p2}, Lcom/shabakaty/downloader/on;->c2(Landroidx/fragment/app/q;Ljava/lang/String;)V

    return-void
.end method

.method public E(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/views/DownloadButton;)V
    .locals 7

    const-string v0, "cinemanaDownloadItem"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadButton"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/wt2;->e(Lcom/shabakaty/downloader/rh2;)Lcom/shabakaty/downloader/se0;

    move-result-object v1

    new-instance v4, Lcom/shabakaty/downloader/bx0$d;

    const/4 p2, 0x0

    invoke-direct {v4, p0, p1, p2}, Lcom/shabakaty/downloader/bx0$d;-><init>(Lcom/shabakaty/downloader/bx0;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/ud0;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    return-void
.end method

.method public I1(Lcom/shabakaty/downloader/pw0;F)V
    .locals 0

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/by0;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/by0;->n(Lcom/shabakaty/downloader/pw0;)Lcom/shabakaty/downloader/e92;

    :goto_0
    return-void
.end method

.method public R1(Lcom/shabakaty/downloader/pw0;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/by0;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/by0;->n(Lcom/shabakaty/downloader/pw0;)Lcom/shabakaty/downloader/e92;

    :goto_0
    return-void
.end method

.method public U0(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)V
    .locals 7

    const-string v0, "cinemanaDownloadItem"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/wt2;->e(Lcom/shabakaty/downloader/rh2;)Lcom/shabakaty/downloader/se0;

    move-result-object v1

    new-instance v4, Lcom/shabakaty/downloader/bx0$c;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, v0}, Lcom/shabakaty/downloader/bx0$c;-><init>(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/bx0;Lcom/shabakaty/downloader/ud0;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    return-void
.end method

.method public Z1()Lcom/shabakaty/downloader/vj;
    .locals 0

    return-object p0
.end method

.method public d2()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/shabakaty/downloader/by0;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/shabakaty/downloader/by0;

    return-object v0
.end method

.method public e1(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/views/DownloadButton;)V
    .locals 1

    const-string v0, "cinemanaDownloadItem"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadButton"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/bx0;->l0(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/views/DownloadButton;)V

    return-void
.end method

.method public h0(Lcom/shabakaty/downloader/pw0;Ljava/lang/Throwable;)V
    .locals 0

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/by0;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/by0;->n(Lcom/shabakaty/downloader/pw0;)Lcom/shabakaty/downloader/e92;

    :goto_0
    return-void
.end method

.method public i1(Lcom/shabakaty/downloader/pw0;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/by0;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/by0;->n(Lcom/shabakaty/downloader/pw0;)Lcom/shabakaty/downloader/e92;

    :goto_0
    return-void
.end method

.method public l0(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/views/DownloadButton;)V
    .locals 7

    const-string v0, "cinemanaDownloadItem"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadButton"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/wt2;->e(Lcom/shabakaty/downloader/rh2;)Lcom/shabakaty/downloader/se0;

    move-result-object v1

    new-instance v4, Lcom/shabakaty/downloader/bx0$e;

    const/4 p2, 0x0

    invoke-direct {v4, p0, p1, p2}, Lcom/shabakaty/downloader/bx0$e;-><init>(Lcom/shabakaty/downloader/bx0;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/ud0;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    return-void
.end method

.method public final l2(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/bn2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/bn2;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1201a9

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/bn2;->p(I)Lcom/shabakaty/downloader/bn2;

    const v1, 0x7f1201aa

    .line 2
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/bn2;->k(I)Lcom/shabakaty/downloader/bn2;

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/qh0;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/qh0;-><init>(Lcom/shabakaty/downloader/bx0;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)V

    const p1, 0x7f1202bc

    invoke-virtual {v0, p1, v1}, Lcom/shabakaty/downloader/bn2;->n(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shabakaty/downloader/bn2;

    move-result-object p1

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/sw0;->r:Lcom/shabakaty/downloader/sw0;

    const v1, 0x7f1202a6

    invoke-virtual {p1, v1, v0}, Lcom/shabakaty/downloader/bn2;->l(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shabakaty/downloader/bn2;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroidx/appcompat/app/b$a;->j()Landroidx/appcompat/app/b;

    move-result-object p1

    .line 6
    iput-object p1, p0, Lcom/shabakaty/downloader/bx0;->y:Landroidx/appcompat/app/b;

    return-void
.end method

.method public final m2(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/shabakaty/downloader/bx0$f;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/bx0$f;

    iget v1, v0, Lcom/shabakaty/downloader/bx0$f;->w:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/bx0$f;->w:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/bx0$f;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/bx0$f;-><init>(Lcom/shabakaty/downloader/bx0;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p2, v0, Lcom/shabakaty/downloader/bx0$f;->u:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/bx0$f;->w:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lcom/shabakaty/downloader/vy0;->b()Lcom/shabakaty/downloader/az0;

    move-result-object p2

    .line 5
    iget-object p1, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->id:Ljava/lang/String;

    .line 6
    iput v3, v0, Lcom/shabakaty/downloader/bx0$f;->w:I

    invoke-interface {p2, p1, v0}, Lcom/shabakaty/downloader/az0;->e(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lcom/shabakaty/downloader/pw0;

    if-nez p2, :cond_4

    goto :goto_2

    .line 7
    :cond_4
    invoke-static {}, Lcom/shabakaty/downloader/vy0;->c()Lcom/shabakaty/downloader/i44;

    move-result-object p1

    .line 8
    iget p2, p2, Lcom/shabakaty/downloader/pw0;->r:I

    .line 9
    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/i44;->i(I)V

    .line 10
    :goto_2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method

.method public o()V
    .locals 1

    const-string v0, "this"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    invoke-virtual {p0, p0}, Lcom/shabakaty/downloader/hj;->b2(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/by0;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/by0;->m()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shabakaty/downloader/hj;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/by0;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object p2, v0

    goto :goto_0

    :cond_0
    const-string v1, "COLLECTION_ARG"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/gz0;

    .line 4
    :goto_0
    iput-object p2, p1, Lcom/shabakaty/downloader/by0;->g:Lcom/shabakaty/downloader/gz0;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Landroidx/navigation/fragment/NavHostFragment;

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/by0;

    .line 7
    iget-object p2, p2, Lcom/shabakaty/downloader/by0;->g:Lcom/shabakaty/downloader/gz0;

    if-nez p2, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, p2, Lcom/shabakaty/downloader/gz0;->s:Ljava/lang/String;

    .line 9
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/hj;->f2(ZLjava/lang/String;)V

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 11
    check-cast p1, Lcom/shabakaty/downloader/ej1;

    iget-object p1, p1, Lcom/shabakaty/downloader/ej1;->N:Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    iget-object p2, p0, Lcom/shabakaty/downloader/bx0;->x:Lcom/shabakaty/downloader/kf2;

    invoke-interface {p2}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/dz0;

    .line 13
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    invoke-static {p2}, Lcom/shabakaty/cinemana/features/MkvUiRefresh;->register(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 14
    invoke-static {}, Lcom/shabakaty/downloader/vy0;->c()Lcom/shabakaty/downloader/i44;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lcom/shabakaty/downloader/rh2;

    move-result-object p2

    const-string v0, "viewLifecycleOwner"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0, p2}, Lcom/shabakaty/downloader/i44;->g(Lcom/shabakaty/downloader/gq1;Lcom/shabakaty/downloader/rh2;)V

    return-void
.end method

.method public q(I)V
    .locals 1

    const-string v0, "this"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/vj$a;->a(Lcom/shabakaty/downloader/vj;I)V

    return-void
.end method

.method public q0(Lcom/shabakaty/downloader/pw0;)V
    .locals 6

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/cl3;->e(Lcom/shabakaty/downloader/rh2;)Lcom/shabakaty/downloader/ih2;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/hu0;->b:Lcom/shabakaty/downloader/pe0;

    .line 3
    new-instance v3, Lcom/shabakaty/downloader/bx0$b;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, v2}, Lcom/shabakaty/downloader/bx0$b;-><init>(Lcom/shabakaty/downloader/bx0;Lcom/shabakaty/downloader/pw0;Lcom/shabakaty/downloader/ud0;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    return-void
.end method

.method public u0(Lcom/shabakaty/downloader/pw0;)V
    .locals 1

    const-string v0, "this"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public v0(Lcom/shabakaty/downloader/pw0;)V
    .locals 1

    const-string v0, "this"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
