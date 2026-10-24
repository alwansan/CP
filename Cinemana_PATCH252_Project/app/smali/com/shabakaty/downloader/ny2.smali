.class public final Lcom/shabakaty/downloader/ny2;
.super Ljava/lang/Object;
.source "NetworkProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ny2$b;,
        Lcom/shabakaty/downloader/ny2$a;
    }
.end annotation


# instance fields
.field public a:Landroid/content/SharedPreferences;

.field public final b:Lcom/shabakaty/downloader/a63;

.field public final c:Lcom/shabakaty/downloader/lr1;

.field public final d:Lcom/shabakaty/downloader/ny2$b;

.field public final e:Lcom/shabakaty/downloader/ny2$a;

.field public final f:Lcom/shabakaty/downloader/g41;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Lcom/shabakaty/downloader/a63;Lcom/shabakaty/downloader/lr1;Lcom/shabakaty/downloader/ny2$b;Lcom/shabakaty/downloader/ny2$a;Lcom/shabakaty/downloader/g41;)V
    .locals 1

    const-string v0, "client"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "links"

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "durations"

    invoke-static {p5, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ny2;->a:Landroid/content/SharedPreferences;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/ny2;->b:Lcom/shabakaty/downloader/a63;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/ny2;->c:Lcom/shabakaty/downloader/lr1;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/ny2;->d:Lcom/shabakaty/downloader/ny2$b;

    .line 6
    iput-object p5, p0, Lcom/shabakaty/downloader/ny2;->e:Lcom/shabakaty/downloader/ny2$a;

    .line 7
    iput-object p6, p0, Lcom/shabakaty/downloader/ny2;->f:Lcom/shabakaty/downloader/g41;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/shabakaty/downloader/ny2$c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/ny2$c;

    iget v1, v0, Lcom/shabakaty/downloader/ny2$c;->x:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/ny2$c;->x:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/ny2$c;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/ny2$c;-><init>(Lcom/shabakaty/downloader/ny2;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p2, v0, Lcom/shabakaty/downloader/ny2$c;->v:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/ny2$c;->x:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lcom/shabakaty/downloader/ny2$c;->u:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/ny2;

    :try_start_0
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

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
    iget-object p2, p0, Lcom/shabakaty/downloader/ny2;->f:Lcom/shabakaty/downloader/g41;

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    const-string v2, "impression"

    .line 5
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Sending an impression request to: "

    .line 6
    invoke-static {v2, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, p2}, Lcom/shabakaty/downloader/g41;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/g41$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/shabakaty/downloader/g41$a;->a()V

    .line 7
    :goto_1
    new-instance p2, Lcom/shabakaty/downloader/vr3$a;

    invoke-direct {p2}, Lcom/shabakaty/downloader/vr3$a;-><init>()V

    .line 8
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/vr3$a;->k(Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;

    .line 9
    invoke-virtual {p2}, Lcom/shabakaty/downloader/vr3$a;->d()Lcom/shabakaty/downloader/vr3$a;

    .line 10
    invoke-virtual {p2}, Lcom/shabakaty/downloader/vr3$a;->b()Lcom/shabakaty/downloader/vr3;

    move-result-object p1

    .line 11
    :try_start_1
    iget-object p2, p0, Lcom/shabakaty/downloader/ny2;->b:Lcom/shabakaty/downloader/a63;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/a63;->a(Lcom/shabakaty/downloader/vr3;)Lcom/shabakaty/downloader/mq;

    move-result-object p1

    iput-object p0, v0, Lcom/shabakaty/downloader/ny2$c;->u:Ljava/lang/Object;

    iput v4, v0, Lcom/shabakaty/downloader/ny2$c;->x:I

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/i41;->a(Lcom/shabakaty/downloader/mq;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object p1, p0

    .line 12
    :goto_2
    check-cast p2, Lcom/shabakaty/downloader/ws3;

    .line 13
    iget-object p2, p2, Lcom/shabakaty/downloader/ws3;->y:Lcom/shabakaty/downloader/ys3;

    if-nez p2, :cond_5

    move-object p2, v3

    goto :goto_3

    .line 14
    :cond_5
    invoke-virtual {p2}, Lcom/shabakaty/downloader/ys3;->g()Ljava/lang/String;

    move-result-object p2

    .line 15
    :goto_3
    iget-object p1, p1, Lcom/shabakaty/downloader/ny2;->f:Lcom/shabakaty/downloader/g41;

    if-nez p1, :cond_6

    goto :goto_5

    :cond_6
    const-string v0, "Received impression response: "

    .line 16
    invoke-static {v0, p2}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p1}, Lcom/shabakaty/downloader/g41;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/g41$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/g41$a;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 17
    :goto_4
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    .line 18
    :goto_5
    instance-of p1, p2, Lcom/shabakaty/downloader/dt3$a;

    if-eqz p1, :cond_7

    goto :goto_6

    :cond_7
    move-object v3, p2

    :goto_6
    return-object v3
.end method

.method public final b(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/f41;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/shabakaty/downloader/ny2$d;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/ny2$d;

    iget v1, v0, Lcom/shabakaty/downloader/ny2$d;->y:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/ny2$d;->y:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/ny2$d;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/ny2$d;-><init>(Lcom/shabakaty/downloader/ny2;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p1, v0, Lcom/shabakaty/downloader/ny2$d;->w:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/ny2$d;->y:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/shabakaty/downloader/ny2$d;->u:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ny2;

    :try_start_0
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Lcom/shabakaty/downloader/ny2$d;->v:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/ny2;

    iget-object v4, v0, Lcom/shabakaty/downloader/ny2$d;->u:Ljava/lang/Object;

    check-cast v4, Lcom/shabakaty/downloader/ny2;

    :try_start_1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v0, v4

    goto :goto_4

    :cond_3
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    :try_start_2
    iput-object p0, v0, Lcom/shabakaty/downloader/ny2$d;->u:Ljava/lang/Object;

    iput-object p0, v0, Lcom/shabakaty/downloader/ny2$d;->v:Ljava/lang/Object;

    iput v4, v0, Lcom/shabakaty/downloader/ny2$d;->y:I

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ny2;->c(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    move-object v4, v2

    :goto_1
    :try_start_3
    check-cast p1, Lcom/shabakaty/downloader/f41;

    if-nez p1, :cond_6

    iput-object v4, v0, Lcom/shabakaty/downloader/ny2$d;->u:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/shabakaty/downloader/ny2$d;->v:Ljava/lang/Object;

    iput v3, v0, Lcom/shabakaty/downloader/ny2$d;->y:I

    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/ny2;->d(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v0, v4

    :goto_2
    :try_start_4
    check-cast p1, Lcom/shabakaty/downloader/f41;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_3
    move-object v4, v0

    goto :goto_5

    :catchall_2
    move-exception p1

    move-object v0, p0

    .line 5
    :goto_4
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    .line 6
    :cond_6
    :goto_5
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/shabakaty/downloader/f41$b;->w:Lcom/shabakaty/downloader/f41$b;

    .line 8
    instance-of v1, p1, Lcom/shabakaty/downloader/dt3$a;

    if-eqz v1, :cond_7

    move-object p1, v0

    :cond_7
    return-object p1
.end method

.method public final c(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/f41;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/shabakaty/downloader/ny2$e;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/ny2$e;

    iget v1, v0, Lcom/shabakaty/downloader/ny2$e;->x:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/ny2$e;->x:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/ny2$e;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/ny2$e;-><init>(Lcom/shabakaty/downloader/ny2;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p1, v0, Lcom/shabakaty/downloader/ny2$e;->v:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/ny2$e;->x:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Lcom/shabakaty/downloader/ny2$e;->u:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/ny2;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iput-object p0, v0, Lcom/shabakaty/downloader/ny2$e;->u:Ljava/lang/Object;

    iput v5, v0, Lcom/shabakaty/downloader/ny2$e;->x:I

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ny2;->h(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    check-cast p1, Lcom/shabakaty/downloader/l41;

    if-nez p1, :cond_5

    goto :goto_3

    .line 5
    :cond_5
    iget-object p1, p1, Lcom/shabakaty/downloader/l41;->a:Ljava/lang/String;

    .line 6
    iput-object v3, v0, Lcom/shabakaty/downloader/ny2$e;->u:Ljava/lang/Object;

    iput v4, v0, Lcom/shabakaty/downloader/ny2$e;->x:I

    invoke-virtual {v2, p1, v0}, Lcom/shabakaty/downloader/ny2;->f(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    move-object v3, p1

    check-cast v3, Lcom/shabakaty/downloader/f41;

    :goto_3
    return-object v3
.end method

.method public final d(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/f41;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/shabakaty/downloader/ny2$f;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/ny2$f;

    iget v1, v0, Lcom/shabakaty/downloader/ny2$f;->x:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/ny2$f;->x:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/ny2$f;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/ny2$f;-><init>(Lcom/shabakaty/downloader/ny2;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p1, v0, Lcom/shabakaty/downloader/ny2$f;->v:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/ny2$f;->x:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Lcom/shabakaty/downloader/ny2$f;->u:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/ny2;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iput-object p0, v0, Lcom/shabakaty/downloader/ny2$f;->u:Ljava/lang/Object;

    iput v4, v0, Lcom/shabakaty/downloader/ny2$f;->x:I

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ny2;->l(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    check-cast p1, Lcom/shabakaty/downloader/l41;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/l41;->a:Ljava/lang/String;

    const/4 v4, 0x0

    .line 6
    iput-object v4, v0, Lcom/shabakaty/downloader/ny2$f;->u:Ljava/lang/Object;

    iput v3, v0, Lcom/shabakaty/downloader/ny2$f;->x:I

    invoke-virtual {v2, p1, v0}, Lcom/shabakaty/downloader/ny2;->f(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    return-object p1
.end method

.method public final e(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/f41$c;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/shabakaty/downloader/ny2$g;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/ny2$g;

    iget v1, v0, Lcom/shabakaty/downloader/ny2$g;->w:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/ny2$g;->w:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/ny2$g;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/ny2$g;-><init>(Lcom/shabakaty/downloader/ny2;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p2, v0, Lcom/shabakaty/downloader/ny2$g;->u:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/ny2$g;->w:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

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
    iput v3, v0, Lcom/shabakaty/downloader/ny2$g;->w:I

    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/ny2;->g(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 5
    :cond_3
    :goto_1
    check-cast p2, Lcom/shabakaty/epom_view/models/ImageEpomResponse;

    if-nez p2, :cond_4

    const/4 p1, 0x0

    goto :goto_2

    .line 6
    :cond_4
    invoke-virtual {p2}, Lcom/shabakaty/epom_view/models/ImageEpomResponse;->asImageAd()Lcom/shabakaty/downloader/f41$c;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public final f(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/f41;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/shabakaty/downloader/ny2$h;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/ny2$h;

    iget v1, v0, Lcom/shabakaty/downloader/ny2$h;->y:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/ny2$h;->y:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/ny2$h;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/ny2$h;-><init>(Lcom/shabakaty/downloader/ny2;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p2, v0, Lcom/shabakaty/downloader/ny2$h;->w:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/ny2$h;->y:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/shabakaty/downloader/ny2$h;->v:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/ny2;

    iget-object v0, v0, Lcom/shabakaty/downloader/ny2$h;->u:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ny2;

    :try_start_0
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_7

    :catchall_0
    move-exception p1

    goto/16 :goto_9

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Lcom/shabakaty/downloader/ny2$h;->v:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Lcom/shabakaty/downloader/ny2$h;->u:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/ny2;

    :try_start_1
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    goto :goto_3

    :cond_3
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/shabakaty/downloader/ny2;->f:Lcom/shabakaty/downloader/g41;

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    const-string v2, "Fetching image ad.."

    .line 5
    invoke-virtual {p2, v2, p2}, Lcom/shabakaty/downloader/g41;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/g41$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/shabakaty/downloader/g41$a;->a()V

    .line 6
    :goto_1
    :try_start_2
    iput-object p0, v0, Lcom/shabakaty/downloader/ny2$h;->u:Ljava/lang/Object;

    iput-object p1, v0, Lcom/shabakaty/downloader/ny2$h;->v:Ljava/lang/Object;

    iput v4, v0, Lcom/shabakaty/downloader/ny2$h;->y:I

    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/ny2;->e(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p0

    :goto_2
    :try_start_3
    check-cast p2, Lcom/shabakaty/downloader/f41$c;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_2
    move-exception p2

    move-object v2, p0

    .line 7
    :goto_3
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    :goto_4
    move-object v6, p2

    move-object p2, p1

    move-object p1, v2

    move-object v2, v6

    .line 8
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v4, Lcom/shabakaty/downloader/f41$b;->w:Lcom/shabakaty/downloader/f41$b;

    .line 10
    instance-of v5, v2, Lcom/shabakaty/downloader/dt3$a;

    if-eqz v5, :cond_6

    move-object v2, v4

    .line 11
    :cond_6
    check-cast v2, Lcom/shabakaty/downloader/f41;

    if-nez v2, :cond_7

    goto :goto_5

    :cond_7
    move-object v4, v2

    .line 12
    :goto_5
    nop

    instance-of v2, v4, Lcom/shabakaty/downloader/f41$b;

    if-nez v2, :cond_9

    .line 13
    iget-object p1, p1, Lcom/shabakaty/downloader/ny2;->f:Lcom/shabakaty/downloader/g41;

    if-nez p1, :cond_8

    goto/16 :goto_b

    :cond_8
    const-string p2, "imageAd"

    .line 14
    invoke-static {v4, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "Fetched image ad with data: "

    .line 15
    invoke-static {p2, v4}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p1}, Lcom/shabakaty/downloader/g41;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/g41$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/g41$a;->a()V

    goto :goto_b

    .line 16
    :cond_9
    :try_start_4
    iget-object v2, p1, Lcom/shabakaty/downloader/ny2;->f:Lcom/shabakaty/downloader/g41;

    if-nez v2, :cond_a

    goto :goto_6

    :cond_a
    const-string v4, "Image ad request failed, fetching video ad.."

    .line 17
    invoke-virtual {v2, v4, v2}, Lcom/shabakaty/downloader/g41;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/g41$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shabakaty/downloader/g41$a;->a()V

    .line 18
    :goto_6
    iput-object p1, v0, Lcom/shabakaty/downloader/ny2$h;->u:Ljava/lang/Object;

    iput-object p1, v0, Lcom/shabakaty/downloader/ny2$h;->v:Ljava/lang/Object;

    iput v3, v0, Lcom/shabakaty/downloader/ny2$h;->y:I

    invoke-virtual {p1, p2, v0}, Lcom/shabakaty/downloader/ny2;->i(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-ne p2, v1, :cond_b

    return-object v1

    :cond_b
    move-object v0, p1

    .line 19
    :goto_7
    :try_start_5
    check-cast p2, Lcom/shabakaty/downloader/f41$e;

    .line 20
    iget-object v1, p2, Lcom/shabakaty/downloader/f41$e;->w:Ljava/lang/String;

    .line 21
    invoke-static {v1}, Lcom/shabakaty/downloader/ne4;->D(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 22
    iget-object p1, p1, Lcom/shabakaty/downloader/ny2;->f:Lcom/shabakaty/downloader/g41;

    if-nez p1, :cond_c

    goto :goto_8

    :cond_c
    const-string p2, "Video ad url was not found, not displaying anything."

    .line 23
    invoke-virtual {p1, p2, p1}, Lcom/shabakaty/downloader/g41;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/g41$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/g41$a;->a()V

    .line 24
    :goto_8
    sget-object p2, Lcom/shabakaty/downloader/f41$b;->w:Lcom/shabakaty/downloader/f41$b;

    goto :goto_a

    .line 25
    :cond_d
    iget-object p1, p1, Lcom/shabakaty/downloader/ny2;->f:Lcom/shabakaty/downloader/g41;

    if-nez p1, :cond_e

    goto :goto_a

    :cond_e
    const-string v1, "ad"

    .line 26
    invoke-static {p2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Fetched video ad with data: "

    .line 27
    invoke-static {v1, p2}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p1}, Lcom/shabakaty/downloader/g41;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/g41$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/g41$a;->a()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_a

    :catchall_3
    move-exception p2

    move-object v0, p1

    move-object p1, p2

    .line 28
    :goto_9
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    .line 29
    :goto_a
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object p1, Lcom/shabakaty/downloader/f41$b;->w:Lcom/shabakaty/downloader/f41$b;

    .line 31
    instance-of v0, p2, Lcom/shabakaty/downloader/dt3$a;

    if-eqz v0, :cond_f

    move-object p2, p1

    .line 32
    :cond_f
    move-object v4, p2

    check-cast v4, Lcom/shabakaty/downloader/f41;

    :goto_b
    return-object v4
.end method

.method public final g(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/epom_view/models/ImageEpomResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/shabakaty/downloader/ny2$i;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/ny2$i;

    iget v1, v0, Lcom/shabakaty/downloader/ny2$i;->x:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/ny2$i;->x:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/ny2$i;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/ny2$i;-><init>(Lcom/shabakaty/downloader/ny2;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p2, v0, Lcom/shabakaty/downloader/ny2$i;->v:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/ny2$i;->x:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/shabakaty/downloader/ny2$i;->u:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/ny2;

    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

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
    new-instance p2, Lcom/shabakaty/downloader/vr3$a;

    invoke-direct {p2}, Lcom/shabakaty/downloader/vr3$a;-><init>()V

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/ny2;->d:Lcom/shabakaty/downloader/ny2$b;

    .line 6
    iget-object v2, v2, Lcom/shabakaty/downloader/ny2$b;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {p2, v2}, Lcom/shabakaty/downloader/vr3$a;->k(Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;

    .line 8
    invoke-static {p2, p1}, Lcom/shabakaty/downloader/i41;->b(Lcom/shabakaty/downloader/vr3$a;Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vr3$a;->d()Lcom/shabakaty/downloader/vr3$a;

    .line 10
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vr3$a;->b()Lcom/shabakaty/downloader/vr3;

    move-result-object p1

    .line 11
    iget-object p2, p0, Lcom/shabakaty/downloader/ny2;->b:Lcom/shabakaty/downloader/a63;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/a63;->a(Lcom/shabakaty/downloader/vr3;)Lcom/shabakaty/downloader/mq;

    move-result-object p1

    iput-object p0, v0, Lcom/shabakaty/downloader/ny2$i;->u:Ljava/lang/Object;

    iput v3, v0, Lcom/shabakaty/downloader/ny2$i;->x:I

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/i41;->a(Lcom/shabakaty/downloader/mq;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    .line 12
    :goto_1
    check-cast p2, Lcom/shabakaty/downloader/ws3;

    .line 13
    iget-object p2, p2, Lcom/shabakaty/downloader/ws3;->y:Lcom/shabakaty/downloader/ys3;

    if-nez p2, :cond_4

    const/4 p2, 0x0

    goto :goto_2

    .line 14
    :cond_4
    invoke-virtual {p2}, Lcom/shabakaty/downloader/ys3;->g()Ljava/lang/String;

    move-result-object p2

    .line 15
    :goto_2
    iget-object p1, p1, Lcom/shabakaty/downloader/ny2;->c:Lcom/shabakaty/downloader/lr1;

    const-class v0, Lcom/shabakaty/epom_view/models/ImageEpomResponse;

    invoke-virtual {p1, p2, v0}, Lcom/shabakaty/downloader/lr1;->e(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final h(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/l41;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/shabakaty/downloader/ny2$j;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/ny2$j;

    iget v1, v0, Lcom/shabakaty/downloader/ny2$j;->x:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/ny2$j;->x:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/ny2$j;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/ny2$j;-><init>(Lcom/shabakaty/downloader/ny2;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p1, v0, Lcom/shabakaty/downloader/ny2$j;->v:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/ny2$j;->x:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/shabakaty/downloader/ny2$j;->u:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ny2;

    :try_start_0
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/vr3$a;

    invoke-direct {p1}, Lcom/shabakaty/downloader/vr3$a;-><init>()V

    const-string v2, "https://api.ipify.org/?format=json"

    .line 5
    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/vr3$a;->k(Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vr3$a;->d()Lcom/shabakaty/downloader/vr3$a;

    .line 7
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vr3$a;->b()Lcom/shabakaty/downloader/vr3;

    move-result-object p1

    .line 8
    :try_start_1
    iget-object v2, p0, Lcom/shabakaty/downloader/ny2;->b:Lcom/shabakaty/downloader/a63;

    invoke-virtual {v2, p1}, Lcom/shabakaty/downloader/a63;->a(Lcom/shabakaty/downloader/vr3;)Lcom/shabakaty/downloader/mq;

    move-result-object p1

    iput-object p0, v0, Lcom/shabakaty/downloader/ny2$j;->u:Ljava/lang/Object;

    iput v3, v0, Lcom/shabakaty/downloader/ny2$j;->x:I

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/i41;->a(Lcom/shabakaty/downloader/mq;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 9
    :goto_1
    check-cast p1, Lcom/shabakaty/downloader/ws3;

    .line 10
    iget-object p1, p1, Lcom/shabakaty/downloader/ws3;->y:Lcom/shabakaty/downloader/ys3;

    if-nez p1, :cond_4

    move-object p1, v4

    goto :goto_2

    .line 11
    :cond_4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ys3;->g()Ljava/lang/String;

    move-result-object p1

    .line 12
    :goto_2
    iget-object v1, v0, Lcom/shabakaty/downloader/ny2;->c:Lcom/shabakaty/downloader/lr1;

    const-class v2, Lcom/shabakaty/downloader/l41;

    invoke-virtual {v1, p1, v2}, Lcom/shabakaty/downloader/lr1;->e(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/l41;

    .line 13
    iget-object v0, v0, Lcom/shabakaty/downloader/ny2;->f:Lcom/shabakaty/downloader/g41;

    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    if-nez p1, :cond_6

    move-object v1, v4

    goto :goto_3

    .line 14
    :cond_6
    iget-object v1, p1, Lcom/shabakaty/downloader/l41;->a:Ljava/lang/String;

    :goto_3
    const-string v2, "Fetched ipify ip: "

    .line 15
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v0}, Lcom/shabakaty/downloader/g41;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/g41$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/g41$a;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 16
    :goto_4
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    .line 17
    :goto_5
    instance-of v0, p1, Lcom/shabakaty/downloader/dt3$a;

    if-eqz v0, :cond_7

    goto :goto_6

    :cond_7
    move-object v4, p1

    :goto_6
    return-object v4
.end method

.method public final i(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/f41$e;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/shabakaty/downloader/ny2$k;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/ny2$k;

    iget v1, v0, Lcom/shabakaty/downloader/ny2$k;->y:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/ny2$k;->y:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/ny2$k;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/ny2$k;-><init>(Lcom/shabakaty/downloader/ny2;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p2, v0, Lcom/shabakaty/downloader/ny2$k;->w:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/ny2$k;->y:I

    const-string v3, "video"

    const/4 v4, 0x2

    const-string v5, ""

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lcom/shabakaty/downloader/ny2$k;->u:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/ny2;

    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Lcom/shabakaty/downloader/ny2$k;->v:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Lcom/shabakaty/downloader/ny2$k;->u:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/ny2;

    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    move-object v11, p2

    move-object p2, p1

    move-object p1, v2

    move-object v2, v11

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iput-object p0, v0, Lcom/shabakaty/downloader/ny2$k;->u:Ljava/lang/Object;

    iput-object p1, v0, Lcom/shabakaty/downloader/ny2$k;->v:Ljava/lang/Object;

    iput v6, v0, Lcom/shabakaty/downloader/ny2$k;->y:I

    .line 5
    new-instance p2, Lcom/shabakaty/downloader/vr3$a;

    invoke-direct {p2}, Lcom/shabakaty/downloader/vr3$a;-><init>()V

    .line 6
    iget-object v2, p0, Lcom/shabakaty/downloader/ny2;->d:Lcom/shabakaty/downloader/ny2$b;

    .line 7
    iget-object v2, v2, Lcom/shabakaty/downloader/ny2$b;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {p2, v2}, Lcom/shabakaty/downloader/vr3$a;->k(Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;

    .line 9
    invoke-static {p2, p1}, Lcom/shabakaty/downloader/i41;->b(Lcom/shabakaty/downloader/vr3$a;Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;

    move-result-object p2

    .line 10
    invoke-virtual {p2}, Lcom/shabakaty/downloader/vr3$a;->d()Lcom/shabakaty/downloader/vr3$a;

    .line 11
    invoke-virtual {p2}, Lcom/shabakaty/downloader/vr3$a;->b()Lcom/shabakaty/downloader/vr3;

    move-result-object p2

    .line 12
    iget-object v2, p0, Lcom/shabakaty/downloader/ny2;->b:Lcom/shabakaty/downloader/a63;

    invoke-virtual {v2, p2}, Lcom/shabakaty/downloader/a63;->a(Lcom/shabakaty/downloader/vr3;)Lcom/shabakaty/downloader/mq;

    move-result-object p2

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/i41;->a(Lcom/shabakaty/downloader/mq;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p2

    move-object p2, p1

    move-object p1, p0

    .line 13
    :goto_1
    check-cast v2, Lcom/shabakaty/downloader/ws3;

    .line 14
    iget-object v2, v2, Lcom/shabakaty/downloader/ws3;->y:Lcom/shabakaty/downloader/ys3;

    const/4 v7, 0x0

    if-nez v2, :cond_5

    move-object v2, v7

    goto :goto_2

    .line 15
    :cond_5
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ys3;->a()Ljava/io/InputStream;

    move-result-object v2

    .line 16
    :goto_2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v8

    .line 18
    invoke-virtual {v8, v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringElementContentWhitespace(Z)V

    .line 19
    invoke-virtual {v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v6

    const-string v8, "factory.newDocumentBuilder()"

    invoke-static {v6, v8}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v6, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 21
    iget-object v8, p1, Lcom/shabakaty/downloader/ny2;->f:Lcom/shabakaty/downloader/g41;

    if-nez v8, :cond_6

    goto :goto_4

    :cond_6
    if-nez v2, :cond_7

    move-object v9, v7

    goto :goto_3

    .line 22
    :cond_7
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getTextContent()Ljava/lang/String;

    move-result-object v9

    :goto_3
    const-string v10, "Fetched vMap response: "

    invoke-static {v10, v9}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v8}, Lcom/shabakaty/downloader/g41;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/g41$a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/shabakaty/downloader/g41$a;->a()V

    :goto_4
    const-string v8, "vmap:AdTagURI"

    .line 23
    invoke-virtual {p1, v2, v8}, Lcom/shabakaty/downloader/ny2;->k(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-static {v2}, Lcom/shabakaty/downloader/ne4;->D(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 25
    invoke-static {v5, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance p1, Lcom/shabakaty/downloader/f41$e;

    .line 27
    invoke-direct {p1, v5, v5, v5}, Lcom/shabakaty/downloader/f41$e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "$this$null"

    .line 28
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 29
    :cond_8
    iget-object v8, p1, Lcom/shabakaty/downloader/ny2;->f:Lcom/shabakaty/downloader/g41;

    if-nez v8, :cond_9

    goto :goto_5

    :cond_9
    const-string v9, "videoDataUrl"

    .line 30
    invoke-static {v2, v9}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "Found video ad link: "

    .line 31
    invoke-static {v9, v2}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v8}, Lcom/shabakaty/downloader/g41;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/g41$a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/shabakaty/downloader/g41$a;->a()V

    .line 32
    :goto_5
    iput-object p1, v0, Lcom/shabakaty/downloader/ny2$k;->u:Ljava/lang/Object;

    iput-object v7, v0, Lcom/shabakaty/downloader/ny2$k;->v:Ljava/lang/Object;

    iput v4, v0, Lcom/shabakaty/downloader/ny2$k;->y:I

    invoke-virtual {p1, v2, p2, v6, v0}, Lcom/shabakaty/downloader/ny2;->j(Ljava/lang/String;Ljava/lang/String;Ljavax/xml/parsers/DocumentBuilder;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_a

    return-object v1

    .line 33
    :cond_a
    :goto_6
    check-cast p2, Lcom/shabakaty/downloader/o05;

    .line 34
    iget-object p1, p1, Lcom/shabakaty/downloader/ny2;->f:Lcom/shabakaty/downloader/g41;

    if-nez p1, :cond_b

    goto :goto_7

    :cond_b
    const-string v0, "videoResponse"

    .line 35
    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Fetched video ad with response: "

    .line 36
    invoke-static {v0, p2}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p1}, Lcom/shabakaty/downloader/g41;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/g41$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/g41$a;->a()V

    .line 37
    :goto_7
    iget-object p1, p2, Lcom/shabakaty/downloader/o05;->b:Ljava/lang/String;

    new-instance v0, Lcom/shabakaty/downloader/n05;

    invoke-direct {v0, p2}, Lcom/shabakaty/downloader/n05;-><init>(Lcom/shabakaty/downloader/o05;)V

    .line 38
    invoke-static {p1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "function"

    invoke-static {v0, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance p2, Lcom/shabakaty/downloader/f41$e;

    .line 40
    invoke-direct {p2, p1, v5, v5}, Lcom/shabakaty/downloader/f41$e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0, p2}, Lcom/shabakaty/downloader/n05;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final j(Ljava/lang/String;Ljava/lang/String;Ljavax/xml/parsers/DocumentBuilder;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljavax/xml/parsers/DocumentBuilder;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/o05;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/shabakaty/downloader/ny2$l;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/shabakaty/downloader/ny2$l;

    iget v1, v0, Lcom/shabakaty/downloader/ny2$l;->y:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/ny2$l;->y:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/ny2$l;

    invoke-direct {v0, p0, p4}, Lcom/shabakaty/downloader/ny2$l;-><init>(Lcom/shabakaty/downloader/ny2;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p4, v0, Lcom/shabakaty/downloader/ny2$l;->w:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/ny2$l;->y:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/shabakaty/downloader/ny2$l;->v:Ljava/lang/Object;

    move-object p3, p1

    check-cast p3, Ljavax/xml/parsers/DocumentBuilder;

    iget-object p1, v0, Lcom/shabakaty/downloader/ny2$l;->u:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/ny2;

    invoke-static {p4}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p4}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    new-instance p4, Lcom/shabakaty/downloader/vr3$a;

    invoke-direct {p4}, Lcom/shabakaty/downloader/vr3$a;-><init>()V

    .line 5
    invoke-virtual {p4, p1}, Lcom/shabakaty/downloader/vr3$a;->k(Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;

    .line 6
    invoke-static {p4, p2}, Lcom/shabakaty/downloader/i41;->b(Lcom/shabakaty/downloader/vr3$a;Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vr3$a;->d()Lcom/shabakaty/downloader/vr3$a;

    .line 8
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vr3$a;->b()Lcom/shabakaty/downloader/vr3;

    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/shabakaty/downloader/ny2;->b:Lcom/shabakaty/downloader/a63;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/a63;->a(Lcom/shabakaty/downloader/vr3;)Lcom/shabakaty/downloader/mq;

    move-result-object p1

    iput-object p0, v0, Lcom/shabakaty/downloader/ny2$l;->u:Ljava/lang/Object;

    iput-object p3, v0, Lcom/shabakaty/downloader/ny2$l;->v:Ljava/lang/Object;

    iput v3, v0, Lcom/shabakaty/downloader/ny2$l;->y:I

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/i41;->a(Lcom/shabakaty/downloader/mq;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    .line 10
    :goto_1
    check-cast p4, Lcom/shabakaty/downloader/ws3;

    .line 11
    iget-object p2, p4, Lcom/shabakaty/downloader/ws3;->y:Lcom/shabakaty/downloader/ys3;

    const/4 p4, 0x0

    if-nez p2, :cond_4

    move-object p2, p4

    goto :goto_2

    .line 12
    :cond_4
    invoke-virtual {p2}, Lcom/shabakaty/downloader/ys3;->a()Ljava/io/InputStream;

    move-result-object p2

    .line 13
    :goto_2
    invoke-virtual {p3, p2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p2

    .line 14
    iget-object p3, p1, Lcom/shabakaty/downloader/ny2;->f:Lcom/shabakaty/downloader/g41;

    if-nez p3, :cond_5

    goto :goto_4

    :cond_5
    if-nez p2, :cond_6

    goto :goto_3

    .line 15
    :cond_6
    invoke-interface {p2}, Lorg/w3c/dom/Document;->getTextContent()Ljava/lang/String;

    move-result-object p4

    :goto_3
    const-string v0, "Video xml response: "

    invoke-static {v0, p4}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4, p3}, Lcom/shabakaty/downloader/g41;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/g41$a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/shabakaty/downloader/g41$a;->a()V

    :goto_4
    const-string p3, "ClickThrough"

    .line 16
    invoke-virtual {p1, p2, p3}, Lcom/shabakaty/downloader/ny2;->k(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "MediaFile"

    .line 17
    invoke-virtual {p1, p2, p4}, Lcom/shabakaty/downloader/ny2;->k(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "Impression"

    .line 18
    invoke-virtual {p1, p2, v0}, Lcom/shabakaty/downloader/ny2;->k(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 19
    new-instance p2, Lcom/shabakaty/downloader/o05;

    invoke-direct {p2, p3, p4, p1}, Lcom/shabakaty/downloader/o05;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public final k(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p1, p2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    move-object p1, v0

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 2
    invoke-interface {p1, p2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_2

    move-object p1, v0

    goto :goto_2

    .line 3
    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    :goto_2
    instance-of p2, p1, Lorg/w3c/dom/CDATASection;

    if-eqz p2, :cond_3

    check-cast p1, Lorg/w3c/dom/CDATASection;

    goto :goto_3

    :cond_3
    move-object p1, v0

    :goto_3
    if-nez p1, :cond_4

    goto :goto_4

    .line 4
    :cond_4
    invoke-interface {p1}, Lorg/w3c/dom/CDATASection;->getData()Ljava/lang/String;

    move-result-object v0

    :goto_4
    if-nez v0, :cond_5

    const-string v0, ""

    :cond_5
    return-object v0
.end method

.method public final l(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/l41;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/shabakaty/downloader/ny2$m;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/ny2$m;

    iget v1, v0, Lcom/shabakaty/downloader/ny2$m;->w:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/ny2$m;->w:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/ny2$m;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/ny2$m;-><init>(Lcom/shabakaty/downloader/ny2;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p1, v0, Lcom/shabakaty/downloader/ny2$m;->u:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/ny2$m;->w:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iput v3, v0, Lcom/shabakaty/downloader/ny2$m;->w:I

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ny2;->m(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/shabakaty/downloader/l41;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/l41;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final m(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/ys3;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/shabakaty/downloader/ny2$n;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/ny2$n;

    iget v1, v0, Lcom/shabakaty/downloader/ny2$n;->x:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/ny2$n;->x:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/ny2$n;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/ny2$n;-><init>(Lcom/shabakaty/downloader/ny2;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p1, v0, Lcom/shabakaty/downloader/ny2$n;->v:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/ny2$n;->x:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/shabakaty/downloader/ny2$n;->u:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ny2;

    :try_start_0
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/vr3$a;

    invoke-direct {p1}, Lcom/shabakaty/downloader/vr3$a;-><init>()V

    const-string v2, "https://cinemana.shabakaty.cc/whatismyip"

    .line 5
    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/vr3$a;->k(Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vr3$a;->d()Lcom/shabakaty/downloader/vr3$a;

    .line 7
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vr3$a;->b()Lcom/shabakaty/downloader/vr3;

    move-result-object p1

    .line 8
    :try_start_1
    iget-object v2, p0, Lcom/shabakaty/downloader/ny2;->b:Lcom/shabakaty/downloader/a63;

    invoke-virtual {v2, p1}, Lcom/shabakaty/downloader/a63;->a(Lcom/shabakaty/downloader/vr3;)Lcom/shabakaty/downloader/mq;

    move-result-object p1

    iput-object p0, v0, Lcom/shabakaty/downloader/ny2$n;->u:Ljava/lang/Object;

    iput v3, v0, Lcom/shabakaty/downloader/ny2$n;->x:I

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/i41;->a(Lcom/shabakaty/downloader/mq;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 9
    :goto_1
    check-cast p1, Lcom/shabakaty/downloader/ws3;

    .line 10
    iget-object p1, p1, Lcom/shabakaty/downloader/ws3;->y:Lcom/shabakaty/downloader/ys3;

    .line 11
    iget-object v0, v0, Lcom/shabakaty/downloader/ny2;->f:Lcom/shabakaty/downloader/g41;

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    const-string v1, "Fetched local ip: "

    .line 12
    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v0}, Lcom/shabakaty/downloader/g41;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/g41$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/g41$a;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 13
    :goto_2
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    .line 14
    :goto_3
    instance-of v0, p1, Lcom/shabakaty/downloader/dt3$a;

    if-eqz v0, :cond_5

    const/4 p1, 0x0

    :cond_5
    return-object p1
.end method
