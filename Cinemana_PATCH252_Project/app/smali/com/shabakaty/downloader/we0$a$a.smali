.class public final Lcom/shabakaty/downloader/we0$a$a;
.super Lcom/shabakaty/downloader/ui4;
.source "CoroutinesRoom.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "androidx.room.CoroutinesRoom$Companion$createFlow$1$1$1"
    f = "CoroutinesRoom.kt"
    l = {
        0x7c,
        0x7e
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/we0$a;->t(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
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
.field public final synthetic A:Lcom/shabakaty/downloader/py;

.field public v:Ljava/lang/Object;

.field public w:I

.field public final synthetic x:Lcom/shabakaty/downloader/we0$a;

.field public final synthetic y:Lcom/shabakaty/downloader/we0$a$b;

.field public final synthetic z:Lcom/shabakaty/downloader/py;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/we0$a;Lcom/shabakaty/downloader/we0$a$b;Lcom/shabakaty/downloader/py;Lcom/shabakaty/downloader/py;Lcom/shabakaty/downloader/ud0;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/we0$a$a;->x:Lcom/shabakaty/downloader/we0$a;

    iput-object p2, p0, Lcom/shabakaty/downloader/we0$a$a;->y:Lcom/shabakaty/downloader/we0$a$b;

    iput-object p3, p0, Lcom/shabakaty/downloader/we0$a$a;->z:Lcom/shabakaty/downloader/py;

    iput-object p4, p0, Lcom/shabakaty/downloader/we0$a$a;->A:Lcom/shabakaty/downloader/py;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public final o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/we0$a$a;->r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/we0$a$a;

    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/we0$a$a;->t(Ljava/lang/Object;)Ljava/lang/Object;

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

    const-string p1, "completion"

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/shabakaty/downloader/we0$a$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/we0$a$a;->x:Lcom/shabakaty/downloader/we0$a;

    iget-object v2, p0, Lcom/shabakaty/downloader/we0$a$a;->y:Lcom/shabakaty/downloader/we0$a$b;

    iget-object v3, p0, Lcom/shabakaty/downloader/we0$a$a;->z:Lcom/shabakaty/downloader/py;

    iget-object v4, p0, Lcom/shabakaty/downloader/we0$a$a;->A:Lcom/shabakaty/downloader/py;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/we0$a$a;-><init>(Lcom/shabakaty/downloader/we0$a;Lcom/shabakaty/downloader/we0$a$b;Lcom/shabakaty/downloader/py;Lcom/shabakaty/downloader/py;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/we0$a$a;->w:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/shabakaty/downloader/we0$a$a;->v:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/xy;

    :try_start_0
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object p1, v1

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/we0$a$a;->v:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/xy;

    :try_start_1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, v1

    move-object v1, p0

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/we0$a$a;->x:Lcom/shabakaty/downloader/we0$a;

    iget-object p1, p1, Lcom/shabakaty/downloader/we0$a;->x:Lcom/shabakaty/downloader/we0;

    iget-object p1, p1, Lcom/shabakaty/downloader/we0;->z:Lcom/shabakaty/downloader/vt3;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/vt3;->e:Lcom/shabakaty/downloader/v32;

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/we0$a$a;->y:Lcom/shabakaty/downloader/we0$a$b;

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/v32;->a(Lcom/shabakaty/downloader/v32$c;)V

    .line 7
    :try_start_2
    iget-object p1, p0, Lcom/shabakaty/downloader/we0$a$a;->z:Lcom/shabakaty/downloader/py;

    invoke-interface {p1}, Lcom/shabakaty/downloader/yn3;->iterator()Lcom/shabakaty/downloader/xy;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    move-object v1, p0

    :goto_1
    :try_start_3
    iput-object p1, v1, Lcom/shabakaty/downloader/we0$a$a;->v:Ljava/lang/Object;

    iput v3, v1, Lcom/shabakaty/downloader/we0$a$a;->w:I

    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/xy;->a(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_3

    return-object v0

    :cond_3
    move-object v6, v4

    move-object v4, p1

    move-object p1, v6

    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v4}, Lcom/shabakaty/downloader/xy;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/qv4;

    .line 8
    iget-object p1, v1, Lcom/shabakaty/downloader/we0$a$a;->x:Lcom/shabakaty/downloader/we0$a;

    iget-object p1, p1, Lcom/shabakaty/downloader/we0$a;->x:Lcom/shabakaty/downloader/we0;

    iget-object p1, p1, Lcom/shabakaty/downloader/we0;->A:Ljava/util/concurrent/Callable;

    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    .line 9
    iget-object v5, v1, Lcom/shabakaty/downloader/we0$a$a;->A:Lcom/shabakaty/downloader/py;

    iput-object v4, v1, Lcom/shabakaty/downloader/we0$a$a;->v:Ljava/lang/Object;

    iput v2, v1, Lcom/shabakaty/downloader/we0$a$a;->w:I

    invoke-interface {v5, p1, v1}, Lcom/shabakaty/downloader/h04;->y(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    move-object p1, v4

    goto :goto_1

    .line 10
    :cond_5
    iget-object p1, v1, Lcom/shabakaty/downloader/we0$a$a;->x:Lcom/shabakaty/downloader/we0$a;

    iget-object p1, p1, Lcom/shabakaty/downloader/we0$a;->x:Lcom/shabakaty/downloader/we0;

    iget-object p1, p1, Lcom/shabakaty/downloader/we0;->z:Lcom/shabakaty/downloader/vt3;

    .line 11
    iget-object p1, p1, Lcom/shabakaty/downloader/vt3;->e:Lcom/shabakaty/downloader/v32;

    .line 12
    iget-object v0, v1, Lcom/shabakaty/downloader/we0$a$a;->y:Lcom/shabakaty/downloader/we0$a$b;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/v32;->d(Lcom/shabakaty/downloader/v32$c;)V

    .line 13
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v1, p0

    .line 14
    :goto_3
    iget-object v0, v1, Lcom/shabakaty/downloader/we0$a$a;->x:Lcom/shabakaty/downloader/we0$a;

    iget-object v0, v0, Lcom/shabakaty/downloader/we0$a;->x:Lcom/shabakaty/downloader/we0;

    iget-object v0, v0, Lcom/shabakaty/downloader/we0;->z:Lcom/shabakaty/downloader/vt3;

    .line 15
    iget-object v0, v0, Lcom/shabakaty/downloader/vt3;->e:Lcom/shabakaty/downloader/v32;

    .line 16
    iget-object v1, v1, Lcom/shabakaty/downloader/we0$a$a;->y:Lcom/shabakaty/downloader/we0$a$b;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/v32;->d(Lcom/shabakaty/downloader/v32$c;)V

    throw p1
.end method
