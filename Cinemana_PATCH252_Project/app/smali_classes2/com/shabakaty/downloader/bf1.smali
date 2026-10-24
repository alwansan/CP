.class public final Lcom/shabakaty/downloader/bf1;
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

.field public final synthetic s:Lcom/shabakaty/downloader/jn1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/jn1;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/bf1;->r:Lcom/shabakaty/downloader/te1;

    iput-object p2, p0, Lcom/shabakaty/downloader/bf1;->s:Lcom/shabakaty/downloader/jn1;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lcom/shabakaty/downloader/bf1$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/bf1$a;

    iget v1, v0, Lcom/shabakaty/downloader/bf1$a;->v:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/bf1$a;->v:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/bf1$a;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/bf1$a;-><init>(Lcom/shabakaty/downloader/bf1;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p2, v0, Lcom/shabakaty/downloader/bf1$a;->u:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/bf1$a;->v:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/shabakaty/downloader/bf1$a;->x:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/ow3;

    :try_start_0
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Lcom/shabakaty/downloader/bf1$a;->x:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_5

    :cond_3
    iget-object p1, v0, Lcom/shabakaty/downloader/bf1$a;->y:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/ue1;

    iget-object v2, v0, Lcom/shabakaty/downloader/bf1$a;->x:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/bf1;

    :try_start_1
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_4
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    :try_start_2
    iget-object p2, p0, Lcom/shabakaty/downloader/bf1;->r:Lcom/shabakaty/downloader/te1;

    iput-object p0, v0, Lcom/shabakaty/downloader/bf1$a;->x:Ljava/lang/Object;

    iput-object p1, v0, Lcom/shabakaty/downloader/bf1$a;->y:Ljava/lang/Object;

    iput v5, v0, Lcom/shabakaty/downloader/bf1$a;->v:I

    invoke-interface {p2, p1, v0}, Lcom/shabakaty/downloader/te1;->d(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p0

    .line 5
    :goto_1
    iget-object p2, v0, Lcom/shabakaty/downloader/xd0;->s:Lcom/shabakaty/downloader/me0;

    invoke-static {p2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 6
    new-instance v4, Lcom/shabakaty/downloader/ow3;

    invoke-direct {v4, p1, p2}, Lcom/shabakaty/downloader/ow3;-><init>(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/me0;)V

    .line 7
    :try_start_3
    iget-object p1, v2, Lcom/shabakaty/downloader/bf1;->s:Lcom/shabakaty/downloader/jn1;

    iput-object v4, v0, Lcom/shabakaty/downloader/bf1$a;->x:Ljava/lang/Object;

    iput-object v6, v0, Lcom/shabakaty/downloader/bf1$a;->y:Ljava/lang/Object;

    iput v3, v0, Lcom/shabakaty/downloader/bf1$a;->v:I

    invoke-interface {p1, v4, v6, v0}, Lcom/shabakaty/downloader/jn1;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object p1, v4

    .line 8
    :goto_2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ow3;->v()V

    .line 9
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1

    :catchall_2
    move-exception p2

    move-object p1, v4

    .line 10
    :goto_3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ow3;->v()V

    throw p2

    :catchall_3
    move-exception p1

    move-object v2, p0

    .line 11
    :goto_4
    new-instance p2, Lcom/shabakaty/downloader/gn4;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/gn4;-><init>(Ljava/lang/Throwable;)V

    iget-object v2, v2, Lcom/shabakaty/downloader/bf1;->s:Lcom/shabakaty/downloader/jn1;

    iput-object p1, v0, Lcom/shabakaty/downloader/bf1$a;->x:Ljava/lang/Object;

    iput-object v6, v0, Lcom/shabakaty/downloader/bf1$a;->y:Ljava/lang/Object;

    iput v4, v0, Lcom/shabakaty/downloader/bf1$a;->v:I

    invoke-static {p2, v2, p1, v0}, Lcom/shabakaty/downloader/af1;->a(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/jn1;Ljava/lang/Throwable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    return-object v1

    .line 12
    :cond_7
    :goto_5
    throw p1
.end method
