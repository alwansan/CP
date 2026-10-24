.class public final Lcom/shabakaty/downloader/df4;
.super Ljava/lang/Object;
.source "Share.kt"

# interfaces
.implements Lcom/shabakaty/downloader/ue1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/ue1<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public final a(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/shabakaty/downloader/df4$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/df4$a;

    iget v1, v0, Lcom/shabakaty/downloader/df4$a;->v:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/df4$a;->v:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/df4$a;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/df4$a;-><init>(Lcom/shabakaty/downloader/df4;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p1, v0, Lcom/shabakaty/downloader/df4$a;->u:Ljava/lang/Object;

    .line 1
    iget v1, v0, Lcom/shabakaty/downloader/df4$a;->v:I

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v1, v0, Lcom/shabakaty/downloader/df4$a;->y:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/ow3;

    iget-object v0, v0, Lcom/shabakaty/downloader/df4$a;->x:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/df4;

    :try_start_0
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ow3;->v()V

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :goto_1
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1

    .line 7
    :cond_3
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 8
    iget-object p1, v0, Lcom/shabakaty/downloader/xd0;->s:Lcom/shabakaty/downloader/me0;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 9
    new-instance v1, Lcom/shabakaty/downloader/ow3;

    const/4 v3, 0x0

    invoke-direct {v1, v3, p1}, Lcom/shabakaty/downloader/ow3;-><init>(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/me0;)V

    .line 10
    :try_start_1
    iput-object p0, v0, Lcom/shabakaty/downloader/df4$a;->x:Ljava/lang/Object;

    iput-object v1, v0, Lcom/shabakaty/downloader/df4$a;->y:Ljava/lang/Object;

    iput v2, v0, Lcom/shabakaty/downloader/df4$a;->v:I

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 11
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ow3;->v()V

    throw p1
.end method

.method public b(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method
