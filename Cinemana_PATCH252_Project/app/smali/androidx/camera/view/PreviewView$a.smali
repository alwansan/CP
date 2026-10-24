.class public Landroidx/camera/view/PreviewView$a;
.super Ljava/lang/Object;
.source "PreviewView.java"

# interfaces
.implements Lcom/shabakaty/downloader/if3$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/view/PreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/camera/view/PreviewView;


# direct methods
.method public constructor <init>(Landroidx/camera/view/PreviewView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/camera/view/PreviewView$a;->a:Landroidx/camera/view/PreviewView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/mi4;)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/hl3;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/camera/view/PreviewView$a;->a:Landroidx/camera/view/PreviewView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/ld0;->d(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/shabakaty/downloader/or;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/or;-><init>(Landroidx/camera/view/PreviewView$a;Lcom/shabakaty/downloader/mi4;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const-string v0, "PreviewView"

    const-string v1, "Surface requested by Preview."

    const/4 v2, 0x0

    .line 3
    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/vk2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    iget-object v0, p1, Lcom/shabakaty/downloader/mi4;->c:Lcom/shabakaty/downloader/vt;

    .line 5
    iget-object v1, p0, Landroidx/camera/view/PreviewView$a;->a:Landroidx/camera/view/PreviewView;

    .line 6
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/ld0;->d(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/shabakaty/downloader/ij4;

    invoke-direct {v2, p0, v0, p1}, Lcom/shabakaty/downloader/ij4;-><init>(Landroidx/camera/view/PreviewView$a;Lcom/shabakaty/downloader/vt;Lcom/shabakaty/downloader/mi4;)V

    .line 7
    iput-object v2, p1, Lcom/shabakaty/downloader/mi4;->j:Lcom/shabakaty/downloader/mi4$h;

    .line 8
    iput-object v1, p1, Lcom/shabakaty/downloader/mi4;->k:Ljava/util/concurrent/Executor;

    .line 9
    iget-object v3, p1, Lcom/shabakaty/downloader/mi4;->i:Lcom/shabakaty/downloader/mi4$g;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 10
    new-instance v5, Lcom/shabakaty/downloader/li4;

    invoke-direct {v5, v2, v3, v4}, Lcom/shabakaty/downloader/li4;-><init>(Lcom/shabakaty/downloader/mi4$h;Lcom/shabakaty/downloader/mi4$g;I)V

    invoke-interface {v1, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 11
    :cond_1
    iget-object v1, p0, Landroidx/camera/view/PreviewView$a;->a:Landroidx/camera/view/PreviewView;

    iget-object v2, v1, Landroidx/camera/view/PreviewView;->r:Landroidx/camera/view/PreviewView$b;

    .line 12
    iget-object v3, p1, Lcom/shabakaty/downloader/mi4;->c:Lcom/shabakaty/downloader/vt;

    .line 13
    invoke-interface {v3}, Lcom/shabakaty/downloader/vt;->l()Lcom/shabakaty/downloader/tt;

    move-result-object v3

    .line 14
    invoke-interface {v3}, Lcom/shabakaty/downloader/st;->d()Ljava/lang/String;

    move-result-object v3

    const-string v5, "androidx.camera.camera2.legacy"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 15
    const-class v5, Lcom/shabakaty/downloader/ri4;

    .line 16
    sget-object v6, Lcom/shabakaty/downloader/ss0;->a:Lcom/shabakaty/downloader/al3;

    invoke-virtual {v6, v5}, Lcom/shabakaty/downloader/al3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/zk3;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 17
    :goto_0
    iget-boolean v7, p1, Lcom/shabakaty/downloader/mi4;->b:Z

    if-nez v7, :cond_6

    .line 18
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x18

    if-le v7, v8, :cond_6

    if-nez v3, :cond_6

    if-eqz v5, :cond_3

    goto :goto_1

    .line 19
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_5

    if-ne v3, v4, :cond_4

    goto :goto_1

    .line 20
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid implementation mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const/4 v4, 0x0

    :cond_6
    :goto_1
    if-eqz v4, :cond_7

    .line 21
    new-instance v2, Landroidx/camera/view/e;

    iget-object v3, p0, Landroidx/camera/view/PreviewView$a;->a:Landroidx/camera/view/PreviewView;

    iget-object v4, v3, Landroidx/camera/view/PreviewView;->t:Landroidx/camera/view/b;

    invoke-direct {v2, v3, v4}, Landroidx/camera/view/e;-><init>(Landroid/widget/FrameLayout;Landroidx/camera/view/b;)V

    goto :goto_2

    .line 22
    :cond_7
    new-instance v2, Landroidx/camera/view/d;

    iget-object v3, p0, Landroidx/camera/view/PreviewView$a;->a:Landroidx/camera/view/PreviewView;

    iget-object v4, v3, Landroidx/camera/view/PreviewView;->t:Landroidx/camera/view/b;

    invoke-direct {v2, v3, v4}, Landroidx/camera/view/d;-><init>(Landroid/widget/FrameLayout;Landroidx/camera/view/b;)V

    :goto_2
    iput-object v2, v1, Landroidx/camera/view/PreviewView;->s:Landroidx/camera/view/c;

    .line 23
    new-instance v1, Landroidx/camera/view/a;

    .line 24
    invoke-interface {v0}, Lcom/shabakaty/downloader/vt;->l()Lcom/shabakaty/downloader/tt;

    move-result-object v2

    iget-object v3, p0, Landroidx/camera/view/PreviewView$a;->a:Landroidx/camera/view/PreviewView;

    iget-object v4, v3, Landroidx/camera/view/PreviewView;->u:Lcom/shabakaty/downloader/xv2;

    iget-object v3, v3, Landroidx/camera/view/PreviewView;->s:Landroidx/camera/view/c;

    invoke-direct {v1, v2, v4, v3}, Landroidx/camera/view/a;-><init>(Lcom/shabakaty/downloader/tt;Lcom/shabakaty/downloader/xv2;Landroidx/camera/view/c;)V

    .line 25
    iget-object v2, p0, Landroidx/camera/view/PreviewView$a;->a:Landroidx/camera/view/PreviewView;

    iget-object v2, v2, Landroidx/camera/view/PreviewView;->v:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 26
    invoke-interface {v0}, Lcom/shabakaty/downloader/vt;->c()Lcom/shabakaty/downloader/s43;

    move-result-object v2

    iget-object v3, p0, Landroidx/camera/view/PreviewView$a;->a:Landroidx/camera/view/PreviewView;

    .line 27
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/shabakaty/downloader/ld0;->d(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 28
    check-cast v2, Lcom/shabakaty/downloader/dj2;

    .line 29
    iget-object v4, v2, Lcom/shabakaty/downloader/dj2;->b:Ljava/util/Map;

    monitor-enter v4

    .line 30
    :try_start_0
    iget-object v5, v2, Lcom/shabakaty/downloader/dj2;->b:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/dj2$a;

    if-eqz v5, :cond_8

    .line 31
    iget-object v7, v5, Lcom/shabakaty/downloader/dj2$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 32
    :cond_8
    new-instance v6, Lcom/shabakaty/downloader/dj2$a;

    invoke-direct {v6, v3, v1}, Lcom/shabakaty/downloader/dj2$a;-><init>(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/s43$a;)V

    .line 33
    iget-object v3, v2, Lcom/shabakaty/downloader/dj2;->b:Ljava/util/Map;

    invoke-interface {v3, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {}, Lcom/shabakaty/downloader/jl3;->i()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    new-instance v7, Lcom/shabakaty/downloader/aj2;

    invoke-direct {v7, v2, v5, v6}, Lcom/shabakaty/downloader/aj2;-><init>(Lcom/shabakaty/downloader/dj2;Lcom/shabakaty/downloader/dj2$a;Lcom/shabakaty/downloader/dj2$a;)V

    invoke-interface {v3, v7}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 35
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    iget-object v2, p0, Landroidx/camera/view/PreviewView$a;->a:Landroidx/camera/view/PreviewView;

    iget-object v2, v2, Landroidx/camera/view/PreviewView;->s:Landroidx/camera/view/c;

    new-instance v3, Lcom/shabakaty/downloader/ij4;

    invoke-direct {v3, p0, v1, v0}, Lcom/shabakaty/downloader/ij4;-><init>(Landroidx/camera/view/PreviewView$a;Landroidx/camera/view/a;Lcom/shabakaty/downloader/vt;)V

    invoke-virtual {v2, p1, v3}, Landroidx/camera/view/c;->e(Lcom/shabakaty/downloader/mi4;Landroidx/camera/view/c$a;)V

    return-void

    :catchall_0
    move-exception p1

    .line 37
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
