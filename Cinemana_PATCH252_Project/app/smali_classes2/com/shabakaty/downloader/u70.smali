.class public final Lcom/shabakaty/downloader/u70;
.super Lcom/shabakaty/downloader/l92;
.source "CompletableDeferred.kt"

# interfaces
.implements Lcom/shabakaty/downloader/t70;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/l92;",
        "Lcom/shabakaty/downloader/t70<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/e92;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/l92;-><init>(Z)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/l92;->W(Lcom/shabakaty/downloader/e92;)V

    return-void
.end method


# virtual methods
.method public D(Ljava/lang/Throwable;)Z
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/i80;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2}, Lcom/shabakaty/downloader/i80;-><init>(Ljava/lang/Throwable;ZI)V

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/l92;->Y(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public J(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/l92;->Y(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public m0(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ud0<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    instance-of v1, p1, Lcom/shabakaty/downloader/u70$a;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/shabakaty/downloader/u70$a;

    iget v2, v1, Lcom/shabakaty/downloader/u70$a;->v:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/shabakaty/downloader/u70$a;->v:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/shabakaty/downloader/u70$a;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/u70$a;-><init>(Lcom/shabakaty/downloader/u70;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p1, v1, Lcom/shabakaty/downloader/u70$a;->u:Ljava/lang/Object;

    .line 1
    iget v2, v1, Lcom/shabakaty/downloader/u70$a;->v:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    iput v3, v1, Lcom/shabakaty/downloader/u70$a;->v:I

    .line 2
    :cond_3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/l92;->T()Ljava/lang/Object;

    move-result-object p1

    .line 3
    instance-of v2, p1, Lcom/shabakaty/downloader/g02;

    if-nez v2, :cond_5

    .line 4
    instance-of v1, p1, Lcom/shabakaty/downloader/i80;

    if-nez v1, :cond_4

    .line 5
    invoke-static {p1}, Lcom/shabakaty/downloader/m92;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 6
    :cond_4
    check-cast p1, Lcom/shabakaty/downloader/i80;

    iget-object p1, p1, Lcom/shabakaty/downloader/i80;->a:Ljava/lang/Throwable;

    .line 7
    throw p1

    .line 8
    :cond_5
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/l92;->g0(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_3

    .line 9
    new-instance p1, Lcom/shabakaty/downloader/l92$a;

    invoke-static {v1}, Lcom/shabakaty/downloader/he0;->q(Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;

    move-result-object v2

    invoke-direct {p1, v2, p0}, Lcom/shabakaty/downloader/l92$a;-><init>(Lcom/shabakaty/downloader/ud0;Lcom/shabakaty/downloader/l92;)V

    .line 10
    new-instance v2, Lcom/shabakaty/downloader/y32;

    invoke-direct {v2, p1}, Lcom/shabakaty/downloader/y32;-><init>(Lcom/shabakaty/downloader/gv;)V

    const/4 v4, 0x0

    .line 11
    invoke-virtual {p0, v4, v3, v2}, Lcom/shabakaty/downloader/l92;->x(ZZLcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/ou0;

    move-result-object v2

    .line 12
    new-instance v3, Lcom/shabakaty/downloader/wu;

    invoke-direct {v3, v2}, Lcom/shabakaty/downloader/wu;-><init>(Lcom/shabakaty/downloader/ou0;)V

    invoke-virtual {p1, v3}, Lcom/shabakaty/downloader/gv;->q(Lcom/shabakaty/downloader/tm1;)V

    .line 13
    invoke-virtual {p1}, Lcom/shabakaty/downloader/gv;->x()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    const-string v2, "frame"

    .line 14
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    :goto_1
    if-ne p1, v0, :cond_7

    return-object v0

    :cond_7
    :goto_2
    return-object p1
.end method
