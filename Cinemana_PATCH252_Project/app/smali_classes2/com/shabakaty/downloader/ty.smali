.class public final Lcom/shabakaty/downloader/ty;
.super Lcom/shabakaty/downloader/ui4;
.source "ChannelFlow.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "kotlinx.coroutines.flow.internal.ChannelFlowOperator$collectWithContextUndispatched$2"
    f = "ChannelFlow.kt"
    l = {
        0xa4
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
.field public synthetic v:Ljava/lang/Object;

.field public w:I

.field public final synthetic x:Lcom/shabakaty/downloader/uy;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/uy;Lcom/shabakaty/downloader/ud0;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/ty;->x:Lcom/shabakaty/downloader/uy;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public final o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ty;

    iget-object v1, p0, Lcom/shabakaty/downloader/ty;->x:Lcom/shabakaty/downloader/uy;

    invoke-direct {v0, v1, p2}, Lcom/shabakaty/downloader/ty;-><init>(Lcom/shabakaty/downloader/uy;Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/ty;->v:Ljava/lang/Object;

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ty;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 2
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

    new-instance v0, Lcom/shabakaty/downloader/ty;

    iget-object v1, p0, Lcom/shabakaty/downloader/ty;->x:Lcom/shabakaty/downloader/uy;

    invoke-direct {v0, v1, p2}, Lcom/shabakaty/downloader/ty;-><init>(Lcom/shabakaty/downloader/uy;Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/ty;->v:Ljava/lang/Object;

    return-object v0
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/ty;->w:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/shabakaty/downloader/ty;->v:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/ue1;

    iget-object v1, p0, Lcom/shabakaty/downloader/ty;->x:Lcom/shabakaty/downloader/uy;

    iput v2, p0, Lcom/shabakaty/downloader/ty;->w:I

    invoke-virtual {v1, p1, p0}, Lcom/shabakaty/downloader/uy;->i(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
