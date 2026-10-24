.class public final Lcom/shabakaty/downloader/xi3$b;
.super Lcom/shabakaty/downloader/pp1$b;
.source "ProtoBuf.java"

# interfaces
.implements Lcom/shabakaty/downloader/fs2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/xi3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/pp1$b<",
        "Lcom/shabakaty/downloader/xi3;",
        "Lcom/shabakaty/downloader/xi3$b;",
        ">;"
    }
.end annotation


# instance fields
.field public s:I

.field public t:Lcom/shabakaty/downloader/ug2;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1$b;-><init>()V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/sg2;->s:Lcom/shabakaty/downloader/ug2;

    iput-object v0, p0, Lcom/shabakaty/downloader/xi3$b;->t:Lcom/shabakaty/downloader/ug2;

    return-void
.end method


# virtual methods
.method public build()Lcom/shabakaty/downloader/es2;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi3$b;->l()Lcom/shabakaty/downloader/xi3;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xi3;->a()Z

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
    new-instance v0, Lcom/shabakaty/downloader/xi3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/xi3$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi3$b;->l()Lcom/shabakaty/downloader/xi3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/xi3$b;->n(Lcom/shabakaty/downloader/xi3;)Lcom/shabakaty/downloader/xi3$b;

    return-object v0
.end method

.method public bridge synthetic h(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/j0$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/xi3$b;->m(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/xi3$b;

    return-object p0
.end method

.method public j()Lcom/shabakaty/downloader/pp1$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/xi3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/xi3$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi3$b;->l()Lcom/shabakaty/downloader/xi3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/xi3$b;->n(Lcom/shabakaty/downloader/xi3;)Lcom/shabakaty/downloader/xi3$b;

    return-object v0
.end method

.method public bridge synthetic k(Lcom/shabakaty/downloader/pp1;)Lcom/shabakaty/downloader/pp1$b;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/xi3;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/xi3$b;->n(Lcom/shabakaty/downloader/xi3;)Lcom/shabakaty/downloader/xi3$b;

    return-object p0
.end method

.method public l()Lcom/shabakaty/downloader/xi3;
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/xi3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/xi3;-><init>(Lcom/shabakaty/downloader/pp1$b;Lcom/shabakaty/downloader/md0;)V

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/xi3$b;->s:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/xi3$b;->t:Lcom/shabakaty/downloader/ug2;

    invoke-interface {v1}, Lcom/shabakaty/downloader/ug2;->w()Lcom/shabakaty/downloader/ug2;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/xi3$b;->t:Lcom/shabakaty/downloader/ug2;

    .line 4
    iget v1, p0, Lcom/shabakaty/downloader/xi3$b;->s:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/shabakaty/downloader/xi3$b;->s:I

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/xi3$b;->t:Lcom/shabakaty/downloader/ug2;

    .line 6
    iput-object v1, v0, Lcom/shabakaty/downloader/xi3;->s:Lcom/shabakaty/downloader/ug2;

    return-object v0
.end method

.method public m(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/xi3$b;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/xi3;->w:Lcom/shabakaty/downloader/na3;

    check-cast v1, Lcom/shabakaty/downloader/xi3$a;

    invoke-virtual {v1, p1, p2}, Lcom/shabakaty/downloader/xi3$a;->a(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/xi3;
    :try_end_0
    .catch Lcom/shabakaty/downloader/s32; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/xi3$b;->n(Lcom/shabakaty/downloader/xi3;)Lcom/shabakaty/downloader/xi3$b;

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
    check-cast p2, Lcom/shabakaty/downloader/xi3;
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
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/xi3$b;->n(Lcom/shabakaty/downloader/xi3;)Lcom/shabakaty/downloader/xi3$b;

    :cond_1
    throw p1
.end method

.method public n(Lcom/shabakaty/downloader/xi3;)Lcom/shabakaty/downloader/xi3$b;
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/xi3;->v:Lcom/shabakaty/downloader/xi3;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p1, Lcom/shabakaty/downloader/xi3;->s:Lcom/shabakaty/downloader/ug2;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/xi3$b;->t:Lcom/shabakaty/downloader/ug2;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p1, Lcom/shabakaty/downloader/xi3;->s:Lcom/shabakaty/downloader/ug2;

    .line 6
    iput-object v0, p0, Lcom/shabakaty/downloader/xi3$b;->t:Lcom/shabakaty/downloader/ug2;

    .line 7
    iget v0, p0, Lcom/shabakaty/downloader/xi3$b;->s:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/shabakaty/downloader/xi3$b;->s:I

    goto :goto_0

    .line 8
    :cond_1
    iget v0, p0, Lcom/shabakaty/downloader/xi3$b;->s:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_2

    .line 9
    new-instance v0, Lcom/shabakaty/downloader/sg2;

    iget-object v2, p0, Lcom/shabakaty/downloader/xi3$b;->t:Lcom/shabakaty/downloader/ug2;

    invoke-direct {v0, v2}, Lcom/shabakaty/downloader/sg2;-><init>(Lcom/shabakaty/downloader/ug2;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/xi3$b;->t:Lcom/shabakaty/downloader/ug2;

    .line 10
    iget v0, p0, Lcom/shabakaty/downloader/xi3$b;->s:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/shabakaty/downloader/xi3$b;->s:I

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/xi3$b;->t:Lcom/shabakaty/downloader/ug2;

    .line 12
    iget-object v1, p1, Lcom/shabakaty/downloader/xi3;->s:Lcom/shabakaty/downloader/ug2;

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/pp1$b;->r:Lcom/shabakaty/downloader/ep;

    .line 15
    iget-object p1, p1, Lcom/shabakaty/downloader/xi3;->r:Lcom/shabakaty/downloader/ep;

    .line 16
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ep;->h(Lcom/shabakaty/downloader/ep;)Lcom/shabakaty/downloader/ep;

    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/shabakaty/downloader/pp1$b;->r:Lcom/shabakaty/downloader/ep;

    return-object p0
.end method

.method public bridge synthetic o1(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/xi3$b;->m(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/xi3$b;

    return-object p0
.end method
