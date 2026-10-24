.class public final Lcom/shabakaty/downloader/cj3$b;
.super Lcom/shabakaty/downloader/pp1$c;
.source "ProtoBuf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/cj3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/pp1$c<",
        "Lcom/shabakaty/downloader/cj3;",
        "Lcom/shabakaty/downloader/cj3$b;",
        ">;"
    }
.end annotation


# instance fields
.field public A:I

.field public u:I

.field public v:I

.field public w:I

.field public x:Lcom/shabakaty/downloader/yi3;

.field public y:I

.field public z:Lcom/shabakaty/downloader/yi3;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1$c;-><init>()V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/yi3;->K:Lcom/shabakaty/downloader/yi3;

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/cj3$b;->x:Lcom/shabakaty/downloader/yi3;

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/cj3$b;->z:Lcom/shabakaty/downloader/yi3;

    return-void
.end method


# virtual methods
.method public build()Lcom/shabakaty/downloader/es2;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/cj3$b;->m()Lcom/shabakaty/downloader/cj3;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/cj3;->a()Z

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
    new-instance v0, Lcom/shabakaty/downloader/cj3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/cj3$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/cj3$b;->m()Lcom/shabakaty/downloader/cj3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/cj3$b;->o(Lcom/shabakaty/downloader/cj3;)Lcom/shabakaty/downloader/cj3$b;

    return-object v0
.end method

.method public bridge synthetic h(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/j0$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/cj3$b;->n(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/cj3$b;

    return-object p0
.end method

.method public j()Lcom/shabakaty/downloader/pp1$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/cj3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/cj3$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/cj3$b;->m()Lcom/shabakaty/downloader/cj3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/cj3$b;->o(Lcom/shabakaty/downloader/cj3;)Lcom/shabakaty/downloader/cj3$b;

    return-object v0
.end method

.method public bridge synthetic k(Lcom/shabakaty/downloader/pp1;)Lcom/shabakaty/downloader/pp1$b;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/cj3;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/cj3$b;->o(Lcom/shabakaty/downloader/cj3;)Lcom/shabakaty/downloader/cj3$b;

    return-object p0
.end method

.method public m()Lcom/shabakaty/downloader/cj3;
    .locals 5

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/cj3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/cj3;-><init>(Lcom/shabakaty/downloader/pp1$c;Lcom/shabakaty/downloader/md0;)V

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/cj3$b;->u:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lcom/shabakaty/downloader/cj3$b;->v:I

    .line 4
    iput v2, v0, Lcom/shabakaty/downloader/cj3;->u:I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 5
    :cond_1
    iget v2, p0, Lcom/shabakaty/downloader/cj3$b;->w:I

    .line 6
    iput v2, v0, Lcom/shabakaty/downloader/cj3;->v:I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 7
    :cond_2
    iget-object v2, p0, Lcom/shabakaty/downloader/cj3$b;->x:Lcom/shabakaty/downloader/yi3;

    .line 8
    iput-object v2, v0, Lcom/shabakaty/downloader/cj3;->w:Lcom/shabakaty/downloader/yi3;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 9
    :cond_3
    iget v2, p0, Lcom/shabakaty/downloader/cj3$b;->y:I

    .line 10
    iput v2, v0, Lcom/shabakaty/downloader/cj3;->x:I

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 11
    :cond_4
    iget-object v2, p0, Lcom/shabakaty/downloader/cj3$b;->z:Lcom/shabakaty/downloader/yi3;

    .line 12
    iput-object v2, v0, Lcom/shabakaty/downloader/cj3;->y:Lcom/shabakaty/downloader/yi3;

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    or-int/lit8 v3, v3, 0x20

    .line 13
    :cond_5
    iget v1, p0, Lcom/shabakaty/downloader/cj3$b;->A:I

    .line 14
    iput v1, v0, Lcom/shabakaty/downloader/cj3;->z:I

    .line 15
    iput v3, v0, Lcom/shabakaty/downloader/cj3;->t:I

    return-object v0
.end method

.method public n(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/cj3$b;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/cj3;->D:Lcom/shabakaty/downloader/na3;

    check-cast v1, Lcom/shabakaty/downloader/cj3$a;

    invoke-virtual {v1, p1, p2}, Lcom/shabakaty/downloader/cj3$a;->a(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/cj3;
    :try_end_0
    .catch Lcom/shabakaty/downloader/s32; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/cj3$b;->o(Lcom/shabakaty/downloader/cj3;)Lcom/shabakaty/downloader/cj3$b;

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
    check-cast p2, Lcom/shabakaty/downloader/cj3;
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
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/cj3$b;->o(Lcom/shabakaty/downloader/cj3;)Lcom/shabakaty/downloader/cj3$b;

    :cond_1
    throw p1
.end method

.method public o(Lcom/shabakaty/downloader/cj3;)Lcom/shabakaty/downloader/cj3$b;
    .locals 5

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/cj3;->C:Lcom/shabakaty/downloader/cj3;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p1, Lcom/shabakaty/downloader/cj3;->t:I

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
    iget v1, p1, Lcom/shabakaty/downloader/cj3;->u:I

    .line 4
    iget v4, p0, Lcom/shabakaty/downloader/cj3$b;->u:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/shabakaty/downloader/cj3$b;->u:I

    .line 5
    iput v1, p0, Lcom/shabakaty/downloader/cj3$b;->v:I

    :cond_2
    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    .line 6
    iget v0, p1, Lcom/shabakaty/downloader/cj3;->v:I

    .line 7
    iget v3, p0, Lcom/shabakaty/downloader/cj3$b;->u:I

    or-int/2addr v1, v3

    iput v1, p0, Lcom/shabakaty/downloader/cj3$b;->u:I

    .line 8
    iput v0, p0, Lcom/shabakaty/downloader/cj3$b;->w:I

    .line 9
    :cond_4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/cj3;->q()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 10
    iget-object v0, p1, Lcom/shabakaty/downloader/cj3;->w:Lcom/shabakaty/downloader/yi3;

    .line 11
    iget v1, p0, Lcom/shabakaty/downloader/cj3$b;->u:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lcom/shabakaty/downloader/cj3$b;->x:Lcom/shabakaty/downloader/yi3;

    .line 12
    sget-object v4, Lcom/shabakaty/downloader/yi3;->K:Lcom/shabakaty/downloader/yi3;

    if-eq v1, v4, :cond_5

    .line 13
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/ki3;->a(Lcom/shabakaty/downloader/yi3;Lcom/shabakaty/downloader/yi3;)Lcom/shabakaty/downloader/yi3;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/cj3$b;->x:Lcom/shabakaty/downloader/yi3;

    goto :goto_2

    .line 14
    :cond_5
    iput-object v0, p0, Lcom/shabakaty/downloader/cj3$b;->x:Lcom/shabakaty/downloader/yi3;

    .line 15
    :goto_2
    iget v0, p0, Lcom/shabakaty/downloader/cj3$b;->u:I

    or-int/2addr v0, v3

    iput v0, p0, Lcom/shabakaty/downloader/cj3$b;->u:I

    .line 16
    :cond_6
    iget v0, p1, Lcom/shabakaty/downloader/cj3;->t:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_8

    .line 17
    iget v0, p1, Lcom/shabakaty/downloader/cj3;->x:I

    .line 18
    iget v3, p0, Lcom/shabakaty/downloader/cj3$b;->u:I

    or-int/2addr v1, v3

    iput v1, p0, Lcom/shabakaty/downloader/cj3$b;->u:I

    .line 19
    iput v0, p0, Lcom/shabakaty/downloader/cj3$b;->y:I

    .line 20
    :cond_8
    invoke-virtual {p1}, Lcom/shabakaty/downloader/cj3;->r()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 21
    iget-object v0, p1, Lcom/shabakaty/downloader/cj3;->y:Lcom/shabakaty/downloader/yi3;

    .line 22
    iget v1, p0, Lcom/shabakaty/downloader/cj3$b;->u:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_9

    iget-object v1, p0, Lcom/shabakaty/downloader/cj3$b;->z:Lcom/shabakaty/downloader/yi3;

    .line 23
    sget-object v4, Lcom/shabakaty/downloader/yi3;->K:Lcom/shabakaty/downloader/yi3;

    if-eq v1, v4, :cond_9

    .line 24
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/ki3;->a(Lcom/shabakaty/downloader/yi3;Lcom/shabakaty/downloader/yi3;)Lcom/shabakaty/downloader/yi3;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/cj3$b;->z:Lcom/shabakaty/downloader/yi3;

    goto :goto_4

    .line 25
    :cond_9
    iput-object v0, p0, Lcom/shabakaty/downloader/cj3$b;->z:Lcom/shabakaty/downloader/yi3;

    .line 26
    :goto_4
    iget v0, p0, Lcom/shabakaty/downloader/cj3$b;->u:I

    or-int/2addr v0, v3

    iput v0, p0, Lcom/shabakaty/downloader/cj3$b;->u:I

    .line 27
    :cond_a
    iget v0, p1, Lcom/shabakaty/downloader/cj3;->t:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_b

    const/4 v2, 0x1

    :cond_b
    if-eqz v2, :cond_c

    .line 28
    iget v0, p1, Lcom/shabakaty/downloader/cj3;->z:I

    .line 29
    iget v2, p0, Lcom/shabakaty/downloader/cj3$b;->u:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/shabakaty/downloader/cj3$b;->u:I

    .line 30
    iput v0, p0, Lcom/shabakaty/downloader/cj3$b;->A:I

    .line 31
    :cond_c
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/pp1$c;->l(Lcom/shabakaty/downloader/pp1$d;)V

    .line 32
    iget-object v0, p0, Lcom/shabakaty/downloader/pp1$b;->r:Lcom/shabakaty/downloader/ep;

    .line 33
    iget-object p1, p1, Lcom/shabakaty/downloader/cj3;->s:Lcom/shabakaty/downloader/ep;

    .line 34
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ep;->h(Lcom/shabakaty/downloader/ep;)Lcom/shabakaty/downloader/ep;

    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/shabakaty/downloader/pp1$b;->r:Lcom/shabakaty/downloader/ep;

    return-object p0
.end method

.method public bridge synthetic o1(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/cj3$b;->n(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/cj3$b;

    return-object p0
.end method
