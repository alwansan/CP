.class public final Lcom/shabakaty/downloader/qi3$b;
.super Lcom/shabakaty/downloader/pp1$c;
.source "ProtoBuf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/qi3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/pp1$c<",
        "Lcom/shabakaty/downloader/qi3;",
        "Lcom/shabakaty/downloader/qi3$b;",
        ">;"
    }
.end annotation


# instance fields
.field public A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/aj3;",
            ">;"
        }
    .end annotation
.end field

.field public B:Lcom/shabakaty/downloader/yi3;

.field public C:I

.field public D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/cj3;",
            ">;"
        }
    .end annotation
.end field

.field public E:Lcom/shabakaty/downloader/bj3;

.field public F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public G:Lcom/shabakaty/downloader/mi3;

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:Lcom/shabakaty/downloader/yi3;

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1$c;-><init>()V

    const/4 v0, 0x6

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/qi3$b;->v:I

    .line 3
    iput v0, p0, Lcom/shabakaty/downloader/qi3$b;->w:I

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/yi3;->K:Lcom/shabakaty/downloader/yi3;

    .line 5
    iput-object v0, p0, Lcom/shabakaty/downloader/qi3$b;->y:Lcom/shabakaty/downloader/yi3;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/qi3$b;->A:Ljava/util/List;

    .line 7
    iput-object v0, p0, Lcom/shabakaty/downloader/qi3$b;->B:Lcom/shabakaty/downloader/yi3;

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/qi3$b;->D:Ljava/util/List;

    .line 9
    sget-object v0, Lcom/shabakaty/downloader/bj3;->x:Lcom/shabakaty/downloader/bj3;

    .line 10
    iput-object v0, p0, Lcom/shabakaty/downloader/qi3$b;->E:Lcom/shabakaty/downloader/bj3;

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/qi3$b;->F:Ljava/util/List;

    .line 12
    sget-object v0, Lcom/shabakaty/downloader/mi3;->v:Lcom/shabakaty/downloader/mi3;

    .line 13
    iput-object v0, p0, Lcom/shabakaty/downloader/qi3$b;->G:Lcom/shabakaty/downloader/mi3;

    return-void
.end method


# virtual methods
.method public build()Lcom/shabakaty/downloader/es2;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qi3$b;->m()Lcom/shabakaty/downloader/qi3;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qi3;->a()Z

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
    new-instance v0, Lcom/shabakaty/downloader/qi3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/qi3$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qi3$b;->m()Lcom/shabakaty/downloader/qi3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/qi3$b;->o(Lcom/shabakaty/downloader/qi3;)Lcom/shabakaty/downloader/qi3$b;

    return-object v0
.end method

.method public bridge synthetic h(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/j0$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/qi3$b;->n(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/qi3$b;

    return-object p0
.end method

.method public j()Lcom/shabakaty/downloader/pp1$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/qi3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/qi3$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qi3$b;->m()Lcom/shabakaty/downloader/qi3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/qi3$b;->o(Lcom/shabakaty/downloader/qi3;)Lcom/shabakaty/downloader/qi3$b;

    return-object v0
.end method

.method public bridge synthetic k(Lcom/shabakaty/downloader/pp1;)Lcom/shabakaty/downloader/pp1$b;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/qi3;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/qi3$b;->o(Lcom/shabakaty/downloader/qi3;)Lcom/shabakaty/downloader/qi3$b;

    return-object p0
.end method

.method public m()Lcom/shabakaty/downloader/qi3;
    .locals 5

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/qi3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/qi3;-><init>(Lcom/shabakaty/downloader/pp1$c;Lcom/shabakaty/downloader/md0;)V

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/qi3$b;->u:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lcom/shabakaty/downloader/qi3$b;->v:I

    .line 4
    iput v2, v0, Lcom/shabakaty/downloader/qi3;->u:I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 5
    :cond_1
    iget v2, p0, Lcom/shabakaty/downloader/qi3$b;->w:I

    .line 6
    iput v2, v0, Lcom/shabakaty/downloader/qi3;->v:I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 7
    :cond_2
    iget v2, p0, Lcom/shabakaty/downloader/qi3$b;->x:I

    .line 8
    iput v2, v0, Lcom/shabakaty/downloader/qi3;->w:I

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 9
    :cond_3
    iget-object v2, p0, Lcom/shabakaty/downloader/qi3$b;->y:Lcom/shabakaty/downloader/yi3;

    .line 10
    iput-object v2, v0, Lcom/shabakaty/downloader/qi3;->x:Lcom/shabakaty/downloader/yi3;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 11
    :cond_4
    iget v2, p0, Lcom/shabakaty/downloader/qi3$b;->z:I

    .line 12
    iput v2, v0, Lcom/shabakaty/downloader/qi3;->y:I

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    .line 13
    iget-object v2, p0, Lcom/shabakaty/downloader/qi3$b;->A:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/shabakaty/downloader/qi3$b;->A:Ljava/util/List;

    .line 14
    iget v2, p0, Lcom/shabakaty/downloader/qi3$b;->u:I

    and-int/lit8 v2, v2, -0x21

    iput v2, p0, Lcom/shabakaty/downloader/qi3$b;->u:I

    .line 15
    :cond_5
    iget-object v2, p0, Lcom/shabakaty/downloader/qi3$b;->A:Ljava/util/List;

    .line 16
    iput-object v2, v0, Lcom/shabakaty/downloader/qi3;->z:Ljava/util/List;

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x20

    .line 17
    :cond_6
    iget-object v2, p0, Lcom/shabakaty/downloader/qi3$b;->B:Lcom/shabakaty/downloader/yi3;

    .line 18
    iput-object v2, v0, Lcom/shabakaty/downloader/qi3;->A:Lcom/shabakaty/downloader/yi3;

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_7

    or-int/lit8 v3, v3, 0x40

    .line 19
    :cond_7
    iget v2, p0, Lcom/shabakaty/downloader/qi3$b;->C:I

    .line 20
    iput v2, v0, Lcom/shabakaty/downloader/qi3;->B:I

    .line 21
    iget v2, p0, Lcom/shabakaty/downloader/qi3$b;->u:I

    const/16 v4, 0x100

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_8

    .line 22
    iget-object v2, p0, Lcom/shabakaty/downloader/qi3$b;->D:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/shabakaty/downloader/qi3$b;->D:Ljava/util/List;

    .line 23
    iget v2, p0, Lcom/shabakaty/downloader/qi3$b;->u:I

    and-int/lit16 v2, v2, -0x101

    iput v2, p0, Lcom/shabakaty/downloader/qi3$b;->u:I

    .line 24
    :cond_8
    iget-object v2, p0, Lcom/shabakaty/downloader/qi3$b;->D:Ljava/util/List;

    .line 25
    iput-object v2, v0, Lcom/shabakaty/downloader/qi3;->C:Ljava/util/List;

    and-int/lit16 v2, v1, 0x200

    const/16 v4, 0x200

    if-ne v2, v4, :cond_9

    or-int/lit16 v3, v3, 0x80

    .line 26
    :cond_9
    iget-object v2, p0, Lcom/shabakaty/downloader/qi3$b;->E:Lcom/shabakaty/downloader/bj3;

    .line 27
    iput-object v2, v0, Lcom/shabakaty/downloader/qi3;->D:Lcom/shabakaty/downloader/bj3;

    .line 28
    iget v2, p0, Lcom/shabakaty/downloader/qi3$b;->u:I

    const/16 v4, 0x400

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_a

    .line 29
    iget-object v2, p0, Lcom/shabakaty/downloader/qi3$b;->F:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/shabakaty/downloader/qi3$b;->F:Ljava/util/List;

    .line 30
    iget v2, p0, Lcom/shabakaty/downloader/qi3$b;->u:I

    and-int/lit16 v2, v2, -0x401

    iput v2, p0, Lcom/shabakaty/downloader/qi3$b;->u:I

    .line 31
    :cond_a
    iget-object v2, p0, Lcom/shabakaty/downloader/qi3$b;->F:Ljava/util/List;

    .line 32
    iput-object v2, v0, Lcom/shabakaty/downloader/qi3;->E:Ljava/util/List;

    const/16 v2, 0x800

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_b

    or-int/lit16 v3, v3, 0x100

    .line 33
    :cond_b
    iget-object v1, p0, Lcom/shabakaty/downloader/qi3$b;->G:Lcom/shabakaty/downloader/mi3;

    .line 34
    iput-object v1, v0, Lcom/shabakaty/downloader/qi3;->F:Lcom/shabakaty/downloader/mi3;

    .line 35
    iput v3, v0, Lcom/shabakaty/downloader/qi3;->t:I

    return-object v0
.end method

.method public n(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/qi3$b;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/qi3;->J:Lcom/shabakaty/downloader/na3;

    check-cast v1, Lcom/shabakaty/downloader/qi3$a;

    invoke-virtual {v1, p1, p2}, Lcom/shabakaty/downloader/qi3$a;->a(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/qi3;
    :try_end_0
    .catch Lcom/shabakaty/downloader/s32; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/qi3$b;->o(Lcom/shabakaty/downloader/qi3;)Lcom/shabakaty/downloader/qi3$b;

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
    check-cast p2, Lcom/shabakaty/downloader/qi3;
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
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/qi3$b;->o(Lcom/shabakaty/downloader/qi3;)Lcom/shabakaty/downloader/qi3$b;

    :cond_1
    throw p1
.end method

.method public o(Lcom/shabakaty/downloader/qi3;)Lcom/shabakaty/downloader/qi3$b;
    .locals 6

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/qi3;->I:Lcom/shabakaty/downloader/qi3;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p1, Lcom/shabakaty/downloader/qi3;->t:I

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
    iget v1, p1, Lcom/shabakaty/downloader/qi3;->u:I

    .line 4
    iget v4, p0, Lcom/shabakaty/downloader/qi3$b;->u:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/shabakaty/downloader/qi3$b;->u:I

    .line 5
    iput v1, p0, Lcom/shabakaty/downloader/qi3$b;->v:I

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
    iget v1, p1, Lcom/shabakaty/downloader/qi3;->v:I

    .line 7
    iget v4, p0, Lcom/shabakaty/downloader/qi3$b;->u:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/shabakaty/downloader/qi3$b;->u:I

    .line 8
    iput v1, p0, Lcom/shabakaty/downloader/qi3$b;->w:I

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
    iget v0, p1, Lcom/shabakaty/downloader/qi3;->w:I

    .line 10
    iget v3, p0, Lcom/shabakaty/downloader/qi3$b;->u:I

    or-int/2addr v1, v3

    iput v1, p0, Lcom/shabakaty/downloader/qi3$b;->u:I

    .line 11
    iput v0, p0, Lcom/shabakaty/downloader/qi3$b;->x:I

    .line 12
    :cond_6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qi3;->s()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 13
    iget-object v0, p1, Lcom/shabakaty/downloader/qi3;->x:Lcom/shabakaty/downloader/yi3;

    .line 14
    iget v1, p0, Lcom/shabakaty/downloader/qi3$b;->u:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_7

    iget-object v1, p0, Lcom/shabakaty/downloader/qi3$b;->y:Lcom/shabakaty/downloader/yi3;

    .line 15
    sget-object v4, Lcom/shabakaty/downloader/yi3;->K:Lcom/shabakaty/downloader/yi3;

    if-eq v1, v4, :cond_7

    .line 16
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/ki3;->a(Lcom/shabakaty/downloader/yi3;Lcom/shabakaty/downloader/yi3;)Lcom/shabakaty/downloader/yi3;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/qi3$b;->y:Lcom/shabakaty/downloader/yi3;

    goto :goto_3

    .line 17
    :cond_7
    iput-object v0, p0, Lcom/shabakaty/downloader/qi3$b;->y:Lcom/shabakaty/downloader/yi3;

    .line 18
    :goto_3
    iget v0, p0, Lcom/shabakaty/downloader/qi3$b;->u:I

    or-int/2addr v0, v3

    iput v0, p0, Lcom/shabakaty/downloader/qi3$b;->u:I

    .line 19
    :cond_8
    iget v0, p1, Lcom/shabakaty/downloader/qi3;->t:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_a

    .line 20
    iget v0, p1, Lcom/shabakaty/downloader/qi3;->y:I

    .line 21
    iget v3, p0, Lcom/shabakaty/downloader/qi3$b;->u:I

    or-int/2addr v1, v3

    iput v1, p0, Lcom/shabakaty/downloader/qi3$b;->u:I

    .line 22
    iput v0, p0, Lcom/shabakaty/downloader/qi3$b;->z:I

    .line 23
    :cond_a
    iget-object v0, p1, Lcom/shabakaty/downloader/qi3;->z:Ljava/util/List;

    .line 24
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 25
    iget-object v0, p0, Lcom/shabakaty/downloader/qi3$b;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 26
    iget-object v0, p1, Lcom/shabakaty/downloader/qi3;->z:Ljava/util/List;

    .line 27
    iput-object v0, p0, Lcom/shabakaty/downloader/qi3$b;->A:Ljava/util/List;

    .line 28
    iget v0, p0, Lcom/shabakaty/downloader/qi3$b;->u:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/shabakaty/downloader/qi3$b;->u:I

    goto :goto_5

    .line 29
    :cond_b
    iget v0, p0, Lcom/shabakaty/downloader/qi3$b;->u:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_c

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/shabakaty/downloader/qi3$b;->A:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/qi3$b;->A:Ljava/util/List;

    .line 31
    iget v0, p0, Lcom/shabakaty/downloader/qi3$b;->u:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/shabakaty/downloader/qi3$b;->u:I

    .line 32
    :cond_c
    iget-object v0, p0, Lcom/shabakaty/downloader/qi3$b;->A:Ljava/util/List;

    .line 33
    iget-object v1, p1, Lcom/shabakaty/downloader/qi3;->z:Ljava/util/List;

    .line 34
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    :cond_d
    :goto_5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qi3;->q()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 36
    iget-object v0, p1, Lcom/shabakaty/downloader/qi3;->A:Lcom/shabakaty/downloader/yi3;

    .line 37
    iget v1, p0, Lcom/shabakaty/downloader/qi3$b;->u:I

    const/16 v3, 0x40

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_e

    iget-object v1, p0, Lcom/shabakaty/downloader/qi3$b;->B:Lcom/shabakaty/downloader/yi3;

    .line 38
    sget-object v4, Lcom/shabakaty/downloader/yi3;->K:Lcom/shabakaty/downloader/yi3;

    if-eq v1, v4, :cond_e

    .line 39
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/ki3;->a(Lcom/shabakaty/downloader/yi3;Lcom/shabakaty/downloader/yi3;)Lcom/shabakaty/downloader/yi3;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/qi3$b;->B:Lcom/shabakaty/downloader/yi3;

    goto :goto_6

    .line 40
    :cond_e
    iput-object v0, p0, Lcom/shabakaty/downloader/qi3$b;->B:Lcom/shabakaty/downloader/yi3;

    .line 41
    :goto_6
    iget v0, p0, Lcom/shabakaty/downloader/qi3$b;->u:I

    or-int/2addr v0, v3

    iput v0, p0, Lcom/shabakaty/downloader/qi3$b;->u:I

    .line 42
    :cond_f
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qi3;->r()Z

    move-result v0

    const/16 v1, 0x80

    if-eqz v0, :cond_10

    .line 43
    iget v0, p1, Lcom/shabakaty/downloader/qi3;->B:I

    .line 44
    iget v3, p0, Lcom/shabakaty/downloader/qi3$b;->u:I

    or-int/2addr v3, v1

    iput v3, p0, Lcom/shabakaty/downloader/qi3$b;->u:I

    .line 45
    iput v0, p0, Lcom/shabakaty/downloader/qi3$b;->C:I

    .line 46
    :cond_10
    iget-object v0, p1, Lcom/shabakaty/downloader/qi3;->C:Ljava/util/List;

    .line 47
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v3, 0x100

    if-nez v0, :cond_13

    .line 48
    iget-object v0, p0, Lcom/shabakaty/downloader/qi3$b;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 49
    iget-object v0, p1, Lcom/shabakaty/downloader/qi3;->C:Ljava/util/List;

    .line 50
    iput-object v0, p0, Lcom/shabakaty/downloader/qi3$b;->D:Ljava/util/List;

    .line 51
    iget v0, p0, Lcom/shabakaty/downloader/qi3$b;->u:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/shabakaty/downloader/qi3$b;->u:I

    goto :goto_7

    .line 52
    :cond_11
    iget v0, p0, Lcom/shabakaty/downloader/qi3$b;->u:I

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_12

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/shabakaty/downloader/qi3$b;->D:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/qi3$b;->D:Ljava/util/List;

    .line 54
    iget v0, p0, Lcom/shabakaty/downloader/qi3$b;->u:I

    or-int/2addr v0, v3

    iput v0, p0, Lcom/shabakaty/downloader/qi3$b;->u:I

    .line 55
    :cond_12
    iget-object v0, p0, Lcom/shabakaty/downloader/qi3$b;->D:Ljava/util/List;

    .line 56
    iget-object v4, p1, Lcom/shabakaty/downloader/qi3;->C:Ljava/util/List;

    .line 57
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 58
    :cond_13
    :goto_7
    iget v0, p1, Lcom/shabakaty/downloader/qi3;->t:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_8

    :cond_14
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_16

    .line 59
    iget-object v0, p1, Lcom/shabakaty/downloader/qi3;->D:Lcom/shabakaty/downloader/bj3;

    .line 60
    iget v1, p0, Lcom/shabakaty/downloader/qi3$b;->u:I

    const/16 v4, 0x200

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_15

    iget-object v1, p0, Lcom/shabakaty/downloader/qi3$b;->E:Lcom/shabakaty/downloader/bj3;

    .line 61
    sget-object v5, Lcom/shabakaty/downloader/bj3;->x:Lcom/shabakaty/downloader/bj3;

    if-eq v1, v5, :cond_15

    .line 62
    invoke-static {v1}, Lcom/shabakaty/downloader/bj3;->i(Lcom/shabakaty/downloader/bj3;)Lcom/shabakaty/downloader/bj3$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/bj3$b;->n(Lcom/shabakaty/downloader/bj3;)Lcom/shabakaty/downloader/bj3$b;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/bj3$b;->l()Lcom/shabakaty/downloader/bj3;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/qi3$b;->E:Lcom/shabakaty/downloader/bj3;

    goto :goto_9

    .line 63
    :cond_15
    iput-object v0, p0, Lcom/shabakaty/downloader/qi3$b;->E:Lcom/shabakaty/downloader/bj3;

    .line 64
    :goto_9
    iget v0, p0, Lcom/shabakaty/downloader/qi3$b;->u:I

    or-int/2addr v0, v4

    iput v0, p0, Lcom/shabakaty/downloader/qi3$b;->u:I

    .line 65
    :cond_16
    iget-object v0, p1, Lcom/shabakaty/downloader/qi3;->E:Ljava/util/List;

    .line 66
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 67
    iget-object v0, p0, Lcom/shabakaty/downloader/qi3$b;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 68
    iget-object v0, p1, Lcom/shabakaty/downloader/qi3;->E:Ljava/util/List;

    .line 69
    iput-object v0, p0, Lcom/shabakaty/downloader/qi3$b;->F:Ljava/util/List;

    .line 70
    iget v0, p0, Lcom/shabakaty/downloader/qi3$b;->u:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/shabakaty/downloader/qi3$b;->u:I

    goto :goto_a

    .line 71
    :cond_17
    iget v0, p0, Lcom/shabakaty/downloader/qi3$b;->u:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_18

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/shabakaty/downloader/qi3$b;->F:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/qi3$b;->F:Ljava/util/List;

    .line 73
    iget v0, p0, Lcom/shabakaty/downloader/qi3$b;->u:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/shabakaty/downloader/qi3$b;->u:I

    .line 74
    :cond_18
    iget-object v0, p0, Lcom/shabakaty/downloader/qi3$b;->F:Ljava/util/List;

    .line 75
    iget-object v1, p1, Lcom/shabakaty/downloader/qi3;->E:Ljava/util/List;

    .line 76
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 77
    :cond_19
    :goto_a
    iget v0, p1, Lcom/shabakaty/downloader/qi3;->t:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_1a

    const/4 v2, 0x1

    :cond_1a
    if-eqz v2, :cond_1c

    .line 78
    iget-object v0, p1, Lcom/shabakaty/downloader/qi3;->F:Lcom/shabakaty/downloader/mi3;

    .line 79
    iget v1, p0, Lcom/shabakaty/downloader/qi3$b;->u:I

    const/16 v2, 0x800

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1b

    iget-object v1, p0, Lcom/shabakaty/downloader/qi3$b;->G:Lcom/shabakaty/downloader/mi3;

    .line 80
    sget-object v3, Lcom/shabakaty/downloader/mi3;->v:Lcom/shabakaty/downloader/mi3;

    if-eq v1, v3, :cond_1b

    .line 81
    new-instance v3, Lcom/shabakaty/downloader/mi3$b;

    invoke-direct {v3}, Lcom/shabakaty/downloader/mi3$b;-><init>()V

    .line 82
    invoke-virtual {v3, v1}, Lcom/shabakaty/downloader/mi3$b;->n(Lcom/shabakaty/downloader/mi3;)Lcom/shabakaty/downloader/mi3$b;

    .line 83
    invoke-virtual {v3, v0}, Lcom/shabakaty/downloader/mi3$b;->n(Lcom/shabakaty/downloader/mi3;)Lcom/shabakaty/downloader/mi3$b;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/mi3$b;->l()Lcom/shabakaty/downloader/mi3;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/qi3$b;->G:Lcom/shabakaty/downloader/mi3;

    goto :goto_b

    .line 84
    :cond_1b
    iput-object v0, p0, Lcom/shabakaty/downloader/qi3$b;->G:Lcom/shabakaty/downloader/mi3;

    .line 85
    :goto_b
    iget v0, p0, Lcom/shabakaty/downloader/qi3$b;->u:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/shabakaty/downloader/qi3$b;->u:I

    .line 86
    :cond_1c
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/pp1$c;->l(Lcom/shabakaty/downloader/pp1$d;)V

    .line 87
    iget-object v0, p0, Lcom/shabakaty/downloader/pp1$b;->r:Lcom/shabakaty/downloader/ep;

    .line 88
    iget-object p1, p1, Lcom/shabakaty/downloader/qi3;->s:Lcom/shabakaty/downloader/ep;

    .line 89
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ep;->h(Lcom/shabakaty/downloader/ep;)Lcom/shabakaty/downloader/ep;

    move-result-object p1

    .line 90
    iput-object p1, p0, Lcom/shabakaty/downloader/pp1$b;->r:Lcom/shabakaty/downloader/ep;

    return-object p0
.end method

.method public bridge synthetic o1(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/qi3$b;->n(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/qi3$b;

    return-object p0
.end method
