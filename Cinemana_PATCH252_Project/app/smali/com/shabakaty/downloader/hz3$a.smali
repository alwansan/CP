.class public final Lcom/shabakaty/downloader/hz3$a;
.super Lcom/shabakaty/downloader/af2;
.source "SearchViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/hz3;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Ljava/util/List<",
        "Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;",
        ">;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/hz3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/hz3;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/hz3$a;->r:Lcom/shabakaty/downloader/hz3;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    const-string v2, "en"

    if-nez v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v3, v0, Lcom/shabakaty/downloader/hz3$a;->r:Lcom/shabakaty/downloader/hz3;

    .line 3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;

    .line 4
    invoke-virtual {v3}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/dz3;

    invoke-interface {v6}, Lcom/shabakaty/downloader/dz3;->T1()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5
    iget-object v6, v5, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->t:Ljava/lang/String;

    .line 6
    invoke-virtual {v5, v6}, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v6, v5, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->s:Ljava/lang/String;

    .line 8
    invoke-virtual {v5, v6}, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_2
    :goto_1
    iget-object v3, v0, Lcom/shabakaty/downloader/hz3$a;->r:Lcom/shabakaty/downloader/hz3;

    .line 10
    invoke-virtual {v3}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/dz3;

    invoke-interface {v3}, Lcom/shabakaty/downloader/dz3;->T1()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "All"

    goto :goto_2

    :cond_3
    const-string v2, "\u0627\u0644\u0643\u0644"

    :goto_2
    move-object/from16 v19, v2

    .line 11
    new-instance v2, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;

    move-object v3, v2

    const/4 v4, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x7bf8

    const-string v5, "\u0627\u0644\u0643\u0644"

    const-string v6, "All"

    const-string v14, "-1"

    invoke-direct/range {v3 .. v20}, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    .line 12
    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 13
    :goto_3
    iget-object v2, v0, Lcom/shabakaty/downloader/hz3$a;->r:Lcom/shabakaty/downloader/hz3;

    .line 14
    iget-object v2, v2, Lcom/shabakaty/downloader/hz3;->w:Lcom/shabakaty/downloader/mj;

    .line 15
    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/mj;->b(Ljava/lang/Object;)V

    .line 16
    sget-object v1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object v1
.end method
