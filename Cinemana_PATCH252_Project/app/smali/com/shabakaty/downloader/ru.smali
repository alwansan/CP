.class public Lcom/shabakaty/downloader/ru;
.super Ljava/lang/Object;
.source "CameraX.java"

# interfaces
.implements Lcom/shabakaty/downloader/ho1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/ho1<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/ar$a;

.field public final synthetic b:Lcom/shabakaty/downloader/tu;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ar$a;Lcom/shabakaty/downloader/tu;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ru;->a:Lcom/shabakaty/downloader/ar$a;

    iput-object p2, p0, Lcom/shabakaty/downloader/ru;->b:Lcom/shabakaty/downloader/tu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "CameraX"

    const-string v1, "CameraX initialize() failed"

    .line 1
    invoke-static {v0, v1, p1}, Lcom/shabakaty/downloader/vk2;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/tu;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/tu;->n:Lcom/shabakaty/downloader/tu;

    iget-object v2, p0, Lcom/shabakaty/downloader/ru;->b:Lcom/shabakaty/downloader/tu;

    if-ne v1, v2, :cond_0

    .line 4
    invoke-static {}, Lcom/shabakaty/downloader/tu;->f()Lcom/shabakaty/downloader/pi2;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/ru;->a:Lcom/shabakaty/downloader/ar$a;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ar$a;->c(Ljava/lang/Throwable;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/ru;->a:Lcom/shabakaty/downloader/ar$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/ar$a;->a(Ljava/lang/Object;)Z

    return-void
.end method
