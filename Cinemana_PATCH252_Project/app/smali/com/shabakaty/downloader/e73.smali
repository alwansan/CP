.class public final Lcom/shabakaty/downloader/e73;
.super Ljava/lang/Object;
.source "Once.kt"


# static fields
.field public static final a:Lcom/shabakaty/downloader/e73;

.field public static b:Landroid/content/SharedPreferences;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/e73;

    invoke-direct {v0}, Lcom/shabakaty/downloader/e73;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/e73;->a:Lcom/shabakaty/downloader/e73;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/shabakaty/downloader/e73$a;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/shabakaty/downloader/e73$a;

    iget v1, v0, Lcom/shabakaty/downloader/e73$a;->x:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/e73$a;->x:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/e73$a;

    invoke-direct {v0, p0, p3}, Lcom/shabakaty/downloader/e73$a;-><init>(Lcom/shabakaty/downloader/e73;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p3, v0, Lcom/shabakaty/downloader/e73$a;->v:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/e73$a;->x:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/shabakaty/downloader/e73$a;->u:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    :try_start_0
    invoke-static {p3}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/e73;->b(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 5
    :try_start_1
    iput-object p1, v0, Lcom/shabakaty/downloader/e73$a;->u:Ljava/lang/Object;

    iput v3, v0, Lcom/shabakaty/downloader/e73$a;->x:I

    invoke-interface {p2, v0}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 6
    :cond_3
    :goto_1
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    .line 7
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    .line 8
    :goto_2
    instance-of p3, p2, Lcom/shabakaty/downloader/dt3$a;

    xor-int/2addr p3, v3

    if-eqz p3, :cond_4

    .line 9
    check-cast p2, Lcom/shabakaty/downloader/qv4;

    .line 10
    sget-object p2, Lcom/shabakaty/downloader/e73;->a:Lcom/shabakaty/downloader/e73;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/e73;->c(Ljava/lang/String;)V

    .line 11
    :cond_4
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "mark"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/e73;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_0
    const-string p1, "preference"

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    const-string v0, "mark"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/e73;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_0
    const-string p1, "preference"

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
