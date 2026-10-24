.class public final Lcom/shabakaty/downloader/o24;
.super Lcom/shabakaty/downloader/ui4;
.source "Settings.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.utils.user.Settings$sync$1"
    f = "Settings.kt"
    l = {
        0x38
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ui4;",
        "Lcom/shabakaty/downloader/hn1<",
        "Lcom/shabakaty/downloader/se0;",
        "Lcom/shabakaty/downloader/ud0<",
        "-",
        "Lcom/shabakaty/downloader/qv4;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public v:I

.field public final synthetic w:Lcom/shabakaty/downloader/n24;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/n24;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/n24;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/o24;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/o24;->w:Lcom/shabakaty/downloader/n24;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/shabakaty/downloader/se0;

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance p1, Lcom/shabakaty/downloader/o24;

    iget-object v0, p0, Lcom/shabakaty/downloader/o24;->w:Lcom/shabakaty/downloader/n24;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/o24;-><init>(Lcom/shabakaty/downloader/n24;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/o24;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/downloader/ud0<",
            "*>;)",
            "Lcom/shabakaty/downloader/ud0<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/shabakaty/downloader/o24;

    iget-object v0, p0, Lcom/shabakaty/downloader/o24;->w:Lcom/shabakaty/downloader/n24;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/o24;-><init>(Lcom/shabakaty/downloader/n24;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/o24;->v:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/o24;->w:Lcom/shabakaty/downloader/n24;

    .line 5
    iget-object v1, p1, Lcom/shabakaty/downloader/n24;->a:Lcom/shabakaty/downloader/n34;

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/n24;->h()Ljava/lang/String;

    move-result-object p1

    iput v3, p0, Lcom/shabakaty/downloader/o24;->v:I

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v4, Lcom/shabakaty/downloader/c44;

    invoke-direct {v4, p1, v1, v2}, Lcom/shabakaty/downloader/c44;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/n34;Lcom/shabakaty/downloader/ud0;)V

    invoke-static {v4, p0}, Lcom/shabakaty/downloader/j96;->g(Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_0
    if-ne p1, v0, :cond_3

    return-object v0

    .line 8
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/shabakaty/downloader/o24;->w:Lcom/shabakaty/downloader/n24;

    .line 9
    iget-object v0, p1, Lcom/shabakaty/downloader/n24;->e:Lcom/shabakaty/downloader/e92;

    if-nez v0, :cond_4

    goto :goto_2

    .line 10
    :cond_4
    invoke-static {v0, v2, v3, v2}, Lcom/shabakaty/downloader/bp;->e(Lcom/shabakaty/downloader/e92;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 11
    invoke-interface {v0, v2}, Lcom/shabakaty/downloader/e92;->b(Ljava/util/concurrent/CancellationException;)V

    .line 12
    :goto_2
    iget-object v4, p1, Lcom/shabakaty/downloader/n24;->d:Lcom/shabakaty/downloader/pc;

    const/4 v5, 0x0

    new-instance v7, Lcom/shabakaty/downloader/j24;

    invoke-direct {v7, p1, v2}, Lcom/shabakaty/downloader/j24;-><init>(Lcom/shabakaty/downloader/n24;Lcom/shabakaty/downloader/ud0;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    move-result-object v0

    iput-object v0, p1, Lcom/shabakaty/downloader/n24;->e:Lcom/shabakaty/downloader/e92;

    .line 13
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
