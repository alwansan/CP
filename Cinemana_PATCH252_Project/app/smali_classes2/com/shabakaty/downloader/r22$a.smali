.class public final Lcom/shabakaty/downloader/r22$a;
.super Lcom/shabakaty/downloader/af2;
.source "IntegerLiteralTypeConstructor.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/r22;
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
        "Lcom/shabakaty/downloader/b74;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/r22;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/r22;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/r22$a;->r:Lcom/shabakaty/downloader/r22;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 10

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/shabakaty/downloader/b74;

    .line 1
    iget-object v2, p0, Lcom/shabakaty/downloader/r22$a;->r:Lcom/shabakaty/downloader/r22;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/r22;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object v2

    const-string v3, "Comparable"

    .line 2
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/zd2;->k(Ljava/lang/String;)Lcom/shabakaty/downloader/q20;

    move-result-object v2

    .line 3
    invoke-interface {v2}, Lcom/shabakaty/downloader/q20;->x()Lcom/shabakaty/downloader/b74;

    move-result-object v2

    const-string v3, "builtIns.comparable.defaultType"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/shabakaty/downloader/st4;

    sget-object v4, Lcom/shabakaty/downloader/xz4;->u:Lcom/shabakaty/downloader/xz4;

    iget-object v5, p0, Lcom/shabakaty/downloader/r22$a;->r:Lcom/shabakaty/downloader/r22;

    .line 4
    iget-object v5, v5, Lcom/shabakaty/downloader/r22;->d:Lcom/shabakaty/downloader/b74;

    .line 5
    invoke-direct {v3, v4, v5}, Lcom/shabakaty/downloader/st4;-><init>(Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/qe2;)V

    invoke-static {v3}, Lcom/shabakaty/downloader/iq6;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4}, Lcom/shabakaty/downloader/rm3;->q(Lcom/shabakaty/downloader/b74;Ljava/util/List;Lcom/shabakaty/downloader/d9;I)Lcom/shabakaty/downloader/b74;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/shabakaty/downloader/iq6;->t([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/shabakaty/downloader/r22$a;->r:Lcom/shabakaty/downloader/r22;

    .line 7
    iget-object v6, v2, Lcom/shabakaty/downloader/r22;->b:Lcom/shabakaty/downloader/nu2;

    const-string v7, "<this>"

    .line 8
    invoke-static {v6, v7}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/shabakaty/downloader/b74;

    .line 9
    invoke-interface {v6}, Lcom/shabakaty/downloader/nu2;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object v8

    invoke-virtual {v8}, Lcom/shabakaty/downloader/zd2;->o()Lcom/shabakaty/downloader/b74;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-interface {v6}, Lcom/shabakaty/downloader/nu2;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v9, Lcom/shabakaty/downloader/sf3;->C:Lcom/shabakaty/downloader/sf3;

    invoke-virtual {v8, v9}, Lcom/shabakaty/downloader/zd2;->u(Lcom/shabakaty/downloader/sf3;)Lcom/shabakaty/downloader/b74;

    move-result-object v8

    if-eqz v8, :cond_7

    aput-object v8, v7, v0

    .line 11
    invoke-interface {v6}, Lcom/shabakaty/downloader/nu2;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v9, Lcom/shabakaty/downloader/sf3;->y:Lcom/shabakaty/downloader/sf3;

    invoke-virtual {v8, v9}, Lcom/shabakaty/downloader/zd2;->u(Lcom/shabakaty/downloader/sf3;)Lcom/shabakaty/downloader/b74;

    move-result-object v8

    if-eqz v8, :cond_6

    aput-object v8, v7, v4

    const/4 v4, 0x3

    .line 13
    invoke-interface {v6}, Lcom/shabakaty/downloader/nu2;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v8, Lcom/shabakaty/downloader/sf3;->z:Lcom/shabakaty/downloader/sf3;

    invoke-virtual {v6, v8}, Lcom/shabakaty/downloader/zd2;->u(Lcom/shabakaty/downloader/sf3;)Lcom/shabakaty/downloader/b74;

    move-result-object v6

    if-eqz v6, :cond_5

    aput-object v6, v7, v4

    .line 15
    invoke-static {v7}, Lcom/shabakaty/downloader/iq6;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 16
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/qe2;

    .line 18
    iget-object v7, v2, Lcom/shabakaty/downloader/r22;->c:Ljava/util/Set;

    .line 19
    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v0

    if-nez v6, :cond_1

    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-nez v0, :cond_4

    .line 20
    iget-object v0, p0, Lcom/shabakaty/downloader/r22$a;->r:Lcom/shabakaty/downloader/r22;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/r22;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object v0

    const-string v2, "Number"

    .line 21
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/zd2;->k(Ljava/lang/String;)Lcom/shabakaty/downloader/q20;

    move-result-object v0

    .line 22
    invoke-interface {v0}, Lcom/shabakaty/downloader/q20;->x()Lcom/shabakaty/downloader/b74;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 23
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const/16 v0, 0x37

    .line 24
    invoke-static {v0}, Lcom/shabakaty/downloader/zd2;->a(I)V

    throw v5

    :cond_4
    :goto_1
    return-object v1

    :cond_5
    const/16 v0, 0x39

    .line 25
    invoke-static {v0}, Lcom/shabakaty/downloader/zd2;->a(I)V

    throw v5

    :cond_6
    const/16 v0, 0x38

    .line 26
    invoke-static {v0}, Lcom/shabakaty/downloader/zd2;->a(I)V

    throw v5

    :cond_7
    const/16 v0, 0x3b

    .line 27
    invoke-static {v0}, Lcom/shabakaty/downloader/zd2;->a(I)V

    throw v5
.end method
