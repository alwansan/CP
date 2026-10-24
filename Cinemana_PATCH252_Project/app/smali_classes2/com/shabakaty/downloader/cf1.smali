.class public final Lcom/shabakaty/downloader/cf1;
.super Ljava/lang/Object;
.source "SafeCollector.common.kt"

# interfaces
.implements Lcom/shabakaty/downloader/te1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/te1<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/te1;

.field public final synthetic s:Lcom/shabakaty/downloader/hn1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/hn1;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/cf1;->r:Lcom/shabakaty/downloader/te1;

    iput-object p2, p0, Lcom/shabakaty/downloader/cf1;->s:Lcom/shabakaty/downloader/hn1;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcom/shabakaty/downloader/cf1$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/cf1$a;

    iget v1, v0, Lcom/shabakaty/downloader/cf1$a;->v:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/cf1$a;->v:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/cf1$a;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/cf1$a;-><init>(Lcom/shabakaty/downloader/cf1;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p2, v0, Lcom/shabakaty/downloader/cf1$a;->u:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/cf1$a;->v:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Lcom/shabakaty/downloader/cf1$a;->z:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/ow3;

    iget-object v2, v0, Lcom/shabakaty/downloader/cf1$a;->y:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/ue1;

    iget-object v4, v0, Lcom/shabakaty/downloader/cf1$a;->x:Ljava/lang/Object;

    check-cast v4, Lcom/shabakaty/downloader/cf1;

    :try_start_0
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_3

    :cond_3
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v0, Lcom/shabakaty/downloader/xd0;->s:Lcom/shabakaty/downloader/me0;

    invoke-static {p2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 5
    new-instance v2, Lcom/shabakaty/downloader/ow3;

    invoke-direct {v2, p1, p2}, Lcom/shabakaty/downloader/ow3;-><init>(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/me0;)V

    .line 6
    :try_start_1
    iget-object p2, p0, Lcom/shabakaty/downloader/cf1;->s:Lcom/shabakaty/downloader/hn1;

    iput-object p0, v0, Lcom/shabakaty/downloader/cf1$a;->x:Ljava/lang/Object;

    iput-object p1, v0, Lcom/shabakaty/downloader/cf1$a;->y:Ljava/lang/Object;

    iput-object v2, v0, Lcom/shabakaty/downloader/cf1$a;->z:Ljava/lang/Object;

    iput v4, v0, Lcom/shabakaty/downloader/cf1$a;->v:I

    invoke-interface {p2, v2, v0}, Lcom/shabakaty/downloader/hn1;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v4, p0

    move-object v5, v2

    move-object v2, p1

    move-object p1, v5

    .line 7
    :goto_1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ow3;->v()V

    .line 8
    iget-object p1, v4, Lcom/shabakaty/downloader/cf1;->r:Lcom/shabakaty/downloader/te1;

    const/4 p2, 0x0

    iput-object p2, v0, Lcom/shabakaty/downloader/cf1$a;->x:Ljava/lang/Object;

    iput-object p2, v0, Lcom/shabakaty/downloader/cf1$a;->y:Ljava/lang/Object;

    iput-object p2, v0, Lcom/shabakaty/downloader/cf1$a;->z:Ljava/lang/Object;

    iput v3, v0, Lcom/shabakaty/downloader/cf1$a;->v:I

    invoke-interface {p1, v2, v0}, Lcom/shabakaty/downloader/te1;->d(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 9
    :cond_5
    :goto_2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1

    :catchall_1
    move-exception p2

    move-object p1, v2

    .line 10
    :goto_3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ow3;->v()V

    throw p2
.end method
