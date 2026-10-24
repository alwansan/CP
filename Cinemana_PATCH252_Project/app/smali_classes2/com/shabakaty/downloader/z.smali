.class public abstract Lcom/shabakaty/downloader/z;
.super Ljava/lang/Object;
.source "Flow.kt"

# interfaces
.implements Lcom/shabakaty/downloader/te1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/te1<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ue1<",
            "-TT;>;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/shabakaty/downloader/z$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/z$a;

    iget v1, v0, Lcom/shabakaty/downloader/z$a;->v:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/z$a;->v:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/z$a;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/z$a;-><init>(Lcom/shabakaty/downloader/z;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p2, v0, Lcom/shabakaty/downloader/z$a;->u:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/z$a;->v:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/shabakaty/downloader/z$a;->x:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/ow3;

    :try_start_0
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    new-instance p2, Lcom/shabakaty/downloader/ow3;

    .line 5
    iget-object v2, v0, Lcom/shabakaty/downloader/xd0;->s:Lcom/shabakaty/downloader/me0;

    invoke-static {v2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 6
    invoke-direct {p2, p1, v2}, Lcom/shabakaty/downloader/ow3;-><init>(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/me0;)V

    .line 7
    :try_start_1
    iput-object p2, v0, Lcom/shabakaty/downloader/z$a;->x:Ljava/lang/Object;

    iput v3, v0, Lcom/shabakaty/downloader/z$a;->v:I

    move-object p1, p0

    check-cast p1, Lcom/shabakaty/downloader/rw3;

    .line 8
    iget-object p1, p1, Lcom/shabakaty/downloader/rw3;->r:Lcom/shabakaty/downloader/hn1;

    invoke-interface {p1, p2, v0}, Lcom/shabakaty/downloader/hn1;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object p1, p2

    .line 10
    :goto_2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ow3;->v()V

    .line 11
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1

    :catchall_1
    move-exception p1

    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    .line 12
    :goto_3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ow3;->v()V

    throw p2
.end method
