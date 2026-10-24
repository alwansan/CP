.class public final Lcom/shabakaty/downloader/we0$a;
.super Lcom/shabakaty/downloader/ui4;
.source "CoroutinesRoom.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "androidx.room.CoroutinesRoom$Companion$createFlow$1$1"
    f = "CoroutinesRoom.kt"
    l = {
        0x85
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/we0;->t(Ljava/lang/Object;)Ljava/lang/Object;
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
.field public synthetic v:Ljava/lang/Object;

.field public w:I

.field public final synthetic x:Lcom/shabakaty/downloader/we0;

.field public final synthetic y:Lcom/shabakaty/downloader/ue1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/we0;Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/we0$a;->x:Lcom/shabakaty/downloader/we0;

    iput-object p2, p0, Lcom/shabakaty/downloader/we0$a;->y:Lcom/shabakaty/downloader/ue1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public final o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/shabakaty/downloader/we0$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/we0$a;->x:Lcom/shabakaty/downloader/we0;

    iget-object v2, p0, Lcom/shabakaty/downloader/we0$a;->y:Lcom/shabakaty/downloader/ue1;

    invoke-direct {v0, v1, v2, p2}, Lcom/shabakaty/downloader/we0$a;-><init>(Lcom/shabakaty/downloader/we0;Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/we0$a;->v:Ljava/lang/Object;

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/we0$a;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 3
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

    const-string v0, "completion"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/shabakaty/downloader/we0$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/we0$a;->x:Lcom/shabakaty/downloader/we0;

    iget-object v2, p0, Lcom/shabakaty/downloader/we0$a;->y:Lcom/shabakaty/downloader/ue1;

    invoke-direct {v0, v1, v2, p2}, Lcom/shabakaty/downloader/we0$a;-><init>(Lcom/shabakaty/downloader/we0;Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/we0$a;->v:Ljava/lang/Object;

    return-object v0
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/we0$a;->w:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

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

    iget-object p1, p0, Lcom/shabakaty/downloader/we0$a;->v:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lcom/shabakaty/downloader/se0;

    const/4 p1, -0x1

    const/4 v1, 0x6

    const/4 v4, 0x0

    .line 4
    invoke-static {p1, v4, v4, v1}, Lcom/shabakaty/downloader/he0;->a(ILcom/shabakaty/downloader/co;Lcom/shabakaty/downloader/tm1;I)Lcom/shabakaty/downloader/py;

    move-result-object v8

    .line 5
    new-instance v7, Lcom/shabakaty/downloader/we0$a$b;

    iget-object p1, p0, Lcom/shabakaty/downloader/we0$a;->x:Lcom/shabakaty/downloader/we0;

    iget-object p1, p1, Lcom/shabakaty/downloader/we0;->x:[Ljava/lang/String;

    invoke-direct {v7, p0, v8, p1}, Lcom/shabakaty/downloader/we0$a$b;-><init>(Lcom/shabakaty/downloader/we0$a;Lcom/shabakaty/downloader/py;[Ljava/lang/String;)V

    .line 6
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    move-object v1, v8

    check-cast v1, Lcom/shabakaty/downloader/z0;

    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/z0;->f(Ljava/lang/Object;)Z

    .line 7
    invoke-interface {v3}, Lcom/shabakaty/downloader/se0;->B()Lcom/shabakaty/downloader/me0;

    move-result-object v1

    sget-object v5, Lcom/shabakaty/downloader/qp4;->r:Lcom/shabakaty/downloader/qp4$a;

    invoke-interface {v1, v5}, Lcom/shabakaty/downloader/me0;->get(Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0$b;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/qp4;

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/we0$a;->x:Lcom/shabakaty/downloader/we0;

    iget-boolean v5, v1, Lcom/shabakaty/downloader/we0;->y:Z

    iget-object v1, v1, Lcom/shabakaty/downloader/we0;->z:Lcom/shabakaty/downloader/vt3;

    if-eqz v5, :cond_2

    invoke-static {v1}, Lcom/shabakaty/downloader/ol3;->e(Lcom/shabakaty/downloader/vt3;)Lcom/shabakaty/downloader/pe0;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/shabakaty/downloader/ol3;->d(Lcom/shabakaty/downloader/vt3;)Lcom/shabakaty/downloader/pe0;

    move-result-object v1

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x7

    .line 9
    invoke-static {v5, v4, v4, v6}, Lcom/shabakaty/downloader/he0;->a(ILcom/shabakaty/downloader/co;Lcom/shabakaty/downloader/tm1;I)Lcom/shabakaty/downloader/py;

    move-result-object v11

    .line 10
    new-instance v12, Lcom/shabakaty/downloader/we0$a$a;

    const/4 v10, 0x0

    move-object v5, v12

    move-object v6, p0

    move-object v9, v11

    invoke-direct/range {v5 .. v10}, Lcom/shabakaty/downloader/we0$a$a;-><init>(Lcom/shabakaty/downloader/we0$a;Lcom/shabakaty/downloader/we0$a$b;Lcom/shabakaty/downloader/py;Lcom/shabakaty/downloader/py;Lcom/shabakaty/downloader/ud0;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v4, v1

    move-object v6, v12

    invoke-static/range {v3 .. v8}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    .line 11
    iget-object v1, p0, Lcom/shabakaty/downloader/we0$a;->y:Lcom/shabakaty/downloader/ue1;

    iput v2, p0, Lcom/shabakaty/downloader/we0$a;->w:I

    .line 12
    invoke-static {v1, v11, v2, p0}, Lcom/shabakaty/downloader/xe1;->a(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/yn3;ZLcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_3

    move-object p1, v1

    :cond_3
    if-ne p1, v0, :cond_4

    return-object v0

    .line 13
    :cond_4
    :goto_1
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
