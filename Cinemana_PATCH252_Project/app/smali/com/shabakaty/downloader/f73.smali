.class public final Lcom/shabakaty/downloader/f73;
.super Ljava/lang/Object;
.source "Once.kt"


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/shabakaty/downloader/nn0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/e73;->b:Landroid/content/SharedPreferences;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 4
    iput-boolean p1, p0, Lcom/shabakaty/downloader/f73;->a:Z

    return-void

    :cond_0
    const-string p1, "preference"

    .line 5
    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/f73;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/shabakaty/downloader/f73$a;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/shabakaty/downloader/f73$a;

    iget v1, v0, Lcom/shabakaty/downloader/f73$a;->x:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/f73$a;->x:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/f73$a;

    invoke-direct {v0, p0, p3}, Lcom/shabakaty/downloader/f73$a;-><init>(Lcom/shabakaty/downloader/f73;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p3, v0, Lcom/shabakaty/downloader/f73$a;->v:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/f73$a;->x:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/shabakaty/downloader/f73$a;->u:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/f73;

    invoke-static {p3}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    sget-object p3, Lcom/shabakaty/downloader/e73;->a:Lcom/shabakaty/downloader/e73;

    iput-object p0, v0, Lcom/shabakaty/downloader/f73$a;->u:Ljava/lang/Object;

    iput v3, v0, Lcom/shabakaty/downloader/f73$a;->x:I

    invoke-virtual {p3, p1, p2, v0}, Lcom/shabakaty/downloader/e73;->a(Ljava/lang/String;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    :goto_1
    return-object p1
.end method
