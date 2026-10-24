.class public final Lcom/shabakaty/downloader/we0;
.super Lcom/shabakaty/downloader/ui4;
.source "CoroutinesRoom.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "androidx.room.CoroutinesRoom$Companion$createFlow$1"
    f = "CoroutinesRoom.kt"
    l = {
        0x6b
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ui4;",
        "Lcom/shabakaty/downloader/hn1<",
        "Lcom/shabakaty/downloader/ue1<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/shabakaty/downloader/ud0<",
        "-",
        "Lcom/shabakaty/downloader/qv4;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A:Ljava/util/concurrent/Callable;

.field public synthetic v:Ljava/lang/Object;

.field public w:I

.field public final synthetic x:[Ljava/lang/String;

.field public final synthetic y:Z

.field public final synthetic z:Lcom/shabakaty/downloader/vt3;


# direct methods
.method public constructor <init>([Ljava/lang/String;ZLcom/shabakaty/downloader/vt3;Ljava/util/concurrent/Callable;Lcom/shabakaty/downloader/ud0;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/we0;->x:[Ljava/lang/String;

    iput-boolean p2, p0, Lcom/shabakaty/downloader/we0;->y:Z

    iput-object p3, p0, Lcom/shabakaty/downloader/we0;->z:Lcom/shabakaty/downloader/vt3;

    iput-object p4, p0, Lcom/shabakaty/downloader/we0;->A:Ljava/util/concurrent/Callable;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public final o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/we0;->r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/we0;

    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/we0;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 7
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

    new-instance v0, Lcom/shabakaty/downloader/we0;

    iget-object v2, p0, Lcom/shabakaty/downloader/we0;->x:[Ljava/lang/String;

    iget-boolean v3, p0, Lcom/shabakaty/downloader/we0;->y:Z

    iget-object v4, p0, Lcom/shabakaty/downloader/we0;->z:Lcom/shabakaty/downloader/vt3;

    iget-object v5, p0, Lcom/shabakaty/downloader/we0;->A:Ljava/util/concurrent/Callable;

    move-object v1, v0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/we0;-><init>([Ljava/lang/String;ZLcom/shabakaty/downloader/vt3;Ljava/util/concurrent/Callable;Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/we0;->v:Ljava/lang/Object;

    return-object v0
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/we0;->w:I

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

    iget-object p1, p0, Lcom/shabakaty/downloader/we0;->v:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/ue1;

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/we0$a;

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v3}, Lcom/shabakaty/downloader/we0$a;-><init>(Lcom/shabakaty/downloader/we0;Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)V

    iput v2, p0, Lcom/shabakaty/downloader/we0;->w:I

    invoke-static {v1, p0}, Lcom/shabakaty/downloader/nh3;->h(Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
