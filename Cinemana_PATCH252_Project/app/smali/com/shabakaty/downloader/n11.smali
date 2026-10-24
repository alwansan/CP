.class public final Lcom/shabakaty/downloader/n11;
.super Landroid/view/Surface;
.source "DummySurface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/n11$b;
    }
.end annotation


# static fields
.field public static u:I

.field public static v:Z


# instance fields
.field public final r:Z

.field public final s:Lcom/shabakaty/downloader/n11$b;

.field public t:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/n11$b;Landroid/graphics/SurfaceTexture;ZLcom/shabakaty/downloader/n11$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/n11;->s:Lcom/shabakaty/downloader/n11$b;

    .line 3
    iput-boolean p3, p0, Lcom/shabakaty/downloader/n11;->r:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 7

    .line 1
    sget v0, Lcom/shabakaty/downloader/sy4;->a:I

    const/16 v1, 0x18

    const/16 v2, 0x3055

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x1a

    if-ge v0, v1, :cond_1

    .line 2
    sget-object v5, Lcom/shabakaty/downloader/sy4;->c:Ljava/lang/String;

    const-string v6, "samsung"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Lcom/shabakaty/downloader/sy4;->d:Ljava/lang/String;

    const-string v6, "XT1650"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    if-ge v0, v1, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "android.hardware.vr.high_performance"

    .line 4
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {v4}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object p0

    .line 6
    invoke-static {p0, v2}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string v1, "EGL_EXT_protected_content"

    .line 7
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_7

    const/16 p0, 0x11

    if-ge v0, p0, :cond_4

    goto :goto_2

    .line 8
    :cond_4
    invoke-static {v4}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object p0

    .line 9
    invoke-static {p0, v2}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    const-string v0, "EGL_KHR_surfaceless_context"

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 v4, 0x1

    :cond_5
    :goto_2
    if-eqz v4, :cond_6

    return v3

    :cond_6
    const/4 p0, 0x2

    return p0

    :cond_7
    return v4
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Z
    .locals 3

    const-class v0, Lcom/shabakaty/downloader/n11;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Lcom/shabakaty/downloader/n11;->v:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 2
    invoke-static {p0}, Lcom/shabakaty/downloader/n11;->a(Landroid/content/Context;)I

    move-result p0

    sput p0, Lcom/shabakaty/downloader/n11;->u:I

    .line 3
    sput-boolean v2, Lcom/shabakaty/downloader/n11;->v:Z

    .line 4
    :cond_0
    sget p0, Lcom/shabakaty/downloader/n11;->u:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static c(Landroid/content/Context;Z)Lcom/shabakaty/downloader/n11;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/n11;->b(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-static {p0}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 2
    new-instance p0, Lcom/shabakaty/downloader/n11$b;

    invoke-direct {p0}, Lcom/shabakaty/downloader/n11$b;-><init>()V

    if-eqz p1, :cond_2

    .line 3
    sget p1, Lcom/shabakaty/downloader/n11;->u:I

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 4
    :goto_2
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 5
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/shabakaty/downloader/n11$b;->s:Landroid/os/Handler;

    .line 6
    new-instance v3, Lcom/shabakaty/downloader/y11;

    invoke-direct {v3, v2}, Lcom/shabakaty/downloader/y11;-><init>(Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/shabakaty/downloader/n11$b;->r:Lcom/shabakaty/downloader/y11;

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/shabakaty/downloader/n11$b;->s:Landroid/os/Handler;

    invoke-virtual {v2, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 9
    :goto_3
    iget-object p1, p0, Lcom/shabakaty/downloader/n11$b;->v:Lcom/shabakaty/downloader/n11;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/shabakaty/downloader/n11$b;->u:Ljava/lang/RuntimeException;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/shabakaty/downloader/n11$b;->t:Ljava/lang/Error;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_3

    .line 10
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    const/4 v0, 0x1

    goto :goto_3

    .line 11
    :cond_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_4

    .line 12
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/shabakaty/downloader/n11$b;->u:Ljava/lang/RuntimeException;

    if-nez p1, :cond_6

    .line 14
    iget-object p1, p0, Lcom/shabakaty/downloader/n11$b;->t:Ljava/lang/Error;

    if-nez p1, :cond_5

    .line 15
    iget-object p0, p0, Lcom/shabakaty/downloader/n11$b;->v:Lcom/shabakaty/downloader/n11;

    .line 16
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 17
    :cond_5
    throw p1

    .line 18
    :cond_6
    throw p1

    :catchall_0
    move-exception p1

    .line 19
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method


# virtual methods
.method public release()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/Surface;->release()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/n11;->s:Lcom/shabakaty/downloader/n11$b;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lcom/shabakaty/downloader/n11;->t:Z

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/n11;->s:Lcom/shabakaty/downloader/n11$b;

    .line 5
    iget-object v2, v1, Lcom/shabakaty/downloader/n11$b;->s:Landroid/os/Handler;

    .line 6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, v1, Lcom/shabakaty/downloader/n11$b;->s:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/shabakaty/downloader/n11;->t:Z

    .line 9
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
