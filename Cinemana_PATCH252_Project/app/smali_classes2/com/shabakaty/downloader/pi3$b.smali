.class public final Lcom/shabakaty/downloader/pi3$b;
.super Lcom/shabakaty/downloader/pp1$b;
.source "ProtoBuf.java"

# interfaces
.implements Lcom/shabakaty/downloader/fs2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/pi3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/pp1$b<",
        "Lcom/shabakaty/downloader/pi3;",
        "Lcom/shabakaty/downloader/pi3$b;",
        ">;"
    }
.end annotation


# instance fields
.field public s:I

.field public t:I

.field public u:I

.field public v:Lcom/shabakaty/downloader/pi3$c;

.field public w:Lcom/shabakaty/downloader/yi3;

.field public x:I

.field public y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/pi3;",
            ">;"
        }
    .end annotation
.end field

.field public z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/pi3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1$b;-><init>()V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/pi3$c;->s:Lcom/shabakaty/downloader/pi3$c;

    iput-object v0, p0, Lcom/shabakaty/downloader/pi3$b;->v:Lcom/shabakaty/downloader/pi3$c;

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/yi3;->K:Lcom/shabakaty/downloader/yi3;

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/pi3$b;->w:Lcom/shabakaty/downloader/yi3;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/pi3$b;->y:Ljava/util/List;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/pi3$b;->z:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public build()Lcom/shabakaty/downloader/es2;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pi3$b;->l()Lcom/shabakaty/downloader/pi3;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/pi3;->a()Z

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
    new-instance v0, Lcom/shabakaty/downloader/pi3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/pi3$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pi3$b;->l()Lcom/shabakaty/downloader/pi3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/pi3$b;->n(Lcom/shabakaty/downloader/pi3;)Lcom/shabakaty/downloader/pi3$b;

    return-object v0
.end method

.method public bridge synthetic h(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/j0$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/pi3$b;->m(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/pi3$b;

    return-object p0
.end method

.method public j()Lcom/shabakaty/downloader/pp1$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pi3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/pi3$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pi3$b;->l()Lcom/shabakaty/downloader/pi3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/pi3$b;->n(Lcom/shabakaty/downloader/pi3;)Lcom/shabakaty/downloader/pi3$b;

    return-object v0
.end method

.method public bridge synthetic k(Lcom/shabakaty/downloader/pp1;)Lcom/shabakaty/downloader/pp1$b;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/pi3;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/pi3$b;->n(Lcom/shabakaty/downloader/pi3;)Lcom/shabakaty/downloader/pi3$b;

    return-object p0
.end method

.method public l()Lcom/shabakaty/downloader/pi3;
    .locals 5

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pi3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/pi3;-><init>(Lcom/shabakaty/downloader/pp1$b;Lcom/shabakaty/downloader/md0;)V

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/pi3$b;->s:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lcom/shabakaty/downloader/pi3$b;->t:I

    .line 4
    iput v2, v0, Lcom/shabakaty/downloader/pi3;->t:I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 5
    :cond_1
    iget v2, p0, Lcom/shabakaty/downloader/pi3$b;->u:I

    .line 6
    iput v2, v0, Lcom/shabakaty/downloader/pi3;->u:I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 7
    :cond_2
    iget-object v2, p0, Lcom/shabakaty/downloader/pi3$b;->v:Lcom/shabakaty/downloader/pi3$c;

    .line 8
    iput-object v2, v0, Lcom/shabakaty/downloader/pi3;->v:Lcom/shabakaty/downloader/pi3$c;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 9
    :cond_3
    iget-object v2, p0, Lcom/shabakaty/downloader/pi3$b;->w:Lcom/shabakaty/downloader/yi3;

    .line 10
    iput-object v2, v0, Lcom/shabakaty/downloader/pi3;->w:Lcom/shabakaty/downloader/yi3;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 11
    :cond_4
    iget v2, p0, Lcom/shabakaty/downloader/pi3$b;->x:I

    .line 12
    iput v2, v0, Lcom/shabakaty/downloader/pi3;->x:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    .line 13
    iget-object v1, p0, Lcom/shabakaty/downloader/pi3$b;->y:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/pi3$b;->y:Ljava/util/List;

    .line 14
    iget v1, p0, Lcom/shabakaty/downloader/pi3$b;->s:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/shabakaty/downloader/pi3$b;->s:I

    .line 15
    :cond_5
    iget-object v1, p0, Lcom/shabakaty/downloader/pi3$b;->y:Ljava/util/List;

    .line 16
    iput-object v1, v0, Lcom/shabakaty/downloader/pi3;->y:Ljava/util/List;

    .line 17
    iget v1, p0, Lcom/shabakaty/downloader/pi3$b;->s:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    .line 18
    iget-object v1, p0, Lcom/shabakaty/downloader/pi3$b;->z:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/pi3$b;->z:Ljava/util/List;

    .line 19
    iget v1, p0, Lcom/shabakaty/downloader/pi3$b;->s:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lcom/shabakaty/downloader/pi3$b;->s:I

    .line 20
    :cond_6
    iget-object v1, p0, Lcom/shabakaty/downloader/pi3$b;->z:Ljava/util/List;

    .line 21
    iput-object v1, v0, Lcom/shabakaty/downloader/pi3;->z:Ljava/util/List;

    .line 22
    iput v3, v0, Lcom/shabakaty/downloader/pi3;->s:I

    return-object v0
.end method

.method public m(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/pi3$b;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/pi3;->D:Lcom/shabakaty/downloader/na3;

    check-cast v1, Lcom/shabakaty/downloader/pi3$a;

    invoke-virtual {v1, p1, p2}, Lcom/shabakaty/downloader/pi3$a;->a(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/pi3;
    :try_end_0
    .catch Lcom/shabakaty/downloader/s32; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/pi3$b;->n(Lcom/shabakaty/downloader/pi3;)Lcom/shabakaty/downloader/pi3$b;

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
    check-cast p2, Lcom/shabakaty/downloader/pi3;
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
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/pi3$b;->n(Lcom/shabakaty/downloader/pi3;)Lcom/shabakaty/downloader/pi3$b;

    :cond_1
    throw p1
.end method

.method public n(Lcom/shabakaty/downloader/pi3;)Lcom/shabakaty/downloader/pi3$b;
    .locals 5

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/pi3;->C:Lcom/shabakaty/downloader/pi3;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p1, Lcom/shabakaty/downloader/pi3;->s:I

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
    iget v1, p1, Lcom/shabakaty/downloader/pi3;->t:I

    .line 4
    iget v4, p0, Lcom/shabakaty/downloader/pi3$b;->s:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/shabakaty/downloader/pi3$b;->s:I

    .line 5
    iput v1, p0, Lcom/shabakaty/downloader/pi3$b;->t:I

    :cond_2
    and-int/lit8 v1, v0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    .line 6
    iget v1, p1, Lcom/shabakaty/downloader/pi3;->u:I

    .line 7
    iget v4, p0, Lcom/shabakaty/downloader/pi3$b;->s:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/shabakaty/downloader/pi3$b;->s:I

    .line 8
    iput v1, p0, Lcom/shabakaty/downloader/pi3$b;->u:I

    :cond_4
    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_6

    .line 9
    iget-object v0, p1, Lcom/shabakaty/downloader/pi3;->v:Lcom/shabakaty/downloader/pi3$c;

    .line 10
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget v3, p0, Lcom/shabakaty/downloader/pi3$b;->s:I

    or-int/2addr v1, v3

    iput v1, p0, Lcom/shabakaty/downloader/pi3$b;->s:I

    .line 12
    iput-object v0, p0, Lcom/shabakaty/downloader/pi3$b;->v:Lcom/shabakaty/downloader/pi3$c;

    .line 13
    :cond_6
    iget v0, p1, Lcom/shabakaty/downloader/pi3;->s:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_9

    .line 14
    iget-object v0, p1, Lcom/shabakaty/downloader/pi3;->w:Lcom/shabakaty/downloader/yi3;

    .line 15
    iget v3, p0, Lcom/shabakaty/downloader/pi3$b;->s:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_8

    iget-object v3, p0, Lcom/shabakaty/downloader/pi3$b;->w:Lcom/shabakaty/downloader/yi3;

    .line 16
    sget-object v4, Lcom/shabakaty/downloader/yi3;->K:Lcom/shabakaty/downloader/yi3;

    if-eq v3, v4, :cond_8

    .line 17
    invoke-static {v3, v0}, Lcom/shabakaty/downloader/ki3;->a(Lcom/shabakaty/downloader/yi3;Lcom/shabakaty/downloader/yi3;)Lcom/shabakaty/downloader/yi3;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/pi3$b;->w:Lcom/shabakaty/downloader/yi3;

    goto :goto_4

    .line 18
    :cond_8
    iput-object v0, p0, Lcom/shabakaty/downloader/pi3$b;->w:Lcom/shabakaty/downloader/yi3;

    .line 19
    :goto_4
    iget v0, p0, Lcom/shabakaty/downloader/pi3$b;->s:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/shabakaty/downloader/pi3$b;->s:I

    .line 20
    :cond_9
    iget v0, p1, Lcom/shabakaty/downloader/pi3;->s:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/4 v2, 0x1

    :cond_a
    if-eqz v2, :cond_b

    .line 21
    iget v0, p1, Lcom/shabakaty/downloader/pi3;->x:I

    .line 22
    iget v2, p0, Lcom/shabakaty/downloader/pi3$b;->s:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/shabakaty/downloader/pi3$b;->s:I

    .line 23
    iput v0, p0, Lcom/shabakaty/downloader/pi3$b;->x:I

    .line 24
    :cond_b
    iget-object v0, p1, Lcom/shabakaty/downloader/pi3;->y:Ljava/util/List;

    .line 25
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 26
    iget-object v0, p0, Lcom/shabakaty/downloader/pi3$b;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 27
    iget-object v0, p1, Lcom/shabakaty/downloader/pi3;->y:Ljava/util/List;

    .line 28
    iput-object v0, p0, Lcom/shabakaty/downloader/pi3$b;->y:Ljava/util/List;

    .line 29
    iget v0, p0, Lcom/shabakaty/downloader/pi3$b;->s:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/shabakaty/downloader/pi3$b;->s:I

    goto :goto_5

    .line 30
    :cond_c
    iget v0, p0, Lcom/shabakaty/downloader/pi3$b;->s:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_d

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/shabakaty/downloader/pi3$b;->y:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/pi3$b;->y:Ljava/util/List;

    .line 32
    iget v0, p0, Lcom/shabakaty/downloader/pi3$b;->s:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/shabakaty/downloader/pi3$b;->s:I

    .line 33
    :cond_d
    iget-object v0, p0, Lcom/shabakaty/downloader/pi3$b;->y:Ljava/util/List;

    .line 34
    iget-object v1, p1, Lcom/shabakaty/downloader/pi3;->y:Ljava/util/List;

    .line 35
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 36
    :cond_e
    :goto_5
    iget-object v0, p1, Lcom/shabakaty/downloader/pi3;->z:Ljava/util/List;

    .line 37
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 38
    iget-object v0, p0, Lcom/shabakaty/downloader/pi3$b;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 39
    iget-object v0, p1, Lcom/shabakaty/downloader/pi3;->z:Ljava/util/List;

    .line 40
    iput-object v0, p0, Lcom/shabakaty/downloader/pi3$b;->z:Ljava/util/List;

    .line 41
    iget v0, p0, Lcom/shabakaty/downloader/pi3$b;->s:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/shabakaty/downloader/pi3$b;->s:I

    goto :goto_6

    .line 42
    :cond_f
    iget v0, p0, Lcom/shabakaty/downloader/pi3$b;->s:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_10

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/shabakaty/downloader/pi3$b;->z:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/pi3$b;->z:Ljava/util/List;

    .line 44
    iget v0, p0, Lcom/shabakaty/downloader/pi3$b;->s:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/shabakaty/downloader/pi3$b;->s:I

    .line 45
    :cond_10
    iget-object v0, p0, Lcom/shabakaty/downloader/pi3$b;->z:Ljava/util/List;

    .line 46
    iget-object v1, p1, Lcom/shabakaty/downloader/pi3;->z:Ljava/util/List;

    .line 47
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 48
    :cond_11
    :goto_6
    iget-object v0, p0, Lcom/shabakaty/downloader/pp1$b;->r:Lcom/shabakaty/downloader/ep;

    .line 49
    iget-object p1, p1, Lcom/shabakaty/downloader/pi3;->r:Lcom/shabakaty/downloader/ep;

    .line 50
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ep;->h(Lcom/shabakaty/downloader/ep;)Lcom/shabakaty/downloader/ep;

    move-result-object p1

    .line 51
    iput-object p1, p0, Lcom/shabakaty/downloader/pp1$b;->r:Lcom/shabakaty/downloader/ep;

    return-object p0
.end method

.method public bridge synthetic o1(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/pi3$b;->m(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/pi3$b;

    return-object p0
.end method
