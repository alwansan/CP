.class public Lcom/squareup/picasso/j;
.super Lcom/squareup/picasso/o;
.source "NetworkRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/picasso/j$b;,
        Lcom/squareup/picasso/j$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/ty0;

.field public final b:Lcom/shabakaty/downloader/tc4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ty0;Lcom/shabakaty/downloader/tc4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/squareup/picasso/o;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/squareup/picasso/j;->a:Lcom/shabakaty/downloader/ty0;

    .line 3
    iput-object p2, p0, Lcom/squareup/picasso/j;->b:Lcom/shabakaty/downloader/tc4;

    return-void
.end method


# virtual methods
.method public c(Lcom/squareup/picasso/m;)Z
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/squareup/picasso/m;->c:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "http"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public e()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public f(Lcom/squareup/picasso/m;I)Lcom/squareup/picasso/o$a;
    .locals 20

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lcom/squareup/picasso/k$d;->u:Lcom/squareup/picasso/k$d;

    sget-object v2, Lcom/squareup/picasso/k$d;->t:Lcom/squareup/picasso/k$d;

    const/4 v3, 0x0

    if-eqz p2, :cond_4

    and-int/lit8 v4, p2, 0x4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    .line 2
    sget-object v4, Lcom/shabakaty/downloader/qp;->n:Lcom/shabakaty/downloader/qp;

    goto :goto_3

    :cond_1
    const/4 v15, 0x0

    const/4 v13, -0x1

    and-int/lit8 v4, p2, 0x1

    if-nez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    xor-int/lit8 v6, v4, 0x1

    and-int/lit8 v4, p2, 0x2

    if-nez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    xor-int/lit8 v7, v4, 0x1

    .line 3
    new-instance v4, Lcom/shabakaty/downloader/qp;

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v5, v4

    invoke-direct/range {v5 .. v19}, Lcom/shabakaty/downloader/qp;-><init>(ZZIIZZZIIZZZLjava/lang/String;Lcom/shabakaty/downloader/nn0;)V

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    .line 4
    :goto_3
    new-instance v5, Lcom/shabakaty/downloader/vr3$a;

    invoke-direct {v5}, Lcom/shabakaty/downloader/vr3$a;-><init>()V

    move-object/from16 v6, p1

    iget-object v6, v6, Lcom/squareup/picasso/m;->c:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/shabakaty/downloader/vr3$a;->k(Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;

    if-eqz v4, :cond_5

    .line 5
    invoke-virtual {v5, v4}, Lcom/shabakaty/downloader/vr3$a;->c(Lcom/shabakaty/downloader/qp;)Lcom/shabakaty/downloader/vr3$a;

    .line 6
    :cond_5
    invoke-virtual {v5}, Lcom/shabakaty/downloader/vr3$a;->b()Lcom/shabakaty/downloader/vr3;

    move-result-object v4

    .line 7
    iget-object v5, v0, Lcom/squareup/picasso/j;->a:Lcom/shabakaty/downloader/ty0;

    check-cast v5, Lcom/shabakaty/downloader/y53;

    .line 8
    iget-object v5, v5, Lcom/shabakaty/downloader/y53;->a:Lcom/shabakaty/downloader/mq$a;

    invoke-interface {v5, v4}, Lcom/shabakaty/downloader/mq$a;->a(Lcom/shabakaty/downloader/vr3;)Lcom/shabakaty/downloader/mq;

    move-result-object v4

    invoke-static {v4}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->execute(Lcom/shabakaty/downloader/mq;)Lcom/shabakaty/downloader/ws3;

    move-result-object v4

    .line 9
    iget-object v5, v4, Lcom/shabakaty/downloader/ws3;->y:Lcom/shabakaty/downloader/ys3;

    .line 10
    invoke-virtual {v4}, Lcom/shabakaty/downloader/ws3;->c()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 11
    iget-object v3, v4, Lcom/shabakaty/downloader/ws3;->A:Lcom/shabakaty/downloader/ws3;

    if-nez v3, :cond_6

    move-object v3, v1

    goto :goto_4

    :cond_6
    move-object v3, v2

    :goto_4
    const-wide/16 v6, 0x0

    if-ne v3, v2, :cond_8

    .line 12
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ys3;->c()J

    move-result-wide v8

    cmp-long v2, v8, v6

    if-eqz v2, :cond_7

    goto :goto_5

    .line 13
    :cond_7
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ys3;->close()V

    .line 14
    new-instance v1, Lcom/squareup/picasso/j$a;

    const-string v2, "Received response with 0 content-length header."

    invoke-direct {v1, v2}, Lcom/squareup/picasso/j$a;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    :goto_5
    if-ne v3, v1, :cond_9

    .line 15
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ys3;->c()J

    move-result-wide v1

    cmp-long v4, v1, v6

    if-lez v4, :cond_9

    .line 16
    iget-object v1, v0, Lcom/squareup/picasso/j;->b:Lcom/shabakaty/downloader/tc4;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/ys3;->c()J

    move-result-wide v6

    .line 17
    iget-object v1, v1, Lcom/shabakaty/downloader/tc4;->b:Landroid/os/Handler;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v1, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 18
    :cond_9
    new-instance v1, Lcom/squareup/picasso/o$a;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/ys3;->f()Lcom/shabakaty/downloader/eo;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/squareup/picasso/o$a;-><init>(Lcom/shabakaty/downloader/r94;Lcom/squareup/picasso/k$d;)V

    return-object v1

    .line 19
    :cond_a
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ys3;->close()V

    .line 20
    new-instance v1, Lcom/squareup/picasso/j$b;

    .line 21
    iget v2, v4, Lcom/shabakaty/downloader/ws3;->v:I

    .line 22
    invoke-direct {v1, v2, v3}, Lcom/squareup/picasso/j$b;-><init>(II)V

    throw v1
.end method

.method public g(ZLandroid/net/NetworkInfo;)Z
    .locals 0

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
