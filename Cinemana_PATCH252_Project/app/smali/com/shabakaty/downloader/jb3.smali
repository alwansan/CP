.class public final Lcom/shabakaty/downloader/jb3;
.super Lcom/shabakaty/downloader/pe0;
.source "PausingDispatcher.kt"


# instance fields
.field public final s:Lcom/shabakaty/downloader/zt0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/pe0;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/zt0;

    invoke-direct {v0}, Lcom/shabakaty/downloader/zt0;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/jb3;->s:Lcom/shabakaty/downloader/zt0;

    return-void
.end method


# virtual methods
.method public B(Lcom/shabakaty/downloader/me0;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/hu0;->a:Lcom/shabakaty/downloader/pe0;

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/wl2;->a:Lcom/shabakaty/downloader/vl2;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vl2;->M()Lcom/shabakaty/downloader/vl2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/pe0;->B(Lcom/shabakaty/downloader/me0;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/jb3;->s:Lcom/shabakaty/downloader/zt0;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/zt0;->a()Z

    move-result p1

    xor-int/2addr p1, v0

    return p1
.end method

.method public g(Lcom/shabakaty/downloader/me0;Ljava/lang/Runnable;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/jb3;->s:Lcom/shabakaty/downloader/zt0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/hu0;->a:Lcom/shabakaty/downloader/pe0;

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/wl2;->a:Lcom/shabakaty/downloader/vl2;

    .line 4
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vl2;->M()Lcom/shabakaty/downloader/vl2;

    move-result-object v1

    .line 5
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/pe0;->B(Lcom/shabakaty/downloader/me0;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/shabakaty/downloader/zt0;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p2}, Lcom/shabakaty/downloader/zt0;->c(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    new-instance v2, Lcom/shabakaty/downloader/yt0;

    invoke-direct {v2, v0, p1, p2}, Lcom/shabakaty/downloader/yt0;-><init>(Lcom/shabakaty/downloader/zt0;Lcom/shabakaty/downloader/me0;Ljava/lang/Runnable;)V

    invoke-virtual {v1, p1, v2}, Lcom/shabakaty/downloader/pe0;->g(Lcom/shabakaty/downloader/me0;Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method
