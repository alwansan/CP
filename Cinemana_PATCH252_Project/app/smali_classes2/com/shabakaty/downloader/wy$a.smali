.class public final Lcom/shabakaty/downloader/wy$a;
.super Lcom/shabakaty/downloader/ui4;
.source "Merge.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3"
    f = "Merge.kt"
    l = {
        0x65
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/wy;->i(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
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

.field public final synthetic x:Lcom/shabakaty/downloader/wy;

.field public final synthetic y:Lcom/shabakaty/downloader/ue1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wy;Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/wy$a;->x:Lcom/shabakaty/downloader/wy;

    iput-object p2, p0, Lcom/shabakaty/downloader/wy$a;->y:Lcom/shabakaty/downloader/ue1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public final o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/wy$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/wy$a;->x:Lcom/shabakaty/downloader/wy;

    iget-object v2, p0, Lcom/shabakaty/downloader/wy$a;->y:Lcom/shabakaty/downloader/ue1;

    invoke-direct {v0, v1, v2, p2}, Lcom/shabakaty/downloader/wy$a;-><init>(Lcom/shabakaty/downloader/wy;Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/wy$a;->v:Ljava/lang/Object;

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/wy$a;->t(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lcom/shabakaty/downloader/wy$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/wy$a;->x:Lcom/shabakaty/downloader/wy;

    iget-object v2, p0, Lcom/shabakaty/downloader/wy$a;->y:Lcom/shabakaty/downloader/ue1;

    invoke-direct {v0, v1, v2, p2}, Lcom/shabakaty/downloader/wy$a;-><init>(Lcom/shabakaty/downloader/wy;Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/wy$a;->v:Ljava/lang/Object;

    return-object v0
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/wy$a;->w:I

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

    iget-object p1, p0, Lcom/shabakaty/downloader/wy$a;->v:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/se0;

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/lo3;

    invoke-direct {v1}, Lcom/shabakaty/downloader/lo3;-><init>()V

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    .line 5
    iget-object v3, p0, Lcom/shabakaty/downloader/wy$a;->x:Lcom/shabakaty/downloader/wy;

    iget-object v3, v3, Lcom/shabakaty/downloader/uy;->u:Lcom/shabakaty/downloader/te1;

    .line 6
    new-instance v4, Lcom/shabakaty/downloader/wy$a$a;

    invoke-direct {v4, p0, p1, v1}, Lcom/shabakaty/downloader/wy$a$a;-><init>(Lcom/shabakaty/downloader/wy$a;Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/lo3;)V

    iput v2, p0, Lcom/shabakaty/downloader/wy$a;->w:I

    invoke-interface {v3, v4, p0}, Lcom/shabakaty/downloader/te1;->d(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
