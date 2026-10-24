.class public final Lcom/shabakaty/downloader/ub2$e$c$b;
.super Lcom/shabakaty/downloader/pp1$b;
.source "JvmProtoBuf.java"

# interfaces
.implements Lcom/shabakaty/downloader/fs2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ub2$e$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/pp1$b<",
        "Lcom/shabakaty/downloader/ub2$e$c;",
        "Lcom/shabakaty/downloader/ub2$e$c$b;",
        ">;"
    }
.end annotation


# instance fields
.field public s:I

.field public t:I

.field public u:I

.field public v:Ljava/lang/Object;

.field public w:Lcom/shabakaty/downloader/ub2$e$c$c;

.field public x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public y:Ljava/util/List;
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
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1$b;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->t:I

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->v:Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/ub2$e$c$c;->s:Lcom/shabakaty/downloader/ub2$e$c$c;

    iput-object v0, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->w:Lcom/shabakaty/downloader/ub2$e$c$c;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->x:Ljava/util/List;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->y:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public build()Lcom/shabakaty/downloader/es2;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ub2$e$c$b;->l()Lcom/shabakaty/downloader/ub2$e$c;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ub2$e$c;->a()Z

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
    new-instance v0, Lcom/shabakaty/downloader/ub2$e$c$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ub2$e$c$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ub2$e$c$b;->l()Lcom/shabakaty/downloader/ub2$e$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ub2$e$c$b;->n(Lcom/shabakaty/downloader/ub2$e$c;)Lcom/shabakaty/downloader/ub2$e$c$b;

    return-object v0
.end method

.method public bridge synthetic h(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/j0$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/ub2$e$c$b;->m(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/ub2$e$c$b;

    return-object p0
.end method

.method public j()Lcom/shabakaty/downloader/pp1$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ub2$e$c$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ub2$e$c$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ub2$e$c$b;->l()Lcom/shabakaty/downloader/ub2$e$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ub2$e$c$b;->n(Lcom/shabakaty/downloader/ub2$e$c;)Lcom/shabakaty/downloader/ub2$e$c$b;

    return-object v0
.end method

.method public bridge synthetic k(Lcom/shabakaty/downloader/pp1;)Lcom/shabakaty/downloader/pp1$b;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/ub2$e$c;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ub2$e$c$b;->n(Lcom/shabakaty/downloader/ub2$e$c;)Lcom/shabakaty/downloader/ub2$e$c$b;

    return-object p0
.end method

.method public l()Lcom/shabakaty/downloader/ub2$e$c;
    .locals 5

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ub2$e$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/ub2$e$c;-><init>(Lcom/shabakaty/downloader/pp1$b;Lcom/shabakaty/downloader/ub2$a;)V

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->s:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->t:I

    .line 4
    iput v2, v0, Lcom/shabakaty/downloader/ub2$e$c;->t:I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 5
    :cond_1
    iget v2, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->u:I

    .line 6
    iput v2, v0, Lcom/shabakaty/downloader/ub2$e$c;->u:I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 7
    :cond_2
    iget-object v2, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->v:Ljava/lang/Object;

    .line 8
    iput-object v2, v0, Lcom/shabakaty/downloader/ub2$e$c;->v:Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 9
    :cond_3
    iget-object v2, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->w:Lcom/shabakaty/downloader/ub2$e$c$c;

    .line 10
    iput-object v2, v0, Lcom/shabakaty/downloader/ub2$e$c;->w:Lcom/shabakaty/downloader/ub2$e$c$c;

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    .line 11
    iget-object v1, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->x:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->x:Ljava/util/List;

    .line 12
    iget v1, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->s:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->s:I

    .line 13
    :cond_4
    iget-object v1, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->x:Ljava/util/List;

    .line 14
    iput-object v1, v0, Lcom/shabakaty/downloader/ub2$e$c;->x:Ljava/util/List;

    .line 15
    iget v1, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->s:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    .line 16
    iget-object v1, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->y:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->y:Ljava/util/List;

    .line 17
    iget v1, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->s:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->s:I

    .line 18
    :cond_5
    iget-object v1, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->y:Ljava/util/List;

    .line 19
    iput-object v1, v0, Lcom/shabakaty/downloader/ub2$e$c;->z:Ljava/util/List;

    .line 20
    iput v3, v0, Lcom/shabakaty/downloader/ub2$e$c;->s:I

    return-object v0
.end method

.method public m(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/ub2$e$c$b;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/ub2$e$c;->E:Lcom/shabakaty/downloader/na3;

    check-cast v1, Lcom/shabakaty/downloader/ub2$e$c$a;

    invoke-virtual {v1, p1, p2}, Lcom/shabakaty/downloader/ub2$e$c$a;->a(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/ub2$e$c;
    :try_end_0
    .catch Lcom/shabakaty/downloader/s32; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ub2$e$c$b;->n(Lcom/shabakaty/downloader/ub2$e$c;)Lcom/shabakaty/downloader/ub2$e$c$b;

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
    check-cast p2, Lcom/shabakaty/downloader/ub2$e$c;
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
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ub2$e$c$b;->n(Lcom/shabakaty/downloader/ub2$e$c;)Lcom/shabakaty/downloader/ub2$e$c$b;

    :cond_1
    throw p1
.end method

.method public n(Lcom/shabakaty/downloader/ub2$e$c;)Lcom/shabakaty/downloader/ub2$e$c$b;
    .locals 6

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ub2$e$c;->D:Lcom/shabakaty/downloader/ub2$e$c;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p1, Lcom/shabakaty/downloader/ub2$e$c;->s:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 3
    iget v1, p1, Lcom/shabakaty/downloader/ub2$e$c;->t:I

    .line 4
    iget v4, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->s:I

    or-int/2addr v4, v3

    iput v4, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->s:I

    .line 5
    iput v1, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->t:I

    :cond_2
    and-int/lit8 v1, v0, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    .line 6
    iget v1, p1, Lcom/shabakaty/downloader/ub2$e$c;->u:I

    .line 7
    iget v5, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->s:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->s:I

    .line 8
    iput v1, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->u:I

    :cond_4
    and-int/lit8 v1, v0, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_6

    .line 9
    iget v1, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->s:I

    or-int/2addr v1, v4

    iput v1, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->s:I

    .line 10
    iget-object v1, p1, Lcom/shabakaty/downloader/ub2$e$c;->v:Ljava/lang/Object;

    .line 11
    iput-object v1, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->v:Ljava/lang/Object;

    :cond_6
    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    const/4 v2, 0x1

    :cond_7
    if-eqz v2, :cond_8

    .line 12
    iget-object v0, p1, Lcom/shabakaty/downloader/ub2$e$c;->w:Lcom/shabakaty/downloader/ub2$e$c$c;

    .line 13
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget v2, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->s:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->s:I

    .line 15
    iput-object v0, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->w:Lcom/shabakaty/downloader/ub2$e$c$c;

    .line 16
    :cond_8
    iget-object v0, p1, Lcom/shabakaty/downloader/ub2$e$c;->x:Ljava/util/List;

    .line 17
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 18
    iget-object v0, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 19
    iget-object v0, p1, Lcom/shabakaty/downloader/ub2$e$c;->x:Ljava/util/List;

    .line 20
    iput-object v0, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->x:Ljava/util/List;

    .line 21
    iget v0, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->s:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->s:I

    goto :goto_3

    .line 22
    :cond_9
    iget v0, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->s:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_a

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->x:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->x:Ljava/util/List;

    .line 24
    iget v0, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->s:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->s:I

    .line 25
    :cond_a
    iget-object v0, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->x:Ljava/util/List;

    .line 26
    iget-object v1, p1, Lcom/shabakaty/downloader/ub2$e$c;->x:Ljava/util/List;

    .line 27
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 28
    :cond_b
    :goto_3
    iget-object v0, p1, Lcom/shabakaty/downloader/ub2$e$c;->z:Ljava/util/List;

    .line 29
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 30
    iget-object v0, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 31
    iget-object v0, p1, Lcom/shabakaty/downloader/ub2$e$c;->z:Ljava/util/List;

    .line 32
    iput-object v0, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->y:Ljava/util/List;

    .line 33
    iget v0, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->s:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->s:I

    goto :goto_4

    .line 34
    :cond_c
    iget v0, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->s:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_d

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->y:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->y:Ljava/util/List;

    .line 36
    iget v0, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->s:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->s:I

    .line 37
    :cond_d
    iget-object v0, p0, Lcom/shabakaty/downloader/ub2$e$c$b;->y:Ljava/util/List;

    .line 38
    iget-object v1, p1, Lcom/shabakaty/downloader/ub2$e$c;->z:Ljava/util/List;

    .line 39
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 40
    :cond_e
    :goto_4
    iget-object v0, p0, Lcom/shabakaty/downloader/pp1$b;->r:Lcom/shabakaty/downloader/ep;

    .line 41
    iget-object p1, p1, Lcom/shabakaty/downloader/ub2$e$c;->r:Lcom/shabakaty/downloader/ep;

    .line 42
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ep;->h(Lcom/shabakaty/downloader/ep;)Lcom/shabakaty/downloader/ep;

    move-result-object p1

    .line 43
    iput-object p1, p0, Lcom/shabakaty/downloader/pp1$b;->r:Lcom/shabakaty/downloader/ep;

    return-object p0
.end method

.method public bridge synthetic o1(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/ub2$e$c$b;->m(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/ub2$e$c$b;

    return-object p0
.end method
