.class public final Lcom/shabakaty/downloader/lf1;
.super Lcom/shabakaty/downloader/ui4;
.source "Share.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1"
    f = "Share.kt"
    l = {
        0xce,
        0xd2,
        0xd3,
        0xd9
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

.field public final synthetic w:Lcom/shabakaty/downloader/j54;

.field public final synthetic x:Lcom/shabakaty/downloader/te1;

.field public final synthetic y:Lcom/shabakaty/downloader/cw2;

.field public final synthetic z:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/j54;Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/cw2;Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/lf1;->w:Lcom/shabakaty/downloader/j54;

    iput-object p2, p0, Lcom/shabakaty/downloader/lf1;->x:Lcom/shabakaty/downloader/te1;

    iput-object p3, p0, Lcom/shabakaty/downloader/lf1;->y:Lcom/shabakaty/downloader/cw2;

    iput-object p4, p0, Lcom/shabakaty/downloader/lf1;->z:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public final o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v5, p2

    check-cast v5, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance p1, Lcom/shabakaty/downloader/lf1;

    iget-object v1, p0, Lcom/shabakaty/downloader/lf1;->w:Lcom/shabakaty/downloader/j54;

    iget-object v2, p0, Lcom/shabakaty/downloader/lf1;->x:Lcom/shabakaty/downloader/te1;

    iget-object v3, p0, Lcom/shabakaty/downloader/lf1;->y:Lcom/shabakaty/downloader/cw2;

    iget-object v4, p0, Lcom/shabakaty/downloader/lf1;->z:Ljava/lang/Object;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/lf1;-><init>(Lcom/shabakaty/downloader/j54;Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/cw2;Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/lf1;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 6
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

    new-instance p1, Lcom/shabakaty/downloader/lf1;

    iget-object v1, p0, Lcom/shabakaty/downloader/lf1;->w:Lcom/shabakaty/downloader/j54;

    iget-object v2, p0, Lcom/shabakaty/downloader/lf1;->x:Lcom/shabakaty/downloader/te1;

    iget-object v3, p0, Lcom/shabakaty/downloader/lf1;->y:Lcom/shabakaty/downloader/cw2;

    iget-object v4, p0, Lcom/shabakaty/downloader/lf1;->z:Ljava/lang/Object;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/lf1;-><init>(Lcom/shabakaty/downloader/j54;Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/cw2;Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/lf1;->v:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/lf1;->w:Lcom/shabakaty/downloader/j54;

    sget v1, Lcom/shabakaty/downloader/j54;->a:I

    sget-object v1, Lcom/shabakaty/downloader/j54$a;->a:Lcom/shabakaty/downloader/j54;

    if-ne p1, v1, :cond_4

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/lf1;->x:Lcom/shabakaty/downloader/te1;

    iget-object v1, p0, Lcom/shabakaty/downloader/lf1;->y:Lcom/shabakaty/downloader/cw2;

    iput v5, p0, Lcom/shabakaty/downloader/lf1;->v:I

    invoke-interface {p1, v1, p0}, Lcom/shabakaty/downloader/te1;->d(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 6
    :cond_4
    sget-object v1, Lcom/shabakaty/downloader/j54$a;->b:Lcom/shabakaty/downloader/j54;

    const/4 v5, 0x0

    if-ne p1, v1, :cond_6

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/lf1;->y:Lcom/shabakaty/downloader/cw2;

    invoke-interface {p1}, Lcom/shabakaty/downloader/cw2;->m()Lcom/shabakaty/downloader/gc4;

    move-result-object p1

    new-instance v1, Lcom/shabakaty/downloader/lf1$a;

    invoke-direct {v1, v5}, Lcom/shabakaty/downloader/lf1$a;-><init>(Lcom/shabakaty/downloader/ud0;)V

    iput v4, p0, Lcom/shabakaty/downloader/lf1;->v:I

    invoke-static {p1, v1, p0}, Lcom/shabakaty/downloader/zy;->g(Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 8
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/shabakaty/downloader/lf1;->x:Lcom/shabakaty/downloader/te1;

    iget-object v1, p0, Lcom/shabakaty/downloader/lf1;->y:Lcom/shabakaty/downloader/cw2;

    iput v3, p0, Lcom/shabakaty/downloader/lf1;->v:I

    invoke-interface {p1, v1, p0}, Lcom/shabakaty/downloader/te1;->d(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 9
    :cond_6
    iget-object v1, p0, Lcom/shabakaty/downloader/lf1;->y:Lcom/shabakaty/downloader/cw2;

    invoke-interface {v1}, Lcom/shabakaty/downloader/cw2;->m()Lcom/shabakaty/downloader/gc4;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/j54;->a(Lcom/shabakaty/downloader/gc4;)Lcom/shabakaty/downloader/te1;

    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/shabakaty/downloader/zy;->f(Lcom/shabakaty/downloader/te1;)Lcom/shabakaty/downloader/te1;

    move-result-object p1

    .line 11
    new-instance v1, Lcom/shabakaty/downloader/lf1$b;

    invoke-direct {v1, p0, v5}, Lcom/shabakaty/downloader/lf1$b;-><init>(Lcom/shabakaty/downloader/lf1;Lcom/shabakaty/downloader/ud0;)V

    iput v2, p0, Lcom/shabakaty/downloader/lf1;->v:I

    invoke-static {p1, v1, p0}, Lcom/shabakaty/downloader/zy;->e(Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 12
    :cond_7
    :goto_2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
