.class public final synthetic Lcom/shabakaty/downloader/xe1;
.super Ljava/lang/Object;
.source "Channels.kt"


# direct methods
.method public static final a(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/yn3;ZLcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/ue1<",
            "-TT;>;",
            "Lcom/shabakaty/downloader/yn3<",
            "+TT;>;Z",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/shabakaty/downloader/xe1$a;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/shabakaty/downloader/xe1$a;

    iget v1, v0, Lcom/shabakaty/downloader/xe1$a;->v:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/xe1$a;->v:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/xe1$a;

    invoke-direct {v0, p3}, Lcom/shabakaty/downloader/xe1$a;-><init>(Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p3, v0, Lcom/shabakaty/downloader/xe1$a;->u:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/xe1$a;->v:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v4, :cond_3

    if-ne v2, v3, :cond_2

    iget-boolean p0, v0, Lcom/shabakaty/downloader/xe1$a;->z:Z

    iget-object p1, v0, Lcom/shabakaty/downloader/xe1$a;->y:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    iget-object p2, v0, Lcom/shabakaty/downloader/xe1$a;->x:Ljava/lang/Object;

    check-cast p2, Lcom/shabakaty/downloader/yn3;

    iget-object v2, v0, Lcom/shabakaty/downloader/xe1$a;->w:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/ue1;

    :try_start_0
    invoke-static {p3}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object p3, p1

    move-object p1, p2

    move p2, p0

    move-object p0, v2

    goto :goto_1

    .line 2
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_3
    iget-boolean p0, v0, Lcom/shabakaty/downloader/xe1$a;->z:Z

    iget-object p1, v0, Lcom/shabakaty/downloader/xe1$a;->y:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    iget-object p2, v0, Lcom/shabakaty/downloader/xe1$a;->x:Ljava/lang/Object;

    check-cast p2, Lcom/shabakaty/downloader/yn3;

    iget-object v2, v0, Lcom/shabakaty/downloader/xe1$a;->w:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/ue1;

    :try_start_1
    invoke-static {p3}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    check-cast p3, Lcom/shabakaty/downloader/pz4;

    .line 4
    iget-object p3, p3, Lcom/shabakaty/downloader/pz4;->a:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    .line 5
    :cond_4
    invoke-static {p3}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    const/4 p3, 0x0

    .line 6
    :goto_1
    :try_start_2
    iput-object p0, v0, Lcom/shabakaty/downloader/xe1$a;->w:Ljava/lang/Object;

    iput-object p1, v0, Lcom/shabakaty/downloader/xe1$a;->x:Ljava/lang/Object;

    iput-object p3, v0, Lcom/shabakaty/downloader/xe1$a;->y:Ljava/lang/Object;

    iput-boolean p2, v0, Lcom/shabakaty/downloader/xe1$a;->z:Z

    iput v4, v0, Lcom/shabakaty/downloader/xe1$a;->v:I

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/yn3;->m(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v6, v2

    move-object v2, p0

    move p0, p2

    move-object p2, p1

    move-object p1, p3

    move-object p3, v6

    .line 7
    :goto_2
    :try_start_3
    instance-of v5, p3, Lcom/shabakaty/downloader/pz4$a;

    if-eqz v5, :cond_9

    .line 8
    instance-of v0, p3, Lcom/shabakaty/downloader/pz4$a;

    if-eqz v0, :cond_8

    check-cast p3, Lcom/shabakaty/downloader/pz4$a;

    iget-object p3, p3, Lcom/shabakaty/downloader/pz4$a;->a:Ljava/lang/Throwable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p3, :cond_7

    if-eqz p0, :cond_6

    .line 9
    invoke-static {p2, p1}, Lcom/shabakaty/downloader/rm3;->c(Lcom/shabakaty/downloader/yn3;Ljava/lang/Throwable;)V

    .line 10
    :cond_6
    sget-object p0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p0

    .line 11
    :cond_7
    :try_start_4
    throw p3

    .line 12
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p3, "Channel was not closed"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_9
    instance-of v5, p3, Lcom/shabakaty/downloader/pz4$a;

    if-nez v5, :cond_a

    .line 14
    iput-object v2, v0, Lcom/shabakaty/downloader/xe1$a;->w:Ljava/lang/Object;

    iput-object p2, v0, Lcom/shabakaty/downloader/xe1$a;->x:Ljava/lang/Object;

    iput-object p1, v0, Lcom/shabakaty/downloader/xe1$a;->y:Ljava/lang/Object;

    iput-boolean p0, v0, Lcom/shabakaty/downloader/xe1$a;->z:Z

    iput v3, v0, Lcom/shabakaty/downloader/xe1$a;->v:I

    invoke-interface {v2, p3, v0}, Lcom/shabakaty/downloader/ue1;->b(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_1

    return-object v1

    .line 15
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p3, "Channel was closed"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_1
    move-exception p0

    move-object v6, p1

    move-object p1, p0

    move p0, p2

    move-object p2, v6

    .line 16
    :goto_3
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p3

    if-eqz p0, :cond_b

    .line 17
    invoke-static {p2, p1}, Lcom/shabakaty/downloader/rm3;->c(Lcom/shabakaty/downloader/yn3;Ljava/lang/Throwable;)V

    :cond_b
    throw p3
.end method
