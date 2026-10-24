.class public final Lcom/shabakaty/downloader/ds0$b$a;
.super Lcom/shabakaty/downloader/af2;
.source "DeserializedMemberScope.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ds0$b;-><init>(Lcom/shabakaty/downloader/ds0;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Ljava/util/List<",
        "+",
        "Lcom/shabakaty/downloader/t64;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ds0$b;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ds0$b;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/ds0$b$a;->r:Lcom/shabakaty/downloader/ds0$b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ds0$b$a;->r:Lcom/shabakaty/downloader/ds0$b;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/ds0$b;->d:Lcom/shabakaty/downloader/d03;

    sget-object v1, Lcom/shabakaty/downloader/ds0$b;->o:[Lcom/shabakaty/downloader/jd2;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/z02;->i(Lcom/shabakaty/downloader/d03;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/ds0$b$a;->r:Lcom/shabakaty/downloader/ds0$b;

    .line 4
    iget-object v3, v1, Lcom/shabakaty/downloader/ds0$b;->n:Lcom/shabakaty/downloader/ds0;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/ds0;->o()Ljava/util/Set;

    move-result-object v3

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 7
    check-cast v5, Lcom/shabakaty/downloader/hw2;

    .line 8
    iget-object v6, v1, Lcom/shabakaty/downloader/ds0$b;->d:Lcom/shabakaty/downloader/d03;

    sget-object v7, Lcom/shabakaty/downloader/ds0$b;->o:[Lcom/shabakaty/downloader/jd2;

    aget-object v7, v7, v2

    invoke-static {v6, v7}, Lcom/shabakaty/downloader/z02;->i(Lcom/shabakaty/downloader/d03;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 9
    iget-object v7, v1, Lcom/shabakaty/downloader/ds0$b;->n:Lcom/shabakaty/downloader/ds0;

    .line 10
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/shabakaty/downloader/qm0;

    .line 12
    invoke-interface {v10}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v10

    invoke-static {v10, v5}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 14
    invoke-virtual {v7, v5, v8}, Lcom/shabakaty/downloader/ds0;->j(Lcom/shabakaty/downloader/hw2;Ljava/util/List;)V

    .line 15
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v8, v6, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v5

    .line 16
    invoke-static {v4, v5}, Lcom/shabakaty/downloader/k50;->R(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 17
    :cond_2
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/m50;->n0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
