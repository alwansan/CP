.class public final Lcom/shabakaty/downloader/ub2$b$b;
.super Lcom/shabakaty/downloader/pp1$b;
.source "JvmProtoBuf.java"

# interfaces
.implements Lcom/shabakaty/downloader/fs2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ub2$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/pp1$b<",
        "Lcom/shabakaty/downloader/ub2$b;",
        "Lcom/shabakaty/downloader/ub2$b$b;",
        ">;"
    }
.end annotation


# instance fields
.field public s:I

.field public t:I

.field public u:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1$b;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/shabakaty/downloader/es2;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ub2$b$b;->l()Lcom/shabakaty/downloader/ub2$b;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ub2$b;->a()Z

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
    new-instance v0, Lcom/shabakaty/downloader/ub2$b$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ub2$b$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ub2$b$b;->l()Lcom/shabakaty/downloader/ub2$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ub2$b$b;->n(Lcom/shabakaty/downloader/ub2$b;)Lcom/shabakaty/downloader/ub2$b$b;

    return-object v0
.end method

.method public bridge synthetic h(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/j0$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/ub2$b$b;->m(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/ub2$b$b;

    return-object p0
.end method

.method public j()Lcom/shabakaty/downloader/pp1$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ub2$b$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ub2$b$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ub2$b$b;->l()Lcom/shabakaty/downloader/ub2$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ub2$b$b;->n(Lcom/shabakaty/downloader/ub2$b;)Lcom/shabakaty/downloader/ub2$b$b;

    return-object v0
.end method

.method public bridge synthetic k(Lcom/shabakaty/downloader/pp1;)Lcom/shabakaty/downloader/pp1$b;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/ub2$b;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ub2$b$b;->n(Lcom/shabakaty/downloader/ub2$b;)Lcom/shabakaty/downloader/ub2$b$b;

    return-object p0
.end method

.method public l()Lcom/shabakaty/downloader/ub2$b;
    .locals 4

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ub2$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/ub2$b;-><init>(Lcom/shabakaty/downloader/pp1$b;Lcom/shabakaty/downloader/ub2$a;)V

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/ub2$b$b;->s:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lcom/shabakaty/downloader/ub2$b$b;->t:I

    .line 4
    iput v2, v0, Lcom/shabakaty/downloader/ub2$b;->t:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 5
    :cond_1
    iget v1, p0, Lcom/shabakaty/downloader/ub2$b$b;->u:I

    .line 6
    iput v1, v0, Lcom/shabakaty/downloader/ub2$b;->u:I

    .line 7
    iput v3, v0, Lcom/shabakaty/downloader/ub2$b;->s:I

    return-object v0
.end method

.method public m(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/ub2$b$b;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/ub2$b;->y:Lcom/shabakaty/downloader/na3;

    check-cast v1, Lcom/shabakaty/downloader/ub2$b$a;

    invoke-virtual {v1, p1, p2}, Lcom/shabakaty/downloader/ub2$b$a;->a(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/ub2$b;
    :try_end_0
    .catch Lcom/shabakaty/downloader/s32; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ub2$b$b;->n(Lcom/shabakaty/downloader/ub2$b;)Lcom/shabakaty/downloader/ub2$b$b;

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
    check-cast p2, Lcom/shabakaty/downloader/ub2$b;
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
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ub2$b$b;->n(Lcom/shabakaty/downloader/ub2$b;)Lcom/shabakaty/downloader/ub2$b$b;

    :cond_1
    throw p1
.end method

.method public n(Lcom/shabakaty/downloader/ub2$b;)Lcom/shabakaty/downloader/ub2$b$b;
    .locals 5

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ub2$b;->x:Lcom/shabakaty/downloader/ub2$b;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p1, Lcom/shabakaty/downloader/ub2$b;->s:I

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
    iget v1, p1, Lcom/shabakaty/downloader/ub2$b;->t:I

    .line 4
    iget v4, p0, Lcom/shabakaty/downloader/ub2$b$b;->s:I

    or-int/2addr v4, v3

    iput v4, p0, Lcom/shabakaty/downloader/ub2$b$b;->s:I

    .line 5
    iput v1, p0, Lcom/shabakaty/downloader/ub2$b$b;->t:I

    :cond_2
    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    const/4 v2, 0x1

    :cond_3
    if-eqz v2, :cond_4

    .line 6
    iget v0, p1, Lcom/shabakaty/downloader/ub2$b;->u:I

    .line 7
    iget v2, p0, Lcom/shabakaty/downloader/ub2$b$b;->s:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/shabakaty/downloader/ub2$b$b;->s:I

    .line 8
    iput v0, p0, Lcom/shabakaty/downloader/ub2$b$b;->u:I

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/shabakaty/downloader/pp1$b;->r:Lcom/shabakaty/downloader/ep;

    .line 10
    iget-object p1, p1, Lcom/shabakaty/downloader/ub2$b;->r:Lcom/shabakaty/downloader/ep;

    .line 11
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ep;->h(Lcom/shabakaty/downloader/ep;)Lcom/shabakaty/downloader/ep;

    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/shabakaty/downloader/pp1$b;->r:Lcom/shabakaty/downloader/ep;

    return-object p0
.end method

.method public bridge synthetic o1(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/ub2$b$b;->m(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/ub2$b$b;

    return-object p0
.end method
