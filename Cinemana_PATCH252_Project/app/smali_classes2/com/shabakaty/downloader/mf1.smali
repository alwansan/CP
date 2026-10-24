.class public final Lcom/shabakaty/downloader/mf1;
.super Lcom/shabakaty/downloader/ui4;
.source "Share.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharingDeferred$1"
    f = "Share.kt"
    l = {
        0x19f
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
.field public synthetic v:Ljava/lang/Object;

.field public w:I

.field public final synthetic x:Lcom/shabakaty/downloader/te1;

.field public final synthetic y:Lcom/shabakaty/downloader/t70;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/t70;Lcom/shabakaty/downloader/ud0;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/mf1;->x:Lcom/shabakaty/downloader/te1;

    iput-object p2, p0, Lcom/shabakaty/downloader/mf1;->y:Lcom/shabakaty/downloader/t70;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public final o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/mf1;

    iget-object v1, p0, Lcom/shabakaty/downloader/mf1;->x:Lcom/shabakaty/downloader/te1;

    iget-object v2, p0, Lcom/shabakaty/downloader/mf1;->y:Lcom/shabakaty/downloader/t70;

    invoke-direct {v0, v1, v2, p2}, Lcom/shabakaty/downloader/mf1;-><init>(Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/t70;Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/mf1;->v:Ljava/lang/Object;

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/mf1;->t(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lcom/shabakaty/downloader/mf1;

    iget-object v1, p0, Lcom/shabakaty/downloader/mf1;->x:Lcom/shabakaty/downloader/te1;

    iget-object v2, p0, Lcom/shabakaty/downloader/mf1;->y:Lcom/shabakaty/downloader/t70;

    invoke-direct {v0, v1, v2, p2}, Lcom/shabakaty/downloader/mf1;-><init>(Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/t70;Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/mf1;->v:Ljava/lang/Object;

    return-object v0
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/mf1;->w:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

    iget-object p1, p0, Lcom/shabakaty/downloader/mf1;->v:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/se0;

    .line 4
    :try_start_1
    new-instance v1, Lcom/shabakaty/downloader/lo3;

    invoke-direct {v1}, Lcom/shabakaty/downloader/lo3;-><init>()V

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    .line 5
    iget-object v3, p0, Lcom/shabakaty/downloader/mf1;->x:Lcom/shabakaty/downloader/te1;

    .line 6
    new-instance v4, Lcom/shabakaty/downloader/mf1$a;

    invoke-direct {v4, p0, p1, v1}, Lcom/shabakaty/downloader/mf1$a;-><init>(Lcom/shabakaty/downloader/mf1;Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/lo3;)V

    iput v2, p0, Lcom/shabakaty/downloader/mf1;->w:I

    invoke-interface {v3, v4, p0}, Lcom/shabakaty/downloader/te1;->d(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1

    :catchall_0
    move-exception p1

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/mf1;->y:Lcom/shabakaty/downloader/t70;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/t70;->D(Ljava/lang/Throwable;)Z

    .line 9
    throw p1
.end method
