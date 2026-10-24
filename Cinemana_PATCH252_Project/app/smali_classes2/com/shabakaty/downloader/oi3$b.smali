.class public final Lcom/shabakaty/downloader/oi3$b;
.super Lcom/shabakaty/downloader/pp1$c;
.source "ProtoBuf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/oi3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/pp1$c<",
        "Lcom/shabakaty/downloader/oi3;",
        "Lcom/shabakaty/downloader/oi3$b;",
        ">;"
    }
.end annotation


# instance fields
.field public u:I

.field public v:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1$c;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/shabakaty/downloader/es2;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oi3$b;->m()Lcom/shabakaty/downloader/oi3;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/oi3;->a()Z

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
    new-instance v0, Lcom/shabakaty/downloader/oi3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/oi3$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oi3$b;->m()Lcom/shabakaty/downloader/oi3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/oi3$b;->o(Lcom/shabakaty/downloader/oi3;)Lcom/shabakaty/downloader/oi3$b;

    return-object v0
.end method

.method public bridge synthetic h(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/j0$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/oi3$b;->n(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/oi3$b;

    return-object p0
.end method

.method public j()Lcom/shabakaty/downloader/pp1$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/oi3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/oi3$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oi3$b;->m()Lcom/shabakaty/downloader/oi3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/oi3$b;->o(Lcom/shabakaty/downloader/oi3;)Lcom/shabakaty/downloader/oi3$b;

    return-object v0
.end method

.method public bridge synthetic k(Lcom/shabakaty/downloader/pp1;)Lcom/shabakaty/downloader/pp1$b;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/oi3;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/oi3$b;->o(Lcom/shabakaty/downloader/oi3;)Lcom/shabakaty/downloader/oi3$b;

    return-object p0
.end method

.method public m()Lcom/shabakaty/downloader/oi3;
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/oi3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/oi3;-><init>(Lcom/shabakaty/downloader/pp1$c;Lcom/shabakaty/downloader/md0;)V

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/oi3$b;->u:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3
    :goto_0
    iget v1, p0, Lcom/shabakaty/downloader/oi3$b;->v:I

    .line 4
    iput v1, v0, Lcom/shabakaty/downloader/oi3;->u:I

    .line 5
    iput v2, v0, Lcom/shabakaty/downloader/oi3;->t:I

    return-object v0
.end method

.method public n(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/oi3$b;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/oi3;->y:Lcom/shabakaty/downloader/na3;

    check-cast v1, Lcom/shabakaty/downloader/oi3$a;

    invoke-virtual {v1, p1, p2}, Lcom/shabakaty/downloader/oi3$a;->a(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/oi3;
    :try_end_0
    .catch Lcom/shabakaty/downloader/s32; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/oi3$b;->o(Lcom/shabakaty/downloader/oi3;)Lcom/shabakaty/downloader/oi3$b;

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
    check-cast p2, Lcom/shabakaty/downloader/oi3;
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
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/oi3$b;->o(Lcom/shabakaty/downloader/oi3;)Lcom/shabakaty/downloader/oi3$b;

    :cond_1
    throw p1
.end method

.method public o(Lcom/shabakaty/downloader/oi3;)Lcom/shabakaty/downloader/oi3$b;
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/oi3;->x:Lcom/shabakaty/downloader/oi3;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p1, Lcom/shabakaty/downloader/oi3;->t:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 3
    iget v0, p1, Lcom/shabakaty/downloader/oi3;->u:I

    .line 4
    iget v2, p0, Lcom/shabakaty/downloader/oi3$b;->u:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/shabakaty/downloader/oi3$b;->u:I

    .line 5
    iput v0, p0, Lcom/shabakaty/downloader/oi3$b;->v:I

    .line 6
    :cond_2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/pp1$c;->l(Lcom/shabakaty/downloader/pp1$d;)V

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/pp1$b;->r:Lcom/shabakaty/downloader/ep;

    .line 8
    iget-object p1, p1, Lcom/shabakaty/downloader/oi3;->s:Lcom/shabakaty/downloader/ep;

    .line 9
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ep;->h(Lcom/shabakaty/downloader/ep;)Lcom/shabakaty/downloader/ep;

    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/shabakaty/downloader/pp1$b;->r:Lcom/shabakaty/downloader/ep;

    return-object p0
.end method

.method public bridge synthetic o1(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/oi3$b;->n(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/oi3$b;

    return-object p0
.end method
