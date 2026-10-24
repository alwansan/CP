.class public final Lcom/shabakaty/downloader/ii3$b$c$b;
.super Lcom/shabakaty/downloader/pp1$b;
.source "ProtoBuf.java"

# interfaces
.implements Lcom/shabakaty/downloader/fs2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ii3$b$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/pp1$b<",
        "Lcom/shabakaty/downloader/ii3$b$c;",
        "Lcom/shabakaty/downloader/ii3$b$c$b;",
        ">;"
    }
.end annotation


# instance fields
.field public A:Lcom/shabakaty/downloader/ii3;

.field public B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ii3$b$c;",
            ">;"
        }
    .end annotation
.end field

.field public C:I

.field public D:I

.field public s:I

.field public t:Lcom/shabakaty/downloader/ii3$b$c$c;

.field public u:J

.field public v:F

.field public w:D

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1$b;-><init>()V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/ii3$b$c$c;->s:Lcom/shabakaty/downloader/ii3$b$c$c;

    iput-object v0, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->t:Lcom/shabakaty/downloader/ii3$b$c$c;

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/ii3;->x:Lcom/shabakaty/downloader/ii3;

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->A:Lcom/shabakaty/downloader/ii3;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->B:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public build()Lcom/shabakaty/downloader/es2;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ii3$b$c$b;->l()Lcom/shabakaty/downloader/ii3$b$c;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ii3$b$c;->a()Z

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
    new-instance v0, Lcom/shabakaty/downloader/ii3$b$c$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ii3$b$c$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ii3$b$c$b;->l()Lcom/shabakaty/downloader/ii3$b$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ii3$b$c$b;->n(Lcom/shabakaty/downloader/ii3$b$c;)Lcom/shabakaty/downloader/ii3$b$c$b;

    return-object v0
.end method

.method public bridge synthetic h(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/j0$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/ii3$b$c$b;->m(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/ii3$b$c$b;

    return-object p0
.end method

.method public j()Lcom/shabakaty/downloader/pp1$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ii3$b$c$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ii3$b$c$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ii3$b$c$b;->l()Lcom/shabakaty/downloader/ii3$b$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ii3$b$c$b;->n(Lcom/shabakaty/downloader/ii3$b$c;)Lcom/shabakaty/downloader/ii3$b$c$b;

    return-object v0
.end method

.method public bridge synthetic k(Lcom/shabakaty/downloader/pp1;)Lcom/shabakaty/downloader/pp1$b;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/ii3$b$c;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ii3$b$c$b;->n(Lcom/shabakaty/downloader/ii3$b$c;)Lcom/shabakaty/downloader/ii3$b$c$b;

    return-object p0
.end method

.method public l()Lcom/shabakaty/downloader/ii3$b$c;
    .locals 6

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ii3$b$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/ii3$b$c;-><init>(Lcom/shabakaty/downloader/pp1$b;Lcom/shabakaty/downloader/md0;)V

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->s:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->t:Lcom/shabakaty/downloader/ii3$b$c$c;

    .line 4
    iput-object v2, v0, Lcom/shabakaty/downloader/ii3$b$c;->t:Lcom/shabakaty/downloader/ii3$b$c$c;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 5
    :cond_1
    iget-wide v4, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->u:J

    .line 6
    iput-wide v4, v0, Lcom/shabakaty/downloader/ii3$b$c;->u:J

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 7
    :cond_2
    iget v2, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->v:F

    .line 8
    iput v2, v0, Lcom/shabakaty/downloader/ii3$b$c;->v:F

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 9
    :cond_3
    iget-wide v4, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->w:D

    .line 10
    iput-wide v4, v0, Lcom/shabakaty/downloader/ii3$b$c;->w:D

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 11
    :cond_4
    iget v2, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->x:I

    .line 12
    iput v2, v0, Lcom/shabakaty/downloader/ii3$b$c;->x:I

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x20

    .line 13
    :cond_5
    iget v2, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->y:I

    .line 14
    iput v2, v0, Lcom/shabakaty/downloader/ii3$b$c;->y:I

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x40

    .line 15
    :cond_6
    iget v2, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->z:I

    .line 16
    iput v2, v0, Lcom/shabakaty/downloader/ii3$b$c;->z:I

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_7

    or-int/lit16 v3, v3, 0x80

    .line 17
    :cond_7
    iget-object v2, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->A:Lcom/shabakaty/downloader/ii3;

    .line 18
    iput-object v2, v0, Lcom/shabakaty/downloader/ii3$b$c;->A:Lcom/shabakaty/downloader/ii3;

    and-int/lit16 v2, v1, 0x100

    const/16 v4, 0x100

    if-ne v2, v4, :cond_8

    .line 19
    iget-object v2, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->B:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->B:Ljava/util/List;

    .line 20
    iget v2, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->s:I

    and-int/lit16 v2, v2, -0x101

    iput v2, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->s:I

    .line 21
    :cond_8
    iget-object v2, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->B:Ljava/util/List;

    .line 22
    iput-object v2, v0, Lcom/shabakaty/downloader/ii3$b$c;->B:Ljava/util/List;

    and-int/lit16 v2, v1, 0x200

    const/16 v4, 0x200

    if-ne v2, v4, :cond_9

    or-int/lit16 v3, v3, 0x100

    .line 23
    :cond_9
    iget v2, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->C:I

    .line 24
    iput v2, v0, Lcom/shabakaty/downloader/ii3$b$c;->C:I

    const/16 v2, 0x400

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    or-int/lit16 v3, v3, 0x200

    .line 25
    :cond_a
    iget v1, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->D:I

    .line 26
    iput v1, v0, Lcom/shabakaty/downloader/ii3$b$c;->D:I

    .line 27
    iput v3, v0, Lcom/shabakaty/downloader/ii3$b$c;->s:I

    return-object v0
.end method

.method public m(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/ii3$b$c$b;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/ii3$b$c;->H:Lcom/shabakaty/downloader/na3;

    check-cast v1, Lcom/shabakaty/downloader/ii3$b$c$a;

    invoke-virtual {v1, p1, p2}, Lcom/shabakaty/downloader/ii3$b$c$a;->a(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/ii3$b$c;
    :try_end_0
    .catch Lcom/shabakaty/downloader/s32; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ii3$b$c$b;->n(Lcom/shabakaty/downloader/ii3$b$c;)Lcom/shabakaty/downloader/ii3$b$c$b;

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
    check-cast p2, Lcom/shabakaty/downloader/ii3$b$c;
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
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ii3$b$c$b;->n(Lcom/shabakaty/downloader/ii3$b$c;)Lcom/shabakaty/downloader/ii3$b$c$b;

    :cond_1
    throw p1
.end method

.method public n(Lcom/shabakaty/downloader/ii3$b$c;)Lcom/shabakaty/downloader/ii3$b$c$b;
    .locals 7

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ii3$b$c;->G:Lcom/shabakaty/downloader/ii3$b$c;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p1, Lcom/shabakaty/downloader/ii3$b$c;->s:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p1, Lcom/shabakaty/downloader/ii3$b$c;->t:Lcom/shabakaty/downloader/ii3$b$c$c;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget v3, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->s:I

    or-int/2addr v3, v1

    iput v3, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->s:I

    .line 6
    iput-object v0, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->t:Lcom/shabakaty/downloader/ii3$b$c$c;

    .line 7
    :cond_2
    iget v0, p1, Lcom/shabakaty/downloader/ii3$b$c;->s:I

    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_4

    .line 8
    iget-wide v5, p1, Lcom/shabakaty/downloader/ii3$b$c;->u:J

    .line 9
    iget v3, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->s:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->s:I

    .line 10
    iput-wide v5, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->u:J

    :cond_4
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_6

    .line 11
    iget v3, p1, Lcom/shabakaty/downloader/ii3$b$c;->v:F

    .line 12
    iget v5, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->s:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->s:I

    .line 13
    iput v3, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->v:F

    :cond_6
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_8

    .line 14
    iget-wide v5, p1, Lcom/shabakaty/downloader/ii3$b$c;->w:D

    .line 15
    iget v3, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->s:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->s:I

    .line 16
    iput-wide v5, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->w:D

    :cond_8
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_9

    const/4 v3, 0x1

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_a

    .line 17
    iget v3, p1, Lcom/shabakaty/downloader/ii3$b$c;->x:I

    .line 18
    iget v5, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->s:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->s:I

    .line 19
    iput v3, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->x:I

    :cond_a
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_b

    const/4 v3, 0x1

    goto :goto_5

    :cond_b
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_c

    .line 20
    iget v3, p1, Lcom/shabakaty/downloader/ii3$b$c;->y:I

    .line 21
    iget v5, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->s:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->s:I

    .line 22
    iput v3, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->y:I

    :cond_c
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_d

    const/4 v3, 0x1

    goto :goto_6

    :cond_d
    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_e

    .line 23
    iget v3, p1, Lcom/shabakaty/downloader/ii3$b$c;->z:I

    .line 24
    iget v5, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->s:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->s:I

    .line 25
    iput v3, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->z:I

    :cond_e
    const/16 v3, 0x80

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_f

    const/4 v0, 0x1

    goto :goto_7

    :cond_f
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_11

    .line 26
    iget-object v0, p1, Lcom/shabakaty/downloader/ii3$b$c;->A:Lcom/shabakaty/downloader/ii3;

    .line 27
    iget v4, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->s:I

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_10

    iget-object v4, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->A:Lcom/shabakaty/downloader/ii3;

    .line 28
    sget-object v5, Lcom/shabakaty/downloader/ii3;->x:Lcom/shabakaty/downloader/ii3;

    if-eq v4, v5, :cond_10

    .line 29
    new-instance v5, Lcom/shabakaty/downloader/ii3$c;

    invoke-direct {v5}, Lcom/shabakaty/downloader/ii3$c;-><init>()V

    .line 30
    invoke-virtual {v5, v4}, Lcom/shabakaty/downloader/ii3$c;->n(Lcom/shabakaty/downloader/ii3;)Lcom/shabakaty/downloader/ii3$c;

    .line 31
    invoke-virtual {v5, v0}, Lcom/shabakaty/downloader/ii3$c;->n(Lcom/shabakaty/downloader/ii3;)Lcom/shabakaty/downloader/ii3$c;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/ii3$c;->l()Lcom/shabakaty/downloader/ii3;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->A:Lcom/shabakaty/downloader/ii3;

    goto :goto_8

    .line 32
    :cond_10
    iput-object v0, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->A:Lcom/shabakaty/downloader/ii3;

    .line 33
    :goto_8
    iget v0, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->s:I

    or-int/2addr v0, v3

    iput v0, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->s:I

    .line 34
    :cond_11
    iget-object v0, p1, Lcom/shabakaty/downloader/ii3$b$c;->B:Ljava/util/List;

    .line 35
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v3, 0x100

    if-nez v0, :cond_14

    .line 36
    iget-object v0, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 37
    iget-object v0, p1, Lcom/shabakaty/downloader/ii3$b$c;->B:Ljava/util/List;

    .line 38
    iput-object v0, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->B:Ljava/util/List;

    .line 39
    iget v0, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->s:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->s:I

    goto :goto_9

    .line 40
    :cond_12
    iget v0, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->s:I

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_13

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->B:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->B:Ljava/util/List;

    .line 42
    iget v0, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->s:I

    or-int/2addr v0, v3

    iput v0, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->s:I

    .line 43
    :cond_13
    iget-object v0, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->B:Ljava/util/List;

    .line 44
    iget-object v4, p1, Lcom/shabakaty/downloader/ii3$b$c;->B:Ljava/util/List;

    .line 45
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 46
    :cond_14
    :goto_9
    iget v0, p1, Lcom/shabakaty/downloader/ii3$b$c;->s:I

    and-int/lit16 v4, v0, 0x100

    if-ne v4, v3, :cond_15

    const/4 v3, 0x1

    goto :goto_a

    :cond_15
    const/4 v3, 0x0

    :goto_a
    const/16 v4, 0x200

    if-eqz v3, :cond_16

    .line 47
    iget v3, p1, Lcom/shabakaty/downloader/ii3$b$c;->C:I

    .line 48
    iget v5, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->s:I

    or-int/2addr v5, v4

    iput v5, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->s:I

    .line 49
    iput v3, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->C:I

    :cond_16
    and-int/2addr v0, v4

    if-ne v0, v4, :cond_17

    goto :goto_b

    :cond_17
    const/4 v1, 0x0

    :goto_b
    if-eqz v1, :cond_18

    .line 50
    iget v0, p1, Lcom/shabakaty/downloader/ii3$b$c;->D:I

    .line 51
    iget v1, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->s:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->s:I

    .line 52
    iput v0, p0, Lcom/shabakaty/downloader/ii3$b$c$b;->D:I

    .line 53
    :cond_18
    iget-object v0, p0, Lcom/shabakaty/downloader/pp1$b;->r:Lcom/shabakaty/downloader/ep;

    .line 54
    iget-object p1, p1, Lcom/shabakaty/downloader/ii3$b$c;->r:Lcom/shabakaty/downloader/ep;

    .line 55
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ep;->h(Lcom/shabakaty/downloader/ep;)Lcom/shabakaty/downloader/ep;

    move-result-object p1

    .line 56
    iput-object p1, p0, Lcom/shabakaty/downloader/pp1$b;->r:Lcom/shabakaty/downloader/ep;

    return-object p0
.end method

.method public bridge synthetic o1(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/ii3$b$c$b;->m(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/ii3$b$c$b;

    return-object p0
.end method
