.class public final Lcom/shabakaty/downloader/rx;
.super Lcom/shabakaty/downloader/cl2;
.source "CategoryDetailsViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/cl2<",
        "Lcom/shabakaty/downloader/vx;",
        ">;"
    }
.end annotation


# instance fields
.field public final h:Lcom/shabakaty/downloader/jx;

.field public final i:Lcom/shabakaty/downloader/mj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/mj<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            ">;>;"
        }
    .end annotation
.end field

.field public final j:Lcom/shabakaty/downloader/mj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/mj<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            ">;>;"
        }
    .end annotation
.end field

.field public k:Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:I

.field public o:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/ui/categories_fragment/SortingName;",
            ">;>;"
        }
    .end annotation
.end field

.field public final p:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/ui/categories_fragment/SortingAscendingDescending;",
            ">;>;"
        }
    .end annotation
.end field

.field public final q:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem$NewLanguageItem;",
            ">;>;"
        }
    .end annotation
.end field

.field public r:Ljava/lang/String;

.field public s:Lcom/shabakaty/cinemana/ui/categories_fragment/SortingName;

.field public t:I

.field public u:Lcom/shabakaty/cinemana/ui/categories_fragment/SortingAscendingDescending;

.field public v:I

.field public w:I

.field public x:I

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/jx;Lcom/shabakaty/downloader/ff3;Lcom/shabakaty/downloader/al2;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const-string v3, "categoriesUseCases"

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "prefsManager"

    move-object/from16 v4, p2

    invoke-static {v4, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "loginStateObserver"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {v0, v2}, Lcom/shabakaty/downloader/cl2;-><init>(Lcom/shabakaty/downloader/al2;)V

    .line 2
    iput-object v1, v0, Lcom/shabakaty/downloader/rx;->h:Lcom/shabakaty/downloader/jx;

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/mj;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/mj;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/shabakaty/downloader/rx;->i:Lcom/shabakaty/downloader/mj;

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/mj;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/mj;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/shabakaty/downloader/rx;->j:Lcom/shabakaty/downloader/mj;

    .line 5
    new-instance v1, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const v20, 0xffff

    invoke-direct/range {v3 .. v20}, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/shabakaty/downloader/rx;->k:Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;

    const-string v1, ""

    .line 6
    iput-object v1, v0, Lcom/shabakaty/downloader/rx;->l:Ljava/lang/String;

    .line 7
    iput-object v1, v0, Lcom/shabakaty/downloader/rx;->m:Ljava/lang/String;

    .line 8
    new-instance v1, Lcom/shabakaty/downloader/xv2;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/xv2;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/shabakaty/downloader/rx;->o:Lcom/shabakaty/downloader/xv2;

    .line 9
    new-instance v1, Lcom/shabakaty/downloader/xv2;

    sget-object v2, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/xv2;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/shabakaty/downloader/rx;->p:Lcom/shabakaty/downloader/xv2;

    .line 10
    new-instance v1, Lcom/shabakaty/downloader/xv2;

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/xv2;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/shabakaty/downloader/rx;->q:Lcom/shabakaty/downloader/xv2;

    const-string v1, "desc"

    .line 11
    iput-object v1, v0, Lcom/shabakaty/downloader/rx;->r:Ljava/lang/String;

    .line 12
    sget-object v1, Lcom/shabakaty/downloader/sx;->a:Lcom/shabakaty/cinemana/ui/categories_fragment/SortingName;

    .line 13
    iput-object v1, v0, Lcom/shabakaty/downloader/rx;->s:Lcom/shabakaty/cinemana/ui/categories_fragment/SortingName;

    .line 14
    sget-object v1, Lcom/shabakaty/downloader/sx;->b:Lcom/shabakaty/cinemana/ui/categories_fragment/SortingAscendingDescending;

    .line 15
    iput-object v1, v0, Lcom/shabakaty/downloader/rx;->u:Lcom/shabakaty/cinemana/ui/categories_fragment/SortingAscendingDescending;

    return-void
.end method


# virtual methods
.method public n(Lcom/shabakaty/usermanagement/utils/LoginState;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/rx;->s()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/rx;->q()V

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/rx;->r()V

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/rx;->p()V

    return-void
.end method

.method public final p()V
    .locals 13

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/hl3;->e(Lcom/shabakaty/downloader/o35;)Lcom/shabakaty/downloader/se0;

    move-result-object v0

    new-instance v3, Lcom/shabakaty/downloader/qx;

    const/4 v6, 0x0

    invoke-direct {v3, p0, v6}, Lcom/shabakaty/downloader/qx;-><init>(Lcom/shabakaty/downloader/rx;Lcom/shabakaty/downloader/ud0;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    .line 2
    invoke-static {p0}, Lcom/shabakaty/downloader/hl3;->e(Lcom/shabakaty/downloader/o35;)Lcom/shabakaty/downloader/se0;

    move-result-object v7

    new-instance v10, Lcom/shabakaty/downloader/px;

    invoke-direct {v10, p0, v6}, Lcom/shabakaty/downloader/px;-><init>(Lcom/shabakaty/downloader/rx;Lcom/shabakaty/downloader/ud0;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    return-void
.end method

.method public final q()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/rx;->y:Z

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/rx;->i:Lcom/shabakaty/downloader/mj;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/mj;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/zi2;->h(Lcom/shabakaty/downloader/mj;Ljava/lang/Object;)V

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/rx;->h:Lcom/shabakaty/downloader/jx;

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/rx;->k:Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;

    const-string v1, ""

    if-nez v0, :cond_0

    :goto_0
    move-object v3, v1

    goto :goto_1

    .line 5
    :cond_0
    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->B:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v0

    .line 6
    :goto_1
    iget-object v5, p0, Lcom/shabakaty/downloader/rx;->m:Ljava/lang/String;

    .line 7
    iget v6, p0, Lcom/shabakaty/downloader/rx;->x:I

    .line 8
    iget-object v7, p0, Lcom/shabakaty/downloader/rx;->r:Ljava/lang/String;

    const-string v4, "1"

    .line 9
    invoke-virtual/range {v2 .. v7}, Lcom/shabakaty/downloader/jx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    .line 10
    new-instance v1, Lcom/shabakaty/downloader/rx$a;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/rx$a;-><init>(Lcom/shabakaty/downloader/rx;)V

    .line 11
    new-instance v2, Lcom/shabakaty/downloader/rx$b;

    iget-object v3, p0, Lcom/shabakaty/downloader/rx;->i:Lcom/shabakaty/downloader/mj;

    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/rx$b;-><init>(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p0, v0, v1, v2}, Lcom/shabakaty/downloader/xk;->b(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/mu0;

    :cond_2
    return-void
.end method

.method public final r()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/rx;->z:Z

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/rx;->j:Lcom/shabakaty/downloader/mj;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/mj;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/zi2;->h(Lcom/shabakaty/downloader/mj;Ljava/lang/Object;)V

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/rx;->h:Lcom/shabakaty/downloader/jx;

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/rx;->k:Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;

    const-string v1, ""

    if-nez v0, :cond_0

    :goto_0
    move-object v3, v1

    goto :goto_1

    .line 5
    :cond_0
    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->B:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v0

    .line 6
    :goto_1
    iget-object v5, p0, Lcom/shabakaty/downloader/rx;->m:Ljava/lang/String;

    .line 7
    iget v6, p0, Lcom/shabakaty/downloader/rx;->w:I

    .line 8
    iget-object v7, p0, Lcom/shabakaty/downloader/rx;->r:Ljava/lang/String;

    const-string v4, "2"

    .line 9
    invoke-virtual/range {v2 .. v7}, Lcom/shabakaty/downloader/jx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    .line 10
    new-instance v1, Lcom/shabakaty/downloader/rx$c;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/rx$c;-><init>(Lcom/shabakaty/downloader/rx;)V

    .line 11
    new-instance v2, Lcom/shabakaty/downloader/rx$d;

    iget-object v3, p0, Lcom/shabakaty/downloader/rx;->j:Lcom/shabakaty/downloader/mj;

    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/rx$d;-><init>(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p0, v0, v1, v2}, Lcom/shabakaty/downloader/xk;->b(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/mu0;

    :cond_2
    return-void
.end method

.method public final s()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/rx;->z:Z

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/rx;->w:I

    .line 3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/rx;->y:Z

    .line 4
    iput v0, p0, Lcom/shabakaty/downloader/rx;->x:I

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/rx;->i:Lcom/shabakaty/downloader/mj;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/tj;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iput-object v1, v0, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/rx;->j:Lcom/shabakaty/downloader/mj;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/tj;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iput-object v1, v0, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    :goto_1
    return-void
.end method
