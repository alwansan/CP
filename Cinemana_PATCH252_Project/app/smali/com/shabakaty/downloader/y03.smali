.class public final Lcom/shabakaty/downloader/y03;
.super Ljava/lang/Object;
.source "NotificationOpenedHandler.kt"

# interfaces
.implements Lcom/onesignal/q0$t;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/y03;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcom/onesignal/e0;)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p1, Lcom/onesignal/e0;->c:Lcom/shabakaty/downloader/c33;

    if-nez p1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget-object v0, p1, Lcom/shabakaty/downloader/c33;->i:Lorg/json/JSONObject;

    :goto_0
    if-eqz v0, :cond_2

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/y03$a;

    invoke-direct {p1, v0, p0}, Lcom/shabakaty/downloader/y03$a;-><init>(Lorg/json/JSONObject;Lcom/shabakaty/downloader/y03;)V

    const-wide/16 v0, 0x7d0

    const-string v2, "function"

    .line 4
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "item is null"

    .line 6
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    new-instance v3, Lcom/shabakaty/downloader/r74;

    invoke-direct {v3, v2}, Lcom/shabakaty/downloader/r74;-><init>(Ljava/lang/Object;)V

    .line 8
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1, v2}, Lcom/shabakaty/downloader/f74;->d(JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/shabakaty/downloader/uv3;->d(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/shabakaty/downloader/uv3;->b(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    .line 11
    new-instance v1, Lcom/shabakaty/downloader/sv3;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/sv3;-><init>(Lcom/shabakaty/downloader/rm1;)V

    .line 12
    sget-object p1, Lcom/shabakaty/downloader/tv3;->r:Lcom/shabakaty/downloader/tv3;

    invoke-static {v0, v1, p1}, Lcom/shabakaty/downloader/uv3;->c(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/mu0;

    :cond_2
    return-void
.end method
