.class public final Lcom/shabakaty/downloader/bu0;
.super Ljava/lang/Object;
.source "DispatchedContinuation.kt"


# static fields
.field public static final a:Lcom/shabakaty/downloader/j61;

.field public static final b:Lcom/shabakaty/downloader/j61;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/j61;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/j61;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/bu0;->a:Lcom/shabakaty/downloader/j61;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/j61;

    const-string v1, "REUSABLE_CLAIMED"

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/j61;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/bu0;->b:Lcom/shabakaty/downloader/j61;

    return-void
.end method

.method public static final a(Lcom/shabakaty/downloader/ud0;Ljava/lang/Object;Lcom/shabakaty/downloader/tm1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/ud0<",
            "-TT;>;",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/shabakaty/downloader/au0;

    if-eqz v0, :cond_9

    check-cast p0, Lcom/shabakaty/downloader/au0;

    .line 2
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/z02;->D(Ljava/lang/Object;Lcom/shabakaty/downloader/tm1;)Ljava/lang/Object;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/au0;->w:Lcom/shabakaty/downloader/pe0;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/au0;->a()Lcom/shabakaty/downloader/me0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/pe0;->B(Lcom/shabakaty/downloader/me0;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/au0;->u:Ljava/lang/Object;

    .line 5
    iput v1, p0, Lcom/shabakaty/downloader/du0;->t:I

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/au0;->w:Lcom/shabakaty/downloader/pe0;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/au0;->a()Lcom/shabakaty/downloader/me0;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lcom/shabakaty/downloader/pe0;->g(Lcom/shabakaty/downloader/me0;Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 7
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/an4;->b:Lcom/shabakaty/downloader/an4;

    invoke-static {}, Lcom/shabakaty/downloader/an4;->a()Lcom/shabakaty/downloader/q51;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/shabakaty/downloader/q51;->Y()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    iput-object p2, p0, Lcom/shabakaty/downloader/au0;->u:Ljava/lang/Object;

    .line 10
    iput v1, p0, Lcom/shabakaty/downloader/du0;->t:I

    .line 11
    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/q51;->S(Lcom/shabakaty/downloader/du0;)V

    goto/16 :goto_4

    .line 12
    :cond_1
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/q51;->V(Z)V

    const/4 v2, 0x0

    .line 13
    :try_start_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/au0;->a()Lcom/shabakaty/downloader/me0;

    move-result-object v3

    sget-object v4, Lcom/shabakaty/downloader/e92;->h:Lcom/shabakaty/downloader/e92$b;

    invoke-interface {v3, v4}, Lcom/shabakaty/downloader/me0;->get(Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0$b;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/e92;

    if-eqz v3, :cond_3

    .line 14
    invoke-interface {v3}, Lcom/shabakaty/downloader/e92;->c()Z

    move-result v4

    if-nez v4, :cond_3

    .line 15
    invoke-interface {v3}, Lcom/shabakaty/downloader/e92;->v()Ljava/util/concurrent/CancellationException;

    move-result-object v3

    .line 16
    instance-of v4, p2, Lcom/shabakaty/downloader/j80;

    if-eqz v4, :cond_2

    .line 17
    check-cast p2, Lcom/shabakaty/downloader/j80;

    iget-object p2, p2, Lcom/shabakaty/downloader/j80;->b:Lcom/shabakaty/downloader/tm1;

    invoke-interface {p2, v3}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_2
    invoke-static {v3}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/au0;->i(Ljava/lang/Object;)V

    const/4 p2, 0x1

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_8

    .line 19
    iget-object p2, p0, Lcom/shabakaty/downloader/au0;->x:Lcom/shabakaty/downloader/ud0;

    iget-object v3, p0, Lcom/shabakaty/downloader/au0;->v:Ljava/lang/Object;

    .line 20
    invoke-interface {p2}, Lcom/shabakaty/downloader/ud0;->a()Lcom/shabakaty/downloader/me0;

    move-result-object v4

    .line 21
    invoke-static {v4, v3}, Lcom/shabakaty/downloader/zm4;->c(Lcom/shabakaty/downloader/me0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 22
    sget-object v5, Lcom/shabakaty/downloader/zm4;->a:Lcom/shabakaty/downloader/j61;

    if-eq v3, v5, :cond_4

    .line 23
    invoke-static {p2, v4, v3}, Lcom/shabakaty/downloader/ne0;->b(Lcom/shabakaty/downloader/ud0;Lcom/shabakaty/downloader/me0;Ljava/lang/Object;)Lcom/shabakaty/downloader/nv4;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    :cond_4
    move-object p2, v2

    .line 24
    :goto_1
    :try_start_1
    iget-object v5, p0, Lcom/shabakaty/downloader/au0;->x:Lcom/shabakaty/downloader/ud0;

    invoke-interface {v5, p1}, Lcom/shabakaty/downloader/ud0;->i(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_5

    .line 25
    :try_start_2
    invoke-virtual {p2}, Lcom/shabakaty/downloader/nv4;->s0()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 26
    :cond_5
    invoke-static {v4, v3}, Lcom/shabakaty/downloader/zm4;->a(Lcom/shabakaty/downloader/me0;Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_6

    .line 27
    invoke-virtual {p2}, Lcom/shabakaty/downloader/nv4;->s0()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 28
    :cond_6
    invoke-static {v4, v3}, Lcom/shabakaty/downloader/zm4;->a(Lcom/shabakaty/downloader/me0;Ljava/lang/Object;)V

    :cond_7
    throw p1

    .line 29
    :cond_8
    :goto_2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/q51;->Z()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p1, :cond_8

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 30
    :try_start_3
    invoke-virtual {p0, p1, v2}, Lcom/shabakaty/downloader/du0;->j(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 31
    :goto_3
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/q51;->M(Z)V

    goto :goto_4

    :catchall_2
    move-exception p0

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/q51;->M(Z)V

    throw p0

    .line 32
    :cond_9
    invoke-interface {p0, p1}, Lcom/shabakaty/downloader/ud0;->i(Ljava/lang/Object;)V

    :goto_4
    return-void
.end method

.method public static synthetic b(Lcom/shabakaty/downloader/ud0;Ljava/lang/Object;Lcom/shabakaty/downloader/tm1;I)V
    .locals 0

    const/4 p2, 0x0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/shabakaty/downloader/bu0;->a(Lcom/shabakaty/downloader/ud0;Ljava/lang/Object;Lcom/shabakaty/downloader/tm1;)V

    return-void
.end method
