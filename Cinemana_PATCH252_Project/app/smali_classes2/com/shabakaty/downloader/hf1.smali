.class public final Lcom/shabakaty/downloader/hf1;
.super Lcom/shabakaty/downloader/ui4;
.source "Merge.kt"

# interfaces
.implements Lcom/shabakaty/downloader/jn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "kotlinx.coroutines.flow.FlowKt__MergeKt$mapLatest$1"
    f = "Merge.kt"
    l = {
        0xd6,
        0xd6
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ui4;",
        "Lcom/shabakaty/downloader/jn1<",
        "Lcom/shabakaty/downloader/ue1<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
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

.field public synthetic w:Ljava/lang/Object;

.field public x:I

.field public final synthetic y:Lcom/shabakaty/downloader/hn1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/hf1;->y:Lcom/shabakaty/downloader/hn1;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/shabakaty/downloader/ue1;

    check-cast p3, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/hf1;

    iget-object v1, p0, Lcom/shabakaty/downloader/hf1;->y:Lcom/shabakaty/downloader/hn1;

    invoke-direct {v0, v1, p3}, Lcom/shabakaty/downloader/hf1;-><init>(Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/hf1;->v:Ljava/lang/Object;

    iput-object p2, v0, Lcom/shabakaty/downloader/hf1;->w:Ljava/lang/Object;

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/hf1;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/hf1;->x:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/hf1;->v:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/ue1;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/shabakaty/downloader/hf1;->v:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lcom/shabakaty/downloader/ue1;

    iget-object p1, p0, Lcom/shabakaty/downloader/hf1;->w:Ljava/lang/Object;

    iget-object v4, p0, Lcom/shabakaty/downloader/hf1;->y:Lcom/shabakaty/downloader/hn1;

    iput-object v1, p0, Lcom/shabakaty/downloader/hf1;->v:Ljava/lang/Object;

    iput v3, p0, Lcom/shabakaty/downloader/hf1;->x:I

    invoke-interface {v4, p1, p0}, Lcom/shabakaty/downloader/hn1;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/shabakaty/downloader/hf1;->v:Ljava/lang/Object;

    iput v2, p0, Lcom/shabakaty/downloader/hf1;->x:I

    invoke-interface {v1, p1, p0}, Lcom/shabakaty/downloader/ue1;->b(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
