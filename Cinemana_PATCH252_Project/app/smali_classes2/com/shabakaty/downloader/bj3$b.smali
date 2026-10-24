.class public final Lcom/shabakaty/downloader/bj3$b;
.super Lcom/shabakaty/downloader/pp1$b;
.source "ProtoBuf.java"

# interfaces
.implements Lcom/shabakaty/downloader/fs2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/bj3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/pp1$b<",
        "Lcom/shabakaty/downloader/bj3;",
        "Lcom/shabakaty/downloader/bj3$b;",
        ">;"
    }
.end annotation


# instance fields
.field public s:I

.field public t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/yi3;",
            ">;"
        }
    .end annotation
.end field

.field public u:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1$b;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/bj3$b;->t:Ljava/util/List;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/shabakaty/downloader/bj3$b;->u:I

    return-void
.end method


# virtual methods
.method public build()Lcom/shabakaty/downloader/es2;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bj3$b;->l()Lcom/shabakaty/downloader/bj3;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/bj3;->a()Z

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
    new-instance v0, Lcom/shabakaty/downloader/bj3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/bj3$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bj3$b;->l()Lcom/shabakaty/downloader/bj3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/bj3$b;->n(Lcom/shabakaty/downloader/bj3;)Lcom/shabakaty/downloader/bj3$b;

    return-object v0
.end method

.method public bridge synthetic h(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/j0$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/bj3$b;->m(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/bj3$b;

    return-object p0
.end method

.method public j()Lcom/shabakaty/downloader/pp1$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/bj3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/bj3$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bj3$b;->l()Lcom/shabakaty/downloader/bj3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/bj3$b;->n(Lcom/shabakaty/downloader/bj3;)Lcom/shabakaty/downloader/bj3$b;

    return-object v0
.end method

.method public bridge synthetic k(Lcom/shabakaty/downloader/pp1;)Lcom/shabakaty/downloader/pp1$b;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/bj3;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/bj3$b;->n(Lcom/shabakaty/downloader/bj3;)Lcom/shabakaty/downloader/bj3$b;

    return-object p0
.end method

.method public l()Lcom/shabakaty/downloader/bj3;
    .locals 4

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/bj3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/bj3;-><init>(Lcom/shabakaty/downloader/pp1$b;Lcom/shabakaty/downloader/md0;)V

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/bj3$b;->s:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/bj3$b;->t:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/shabakaty/downloader/bj3$b;->t:Ljava/util/List;

    .line 4
    iget v2, p0, Lcom/shabakaty/downloader/bj3$b;->s:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/shabakaty/downloader/bj3$b;->s:I

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/shabakaty/downloader/bj3$b;->t:Ljava/util/List;

    .line 6
    iput-object v2, v0, Lcom/shabakaty/downloader/bj3;->t:Ljava/util/List;

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 7
    :goto_0
    iget v1, p0, Lcom/shabakaty/downloader/bj3$b;->u:I

    .line 8
    iput v1, v0, Lcom/shabakaty/downloader/bj3;->u:I

    .line 9
    iput v3, v0, Lcom/shabakaty/downloader/bj3;->s:I

    return-object v0
.end method

.method public m(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/bj3$b;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/bj3;->y:Lcom/shabakaty/downloader/na3;

    check-cast v1, Lcom/shabakaty/downloader/bj3$a;

    invoke-virtual {v1, p1, p2}, Lcom/shabakaty/downloader/bj3$a;->a(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/bj3;
    :try_end_0
    .catch Lcom/shabakaty/downloader/s32; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/bj3$b;->n(Lcom/shabakaty/downloader/bj3;)Lcom/shabakaty/downloader/bj3$b;

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
    check-cast p2, Lcom/shabakaty/downloader/bj3;
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
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/bj3$b;->n(Lcom/shabakaty/downloader/bj3;)Lcom/shabakaty/downloader/bj3$b;

    :cond_1
    throw p1
.end method

.method public n(Lcom/shabakaty/downloader/bj3;)Lcom/shabakaty/downloader/bj3$b;
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/bj3;->x:Lcom/shabakaty/downloader/bj3;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p1, Lcom/shabakaty/downloader/bj3;->t:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/bj3$b;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p1, Lcom/shabakaty/downloader/bj3;->t:Ljava/util/List;

    .line 6
    iput-object v0, p0, Lcom/shabakaty/downloader/bj3$b;->t:Ljava/util/List;

    .line 7
    iget v0, p0, Lcom/shabakaty/downloader/bj3$b;->s:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/shabakaty/downloader/bj3$b;->s:I

    goto :goto_0

    .line 8
    :cond_1
    iget v0, p0, Lcom/shabakaty/downloader/bj3$b;->s:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_2

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/shabakaty/downloader/bj3$b;->t:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/bj3$b;->t:Ljava/util/List;

    .line 10
    iget v0, p0, Lcom/shabakaty/downloader/bj3$b;->s:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/shabakaty/downloader/bj3$b;->s:I

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/bj3$b;->t:Ljava/util/List;

    .line 12
    iget-object v2, p1, Lcom/shabakaty/downloader/bj3;->t:Ljava/util/List;

    .line 13
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    :cond_3
    :goto_0
    iget v0, p1, Lcom/shabakaty/downloader/bj3;->s:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_5

    .line 15
    iget v0, p1, Lcom/shabakaty/downloader/bj3;->u:I

    .line 16
    iget v1, p0, Lcom/shabakaty/downloader/bj3$b;->s:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/shabakaty/downloader/bj3$b;->s:I

    .line 17
    iput v0, p0, Lcom/shabakaty/downloader/bj3$b;->u:I

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/shabakaty/downloader/pp1$b;->r:Lcom/shabakaty/downloader/ep;

    .line 19
    iget-object p1, p1, Lcom/shabakaty/downloader/bj3;->r:Lcom/shabakaty/downloader/ep;

    .line 20
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ep;->h(Lcom/shabakaty/downloader/ep;)Lcom/shabakaty/downloader/ep;

    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/shabakaty/downloader/pp1$b;->r:Lcom/shabakaty/downloader/ep;

    return-object p0
.end method

.method public bridge synthetic o1(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/bj3$b;->m(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/bj3$b;

    return-object p0
.end method
