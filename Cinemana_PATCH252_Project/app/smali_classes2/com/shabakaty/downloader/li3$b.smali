.class public final Lcom/shabakaty/downloader/li3$b;
.super Lcom/shabakaty/downloader/pp1$c;
.source "ProtoBuf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/li3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/pp1$c<",
        "Lcom/shabakaty/downloader/li3;",
        "Lcom/shabakaty/downloader/li3$b;",
        ">;"
    }
.end annotation


# instance fields
.field public u:I

.field public v:I

.field public w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/cj3;",
            ">;"
        }
    .end annotation
.end field

.field public x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1$c;-><init>()V

    const/4 v0, 0x6

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/li3$b;->v:I

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/li3$b;->w:Ljava/util/List;

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/li3$b;->x:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public build()Lcom/shabakaty/downloader/es2;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/li3$b;->m()Lcom/shabakaty/downloader/li3;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/li3;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/shabakaty/downloader/j0$a;->i(Lcom/shabakaty/downloader/es2;)Lcom/shabakaty/downloader/u97;

    move-result-object v0

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/li3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/li3$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/li3$b;->m()Lcom/shabakaty/downloader/li3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/li3$b;->o(Lcom/shabakaty/downloader/li3;)Lcom/shabakaty/downloader/li3$b;

    return-object v0
.end method

.method public bridge synthetic h(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/j0$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/li3$b;->n(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/li3$b;

    return-object p0
.end method

.method public j()Lcom/shabakaty/downloader/pp1$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/li3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/li3$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/li3$b;->m()Lcom/shabakaty/downloader/li3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/li3$b;->o(Lcom/shabakaty/downloader/li3;)Lcom/shabakaty/downloader/li3$b;

    return-object v0
.end method

.method public bridge synthetic k(Lcom/shabakaty/downloader/pp1;)Lcom/shabakaty/downloader/pp1$b;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/li3;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/li3$b;->o(Lcom/shabakaty/downloader/li3;)Lcom/shabakaty/downloader/li3$b;

    return-object p0
.end method

.method public m()Lcom/shabakaty/downloader/li3;
    .locals 4

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/li3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/li3;-><init>(Lcom/shabakaty/downloader/pp1$c;Lcom/shabakaty/downloader/md0;)V

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/li3$b;->u:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lcom/shabakaty/downloader/li3$b;->v:I

    .line 4
    iput v2, v0, Lcom/shabakaty/downloader/li3;->u:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/li3$b;->w:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/li3$b;->w:Ljava/util/List;

    .line 6
    iget v1, p0, Lcom/shabakaty/downloader/li3$b;->u:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/shabakaty/downloader/li3$b;->u:I

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/li3$b;->w:Ljava/util/List;

    .line 8
    iput-object v1, v0, Lcom/shabakaty/downloader/li3;->v:Ljava/util/List;

    .line 9
    iget v1, p0, Lcom/shabakaty/downloader/li3$b;->u:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 10
    iget-object v1, p0, Lcom/shabakaty/downloader/li3$b;->x:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/li3$b;->x:Ljava/util/List;

    .line 11
    iget v1, p0, Lcom/shabakaty/downloader/li3$b;->u:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/shabakaty/downloader/li3$b;->u:I

    .line 12
    :cond_2
    iget-object v1, p0, Lcom/shabakaty/downloader/li3$b;->x:Ljava/util/List;

    .line 13
    iput-object v1, v0, Lcom/shabakaty/downloader/li3;->w:Ljava/util/List;

    .line 14
    iput v3, v0, Lcom/shabakaty/downloader/li3;->t:I

    return-object v0
.end method

.method public n(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/li3$b;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/li3;->A:Lcom/shabakaty/downloader/na3;

    check-cast v1, Lcom/shabakaty/downloader/li3$a;

    invoke-virtual {v1, p1, p2}, Lcom/shabakaty/downloader/li3$a;->a(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/li3;
    :try_end_0
    .catch Lcom/shabakaty/downloader/s32; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/li3$b;->o(Lcom/shabakaty/downloader/li3;)Lcom/shabakaty/downloader/li3$b;

    :cond_0
    return-object p0

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 3
    :goto_0
    :try_start_1
    iget-object p2, p1, Lcom/shabakaty/downloader/s32;->r:Lcom/shabakaty/downloader/es2;

    .line 4
    check-cast p2, Lcom/shabakaty/downloader/li3;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_1
    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/li3$b;->o(Lcom/shabakaty/downloader/li3;)Lcom/shabakaty/downloader/li3$b;

    :cond_1
    throw p1
.end method

.method public o(Lcom/shabakaty/downloader/li3;)Lcom/shabakaty/downloader/li3$b;
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/li3;->z:Lcom/shabakaty/downloader/li3;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p1, Lcom/shabakaty/downloader/li3;->t:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 3
    iget v0, p1, Lcom/shabakaty/downloader/li3;->u:I

    .line 4
    iget v2, p0, Lcom/shabakaty/downloader/li3$b;->u:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/shabakaty/downloader/li3$b;->u:I

    .line 5
    iput v0, p0, Lcom/shabakaty/downloader/li3$b;->v:I

    .line 6
    :cond_2
    iget-object v0, p1, Lcom/shabakaty/downloader/li3;->v:Ljava/util/List;

    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/li3$b;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p1, Lcom/shabakaty/downloader/li3;->v:Ljava/util/List;

    .line 10
    iput-object v0, p0, Lcom/shabakaty/downloader/li3$b;->w:Ljava/util/List;

    .line 11
    iget v0, p0, Lcom/shabakaty/downloader/li3$b;->u:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/shabakaty/downloader/li3$b;->u:I

    goto :goto_1

    .line 12
    :cond_3
    iget v0, p0, Lcom/shabakaty/downloader/li3$b;->u:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_4

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/shabakaty/downloader/li3$b;->w:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/li3$b;->w:Ljava/util/List;

    .line 14
    iget v0, p0, Lcom/shabakaty/downloader/li3$b;->u:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/shabakaty/downloader/li3$b;->u:I

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/shabakaty/downloader/li3$b;->w:Ljava/util/List;

    .line 16
    iget-object v1, p1, Lcom/shabakaty/downloader/li3;->v:Ljava/util/List;

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18
    :cond_5
    :goto_1
    iget-object v0, p1, Lcom/shabakaty/downloader/li3;->w:Ljava/util/List;

    .line 19
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 20
    iget-object v0, p0, Lcom/shabakaty/downloader/li3$b;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 21
    iget-object v0, p1, Lcom/shabakaty/downloader/li3;->w:Ljava/util/List;

    .line 22
    iput-object v0, p0, Lcom/shabakaty/downloader/li3$b;->x:Ljava/util/List;

    .line 23
    iget v0, p0, Lcom/shabakaty/downloader/li3$b;->u:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/shabakaty/downloader/li3$b;->u:I

    goto :goto_2

    .line 24
    :cond_6
    iget v0, p0, Lcom/shabakaty/downloader/li3$b;->u:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_7

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/shabakaty/downloader/li3$b;->x:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/li3$b;->x:Ljava/util/List;

    .line 26
    iget v0, p0, Lcom/shabakaty/downloader/li3$b;->u:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/shabakaty/downloader/li3$b;->u:I

    .line 27
    :cond_7
    iget-object v0, p0, Lcom/shabakaty/downloader/li3$b;->x:Ljava/util/List;

    .line 28
    iget-object v1, p1, Lcom/shabakaty/downloader/li3;->w:Ljava/util/List;

    .line 29
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 30
    :cond_8
    :goto_2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/pp1$c;->l(Lcom/shabakaty/downloader/pp1$d;)V

    .line 31
    iget-object v0, p0, Lcom/shabakaty/downloader/pp1$b;->r:Lcom/shabakaty/downloader/ep;

    .line 32
    iget-object p1, p1, Lcom/shabakaty/downloader/li3;->s:Lcom/shabakaty/downloader/ep;

    .line 33
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ep;->h(Lcom/shabakaty/downloader/ep;)Lcom/shabakaty/downloader/ep;

    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/shabakaty/downloader/pp1$b;->r:Lcom/shabakaty/downloader/ep;

    return-object p0
.end method

.method public bridge synthetic o1(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/li3$b;->n(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/li3$b;

    return-object p0
.end method
