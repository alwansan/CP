.class public final Lcom/shabakaty/downloader/ui3$b;
.super Lcom/shabakaty/downloader/pp1$c;
.source "ProtoBuf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ui3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/pp1$c<",
        "Lcom/shabakaty/downloader/ui3;",
        "Lcom/shabakaty/downloader/ui3$b;",
        ">;"
    }
.end annotation


# instance fields
.field public u:I

.field public v:Lcom/shabakaty/downloader/xi3;

.field public w:Lcom/shabakaty/downloader/wi3;

.field public x:Lcom/shabakaty/downloader/ti3;

.field public y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ji3;",
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
    sget-object v0, Lcom/shabakaty/downloader/xi3;->v:Lcom/shabakaty/downloader/xi3;

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/ui3$b;->v:Lcom/shabakaty/downloader/xi3;

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/wi3;->v:Lcom/shabakaty/downloader/wi3;

    .line 5
    iput-object v0, p0, Lcom/shabakaty/downloader/ui3$b;->w:Lcom/shabakaty/downloader/wi3;

    .line 6
    sget-object v0, Lcom/shabakaty/downloader/ti3;->B:Lcom/shabakaty/downloader/ti3;

    .line 7
    iput-object v0, p0, Lcom/shabakaty/downloader/ui3$b;->x:Lcom/shabakaty/downloader/ti3;

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/ui3$b;->y:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public build()Lcom/shabakaty/downloader/es2;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ui3$b;->m()Lcom/shabakaty/downloader/ui3;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ui3;->a()Z

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
    new-instance v0, Lcom/shabakaty/downloader/ui3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ui3$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ui3$b;->m()Lcom/shabakaty/downloader/ui3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ui3$b;->o(Lcom/shabakaty/downloader/ui3;)Lcom/shabakaty/downloader/ui3$b;

    return-object v0
.end method

.method public bridge synthetic h(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/j0$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/ui3$b;->n(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/ui3$b;

    return-object p0
.end method

.method public j()Lcom/shabakaty/downloader/pp1$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ui3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ui3$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ui3$b;->m()Lcom/shabakaty/downloader/ui3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ui3$b;->o(Lcom/shabakaty/downloader/ui3;)Lcom/shabakaty/downloader/ui3$b;

    return-object v0
.end method

.method public bridge synthetic k(Lcom/shabakaty/downloader/pp1;)Lcom/shabakaty/downloader/pp1$b;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/ui3;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ui3$b;->o(Lcom/shabakaty/downloader/ui3;)Lcom/shabakaty/downloader/ui3$b;

    return-object p0
.end method

.method public m()Lcom/shabakaty/downloader/ui3;
    .locals 5

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ui3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/ui3;-><init>(Lcom/shabakaty/downloader/pp1$c;Lcom/shabakaty/downloader/md0;)V

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/ui3$b;->u:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/shabakaty/downloader/ui3$b;->v:Lcom/shabakaty/downloader/xi3;

    .line 4
    iput-object v2, v0, Lcom/shabakaty/downloader/ui3;->u:Lcom/shabakaty/downloader/xi3;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 5
    :cond_1
    iget-object v2, p0, Lcom/shabakaty/downloader/ui3$b;->w:Lcom/shabakaty/downloader/wi3;

    .line 6
    iput-object v2, v0, Lcom/shabakaty/downloader/ui3;->v:Lcom/shabakaty/downloader/wi3;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 7
    :cond_2
    iget-object v2, p0, Lcom/shabakaty/downloader/ui3$b;->x:Lcom/shabakaty/downloader/ti3;

    .line 8
    iput-object v2, v0, Lcom/shabakaty/downloader/ui3;->w:Lcom/shabakaty/downloader/ti3;

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 9
    iget-object v1, p0, Lcom/shabakaty/downloader/ui3$b;->y:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/ui3$b;->y:Ljava/util/List;

    .line 10
    iget v1, p0, Lcom/shabakaty/downloader/ui3$b;->u:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/shabakaty/downloader/ui3$b;->u:I

    .line 11
    :cond_3
    iget-object v1, p0, Lcom/shabakaty/downloader/ui3$b;->y:Ljava/util/List;

    .line 12
    iput-object v1, v0, Lcom/shabakaty/downloader/ui3;->x:Ljava/util/List;

    .line 13
    iput v3, v0, Lcom/shabakaty/downloader/ui3;->t:I

    return-object v0
.end method

.method public n(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/ui3$b;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/ui3;->B:Lcom/shabakaty/downloader/na3;

    check-cast v1, Lcom/shabakaty/downloader/ui3$a;

    invoke-virtual {v1, p1, p2}, Lcom/shabakaty/downloader/ui3$a;->a(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/ui3;
    :try_end_0
    .catch Lcom/shabakaty/downloader/s32; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ui3$b;->o(Lcom/shabakaty/downloader/ui3;)Lcom/shabakaty/downloader/ui3$b;

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
    check-cast p2, Lcom/shabakaty/downloader/ui3;
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
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ui3$b;->o(Lcom/shabakaty/downloader/ui3;)Lcom/shabakaty/downloader/ui3$b;

    :cond_1
    throw p1
.end method

.method public o(Lcom/shabakaty/downloader/ui3;)Lcom/shabakaty/downloader/ui3$b;
    .locals 6

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ui3;->A:Lcom/shabakaty/downloader/ui3;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p1, Lcom/shabakaty/downloader/ui3;->t:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p1, Lcom/shabakaty/downloader/ui3;->u:Lcom/shabakaty/downloader/xi3;

    .line 4
    iget v3, p0, Lcom/shabakaty/downloader/ui3$b;->u:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_2

    iget-object v3, p0, Lcom/shabakaty/downloader/ui3$b;->v:Lcom/shabakaty/downloader/xi3;

    .line 5
    sget-object v4, Lcom/shabakaty/downloader/xi3;->v:Lcom/shabakaty/downloader/xi3;

    if-eq v3, v4, :cond_2

    .line 6
    new-instance v4, Lcom/shabakaty/downloader/xi3$b;

    invoke-direct {v4}, Lcom/shabakaty/downloader/xi3$b;-><init>()V

    .line 7
    invoke-virtual {v4, v3}, Lcom/shabakaty/downloader/xi3$b;->n(Lcom/shabakaty/downloader/xi3;)Lcom/shabakaty/downloader/xi3$b;

    .line 8
    invoke-virtual {v4, v0}, Lcom/shabakaty/downloader/xi3$b;->n(Lcom/shabakaty/downloader/xi3;)Lcom/shabakaty/downloader/xi3$b;

    invoke-virtual {v4}, Lcom/shabakaty/downloader/xi3$b;->l()Lcom/shabakaty/downloader/xi3;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/ui3$b;->v:Lcom/shabakaty/downloader/xi3;

    goto :goto_1

    .line 9
    :cond_2
    iput-object v0, p0, Lcom/shabakaty/downloader/ui3$b;->v:Lcom/shabakaty/downloader/xi3;

    .line 10
    :goto_1
    iget v0, p0, Lcom/shabakaty/downloader/ui3$b;->u:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/shabakaty/downloader/ui3$b;->u:I

    .line 11
    :cond_3
    iget v0, p1, Lcom/shabakaty/downloader/ui3;->t:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_6

    .line 12
    iget-object v0, p1, Lcom/shabakaty/downloader/ui3;->v:Lcom/shabakaty/downloader/wi3;

    .line 13
    iget v4, p0, Lcom/shabakaty/downloader/ui3$b;->u:I

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_5

    iget-object v4, p0, Lcom/shabakaty/downloader/ui3$b;->w:Lcom/shabakaty/downloader/wi3;

    .line 14
    sget-object v5, Lcom/shabakaty/downloader/wi3;->v:Lcom/shabakaty/downloader/wi3;

    if-eq v4, v5, :cond_5

    .line 15
    new-instance v5, Lcom/shabakaty/downloader/wi3$b;

    invoke-direct {v5}, Lcom/shabakaty/downloader/wi3$b;-><init>()V

    .line 16
    invoke-virtual {v5, v4}, Lcom/shabakaty/downloader/wi3$b;->n(Lcom/shabakaty/downloader/wi3;)Lcom/shabakaty/downloader/wi3$b;

    .line 17
    invoke-virtual {v5, v0}, Lcom/shabakaty/downloader/wi3$b;->n(Lcom/shabakaty/downloader/wi3;)Lcom/shabakaty/downloader/wi3$b;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/wi3$b;->l()Lcom/shabakaty/downloader/wi3;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/ui3$b;->w:Lcom/shabakaty/downloader/wi3;

    goto :goto_3

    .line 18
    :cond_5
    iput-object v0, p0, Lcom/shabakaty/downloader/ui3$b;->w:Lcom/shabakaty/downloader/wi3;

    .line 19
    :goto_3
    iget v0, p0, Lcom/shabakaty/downloader/ui3$b;->u:I

    or-int/2addr v0, v3

    iput v0, p0, Lcom/shabakaty/downloader/ui3$b;->u:I

    .line 20
    :cond_6
    iget v0, p1, Lcom/shabakaty/downloader/ui3;->t:I

    const/4 v3, 0x4

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_7

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_9

    .line 21
    iget-object v0, p1, Lcom/shabakaty/downloader/ui3;->w:Lcom/shabakaty/downloader/ti3;

    .line 22
    iget v1, p0, Lcom/shabakaty/downloader/ui3$b;->u:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_8

    iget-object v1, p0, Lcom/shabakaty/downloader/ui3$b;->x:Lcom/shabakaty/downloader/ti3;

    .line 23
    sget-object v2, Lcom/shabakaty/downloader/ti3;->B:Lcom/shabakaty/downloader/ti3;

    if-eq v1, v2, :cond_8

    .line 24
    new-instance v2, Lcom/shabakaty/downloader/ti3$b;

    invoke-direct {v2}, Lcom/shabakaty/downloader/ti3$b;-><init>()V

    .line 25
    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/ti3$b;->o(Lcom/shabakaty/downloader/ti3;)Lcom/shabakaty/downloader/ti3$b;

    .line 26
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/ti3$b;->o(Lcom/shabakaty/downloader/ti3;)Lcom/shabakaty/downloader/ti3$b;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/ti3$b;->m()Lcom/shabakaty/downloader/ti3;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/ui3$b;->x:Lcom/shabakaty/downloader/ti3;

    goto :goto_5

    .line 27
    :cond_8
    iput-object v0, p0, Lcom/shabakaty/downloader/ui3$b;->x:Lcom/shabakaty/downloader/ti3;

    .line 28
    :goto_5
    iget v0, p0, Lcom/shabakaty/downloader/ui3$b;->u:I

    or-int/2addr v0, v3

    iput v0, p0, Lcom/shabakaty/downloader/ui3$b;->u:I

    .line 29
    :cond_9
    iget-object v0, p1, Lcom/shabakaty/downloader/ui3;->x:Ljava/util/List;

    .line 30
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 31
    iget-object v0, p0, Lcom/shabakaty/downloader/ui3$b;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 32
    iget-object v0, p1, Lcom/shabakaty/downloader/ui3;->x:Ljava/util/List;

    .line 33
    iput-object v0, p0, Lcom/shabakaty/downloader/ui3$b;->y:Ljava/util/List;

    .line 34
    iget v0, p0, Lcom/shabakaty/downloader/ui3$b;->u:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/shabakaty/downloader/ui3$b;->u:I

    goto :goto_6

    .line 35
    :cond_a
    iget v0, p0, Lcom/shabakaty/downloader/ui3$b;->u:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_b

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/shabakaty/downloader/ui3$b;->y:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/ui3$b;->y:Ljava/util/List;

    .line 37
    iget v0, p0, Lcom/shabakaty/downloader/ui3$b;->u:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/shabakaty/downloader/ui3$b;->u:I

    .line 38
    :cond_b
    iget-object v0, p0, Lcom/shabakaty/downloader/ui3$b;->y:Ljava/util/List;

    .line 39
    iget-object v1, p1, Lcom/shabakaty/downloader/ui3;->x:Ljava/util/List;

    .line 40
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 41
    :cond_c
    :goto_6
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/pp1$c;->l(Lcom/shabakaty/downloader/pp1$d;)V

    .line 42
    iget-object v0, p0, Lcom/shabakaty/downloader/pp1$b;->r:Lcom/shabakaty/downloader/ep;

    .line 43
    iget-object p1, p1, Lcom/shabakaty/downloader/ui3;->s:Lcom/shabakaty/downloader/ep;

    .line 44
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ep;->h(Lcom/shabakaty/downloader/ep;)Lcom/shabakaty/downloader/ep;

    move-result-object p1

    .line 45
    iput-object p1, p0, Lcom/shabakaty/downloader/pp1$b;->r:Lcom/shabakaty/downloader/ep;

    return-object p0
.end method

.method public bridge synthetic o1(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/ui3$b;->n(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/ui3$b;

    return-object p0
.end method
