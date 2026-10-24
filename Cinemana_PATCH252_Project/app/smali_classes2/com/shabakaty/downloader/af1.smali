.class public final synthetic Lcom/shabakaty/downloader/af1;
.super Ljava/lang/Object;
.source "Emitters.kt"


# direct methods
.method public static final synthetic a(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/jn1;Ljava/lang/Throwable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/ue1<",
            "-TT;>;",
            "Lcom/shabakaty/downloader/jn1<",
            "-",
            "Lcom/shabakaty/downloader/ue1<",
            "-TT;>;-",
            "Ljava/lang/Throwable;",
            "-",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Throwable;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/shabakaty/downloader/af1$a;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/shabakaty/downloader/af1$a;

    iget v1, v0, Lcom/shabakaty/downloader/af1$a;->v:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/af1$a;->v:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/af1$a;

    invoke-direct {v0, p3}, Lcom/shabakaty/downloader/af1$a;-><init>(Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p3, v0, Lcom/shabakaty/downloader/af1$a;->u:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/af1$a;->v:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/shabakaty/downloader/af1$a;->w:Ljava/lang/Object;

    move-object p2, p0

    check-cast p2, Ljava/lang/Throwable;

    :try_start_0
    invoke-static {p3}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p3}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    iput-object p2, v0, Lcom/shabakaty/downloader/af1$a;->w:Ljava/lang/Object;

    iput v3, v0, Lcom/shabakaty/downloader/af1$a;->v:I

    invoke-interface {p1, p0, p2, v0}, Lcom/shabakaty/downloader/jn1;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p0, v1, :cond_3

    return-object v1

    .line 5
    :cond_3
    :goto_1
    sget-object p0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p0

    :catchall_0
    move-exception p0

    if-eqz p2, :cond_4

    if-eq p2, p0, :cond_4

    .line 6
    invoke-static {p0, p2}, Lcom/shabakaty/downloader/kf5;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 7
    :cond_4
    throw p0
.end method
