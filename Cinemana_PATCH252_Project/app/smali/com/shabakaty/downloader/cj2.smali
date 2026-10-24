.class public Lcom/shabakaty/downloader/cj2;
.super Ljava/lang/Object;
.source "LiveDataObservable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/dj2$b;

.field public final synthetic s:Lcom/shabakaty/downloader/dj2$a;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/dj2$a;Lcom/shabakaty/downloader/dj2$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/cj2;->s:Lcom/shabakaty/downloader/dj2$a;

    iput-object p2, p0, Lcom/shabakaty/downloader/cj2;->r:Lcom/shabakaty/downloader/dj2$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    sget-object v0, Landroidx/camera/view/PreviewView$e;->r:Landroidx/camera/view/PreviewView$e;

    iget-object v1, p0, Lcom/shabakaty/downloader/cj2;->s:Lcom/shabakaty/downloader/dj2$a;

    iget-object v1, v1, Lcom/shabakaty/downloader/dj2$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/cj2;->r:Lcom/shabakaty/downloader/dj2$b;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/dj2$b;->a()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/cj2;->s:Lcom/shabakaty/downloader/dj2$a;

    iget-object v1, v1, Lcom/shabakaty/downloader/dj2$a;->b:Lcom/shabakaty/downloader/s43$a;

    iget-object v4, p0, Lcom/shabakaty/downloader/cj2;->r:Lcom/shabakaty/downloader/dj2$b;

    .line 4
    invoke-virtual {v4}, Lcom/shabakaty/downloader/dj2$b;->a()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 5
    iget-object v4, v4, Lcom/shabakaty/downloader/dj2$b;->a:Ljava/lang/Object;

    .line 6
    check-cast v1, Landroidx/camera/view/a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    check-cast v4, Lcom/shabakaty/downloader/vt$a;

    .line 8
    sget-object v5, Lcom/shabakaty/downloader/vt$a;->v:Lcom/shabakaty/downloader/vt$a;

    if-eq v4, v5, :cond_3

    sget-object v5, Lcom/shabakaty/downloader/vt$a;->w:Lcom/shabakaty/downloader/vt$a;

    if-eq v4, v5, :cond_3

    sget-object v5, Lcom/shabakaty/downloader/vt$a;->x:Lcom/shabakaty/downloader/vt$a;

    if-eq v4, v5, :cond_3

    sget-object v5, Lcom/shabakaty/downloader/vt$a;->y:Lcom/shabakaty/downloader/vt$a;

    if-ne v4, v5, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    sget-object v2, Lcom/shabakaty/downloader/vt$a;->t:Lcom/shabakaty/downloader/vt$a;

    if-eq v4, v2, :cond_2

    sget-object v2, Lcom/shabakaty/downloader/vt$a;->u:Lcom/shabakaty/downloader/vt$a;

    if-eq v4, v2, :cond_2

    sget-object v2, Lcom/shabakaty/downloader/vt$a;->s:Lcom/shabakaty/downloader/vt$a;

    if-ne v4, v2, :cond_7

    .line 10
    :cond_2
    iget-boolean v2, v1, Landroidx/camera/view/a;->f:Z

    if-nez v2, :cond_7

    .line 11
    iget-object v2, v1, Landroidx/camera/view/a;->a:Lcom/shabakaty/downloader/tt;

    .line 12
    invoke-virtual {v1, v0}, Landroidx/camera/view/a;->a(Landroidx/camera/view/PreviewView$e;)V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    new-instance v3, Lcom/shabakaty/downloader/ij4;

    invoke-direct {v3, v1, v2, v0}, Lcom/shabakaty/downloader/ij4;-><init>(Landroidx/camera/view/a;Lcom/shabakaty/downloader/st;Ljava/util/List;)V

    invoke-static {v3}, Lcom/shabakaty/downloader/ar;->a(Lcom/shabakaty/downloader/ar$c;)Lcom/shabakaty/downloader/pi2;

    move-result-object v3

    .line 15
    invoke-static {v3}, Lcom/shabakaty/downloader/io1;->a(Lcom/shabakaty/downloader/pi2;)Lcom/shabakaty/downloader/io1;

    move-result-object v3

    new-instance v4, Lcom/shabakaty/downloader/mf3;

    invoke-direct {v4, v1}, Lcom/shabakaty/downloader/mf3;-><init>(Landroidx/camera/view/a;)V

    .line 16
    invoke-static {}, Lcom/shabakaty/downloader/jl3;->a()Ljava/util/concurrent/Executor;

    move-result-object v5

    .line 17
    invoke-virtual {v3, v4, v5}, Lcom/shabakaty/downloader/io1;->c(Lcom/shabakaty/downloader/od;Ljava/util/concurrent/Executor;)Lcom/shabakaty/downloader/io1;

    move-result-object v3

    new-instance v4, Lcom/shabakaty/downloader/nu;

    invoke-direct {v4, v1}, Lcom/shabakaty/downloader/nu;-><init>(Landroidx/camera/view/a;)V

    .line 18
    invoke-static {}, Lcom/shabakaty/downloader/jl3;->a()Ljava/util/concurrent/Executor;

    move-result-object v5

    .line 19
    new-instance v6, Lcom/shabakaty/downloader/jo1;

    invoke-direct {v6, v4}, Lcom/shabakaty/downloader/jo1;-><init>(Lcom/shabakaty/downloader/rn1;)V

    .line 20
    new-instance v4, Lcom/shabakaty/downloader/ky;

    invoke-direct {v4, v6, v3}, Lcom/shabakaty/downloader/ky;-><init>(Lcom/shabakaty/downloader/od;Lcom/shabakaty/downloader/pi2;)V

    .line 21
    iget-object v3, v3, Lcom/shabakaty/downloader/io1;->r:Lcom/shabakaty/downloader/pi2;

    invoke-interface {v3, v4, v5}, Lcom/shabakaty/downloader/pi2;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 22
    iput-object v4, v1, Landroidx/camera/view/a;->e:Lcom/shabakaty/downloader/pi2;

    .line 23
    new-instance v3, Lcom/shabakaty/downloader/nf3;

    invoke-direct {v3, v1, v0, v2}, Lcom/shabakaty/downloader/nf3;-><init>(Landroidx/camera/view/a;Ljava/util/List;Lcom/shabakaty/downloader/st;)V

    .line 24
    invoke-static {}, Lcom/shabakaty/downloader/jl3;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 25
    new-instance v2, Lcom/shabakaty/downloader/ko1$d;

    invoke-direct {v2, v4, v3}, Lcom/shabakaty/downloader/ko1$d;-><init>(Ljava/util/concurrent/Future;Lcom/shabakaty/downloader/ho1;)V

    .line 26
    iget-object v3, v4, Lcom/shabakaty/downloader/io1;->r:Lcom/shabakaty/downloader/pi2;

    invoke-interface {v3, v2, v0}, Lcom/shabakaty/downloader/pi2;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, v1, Landroidx/camera/view/a;->f:Z

    goto :goto_1

    .line 28
    :cond_3
    :goto_0
    invoke-virtual {v1, v0}, Landroidx/camera/view/a;->a(Landroidx/camera/view/PreviewView$e;)V

    .line 29
    iget-boolean v0, v1, Landroidx/camera/view/a;->f:Z

    if-eqz v0, :cond_7

    .line 30
    iput-boolean v3, v1, Landroidx/camera/view/a;->f:Z

    .line 31
    iget-object v0, v1, Landroidx/camera/view/a;->e:Lcom/shabakaty/downloader/pi2;

    if-eqz v0, :cond_7

    .line 32
    invoke-interface {v0, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 33
    iput-object v2, v1, Landroidx/camera/view/a;->e:Lcom/shabakaty/downloader/pi2;

    goto :goto_1

    .line 34
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Result contains an error. Does not contain a value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_5
    iget-object v1, p0, Lcom/shabakaty/downloader/cj2;->r:Lcom/shabakaty/downloader/dj2$b;

    .line 36
    iget-object v1, v1, Lcom/shabakaty/downloader/dj2$b;->b:Ljava/lang/Throwable;

    .line 37
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v1, p0, Lcom/shabakaty/downloader/cj2;->s:Lcom/shabakaty/downloader/dj2$a;

    iget-object v1, v1, Lcom/shabakaty/downloader/dj2$a;->b:Lcom/shabakaty/downloader/s43$a;

    iget-object v4, p0, Lcom/shabakaty/downloader/cj2;->r:Lcom/shabakaty/downloader/dj2$b;

    .line 39
    iget-object v4, v4, Lcom/shabakaty/downloader/dj2$b;->b:Ljava/lang/Throwable;

    .line 40
    check-cast v1, Landroidx/camera/view/a;

    .line 41
    iget-object v4, v1, Landroidx/camera/view/a;->e:Lcom/shabakaty/downloader/pi2;

    if-eqz v4, :cond_6

    .line 42
    invoke-interface {v4, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 43
    iput-object v2, v1, Landroidx/camera/view/a;->e:Lcom/shabakaty/downloader/pi2;

    .line 44
    :cond_6
    invoke-virtual {v1, v0}, Landroidx/camera/view/a;->a(Landroidx/camera/view/PreviewView$e;)V

    :cond_7
    :goto_1
    return-void
.end method
