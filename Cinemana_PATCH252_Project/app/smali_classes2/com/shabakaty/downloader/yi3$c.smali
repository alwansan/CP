.class public final Lcom/shabakaty/downloader/yi3$c;
.super Lcom/shabakaty/downloader/pp1$c;
.source "ProtoBuf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/yi3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/pp1$c<",
        "Lcom/shabakaty/downloader/yi3;",
        "Lcom/shabakaty/downloader/yi3$c;",
        ">;"
    }
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:Lcom/shabakaty/downloader/yi3;

.field public F:I

.field public G:Lcom/shabakaty/downloader/yi3;

.field public H:I

.field public I:I

.field public u:I

.field public v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/yi3$b;",
            ">;"
        }
    .end annotation
.end field

.field public w:Z

.field public x:I

.field public y:Lcom/shabakaty/downloader/yi3;

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1$c;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/yi3$c;->v:Ljava/util/List;

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/yi3;->K:Lcom/shabakaty/downloader/yi3;

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/yi3$c;->y:Lcom/shabakaty/downloader/yi3;

    .line 5
    iput-object v0, p0, Lcom/shabakaty/downloader/yi3$c;->E:Lcom/shabakaty/downloader/yi3;

    .line 6
    iput-object v0, p0, Lcom/shabakaty/downloader/yi3$c;->G:Lcom/shabakaty/downloader/yi3;

    return-void
.end method


# virtual methods
.method public build()Lcom/shabakaty/downloader/es2;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/yi3$c;->m()Lcom/shabakaty/downloader/yi3;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yi3;->a()Z

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
    new-instance v0, Lcom/shabakaty/downloader/yi3$c;

    invoke-direct {v0}, Lcom/shabakaty/downloader/yi3$c;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/yi3$c;->m()Lcom/shabakaty/downloader/yi3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/yi3$c;->o(Lcom/shabakaty/downloader/yi3;)Lcom/shabakaty/downloader/yi3$c;

    return-object v0
.end method

.method public bridge synthetic h(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/j0$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/yi3$c;->n(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/yi3$c;

    return-object p0
.end method

.method public j()Lcom/shabakaty/downloader/pp1$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/yi3$c;

    invoke-direct {v0}, Lcom/shabakaty/downloader/yi3$c;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/yi3$c;->m()Lcom/shabakaty/downloader/yi3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/yi3$c;->o(Lcom/shabakaty/downloader/yi3;)Lcom/shabakaty/downloader/yi3$c;

    return-object v0
.end method

.method public bridge synthetic k(Lcom/shabakaty/downloader/pp1;)Lcom/shabakaty/downloader/pp1$b;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/yi3;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/yi3$c;->o(Lcom/shabakaty/downloader/yi3;)Lcom/shabakaty/downloader/yi3$c;

    move-result-object p1

    return-object p1
.end method

.method public m()Lcom/shabakaty/downloader/yi3;
    .locals 5

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/yi3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/yi3;-><init>(Lcom/shabakaty/downloader/pp1$c;Lcom/shabakaty/downloader/md0;)V

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/yi3$c;->u:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/yi3$c;->v:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/shabakaty/downloader/yi3$c;->v:Ljava/util/List;

    .line 4
    iget v2, p0, Lcom/shabakaty/downloader/yi3$c;->u:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/shabakaty/downloader/yi3$c;->u:I

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/shabakaty/downloader/yi3$c;->v:Ljava/util/List;

    .line 6
    iput-object v2, v0, Lcom/shabakaty/downloader/yi3;->u:Ljava/util/List;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 7
    :goto_0
    iget-boolean v2, p0, Lcom/shabakaty/downloader/yi3$c;->w:Z

    .line 8
    iput-boolean v2, v0, Lcom/shabakaty/downloader/yi3;->v:Z

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x2

    .line 9
    :cond_2
    iget v2, p0, Lcom/shabakaty/downloader/yi3$c;->x:I

    .line 10
    iput v2, v0, Lcom/shabakaty/downloader/yi3;->w:I

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x4

    .line 11
    :cond_3
    iget-object v2, p0, Lcom/shabakaty/downloader/yi3$c;->y:Lcom/shabakaty/downloader/yi3;

    .line 12
    iput-object v2, v0, Lcom/shabakaty/downloader/yi3;->x:Lcom/shabakaty/downloader/yi3;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x8

    .line 13
    :cond_4
    iget v2, p0, Lcom/shabakaty/downloader/yi3$c;->z:I

    .line 14
    iput v2, v0, Lcom/shabakaty/downloader/yi3;->y:I

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x10

    .line 15
    :cond_5
    iget v2, p0, Lcom/shabakaty/downloader/yi3$c;->A:I

    .line 16
    iput v2, v0, Lcom/shabakaty/downloader/yi3;->z:I

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x20

    .line 17
    :cond_6
    iget v2, p0, Lcom/shabakaty/downloader/yi3$c;->B:I

    .line 18
    iput v2, v0, Lcom/shabakaty/downloader/yi3;->A:I

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_7

    or-int/lit8 v3, v3, 0x40

    .line 19
    :cond_7
    iget v2, p0, Lcom/shabakaty/downloader/yi3$c;->C:I

    .line 20
    iput v2, v0, Lcom/shabakaty/downloader/yi3;->B:I

    and-int/lit16 v2, v1, 0x100

    const/16 v4, 0x100

    if-ne v2, v4, :cond_8

    or-int/lit16 v3, v3, 0x80

    .line 21
    :cond_8
    iget v2, p0, Lcom/shabakaty/downloader/yi3$c;->D:I

    .line 22
    iput v2, v0, Lcom/shabakaty/downloader/yi3;->C:I

    and-int/lit16 v2, v1, 0x200

    const/16 v4, 0x200

    if-ne v2, v4, :cond_9

    or-int/lit16 v3, v3, 0x100

    .line 23
    :cond_9
    iget-object v2, p0, Lcom/shabakaty/downloader/yi3$c;->E:Lcom/shabakaty/downloader/yi3;

    .line 24
    iput-object v2, v0, Lcom/shabakaty/downloader/yi3;->D:Lcom/shabakaty/downloader/yi3;

    and-int/lit16 v2, v1, 0x400

    const/16 v4, 0x400

    if-ne v2, v4, :cond_a

    or-int/lit16 v3, v3, 0x200

    .line 25
    :cond_a
    iget v2, p0, Lcom/shabakaty/downloader/yi3$c;->F:I

    .line 26
    iput v2, v0, Lcom/shabakaty/downloader/yi3;->E:I

    and-int/lit16 v2, v1, 0x800

    const/16 v4, 0x800

    if-ne v2, v4, :cond_b

    or-int/lit16 v3, v3, 0x400

    .line 27
    :cond_b
    iget-object v2, p0, Lcom/shabakaty/downloader/yi3$c;->G:Lcom/shabakaty/downloader/yi3;

    .line 28
    iput-object v2, v0, Lcom/shabakaty/downloader/yi3;->F:Lcom/shabakaty/downloader/yi3;

    and-int/lit16 v2, v1, 0x1000

    const/16 v4, 0x1000

    if-ne v2, v4, :cond_c

    or-int/lit16 v3, v3, 0x800

    .line 29
    :cond_c
    iget v2, p0, Lcom/shabakaty/downloader/yi3$c;->H:I

    .line 30
    iput v2, v0, Lcom/shabakaty/downloader/yi3;->G:I

    const/16 v2, 0x2000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_d

    or-int/lit16 v3, v3, 0x1000

    .line 31
    :cond_d
    iget v1, p0, Lcom/shabakaty/downloader/yi3$c;->I:I

    .line 32
    iput v1, v0, Lcom/shabakaty/downloader/yi3;->H:I

    .line 33
    iput v3, v0, Lcom/shabakaty/downloader/yi3;->t:I

    return-object v0
.end method

.method public n(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/yi3$c;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/yi3;->L:Lcom/shabakaty/downloader/na3;

    check-cast v1, Lcom/shabakaty/downloader/yi3$a;

    invoke-virtual {v1, p1, p2}, Lcom/shabakaty/downloader/yi3$a;->a(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/yi3;
    :try_end_0
    .catch Lcom/shabakaty/downloader/s32; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/yi3$c;->o(Lcom/shabakaty/downloader/yi3;)Lcom/shabakaty/downloader/yi3$c;

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
    check-cast p2, Lcom/shabakaty/downloader/yi3;
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
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/yi3$c;->o(Lcom/shabakaty/downloader/yi3;)Lcom/shabakaty/downloader/yi3$c;

    :cond_1
    throw p1
.end method

.method public o(Lcom/shabakaty/downloader/yi3;)Lcom/shabakaty/downloader/yi3$c;
    .locals 6

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/yi3;->K:Lcom/shabakaty/downloader/yi3;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v1, p1, Lcom/shabakaty/downloader/yi3;->u:Ljava/util/List;

    .line 3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/yi3$c;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p1, Lcom/shabakaty/downloader/yi3;->u:Ljava/util/List;

    .line 6
    iput-object v1, p0, Lcom/shabakaty/downloader/yi3$c;->v:Ljava/util/List;

    .line 7
    iget v1, p0, Lcom/shabakaty/downloader/yi3$c;->u:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/shabakaty/downloader/yi3$c;->u:I

    goto :goto_0

    .line 8
    :cond_1
    iget v1, p0, Lcom/shabakaty/downloader/yi3$c;->u:I

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_2

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/shabakaty/downloader/yi3$c;->v:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/shabakaty/downloader/yi3$c;->v:Ljava/util/List;

    .line 10
    iget v1, p0, Lcom/shabakaty/downloader/yi3$c;->u:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/shabakaty/downloader/yi3$c;->u:I

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/shabakaty/downloader/yi3$c;->v:Ljava/util/List;

    .line 12
    iget-object v3, p1, Lcom/shabakaty/downloader/yi3;->u:Ljava/util/List;

    .line 13
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    :cond_3
    :goto_0
    iget v1, p1, Lcom/shabakaty/downloader/yi3;->t:I

    and-int/lit8 v3, v1, 0x1

    if-ne v3, v2, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x2

    if-eqz v3, :cond_5

    .line 15
    iget-boolean v3, p1, Lcom/shabakaty/downloader/yi3;->v:Z

    .line 16
    iget v5, p0, Lcom/shabakaty/downloader/yi3$c;->u:I

    or-int/2addr v5, v4

    iput v5, p0, Lcom/shabakaty/downloader/yi3$c;->u:I

    .line 17
    iput-boolean v3, p0, Lcom/shabakaty/downloader/yi3$c;->w:Z

    :cond_5
    and-int/2addr v1, v4

    if-ne v1, v4, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_7

    .line 18
    iget v1, p1, Lcom/shabakaty/downloader/yi3;->w:I

    .line 19
    iget v3, p0, Lcom/shabakaty/downloader/yi3$c;->u:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/shabakaty/downloader/yi3$c;->u:I

    .line 20
    iput v1, p0, Lcom/shabakaty/downloader/yi3$c;->x:I

    .line 21
    :cond_7
    invoke-virtual {p1}, Lcom/shabakaty/downloader/yi3;->s()Z

    move-result v1

    const/16 v3, 0x8

    if-eqz v1, :cond_9

    .line 22
    iget-object v1, p1, Lcom/shabakaty/downloader/yi3;->x:Lcom/shabakaty/downloader/yi3;

    .line 23
    iget v4, p0, Lcom/shabakaty/downloader/yi3$c;->u:I

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_8

    iget-object v4, p0, Lcom/shabakaty/downloader/yi3$c;->y:Lcom/shabakaty/downloader/yi3;

    if-eq v4, v0, :cond_8

    .line 24
    invoke-static {v4, v1}, Lcom/shabakaty/downloader/ki3;->a(Lcom/shabakaty/downloader/yi3;Lcom/shabakaty/downloader/yi3;)Lcom/shabakaty/downloader/yi3;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/yi3$c;->y:Lcom/shabakaty/downloader/yi3;

    goto :goto_3

    .line 25
    :cond_8
    iput-object v1, p0, Lcom/shabakaty/downloader/yi3$c;->y:Lcom/shabakaty/downloader/yi3;

    .line 26
    :goto_3
    iget v1, p0, Lcom/shabakaty/downloader/yi3$c;->u:I

    or-int/2addr v1, v3

    iput v1, p0, Lcom/shabakaty/downloader/yi3$c;->u:I

    .line 27
    :cond_9
    iget v1, p1, Lcom/shabakaty/downloader/yi3;->t:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_a

    const/4 v1, 0x1

    goto :goto_4

    :cond_a
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_b

    .line 28
    iget v1, p1, Lcom/shabakaty/downloader/yi3;->y:I

    .line 29
    iget v3, p0, Lcom/shabakaty/downloader/yi3$c;->u:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/shabakaty/downloader/yi3$c;->u:I

    .line 30
    iput v1, p0, Lcom/shabakaty/downloader/yi3$c;->z:I

    .line 31
    :cond_b
    invoke-virtual {p1}, Lcom/shabakaty/downloader/yi3;->r()Z

    move-result v1

    const/16 v3, 0x20

    if-eqz v1, :cond_c

    .line 32
    iget v1, p1, Lcom/shabakaty/downloader/yi3;->z:I

    .line 33
    iget v4, p0, Lcom/shabakaty/downloader/yi3$c;->u:I

    or-int/2addr v4, v3

    iput v4, p0, Lcom/shabakaty/downloader/yi3$c;->u:I

    .line 34
    iput v1, p0, Lcom/shabakaty/downloader/yi3$c;->A:I

    .line 35
    :cond_c
    iget v1, p1, Lcom/shabakaty/downloader/yi3;->t:I

    and-int/lit8 v4, v1, 0x20

    if-ne v4, v3, :cond_d

    const/4 v3, 0x1

    goto :goto_5

    :cond_d
    const/4 v3, 0x0

    :goto_5
    const/16 v4, 0x40

    if-eqz v3, :cond_e

    .line 36
    iget v3, p1, Lcom/shabakaty/downloader/yi3;->A:I

    .line 37
    iget v5, p0, Lcom/shabakaty/downloader/yi3$c;->u:I

    or-int/2addr v5, v4

    iput v5, p0, Lcom/shabakaty/downloader/yi3$c;->u:I

    .line 38
    iput v3, p0, Lcom/shabakaty/downloader/yi3$c;->B:I

    :cond_e
    and-int/2addr v1, v4

    if-ne v1, v4, :cond_f

    const/4 v1, 0x1

    goto :goto_6

    :cond_f
    const/4 v1, 0x0

    :goto_6
    if-eqz v1, :cond_10

    .line 39
    iget v1, p1, Lcom/shabakaty/downloader/yi3;->B:I

    .line 40
    iget v3, p0, Lcom/shabakaty/downloader/yi3$c;->u:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Lcom/shabakaty/downloader/yi3$c;->u:I

    .line 41
    iput v1, p0, Lcom/shabakaty/downloader/yi3$c;->C:I

    .line 42
    :cond_10
    invoke-virtual {p1}, Lcom/shabakaty/downloader/yi3;->u()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 43
    iget v1, p1, Lcom/shabakaty/downloader/yi3;->C:I

    .line 44
    iget v3, p0, Lcom/shabakaty/downloader/yi3$c;->u:I

    or-int/lit16 v3, v3, 0x100

    iput v3, p0, Lcom/shabakaty/downloader/yi3$c;->u:I

    .line 45
    iput v1, p0, Lcom/shabakaty/downloader/yi3$c;->D:I

    .line 46
    :cond_11
    invoke-virtual {p1}, Lcom/shabakaty/downloader/yi3;->t()Z

    move-result v1

    const/16 v3, 0x200

    if-eqz v1, :cond_13

    .line 47
    iget-object v1, p1, Lcom/shabakaty/downloader/yi3;->D:Lcom/shabakaty/downloader/yi3;

    .line 48
    iget v4, p0, Lcom/shabakaty/downloader/yi3$c;->u:I

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_12

    iget-object v4, p0, Lcom/shabakaty/downloader/yi3$c;->E:Lcom/shabakaty/downloader/yi3;

    if-eq v4, v0, :cond_12

    .line 49
    invoke-static {v4, v1}, Lcom/shabakaty/downloader/ki3;->a(Lcom/shabakaty/downloader/yi3;Lcom/shabakaty/downloader/yi3;)Lcom/shabakaty/downloader/yi3;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/yi3$c;->E:Lcom/shabakaty/downloader/yi3;

    goto :goto_7

    .line 50
    :cond_12
    iput-object v1, p0, Lcom/shabakaty/downloader/yi3$c;->E:Lcom/shabakaty/downloader/yi3;

    .line 51
    :goto_7
    iget v1, p0, Lcom/shabakaty/downloader/yi3$c;->u:I

    or-int/2addr v1, v3

    iput v1, p0, Lcom/shabakaty/downloader/yi3$c;->u:I

    .line 52
    :cond_13
    iget v1, p1, Lcom/shabakaty/downloader/yi3;->t:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_14

    const/4 v1, 0x1

    goto :goto_8

    :cond_14
    const/4 v1, 0x0

    :goto_8
    if-eqz v1, :cond_15

    .line 53
    iget v1, p1, Lcom/shabakaty/downloader/yi3;->E:I

    .line 54
    iget v3, p0, Lcom/shabakaty/downloader/yi3$c;->u:I

    or-int/lit16 v3, v3, 0x400

    iput v3, p0, Lcom/shabakaty/downloader/yi3$c;->u:I

    .line 55
    iput v1, p0, Lcom/shabakaty/downloader/yi3$c;->F:I

    .line 56
    :cond_15
    invoke-virtual {p1}, Lcom/shabakaty/downloader/yi3;->q()Z

    move-result v1

    const/16 v3, 0x800

    if-eqz v1, :cond_17

    .line 57
    iget-object v1, p1, Lcom/shabakaty/downloader/yi3;->F:Lcom/shabakaty/downloader/yi3;

    .line 58
    iget v4, p0, Lcom/shabakaty/downloader/yi3$c;->u:I

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_16

    iget-object v4, p0, Lcom/shabakaty/downloader/yi3$c;->G:Lcom/shabakaty/downloader/yi3;

    if-eq v4, v0, :cond_16

    .line 59
    invoke-static {v4, v1}, Lcom/shabakaty/downloader/ki3;->a(Lcom/shabakaty/downloader/yi3;Lcom/shabakaty/downloader/yi3;)Lcom/shabakaty/downloader/yi3;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/yi3$c;->G:Lcom/shabakaty/downloader/yi3;

    goto :goto_9

    .line 60
    :cond_16
    iput-object v1, p0, Lcom/shabakaty/downloader/yi3$c;->G:Lcom/shabakaty/downloader/yi3;

    .line 61
    :goto_9
    iget v0, p0, Lcom/shabakaty/downloader/yi3$c;->u:I

    or-int/2addr v0, v3

    iput v0, p0, Lcom/shabakaty/downloader/yi3$c;->u:I

    .line 62
    :cond_17
    iget v0, p1, Lcom/shabakaty/downloader/yi3;->t:I

    and-int/lit16 v1, v0, 0x800

    if-ne v1, v3, :cond_18

    const/4 v1, 0x1

    goto :goto_a

    :cond_18
    const/4 v1, 0x0

    :goto_a
    const/16 v3, 0x1000

    if-eqz v1, :cond_19

    .line 63
    iget v1, p1, Lcom/shabakaty/downloader/yi3;->G:I

    .line 64
    iget v4, p0, Lcom/shabakaty/downloader/yi3$c;->u:I

    or-int/2addr v4, v3

    iput v4, p0, Lcom/shabakaty/downloader/yi3$c;->u:I

    .line 65
    iput v1, p0, Lcom/shabakaty/downloader/yi3$c;->H:I

    :cond_19
    and-int/2addr v0, v3

    if-ne v0, v3, :cond_1a

    goto :goto_b

    :cond_1a
    const/4 v2, 0x0

    :goto_b
    if-eqz v2, :cond_1b

    .line 66
    iget v0, p1, Lcom/shabakaty/downloader/yi3;->H:I

    .line 67
    iget v1, p0, Lcom/shabakaty/downloader/yi3$c;->u:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, p0, Lcom/shabakaty/downloader/yi3$c;->u:I

    .line 68
    iput v0, p0, Lcom/shabakaty/downloader/yi3$c;->I:I

    .line 69
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/pp1$c;->l(Lcom/shabakaty/downloader/pp1$d;)V

    .line 70
    iget-object v0, p0, Lcom/shabakaty/downloader/pp1$b;->r:Lcom/shabakaty/downloader/ep;

    .line 71
    iget-object p1, p1, Lcom/shabakaty/downloader/yi3;->s:Lcom/shabakaty/downloader/ep;

    .line 72
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ep;->h(Lcom/shabakaty/downloader/ep;)Lcom/shabakaty/downloader/ep;

    move-result-object p1

    .line 73
    iput-object p1, p0, Lcom/shabakaty/downloader/pp1$b;->r:Lcom/shabakaty/downloader/ep;

    return-object p0
.end method

.method public bridge synthetic o1(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/yi3$c;->n(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/yi3$c;

    return-object p0
.end method
