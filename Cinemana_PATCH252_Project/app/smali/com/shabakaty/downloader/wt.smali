.class public final Lcom/shabakaty/downloader/wt;
.super Ljava/lang/Object;
.source "CameraManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/wt$a;,
        Lcom/shabakaty/downloader/wt$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/wt$b;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/zs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wt$b;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/wt;->b:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/wt;->a:Lcom/shabakaty/downloader/wt$b;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/os/Handler;)Lcom/shabakaty/downloader/wt;
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/wt;

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/yt;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/yt;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/xt;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/xt;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance v1, Lcom/shabakaty/downloader/zt;

    new-instance v2, Lcom/shabakaty/downloader/zt$a;

    invoke-direct {v2, p1}, Lcom/shabakaty/downloader/zt$a;-><init>(Landroid/os/Handler;)V

    invoke-direct {v1, p0, v2}, Lcom/shabakaty/downloader/zt;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    move-object p1, v1

    .line 6
    :goto_0
    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/wt;-><init>(Lcom/shabakaty/downloader/wt$b;)V

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/String;)Lcom/shabakaty/downloader/zs;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wt;->b:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/wt;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/zs;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/wt;->a:Lcom/shabakaty/downloader/wt$b;

    .line 4
    invoke-interface {v1, p1}, Lcom/shabakaty/downloader/wt$b;->c(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/shabakaty/downloader/zs;

    invoke-direct {v2, v1}, Lcom/shabakaty/downloader/zs;-><init>(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/wt;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    .line 7
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c()[Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wt;->a:Lcom/shabakaty/downloader/wt$b;

    check-cast v0, Lcom/shabakaty/downloader/zt;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    iget-object v0, v0, Lcom/shabakaty/downloader/zt;->a:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/ns;->s:Ljava/util/Set;

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/ns;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/ns;-><init>(Landroid/hardware/camera2/CameraAccessException;)V

    .line 5
    throw v1
.end method
