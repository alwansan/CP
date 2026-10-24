.class public final synthetic Lcom/shabakaty/downloader/vw4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ww4;

.field public final synthetic s:Lcom/shabakaty/downloader/oq4;

.field public final synthetic t:I

.field public final synthetic u:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/ww4;Lcom/shabakaty/downloader/oq4;ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/vw4;->r:Lcom/shabakaty/downloader/ww4;

    iput-object p2, p0, Lcom/shabakaty/downloader/vw4;->s:Lcom/shabakaty/downloader/oq4;

    iput p3, p0, Lcom/shabakaty/downloader/vw4;->t:I

    iput-object p4, p0, Lcom/shabakaty/downloader/vw4;->u:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/shabakaty/downloader/vw4;->r:Lcom/shabakaty/downloader/ww4;

    iget-object v1, p0, Lcom/shabakaty/downloader/vw4;->s:Lcom/shabakaty/downloader/oq4;

    iget v2, p0, Lcom/shabakaty/downloader/vw4;->t:I

    iget-object v3, p0, Lcom/shabakaty/downloader/vw4;->u:Ljava/lang/Runnable;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    .line 1
    :try_start_0
    iget-object v5, v0, Lcom/shabakaty/downloader/ww4;->f:Lcom/shabakaty/downloader/fj4;

    iget-object v6, v0, Lcom/shabakaty/downloader/ww4;->c:Lcom/shabakaty/downloader/x51;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/shabakaty/downloader/cu;

    invoke-direct {v7, v6}, Lcom/shabakaty/downloader/cu;-><init>(Lcom/shabakaty/downloader/x51;)V

    invoke-interface {v5, v7}, Lcom/shabakaty/downloader/fj4;->a(Lcom/shabakaty/downloader/fj4$a;)Ljava/lang/Object;

    .line 2
    iget-object v5, v0, Lcom/shabakaty/downloader/ww4;->a:Landroid/content/Context;

    const-string v6, "connectivity"

    .line 3
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 4
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 5
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_1

    .line 6
    iget-object v5, v0, Lcom/shabakaty/downloader/ww4;->f:Lcom/shabakaty/downloader/fj4;

    new-instance v6, Lcom/shabakaty/downloader/uw4;

    invoke-direct {v6, v0, v1, v2}, Lcom/shabakaty/downloader/uw4;-><init>(Lcom/shabakaty/downloader/ww4;Lcom/shabakaty/downloader/oq4;I)V

    invoke-interface {v5, v6}, Lcom/shabakaty/downloader/fj4;->a(Lcom/shabakaty/downloader/fj4$a;)Ljava/lang/Object;

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/ww4;->a(Lcom/shabakaty/downloader/oq4;I)V
    :try_end_0
    .catch Lcom/shabakaty/downloader/ej4; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 8
    :catch_0
    :try_start_1
    iget-object v0, v0, Lcom/shabakaty/downloader/ww4;->d:Lcom/shabakaty/downloader/b85;

    add-int/2addr v2, v4

    invoke-interface {v0, v1, v2}, Lcom/shabakaty/downloader/b85;->b(Lcom/shabakaty/downloader/oq4;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :goto_1
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    return-void

    :goto_2
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 10
    throw v0
.end method
