.class public final Lcom/shabakaty/downloader/aj3$b;
.super Lcom/shabakaty/downloader/pp1$c;
.source "ProtoBuf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/aj3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/pp1$c<",
        "Lcom/shabakaty/downloader/aj3;",
        "Lcom/shabakaty/downloader/aj3$b;",
        ">;"
    }
.end annotation


# instance fields
.field public A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public u:I

.field public v:I

.field public w:I

.field public x:Z

.field public y:Lcom/shabakaty/downloader/aj3$c;

.field public z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/yi3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1$c;-><init>()V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/aj3$c;->u:Lcom/shabakaty/downloader/aj3$c;

    iput-object v0, p0, Lcom/shabakaty/downloader/aj3$b;->y:Lcom/shabakaty/downloader/aj3$c;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/aj3$b;->z:Ljava/util/List;

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/aj3$b;->A:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public build()Lcom/shabakaty/downloader/es2;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj3$b;->m()Lcom/shabakaty/downloader/aj3;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/aj3;->a()Z

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
    new-instance v0, Lcom/shabakaty/downloader/aj3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/aj3$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj3$b;->m()Lcom/shabakaty/downloader/aj3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/aj3$b;->o(Lcom/shabakaty/downloader/aj3;)Lcom/shabakaty/downloader/aj3$b;

    return-object v0
.end method

.method public bridge synthetic h(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/j0$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/aj3$b;->n(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/aj3$b;

    return-object p0
.end method

.method public j()Lcom/shabakaty/downloader/pp1$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/aj3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/aj3$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj3$b;->m()Lcom/shabakaty/downloader/aj3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/aj3$b;->o(Lcom/shabakaty/downloader/aj3;)Lcom/shabakaty/downloader/aj3$b;

    return-object v0
.end method

.method public bridge synthetic k(Lcom/shabakaty/downloader/pp1;)Lcom/shabakaty/downloader/pp1$b;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/aj3;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/aj3$b;->o(Lcom/shabakaty/downloader/aj3;)Lcom/shabakaty/downloader/aj3$b;

    return-object p0
.end method

.method public m()Lcom/shabakaty/downloader/aj3;
    .locals 5

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/aj3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/aj3;-><init>(Lcom/shabakaty/downloader/pp1$c;Lcom/shabakaty/downloader/md0;)V

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/aj3$b;->u:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lcom/shabakaty/downloader/aj3$b;->v:I

    .line 4
    iput v2, v0, Lcom/shabakaty/downloader/aj3;->u:I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 5
    :cond_1
    iget v2, p0, Lcom/shabakaty/downloader/aj3$b;->w:I

    .line 6
    iput v2, v0, Lcom/shabakaty/downloader/aj3;->v:I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 7
    :cond_2
    iget-boolean v2, p0, Lcom/shabakaty/downloader/aj3$b;->x:Z

    .line 8
    iput-boolean v2, v0, Lcom/shabakaty/downloader/aj3;->w:Z

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 9
    :cond_3
    iget-object v2, p0, Lcom/shabakaty/downloader/aj3$b;->y:Lcom/shabakaty/downloader/aj3$c;

    .line 10
    iput-object v2, v0, Lcom/shabakaty/downloader/aj3;->x:Lcom/shabakaty/downloader/aj3$c;

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    .line 11
    iget-object v1, p0, Lcom/shabakaty/downloader/aj3$b;->z:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/aj3$b;->z:Ljava/util/List;

    .line 12
    iget v1, p0, Lcom/shabakaty/downloader/aj3$b;->u:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/shabakaty/downloader/aj3$b;->u:I

    .line 13
    :cond_4
    iget-object v1, p0, Lcom/shabakaty/downloader/aj3$b;->z:Ljava/util/List;

    .line 14
    iput-object v1, v0, Lcom/shabakaty/downloader/aj3;->y:Ljava/util/List;

    .line 15
    iget v1, p0, Lcom/shabakaty/downloader/aj3$b;->u:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    .line 16
    iget-object v1, p0, Lcom/shabakaty/downloader/aj3$b;->A:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/aj3$b;->A:Ljava/util/List;

    .line 17
    iget v1, p0, Lcom/shabakaty/downloader/aj3$b;->u:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/shabakaty/downloader/aj3$b;->u:I

    .line 18
    :cond_5
    iget-object v1, p0, Lcom/shabakaty/downloader/aj3$b;->A:Ljava/util/List;

    .line 19
    iput-object v1, v0, Lcom/shabakaty/downloader/aj3;->z:Ljava/util/List;

    .line 20
    iput v3, v0, Lcom/shabakaty/downloader/aj3;->t:I

    return-object v0
.end method

.method public n(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/aj3$b;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/aj3;->E:Lcom/shabakaty/downloader/na3;

    check-cast v1, Lcom/shabakaty/downloader/aj3$a;

    invoke-virtual {v1, p1, p2}, Lcom/shabakaty/downloader/aj3$a;->a(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/aj3;
    :try_end_0
    .catch Lcom/shabakaty/downloader/s32; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/aj3$b;->o(Lcom/shabakaty/downloader/aj3;)Lcom/shabakaty/downloader/aj3$b;

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
    check-cast p2, Lcom/shabakaty/downloader/aj3;
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
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/aj3$b;->o(Lcom/shabakaty/downloader/aj3;)Lcom/shabakaty/downloader/aj3$b;

    :cond_1
    throw p1
.end method

.method public o(Lcom/shabakaty/downloader/aj3;)Lcom/shabakaty/downloader/aj3$b;
    .locals 6

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/aj3;->D:Lcom/shabakaty/downloader/aj3;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p1, Lcom/shabakaty/downloader/aj3;->t:I

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
    iget v1, p1, Lcom/shabakaty/downloader/aj3;->u:I

    .line 4
    iget v4, p0, Lcom/shabakaty/downloader/aj3$b;->u:I

    or-int/2addr v4, v3

    iput v4, p0, Lcom/shabakaty/downloader/aj3$b;->u:I

    .line 5
    iput v1, p0, Lcom/shabakaty/downloader/aj3$b;->v:I

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
    iget v1, p1, Lcom/shabakaty/downloader/aj3;->v:I

    .line 7
    iget v5, p0, Lcom/shabakaty/downloader/aj3$b;->u:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/shabakaty/downloader/aj3$b;->u:I

    .line 8
    iput v1, p0, Lcom/shabakaty/downloader/aj3$b;->w:I

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
    iget-boolean v1, p1, Lcom/shabakaty/downloader/aj3;->w:Z

    .line 10
    iget v5, p0, Lcom/shabakaty/downloader/aj3$b;->u:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/shabakaty/downloader/aj3$b;->u:I

    .line 11
    iput-boolean v1, p0, Lcom/shabakaty/downloader/aj3$b;->x:Z

    :cond_6
    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    const/4 v2, 0x1

    :cond_7
    if-eqz v2, :cond_8

    .line 12
    iget-object v0, p1, Lcom/shabakaty/downloader/aj3;->x:Lcom/shabakaty/downloader/aj3$c;

    .line 13
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget v2, p0, Lcom/shabakaty/downloader/aj3$b;->u:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/shabakaty/downloader/aj3$b;->u:I

    .line 15
    iput-object v0, p0, Lcom/shabakaty/downloader/aj3$b;->y:Lcom/shabakaty/downloader/aj3$c;

    .line 16
    :cond_8
    iget-object v0, p1, Lcom/shabakaty/downloader/aj3;->y:Ljava/util/List;

    .line 17
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 18
    iget-object v0, p0, Lcom/shabakaty/downloader/aj3$b;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 19
    iget-object v0, p1, Lcom/shabakaty/downloader/aj3;->y:Ljava/util/List;

    .line 20
    iput-object v0, p0, Lcom/shabakaty/downloader/aj3$b;->z:Ljava/util/List;

    .line 21
    iget v0, p0, Lcom/shabakaty/downloader/aj3$b;->u:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/shabakaty/downloader/aj3$b;->u:I

    goto :goto_3

    .line 22
    :cond_9
    iget v0, p0, Lcom/shabakaty/downloader/aj3$b;->u:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_a

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/shabakaty/downloader/aj3$b;->z:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/aj3$b;->z:Ljava/util/List;

    .line 24
    iget v0, p0, Lcom/shabakaty/downloader/aj3$b;->u:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/shabakaty/downloader/aj3$b;->u:I

    .line 25
    :cond_a
    iget-object v0, p0, Lcom/shabakaty/downloader/aj3$b;->z:Ljava/util/List;

    .line 26
    iget-object v1, p1, Lcom/shabakaty/downloader/aj3;->y:Ljava/util/List;

    .line 27
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 28
    :cond_b
    :goto_3
    iget-object v0, p1, Lcom/shabakaty/downloader/aj3;->z:Ljava/util/List;

    .line 29
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 30
    iget-object v0, p0, Lcom/shabakaty/downloader/aj3$b;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 31
    iget-object v0, p1, Lcom/shabakaty/downloader/aj3;->z:Ljava/util/List;

    .line 32
    iput-object v0, p0, Lcom/shabakaty/downloader/aj3$b;->A:Ljava/util/List;

    .line 33
    iget v0, p0, Lcom/shabakaty/downloader/aj3$b;->u:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/shabakaty/downloader/aj3$b;->u:I

    goto :goto_4

    .line 34
    :cond_c
    iget v0, p0, Lcom/shabakaty/downloader/aj3$b;->u:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_d

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/shabakaty/downloader/aj3$b;->A:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/aj3$b;->A:Ljava/util/List;

    .line 36
    iget v0, p0, Lcom/shabakaty/downloader/aj3$b;->u:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/shabakaty/downloader/aj3$b;->u:I

    .line 37
    :cond_d
    iget-object v0, p0, Lcom/shabakaty/downloader/aj3$b;->A:Ljava/util/List;

    .line 38
    iget-object v1, p1, Lcom/shabakaty/downloader/aj3;->z:Ljava/util/List;

    .line 39
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 40
    :cond_e
    :goto_4
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/pp1$c;->l(Lcom/shabakaty/downloader/pp1$d;)V

    .line 41
    iget-object v0, p0, Lcom/shabakaty/downloader/pp1$b;->r:Lcom/shabakaty/downloader/ep;

    .line 42
    iget-object p1, p1, Lcom/shabakaty/downloader/aj3;->s:Lcom/shabakaty/downloader/ep;

    .line 43
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ep;->h(Lcom/shabakaty/downloader/ep;)Lcom/shabakaty/downloader/ep;

    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/shabakaty/downloader/pp1$b;->r:Lcom/shabakaty/downloader/ep;

    return-object p0
.end method

.method public bridge synthetic o1(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/aj3$b;->n(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/aj3$b;

    return-object p0
.end method
