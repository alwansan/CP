.class public final Lcom/shabakaty/downloader/wy$a$a$b;
.super Lcom/shabakaty/downloader/ui4;
.source "Merge.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1$2"
    f = "Merge.kt"
    l = {
        0x22
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/wy$a$a;->b(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
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
.field public v:I

.field public final synthetic w:Ljava/lang/Object;

.field public final synthetic x:Lcom/shabakaty/downloader/wy$a$a;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;Lcom/shabakaty/downloader/wy$a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/wy$a$a$b;->w:Ljava/lang/Object;

    iput-object p3, p0, Lcom/shabakaty/downloader/wy$a$a$b;->x:Lcom/shabakaty/downloader/wy$a$a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public final o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance p1, Lcom/shabakaty/downloader/wy$a$a$b;

    iget-object v0, p0, Lcom/shabakaty/downloader/wy$a$a$b;->w:Ljava/lang/Object;

    iget-object v1, p0, Lcom/shabakaty/downloader/wy$a$a$b;->x:Lcom/shabakaty/downloader/wy$a$a;

    invoke-direct {p1, v0, p2, v1}, Lcom/shabakaty/downloader/wy$a$a$b;-><init>(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;Lcom/shabakaty/downloader/wy$a$a;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/wy$a$a$b;->t(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance p1, Lcom/shabakaty/downloader/wy$a$a$b;

    iget-object v0, p0, Lcom/shabakaty/downloader/wy$a$a$b;->w:Ljava/lang/Object;

    iget-object v1, p0, Lcom/shabakaty/downloader/wy$a$a$b;->x:Lcom/shabakaty/downloader/wy$a$a;

    invoke-direct {p1, v0, p2, v1}, Lcom/shabakaty/downloader/wy$a$a$b;-><init>(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;Lcom/shabakaty/downloader/wy$a$a;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/wy$a$a$b;->v:I

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

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/wy$a$a$b;->x:Lcom/shabakaty/downloader/wy$a$a;

    iget-object p1, p1, Lcom/shabakaty/downloader/wy$a$a;->r:Lcom/shabakaty/downloader/wy$a;

    iget-object v1, p1, Lcom/shabakaty/downloader/wy$a;->x:Lcom/shabakaty/downloader/wy;

    .line 5
    iget-object v1, v1, Lcom/shabakaty/downloader/wy;->v:Lcom/shabakaty/downloader/jn1;

    .line 6
    iget-object p1, p1, Lcom/shabakaty/downloader/wy$a;->y:Lcom/shabakaty/downloader/ue1;

    iget-object v3, p0, Lcom/shabakaty/downloader/wy$a$a$b;->w:Ljava/lang/Object;

    iput v2, p0, Lcom/shabakaty/downloader/wy$a$a$b;->v:I

    invoke-interface {v1, p1, v3, p0}, Lcom/shabakaty/downloader/jn1;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
