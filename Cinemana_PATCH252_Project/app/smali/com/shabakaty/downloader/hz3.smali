.class public final Lcom/shabakaty/downloader/hz3;
.super Lcom/shabakaty/downloader/xk;
.source "SearchViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/xk<",
        "Lcom/shabakaty/downloader/dz3;",
        ">;"
    }
.end annotation


# instance fields
.field public final A:Lcom/shabakaty/downloader/kf2;

.field public final B:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "[I>;"
        }
    .end annotation
.end field

.field public final f:Lcom/shabakaty/downloader/fz3;

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I

.field public k:Lcom/shabakaty/downloader/c90;

.field public final l:I

.field public final m:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public r:I

.field public final s:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final u:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final v:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final w:Lcom/shabakaty/downloader/mj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/mj<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;",
            ">;>;"
        }
    .end annotation
.end field

.field public final x:Lcom/shabakaty/downloader/mj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/mj<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            ">;>;"
        }
    .end annotation
.end field

.field public final y:Lcom/shabakaty/downloader/mj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/mj<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            ">;>;"
        }
    .end annotation
.end field

.field public final z:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/shabakaty/downloader/tj<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fz3;Lcom/shabakaty/downloader/ff3;)V
    .locals 5

    const-string v0, "searchUseCases"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefsManager"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/xk;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/hz3;->f:Lcom/shabakaty/downloader/fz3;

    .line 3
    new-instance p2, Lcom/shabakaty/downloader/c90;

    invoke-direct {p2}, Lcom/shabakaty/downloader/c90;-><init>()V

    iput-object p2, p0, Lcom/shabakaty/downloader/hz3;->k:Lcom/shabakaty/downloader/c90;

    .line 4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iput p2, p0, Lcom/shabakaty/downloader/hz3;->l:I

    .line 5
    new-instance v1, Lcom/shabakaty/downloader/xv2;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/xv2;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/shabakaty/downloader/hz3;->m:Lcom/shabakaty/downloader/xv2;

    .line 6
    new-instance v1, Lcom/shabakaty/downloader/xv2;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/shabakaty/downloader/xv2;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/shabakaty/downloader/hz3;->n:Lcom/shabakaty/downloader/xv2;

    .line 7
    new-instance v1, Lcom/shabakaty/downloader/xv2;

    invoke-direct {v1, v4}, Lcom/shabakaty/downloader/xv2;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/shabakaty/downloader/hz3;->o:Lcom/shabakaty/downloader/xv2;

    .line 8
    new-instance v1, Lcom/shabakaty/downloader/xv2;

    invoke-direct {v1, v4}, Lcom/shabakaty/downloader/xv2;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/shabakaty/downloader/hz3;->p:Lcom/shabakaty/downloader/xv2;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Integer;

    const v4, 0x7f120287

    .line 9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const v3, 0x7f1202a4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    const v0, 0x7f1202b8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v1, v3

    invoke-static {v1}, Lcom/shabakaty/downloader/iq6;->t([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/hz3;->q:Ljava/util/List;

    .line 10
    new-instance v0, Lcom/shabakaty/downloader/xv2;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/hz3;->n()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/xv2;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/hz3;->s:Lcom/shabakaty/downloader/xv2;

    .line 11
    new-instance v0, Lcom/shabakaty/downloader/xv2;

    const-string v1, "1900"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/xv2;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/hz3;->t:Lcom/shabakaty/downloader/xv2;

    .line 12
    new-instance v0, Lcom/shabakaty/downloader/xv2;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/shabakaty/downloader/xv2;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/hz3;->u:Lcom/shabakaty/downloader/xv2;

    .line 13
    new-instance p2, Lcom/shabakaty/downloader/xv2;

    invoke-direct {p2, v2}, Lcom/shabakaty/downloader/xv2;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/hz3;->v:Lcom/shabakaty/downloader/xv2;

    .line 14
    new-instance p2, Lcom/shabakaty/downloader/mj;

    const/4 v0, 0x0

    .line 15
    invoke-direct {p2, v0}, Lcom/shabakaty/downloader/mj;-><init>(Ljava/lang/Object;)V

    .line 16
    iput-object p2, p0, Lcom/shabakaty/downloader/hz3;->w:Lcom/shabakaty/downloader/mj;

    .line 17
    new-instance p2, Lcom/shabakaty/downloader/mj;

    .line 18
    invoke-direct {p2, v0}, Lcom/shabakaty/downloader/mj;-><init>(Ljava/lang/Object;)V

    .line 19
    iput-object p2, p0, Lcom/shabakaty/downloader/hz3;->x:Lcom/shabakaty/downloader/mj;

    .line 20
    new-instance p2, Lcom/shabakaty/downloader/mj;

    .line 21
    invoke-direct {p2, v0}, Lcom/shabakaty/downloader/mj;-><init>(Ljava/lang/Object;)V

    .line 22
    iput-object p2, p0, Lcom/shabakaty/downloader/hz3;->y:Lcom/shabakaty/downloader/mj;

    .line 23
    iget-object p1, p1, Lcom/shabakaty/downloader/fz3;->c:Lcom/shabakaty/downloader/vy3;

    invoke-interface {p1}, Lcom/shabakaty/downloader/vy3;->s()Landroidx/lifecycle/LiveData;

    move-result-object p1

    sget-object p2, Lcom/shabakaty/downloader/rf;->c:Lcom/shabakaty/downloader/rf;

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/yp4;->a(Landroidx/lifecycle/LiveData;Lcom/shabakaty/downloader/rn1;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/shabakaty/downloader/hz3;->z:Landroidx/lifecycle/LiveData;

    .line 25
    new-instance p1, Lcom/shabakaty/downloader/hz3$b;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/hz3$b;-><init>(Lcom/shabakaty/downloader/hz3;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/hz3;->A:Lcom/shabakaty/downloader/kf2;

    .line 26
    invoke-interface {p1}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/gr2;

    .line 27
    new-instance p2, Lcom/shabakaty/downloader/gr2;

    invoke-direct {p2}, Lcom/shabakaty/downloader/gr2;-><init>()V

    .line 28
    new-instance v0, Lcom/shabakaty/downloader/zp4;

    invoke-direct {v0, p2}, Lcom/shabakaty/downloader/zp4;-><init>(Lcom/shabakaty/downloader/gr2;)V

    invoke-virtual {p2, p1, v0}, Lcom/shabakaty/downloader/gr2;->a(Landroidx/lifecycle/LiveData;Lcom/shabakaty/downloader/r53;)V

    .line 29
    sget-object p1, Lcom/shabakaty/downloader/sf;->c:Lcom/shabakaty/downloader/sf;

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/yp4;->a(Landroidx/lifecycle/LiveData;Lcom/shabakaty/downloader/rn1;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/hz3;->B:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public static final l(Lcom/shabakaty/downloader/hz3;Lcom/shabakaty/downloader/mj;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/tj;

    if-nez p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 3
    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_1

    :goto_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    const/4 p1, 0x5

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/m50;->u0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p0

    :goto_1
    const/4 p1, 0x0

    if-eqz p0, :cond_3

    .line 4
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_4

    goto :goto_5

    .line 5
    :cond_4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 6
    iget-object v1, v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->rate:Ljava/lang/String;

    .line 7
    invoke-static {v1}, Lcom/shabakaty/downloader/vd5;->B(Ljava/lang/String;)I

    move-result v1

    add-int/2addr p1, v1

    goto :goto_4

    .line 8
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    div-int/2addr p1, p0

    :goto_5
    return p1
.end method

.method public static o(Lcom/shabakaty/downloader/hz3;Ljava/lang/String;Ljava/lang/Integer;I)V
    .locals 10

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/hz3;->v:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    const/4 v8, 0x0

    if-eqz p3, :cond_1

    move-object p2, v8

    .line 2
    :cond_1
    sget-object p3, Lcom/shabakaty/downloader/tj$a;->u:Lcom/shabakaty/downloader/tj$a;

    iget-object v0, p0, Lcom/shabakaty/downloader/hz3;->v:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    const/4 v9, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    invoke-static {p1}, Lcom/shabakaty/downloader/ne4;->D(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-ne v1, v0, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_f

    if-nez p2, :cond_4

    goto :goto_2

    .line 4
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, v0, :cond_5

    .line 5
    iget-boolean p3, p0, Lcom/shabakaty/downloader/hz3;->g:Z

    if-nez p3, :cond_6

    .line 6
    iget p3, p0, Lcom/shabakaty/downloader/hz3;->i:I

    add-int/2addr p3, v0

    iput p3, p0, Lcom/shabakaty/downloader/hz3;->i:I

    goto :goto_3

    .line 7
    :cond_5
    :goto_2
    iget-boolean p3, p0, Lcom/shabakaty/downloader/hz3;->h:Z

    if-nez p3, :cond_6

    .line 8
    iget p3, p0, Lcom/shabakaty/downloader/hz3;->j:I

    add-int/2addr p3, v0

    iput p3, p0, Lcom/shabakaty/downloader/hz3;->j:I

    :cond_6
    :goto_3
    const/16 p3, 0x2c

    if-nez p2, :cond_7

    move-object p2, v8

    goto/16 :goto_7

    .line 9
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 10
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v0, :cond_9

    iget-boolean p2, p0, Lcom/shabakaty/downloader/hz3;->g:Z

    if-nez p2, :cond_9

    .line 11
    iget-object p2, p0, Lcom/shabakaty/downloader/hz3;->x:Lcom/shabakaty/downloader/mj;

    .line 12
    invoke-static {p2}, Lcom/shabakaty/downloader/zi2;->e(Lcom/shabakaty/downloader/xv2;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 13
    iget-object p2, p0, Lcom/shabakaty/downloader/hz3;->x:Lcom/shabakaty/downloader/mj;

    .line 14
    invoke-static {p2, v8}, Lcom/shabakaty/downloader/zi2;->h(Lcom/shabakaty/downloader/mj;Ljava/lang/Object;)V

    .line 15
    iget-object v0, p0, Lcom/shabakaty/downloader/hz3;->f:Lcom/shabakaty/downloader/fz3;

    .line 16
    iget-object p2, p0, Lcom/shabakaty/downloader/hz3;->m:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    .line 17
    iget-object p2, p0, Lcom/shabakaty/downloader/hz3;->w:Lcom/shabakaty/downloader/mj;

    iget-object v1, p0, Lcom/shabakaty/downloader/hz3;->n:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {p2, v1}, Lcom/shabakaty/downloader/zi2;->b(Lcom/shabakaty/downloader/mj;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;

    if-nez p2, :cond_8

    move-object v4, v8

    goto :goto_4

    .line 18
    :cond_8
    iget-object p2, p2, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->B:Ljava/lang/String;

    move-object v4, p2

    .line 19
    :goto_4
    iget-object p2, p0, Lcom/shabakaty/downloader/hz3;->o:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Ljava/lang/Integer;

    .line 20
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/shabakaty/downloader/hz3;->t:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/hz3;->u:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 21
    iget v7, p0, Lcom/shabakaty/downloader/hz3;->i:I

    const-string v3, "movies"

    move-object v1, p1

    .line 22
    invoke-virtual/range {v0 .. v7}, Lcom/shabakaty/downloader/fz3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)Lcom/shabakaty/downloader/f74;

    move-result-object p2

    .line 23
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/xk;->k(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object p2

    new-instance v0, Lcom/shabakaty/downloader/nz3;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/nz3;-><init>(Lcom/shabakaty/downloader/hz3;)V

    new-instance v1, Lcom/shabakaty/downloader/oz3;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/oz3;-><init>(Lcom/shabakaty/downloader/hz3;)V

    invoke-virtual {p0, p2, v0, v1}, Lcom/shabakaty/downloader/xk;->a(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/mu0;

    move-result-object p2

    .line 24
    iget-object v0, p0, Lcom/shabakaty/downloader/hz3;->k:Lcom/shabakaty/downloader/c90;

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/tp6;->a(Lcom/shabakaty/downloader/mu0;Lcom/shabakaty/downloader/c90;)Lcom/shabakaty/downloader/mu0;

    goto/16 :goto_6

    .line 25
    :cond_9
    iget-boolean p2, p0, Lcom/shabakaty/downloader/hz3;->h:Z

    if-nez p2, :cond_b

    .line 26
    iget-object p2, p0, Lcom/shabakaty/downloader/hz3;->x:Lcom/shabakaty/downloader/mj;

    .line 27
    invoke-static {p2}, Lcom/shabakaty/downloader/zi2;->e(Lcom/shabakaty/downloader/xv2;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 28
    iget-object p2, p0, Lcom/shabakaty/downloader/hz3;->y:Lcom/shabakaty/downloader/mj;

    .line 29
    invoke-static {p2, v8}, Lcom/shabakaty/downloader/zi2;->h(Lcom/shabakaty/downloader/mj;Ljava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lcom/shabakaty/downloader/hz3;->f:Lcom/shabakaty/downloader/fz3;

    .line 31
    iget-object p2, p0, Lcom/shabakaty/downloader/hz3;->m:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    .line 32
    iget-object p2, p0, Lcom/shabakaty/downloader/hz3;->w:Lcom/shabakaty/downloader/mj;

    iget-object v1, p0, Lcom/shabakaty/downloader/hz3;->n:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {p2, v1}, Lcom/shabakaty/downloader/zi2;->b(Lcom/shabakaty/downloader/mj;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;

    if-nez p2, :cond_a

    move-object v4, v8

    goto :goto_5

    .line 33
    :cond_a
    iget-object p2, p2, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->B:Ljava/lang/String;

    move-object v4, p2

    .line 34
    :goto_5
    iget-object p2, p0, Lcom/shabakaty/downloader/hz3;->o:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Ljava/lang/Integer;

    .line 35
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/shabakaty/downloader/hz3;->t:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/hz3;->u:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 36
    iget v7, p0, Lcom/shabakaty/downloader/hz3;->j:I

    const-string v3, "series"

    move-object v1, p1

    .line 37
    invoke-virtual/range {v0 .. v7}, Lcom/shabakaty/downloader/fz3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)Lcom/shabakaty/downloader/f74;

    move-result-object p2

    .line 38
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/xk;->k(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object p2

    new-instance v0, Lcom/shabakaty/downloader/pz3;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/pz3;-><init>(Lcom/shabakaty/downloader/hz3;)V

    new-instance v1, Lcom/shabakaty/downloader/qz3;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/qz3;-><init>(Lcom/shabakaty/downloader/hz3;)V

    invoke-virtual {p0, p2, v0, v1}, Lcom/shabakaty/downloader/xk;->a(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/mu0;

    move-result-object p2

    .line 39
    iget-object v0, p0, Lcom/shabakaty/downloader/hz3;->k:Lcom/shabakaty/downloader/c90;

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/tp6;->a(Lcom/shabakaty/downloader/mu0;Lcom/shabakaty/downloader/c90;)Lcom/shabakaty/downloader/mu0;

    .line 40
    :cond_b
    :goto_6
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_7
    if-nez p2, :cond_14

    .line 41
    iput-boolean v9, p0, Lcom/shabakaty/downloader/hz3;->g:Z

    .line 42
    iput-boolean v9, p0, Lcom/shabakaty/downloader/hz3;->h:Z

    .line 43
    iput v9, p0, Lcom/shabakaty/downloader/hz3;->i:I

    .line 44
    iput v9, p0, Lcom/shabakaty/downloader/hz3;->j:I

    .line 45
    iget-object p2, p0, Lcom/shabakaty/downloader/hz3;->k:Lcom/shabakaty/downloader/c90;

    .line 46
    iget-boolean p2, p2, Lcom/shabakaty/downloader/c90;->s:Z

    if-eqz p2, :cond_c

    .line 47
    new-instance p2, Lcom/shabakaty/downloader/c90;

    invoke-direct {p2}, Lcom/shabakaty/downloader/c90;-><init>()V

    iput-object p2, p0, Lcom/shabakaty/downloader/hz3;->k:Lcom/shabakaty/downloader/c90;

    .line 48
    :cond_c
    iget-object p2, p0, Lcom/shabakaty/downloader/hz3;->y:Lcom/shabakaty/downloader/mj;

    .line 49
    invoke-static {p2, v8}, Lcom/shabakaty/downloader/zi2;->h(Lcom/shabakaty/downloader/mj;Ljava/lang/Object;)V

    .line 50
    iget-object p2, p0, Lcom/shabakaty/downloader/hz3;->x:Lcom/shabakaty/downloader/mj;

    .line 51
    invoke-static {p2, v8}, Lcom/shabakaty/downloader/zi2;->h(Lcom/shabakaty/downloader/mj;Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lcom/shabakaty/downloader/hz3;->f:Lcom/shabakaty/downloader/fz3;

    .line 53
    iget-object p2, p0, Lcom/shabakaty/downloader/hz3;->m:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    .line 54
    iget-object p2, p0, Lcom/shabakaty/downloader/hz3;->w:Lcom/shabakaty/downloader/mj;

    iget-object v1, p0, Lcom/shabakaty/downloader/hz3;->n:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {p2, v1}, Lcom/shabakaty/downloader/zi2;->b(Lcom/shabakaty/downloader/mj;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;

    if-nez p2, :cond_d

    move-object v4, v8

    goto :goto_8

    .line 55
    :cond_d
    iget-object p2, p2, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->B:Ljava/lang/String;

    move-object v4, p2

    .line 56
    :goto_8
    iget-object p2, p0, Lcom/shabakaty/downloader/hz3;->o:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Ljava/lang/Integer;

    .line 57
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/shabakaty/downloader/hz3;->t:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/hz3;->u:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v3, "movies"

    move-object v1, p1

    .line 58
    invoke-virtual/range {v0 .. v7}, Lcom/shabakaty/downloader/fz3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)Lcom/shabakaty/downloader/f74;

    move-result-object p2

    .line 59
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/xk;->k(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object p2

    .line 60
    new-instance v0, Lcom/shabakaty/downloader/jz3;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/jz3;-><init>(Lcom/shabakaty/downloader/hz3;)V

    new-instance v1, Lcom/shabakaty/downloader/kz3;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/kz3;-><init>(Lcom/shabakaty/downloader/hz3;)V

    invoke-virtual {p0, p2, v0, v1}, Lcom/shabakaty/downloader/xk;->a(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/mu0;

    move-result-object p2

    .line 61
    iget-object v0, p0, Lcom/shabakaty/downloader/hz3;->k:Lcom/shabakaty/downloader/c90;

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/tp6;->a(Lcom/shabakaty/downloader/mu0;Lcom/shabakaty/downloader/c90;)Lcom/shabakaty/downloader/mu0;

    .line 62
    iget-object v0, p0, Lcom/shabakaty/downloader/hz3;->f:Lcom/shabakaty/downloader/fz3;

    .line 63
    iget-object p2, p0, Lcom/shabakaty/downloader/hz3;->m:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    .line 64
    iget-object p2, p0, Lcom/shabakaty/downloader/hz3;->w:Lcom/shabakaty/downloader/mj;

    iget-object v1, p0, Lcom/shabakaty/downloader/hz3;->n:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {p2, v1}, Lcom/shabakaty/downloader/zi2;->b(Lcom/shabakaty/downloader/mj;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;

    if-nez p2, :cond_e

    move-object v4, v8

    goto :goto_9

    .line 65
    :cond_e
    iget-object p2, p2, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->B:Ljava/lang/String;

    move-object v4, p2

    .line 66
    :goto_9
    iget-object p2, p0, Lcom/shabakaty/downloader/hz3;->o:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Ljava/lang/Integer;

    .line 67
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/shabakaty/downloader/hz3;->t:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/shabakaty/downloader/hz3;->u:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {p3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v3, "series"

    move-object v1, p1

    .line 68
    invoke-virtual/range {v0 .. v7}, Lcom/shabakaty/downloader/fz3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    .line 69
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/xk;->k(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    .line 70
    new-instance p2, Lcom/shabakaty/downloader/lz3;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/lz3;-><init>(Lcom/shabakaty/downloader/hz3;)V

    new-instance p3, Lcom/shabakaty/downloader/mz3;

    invoke-direct {p3, p0}, Lcom/shabakaty/downloader/mz3;-><init>(Lcom/shabakaty/downloader/hz3;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/shabakaty/downloader/xk;->a(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/mu0;

    move-result-object p1

    .line 71
    iget-object p0, p0, Lcom/shabakaty/downloader/hz3;->k:Lcom/shabakaty/downloader/c90;

    invoke-static {p1, p0}, Lcom/shabakaty/downloader/tp6;->a(Lcom/shabakaty/downloader/mu0;Lcom/shabakaty/downloader/c90;)Lcom/shabakaty/downloader/mu0;

    goto :goto_e

    .line 72
    :cond_f
    iget-object p1, p0, Lcom/shabakaty/downloader/hz3;->x:Lcom/shabakaty/downloader/mj;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/tj;

    if-nez p1, :cond_10

    goto :goto_a

    .line 73
    :cond_10
    iput-object v8, p1, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 74
    :goto_a
    iget-object p1, p0, Lcom/shabakaty/downloader/hz3;->x:Lcom/shabakaty/downloader/mj;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/tj;

    if-nez p1, :cond_11

    goto :goto_b

    .line 75
    :cond_11
    iput-object p3, p1, Lcom/shabakaty/downloader/tj;->a:Lcom/shabakaty/downloader/tj$a;

    .line 76
    :goto_b
    iget-object p1, p0, Lcom/shabakaty/downloader/hz3;->x:Lcom/shabakaty/downloader/mj;

    invoke-static {p1}, Lcom/shabakaty/downloader/zi2;->f(Lcom/shabakaty/downloader/xv2;)V

    .line 77
    iget-object p1, p0, Lcom/shabakaty/downloader/hz3;->y:Lcom/shabakaty/downloader/mj;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/tj;

    if-nez p1, :cond_12

    goto :goto_c

    .line 78
    :cond_12
    iput-object v8, p1, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 79
    :goto_c
    iget-object p1, p0, Lcom/shabakaty/downloader/hz3;->y:Lcom/shabakaty/downloader/mj;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/tj;

    if-nez p1, :cond_13

    goto :goto_d

    .line 80
    :cond_13
    iput-object p3, p1, Lcom/shabakaty/downloader/tj;->a:Lcom/shabakaty/downloader/tj$a;

    .line 81
    :goto_d
    iget-object p0, p0, Lcom/shabakaty/downloader/hz3;->y:Lcom/shabakaty/downloader/mj;

    invoke-static {p0}, Lcom/shabakaty/downloader/zi2;->f(Lcom/shabakaty/downloader/xv2;)V

    :cond_14
    :goto_e
    return-void
.end method


# virtual methods
.method public final m()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hz3;->w:Lcom/shabakaty/downloader/mj;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/mj;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/hz3;->f:Lcom/shabakaty/downloader/fz3;

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/fz3;->d:Lcom/shabakaty/downloader/n24;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/n24;->i()Z

    move-result v1

    .line 4
    iget-object v2, v0, Lcom/shabakaty/downloader/fz3;->a:Lcom/shabakaty/downloader/k9;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4, v3}, Lcom/shabakaty/downloader/k9$a;->a(Lcom/shabakaty/downloader/k9;Ljava/lang/String;ILjava/lang/Object;)Lcom/shabakaty/downloader/f74;

    move-result-object v2

    .line 5
    new-instance v3, Lcom/shabakaty/downloader/ix;

    invoke-direct {v3, v0, v1}, Lcom/shabakaty/downloader/ix;-><init>(Lcom/shabakaty/downloader/fz3;Z)V

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/f74;->i(Lcom/shabakaty/downloader/in1;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/shabakaty/downloader/uv3;->f(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object v2

    .line 7
    new-instance v3, Lcom/shabakaty/downloader/hz3$a;

    invoke-direct {v3, p0}, Lcom/shabakaty/downloader/hz3$a;-><init>(Lcom/shabakaty/downloader/hz3;)V

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/shabakaty/downloader/xk;->d(Lcom/shabakaty/downloader/xk;Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;ILjava/lang/Object;)Lcom/shabakaty/downloader/mu0;

    :cond_0
    return-void
.end method

.method public final n()[Ljava/lang/String;
    .locals 3

    const-string v0, "1900"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/iq6;->t([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x76d

    .line 2
    :goto_0
    iget v2, p0, Lcom/shabakaty/downloader/hz3;->l:I

    if-gt v1, v2, :cond_0

    .line 3
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 4
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
