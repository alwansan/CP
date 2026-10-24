.class public final Lcom/shabakaty/downloader/ru1;
.super Lcom/shabakaty/downloader/ui4;
.source "HomePageViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.ui.home_fragment.HomePageViewModel$fetchDataAndSyncWithSettings$1"
    f = "HomePageViewModel.kt"
    l = {
        0x2c
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

.field public final synthetic w:Lcom/shabakaty/downloader/tu1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/tu1;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/tu1;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/ru1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/ru1;->w:Lcom/shabakaty/downloader/tu1;

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
    new-instance p1, Lcom/shabakaty/downloader/ru1;

    iget-object v0, p0, Lcom/shabakaty/downloader/ru1;->w:Lcom/shabakaty/downloader/tu1;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/ru1;-><init>(Lcom/shabakaty/downloader/tu1;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/ru1;->t(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance p1, Lcom/shabakaty/downloader/ru1;

    iget-object v0, p0, Lcom/shabakaty/downloader/ru1;->w:Lcom/shabakaty/downloader/tu1;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/ru1;-><init>(Lcom/shabakaty/downloader/tu1;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/ru1;->v:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

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

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/ru1;->w:Lcom/shabakaty/downloader/tu1;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/tu1;->k:Lcom/shabakaty/downloader/n24;

    .line 6
    iget-object p1, p1, Lcom/shabakaty/downloader/n24;->h:Lcom/shabakaty/downloader/gc4;

    .line 7
    sget-object v1, Lcom/shabakaty/downloader/ru1$a;->r:Lcom/shabakaty/downloader/ru1$a;

    .line 8
    sget-object v3, Lcom/shabakaty/downloader/ze1;->a:Lcom/shabakaty/downloader/tm1;

    const-string v4, "null cannot be cast to non-null type (kotlin.Any?, kotlin.Any?) -> kotlin.Boolean"

    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v4, 0x2

    invoke-static {v1, v4}, Lcom/shabakaty/downloader/gt4;->c(Ljava/lang/Object;I)Ljava/lang/Object;

    invoke-static {p1, v3, v1}, Lcom/shabakaty/downloader/ze1;->a(Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/hn1;)Lcom/shabakaty/downloader/te1;

    move-result-object p1

    .line 9
    new-instance v1, Lcom/shabakaty/downloader/ru1$b;

    iget-object v3, p0, Lcom/shabakaty/downloader/ru1;->w:Lcom/shabakaty/downloader/tu1;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/shabakaty/downloader/ru1$b;-><init>(Lcom/shabakaty/downloader/tu1;Lcom/shabakaty/downloader/ud0;)V

    iput v2, p0, Lcom/shabakaty/downloader/ru1;->v:I

    invoke-static {p1, v1, p0}, Lcom/shabakaty/downloader/zy;->e(Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 10
    :cond_2
    :goto_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
