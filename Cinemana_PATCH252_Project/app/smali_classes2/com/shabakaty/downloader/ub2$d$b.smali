.class public final Lcom/shabakaty/downloader/ub2$d$b;
.super Lcom/shabakaty/downloader/pp1$b;
.source "JvmProtoBuf.java"

# interfaces
.implements Lcom/shabakaty/downloader/fs2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ub2$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/pp1$b<",
        "Lcom/shabakaty/downloader/ub2$d;",
        "Lcom/shabakaty/downloader/ub2$d$b;",
        ">;"
    }
.end annotation


# instance fields
.field public s:I

.field public t:Lcom/shabakaty/downloader/ub2$b;

.field public u:Lcom/shabakaty/downloader/ub2$c;

.field public v:Lcom/shabakaty/downloader/ub2$c;

.field public w:Lcom/shabakaty/downloader/ub2$c;

.field public x:Lcom/shabakaty/downloader/ub2$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1$b;-><init>()V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/ub2$b;->x:Lcom/shabakaty/downloader/ub2$b;

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/ub2$d$b;->t:Lcom/shabakaty/downloader/ub2$b;

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/ub2$c;->x:Lcom/shabakaty/downloader/ub2$c;

    .line 5
    iput-object v0, p0, Lcom/shabakaty/downloader/ub2$d$b;->u:Lcom/shabakaty/downloader/ub2$c;

    .line 6
    iput-object v0, p0, Lcom/shabakaty/downloader/ub2$d$b;->v:Lcom/shabakaty/downloader/ub2$c;

    .line 7
    iput-object v0, p0, Lcom/shabakaty/downloader/ub2$d$b;->w:Lcom/shabakaty/downloader/ub2$c;

    .line 8
    iput-object v0, p0, Lcom/shabakaty/downloader/ub2$d$b;->x:Lcom/shabakaty/downloader/ub2$c;

    return-void
.end method


# virtual methods
.method public build()Lcom/shabakaty/downloader/es2;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ub2$d$b;->l()Lcom/shabakaty/downloader/ub2$d;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ub2$d;->a()Z

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
    new-instance v0, Lcom/shabakaty/downloader/ub2$d$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ub2$d$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ub2$d$b;->l()Lcom/shabakaty/downloader/ub2$d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ub2$d$b;->n(Lcom/shabakaty/downloader/ub2$d;)Lcom/shabakaty/downloader/ub2$d$b;

    return-object v0
.end method

.method public bridge synthetic h(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/j0$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/ub2$d$b;->m(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/ub2$d$b;

    return-object p0
.end method

.method public j()Lcom/shabakaty/downloader/pp1$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ub2$d$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ub2$d$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ub2$d$b;->l()Lcom/shabakaty/downloader/ub2$d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ub2$d$b;->n(Lcom/shabakaty/downloader/ub2$d;)Lcom/shabakaty/downloader/ub2$d$b;

    return-object v0
.end method

.method public bridge synthetic k(Lcom/shabakaty/downloader/pp1;)Lcom/shabakaty/downloader/pp1$b;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/ub2$d;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ub2$d$b;->n(Lcom/shabakaty/downloader/ub2$d;)Lcom/shabakaty/downloader/ub2$d$b;

    return-object p0
.end method

.method public l()Lcom/shabakaty/downloader/ub2$d;
    .locals 5

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ub2$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/ub2$d;-><init>(Lcom/shabakaty/downloader/pp1$b;Lcom/shabakaty/downloader/ub2$a;)V

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/ub2$d$b;->s:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/shabakaty/downloader/ub2$d$b;->t:Lcom/shabakaty/downloader/ub2$b;

    .line 4
    iput-object v2, v0, Lcom/shabakaty/downloader/ub2$d;->t:Lcom/shabakaty/downloader/ub2$b;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 5
    :cond_1
    iget-object v2, p0, Lcom/shabakaty/downloader/ub2$d$b;->u:Lcom/shabakaty/downloader/ub2$c;

    .line 6
    iput-object v2, v0, Lcom/shabakaty/downloader/ub2$d;->u:Lcom/shabakaty/downloader/ub2$c;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 7
    :cond_2
    iget-object v2, p0, Lcom/shabakaty/downloader/ub2$d$b;->v:Lcom/shabakaty/downloader/ub2$c;

    .line 8
    iput-object v2, v0, Lcom/shabakaty/downloader/ub2$d;->v:Lcom/shabakaty/downloader/ub2$c;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 9
    :cond_3
    iget-object v2, p0, Lcom/shabakaty/downloader/ub2$d$b;->w:Lcom/shabakaty/downloader/ub2$c;

    .line 10
    iput-object v2, v0, Lcom/shabakaty/downloader/ub2$d;->w:Lcom/shabakaty/downloader/ub2$c;

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 11
    :cond_4
    iget-object v1, p0, Lcom/shabakaty/downloader/ub2$d$b;->x:Lcom/shabakaty/downloader/ub2$c;

    .line 12
    iput-object v1, v0, Lcom/shabakaty/downloader/ub2$d;->x:Lcom/shabakaty/downloader/ub2$c;

    .line 13
    iput v3, v0, Lcom/shabakaty/downloader/ub2$d;->s:I

    return-object v0
.end method

.method public m(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/ub2$d$b;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/ub2$d;->B:Lcom/shabakaty/downloader/na3;

    check-cast v1, Lcom/shabakaty/downloader/ub2$d$a;

    invoke-virtual {v1, p1, p2}, Lcom/shabakaty/downloader/ub2$d$a;->a(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/ub2$d;
    :try_end_0
    .catch Lcom/shabakaty/downloader/s32; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ub2$d$b;->n(Lcom/shabakaty/downloader/ub2$d;)Lcom/shabakaty/downloader/ub2$d$b;

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
    check-cast p2, Lcom/shabakaty/downloader/ub2$d;
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
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ub2$d$b;->n(Lcom/shabakaty/downloader/ub2$d;)Lcom/shabakaty/downloader/ub2$d$b;

    :cond_1
    throw p1
.end method

.method public n(Lcom/shabakaty/downloader/ub2$d;)Lcom/shabakaty/downloader/ub2$d$b;
    .locals 6

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ub2$d;->A:Lcom/shabakaty/downloader/ub2$d;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p1, Lcom/shabakaty/downloader/ub2$d;->s:I

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
    iget-object v0, p1, Lcom/shabakaty/downloader/ub2$d;->t:Lcom/shabakaty/downloader/ub2$b;

    .line 4
    iget v3, p0, Lcom/shabakaty/downloader/ub2$d$b;->s:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_2

    iget-object v3, p0, Lcom/shabakaty/downloader/ub2$d$b;->t:Lcom/shabakaty/downloader/ub2$b;

    .line 5
    sget-object v4, Lcom/shabakaty/downloader/ub2$b;->x:Lcom/shabakaty/downloader/ub2$b;

    if-eq v3, v4, :cond_2

    .line 6
    new-instance v4, Lcom/shabakaty/downloader/ub2$b$b;

    invoke-direct {v4}, Lcom/shabakaty/downloader/ub2$b$b;-><init>()V

    .line 7
    invoke-virtual {v4, v3}, Lcom/shabakaty/downloader/ub2$b$b;->n(Lcom/shabakaty/downloader/ub2$b;)Lcom/shabakaty/downloader/ub2$b$b;

    .line 8
    invoke-virtual {v4, v0}, Lcom/shabakaty/downloader/ub2$b$b;->n(Lcom/shabakaty/downloader/ub2$b;)Lcom/shabakaty/downloader/ub2$b$b;

    invoke-virtual {v4}, Lcom/shabakaty/downloader/ub2$b$b;->l()Lcom/shabakaty/downloader/ub2$b;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/ub2$d$b;->t:Lcom/shabakaty/downloader/ub2$b;

    goto :goto_1

    .line 9
    :cond_2
    iput-object v0, p0, Lcom/shabakaty/downloader/ub2$d$b;->t:Lcom/shabakaty/downloader/ub2$b;

    .line 10
    :goto_1
    iget v0, p0, Lcom/shabakaty/downloader/ub2$d$b;->s:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/shabakaty/downloader/ub2$d$b;->s:I

    .line 11
    :cond_3
    iget v0, p1, Lcom/shabakaty/downloader/ub2$d;->s:I

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
    iget-object v0, p1, Lcom/shabakaty/downloader/ub2$d;->u:Lcom/shabakaty/downloader/ub2$c;

    .line 13
    iget v4, p0, Lcom/shabakaty/downloader/ub2$d$b;->s:I

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_5

    iget-object v4, p0, Lcom/shabakaty/downloader/ub2$d$b;->u:Lcom/shabakaty/downloader/ub2$c;

    .line 14
    sget-object v5, Lcom/shabakaty/downloader/ub2$c;->x:Lcom/shabakaty/downloader/ub2$c;

    if-eq v4, v5, :cond_5

    .line 15
    invoke-static {v4}, Lcom/shabakaty/downloader/ub2$c;->k(Lcom/shabakaty/downloader/ub2$c;)Lcom/shabakaty/downloader/ub2$c$b;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/shabakaty/downloader/ub2$c$b;->n(Lcom/shabakaty/downloader/ub2$c;)Lcom/shabakaty/downloader/ub2$c$b;

    invoke-virtual {v4}, Lcom/shabakaty/downloader/ub2$c$b;->l()Lcom/shabakaty/downloader/ub2$c;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/ub2$d$b;->u:Lcom/shabakaty/downloader/ub2$c;

    goto :goto_3

    .line 16
    :cond_5
    iput-object v0, p0, Lcom/shabakaty/downloader/ub2$d$b;->u:Lcom/shabakaty/downloader/ub2$c;

    .line 17
    :goto_3
    iget v0, p0, Lcom/shabakaty/downloader/ub2$d$b;->s:I

    or-int/2addr v0, v3

    iput v0, p0, Lcom/shabakaty/downloader/ub2$d$b;->s:I

    .line 18
    :cond_6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ub2$d;->i()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 19
    iget-object v0, p1, Lcom/shabakaty/downloader/ub2$d;->v:Lcom/shabakaty/downloader/ub2$c;

    .line 20
    iget v3, p0, Lcom/shabakaty/downloader/ub2$d$b;->s:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_7

    iget-object v3, p0, Lcom/shabakaty/downloader/ub2$d$b;->v:Lcom/shabakaty/downloader/ub2$c;

    .line 21
    sget-object v5, Lcom/shabakaty/downloader/ub2$c;->x:Lcom/shabakaty/downloader/ub2$c;

    if-eq v3, v5, :cond_7

    .line 22
    invoke-static {v3}, Lcom/shabakaty/downloader/ub2$c;->k(Lcom/shabakaty/downloader/ub2$c;)Lcom/shabakaty/downloader/ub2$c$b;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/shabakaty/downloader/ub2$c$b;->n(Lcom/shabakaty/downloader/ub2$c;)Lcom/shabakaty/downloader/ub2$c$b;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/ub2$c$b;->l()Lcom/shabakaty/downloader/ub2$c;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/ub2$d$b;->v:Lcom/shabakaty/downloader/ub2$c;

    goto :goto_4

    .line 23
    :cond_7
    iput-object v0, p0, Lcom/shabakaty/downloader/ub2$d$b;->v:Lcom/shabakaty/downloader/ub2$c;

    .line 24
    :goto_4
    iget v0, p0, Lcom/shabakaty/downloader/ub2$d$b;->s:I

    or-int/2addr v0, v4

    iput v0, p0, Lcom/shabakaty/downloader/ub2$d$b;->s:I

    .line 25
    :cond_8
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ub2$d;->j()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 26
    iget-object v0, p1, Lcom/shabakaty/downloader/ub2$d;->w:Lcom/shabakaty/downloader/ub2$c;

    .line 27
    iget v3, p0, Lcom/shabakaty/downloader/ub2$d$b;->s:I

    const/16 v4, 0x8

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_9

    iget-object v3, p0, Lcom/shabakaty/downloader/ub2$d$b;->w:Lcom/shabakaty/downloader/ub2$c;

    .line 28
    sget-object v5, Lcom/shabakaty/downloader/ub2$c;->x:Lcom/shabakaty/downloader/ub2$c;

    if-eq v3, v5, :cond_9

    .line 29
    invoke-static {v3}, Lcom/shabakaty/downloader/ub2$c;->k(Lcom/shabakaty/downloader/ub2$c;)Lcom/shabakaty/downloader/ub2$c$b;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/shabakaty/downloader/ub2$c$b;->n(Lcom/shabakaty/downloader/ub2$c;)Lcom/shabakaty/downloader/ub2$c$b;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/ub2$c$b;->l()Lcom/shabakaty/downloader/ub2$c;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/ub2$d$b;->w:Lcom/shabakaty/downloader/ub2$c;

    goto :goto_5

    .line 30
    :cond_9
    iput-object v0, p0, Lcom/shabakaty/downloader/ub2$d$b;->w:Lcom/shabakaty/downloader/ub2$c;

    .line 31
    :goto_5
    iget v0, p0, Lcom/shabakaty/downloader/ub2$d$b;->s:I

    or-int/2addr v0, v4

    iput v0, p0, Lcom/shabakaty/downloader/ub2$d$b;->s:I

    .line 32
    :cond_a
    iget v0, p1, Lcom/shabakaty/downloader/ub2$d;->s:I

    const/16 v3, 0x10

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_b

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    :goto_6
    if-eqz v1, :cond_d

    .line 33
    iget-object v0, p1, Lcom/shabakaty/downloader/ub2$d;->x:Lcom/shabakaty/downloader/ub2$c;

    .line 34
    iget v1, p0, Lcom/shabakaty/downloader/ub2$d$b;->s:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_c

    iget-object v1, p0, Lcom/shabakaty/downloader/ub2$d$b;->x:Lcom/shabakaty/downloader/ub2$c;

    .line 35
    sget-object v2, Lcom/shabakaty/downloader/ub2$c;->x:Lcom/shabakaty/downloader/ub2$c;

    if-eq v1, v2, :cond_c

    .line 36
    invoke-static {v1}, Lcom/shabakaty/downloader/ub2$c;->k(Lcom/shabakaty/downloader/ub2$c;)Lcom/shabakaty/downloader/ub2$c$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/ub2$c$b;->n(Lcom/shabakaty/downloader/ub2$c;)Lcom/shabakaty/downloader/ub2$c$b;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ub2$c$b;->l()Lcom/shabakaty/downloader/ub2$c;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/ub2$d$b;->x:Lcom/shabakaty/downloader/ub2$c;

    goto :goto_7

    .line 37
    :cond_c
    iput-object v0, p0, Lcom/shabakaty/downloader/ub2$d$b;->x:Lcom/shabakaty/downloader/ub2$c;

    .line 38
    :goto_7
    iget v0, p0, Lcom/shabakaty/downloader/ub2$d$b;->s:I

    or-int/2addr v0, v3

    iput v0, p0, Lcom/shabakaty/downloader/ub2$d$b;->s:I

    .line 39
    :cond_d
    iget-object v0, p0, Lcom/shabakaty/downloader/pp1$b;->r:Lcom/shabakaty/downloader/ep;

    .line 40
    iget-object p1, p1, Lcom/shabakaty/downloader/ub2$d;->r:Lcom/shabakaty/downloader/ep;

    .line 41
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ep;->h(Lcom/shabakaty/downloader/ep;)Lcom/shabakaty/downloader/ep;

    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/shabakaty/downloader/pp1$b;->r:Lcom/shabakaty/downloader/ep;

    return-object p0
.end method

.method public bridge synthetic o1(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/ub2$d$b;->m(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/ub2$d$b;

    return-object p0
.end method
