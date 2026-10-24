.class public Lcom/shabakaty/downloader/oj4$a;
.super Ljava/lang/Object;
.source "SynchronizedCaptureSessionOpener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/oj4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ljava/util/concurrent/ScheduledExecutorService;

.field public final c:Landroid/os/Handler;

.field public final d:Lcom/shabakaty/downloader/wv;

.field public final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Landroid/os/Handler;Lcom/shabakaty/downloader/wv;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/oj4$a;->e:Ljava/util/Set;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/oj4$a;->a:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/oj4$a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    iput-object p3, p0, Lcom/shabakaty/downloader/oj4$a;->c:Landroid/os/Handler;

    .line 6
    iput-object p4, p0, Lcom/shabakaty/downloader/oj4$a;->d:Lcom/shabakaty/downloader/wv;

    .line 7
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-ge p1, p2, :cond_0

    const-string p3, "force_close"

    .line 8
    invoke-virtual {v0, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p3, 0x2

    if-eq p5, p3, :cond_1

    if-gt p1, p2, :cond_2

    :cond_1
    const-string p1, "deferrableSurface_close"

    .line 9
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    if-ne p5, p3, :cond_3

    const-string p1, "wait_for_request"

    .line 10
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/oj4;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/oj4$a;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/oj4;

    new-instance v1, Lcom/shabakaty/downloader/kj4;

    iget-object v2, p0, Lcom/shabakaty/downloader/oj4$a;->d:Lcom/shabakaty/downloader/wv;

    iget-object v3, p0, Lcom/shabakaty/downloader/oj4$a;->a:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/shabakaty/downloader/oj4$a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v5, p0, Lcom/shabakaty/downloader/oj4$a;->c:Landroid/os/Handler;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/shabakaty/downloader/kj4;-><init>(Lcom/shabakaty/downloader/wv;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/oj4;-><init>(Lcom/shabakaty/downloader/oj4$b;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/oj4;

    new-instance v7, Lcom/shabakaty/downloader/nj4;

    iget-object v2, p0, Lcom/shabakaty/downloader/oj4$a;->e:Ljava/util/Set;

    iget-object v3, p0, Lcom/shabakaty/downloader/oj4$a;->d:Lcom/shabakaty/downloader/wv;

    iget-object v4, p0, Lcom/shabakaty/downloader/oj4$a;->a:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Lcom/shabakaty/downloader/oj4$a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v6, p0, Lcom/shabakaty/downloader/oj4$a;->c:Landroid/os/Handler;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/nj4;-><init>(Ljava/util/Set;Lcom/shabakaty/downloader/wv;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Landroid/os/Handler;)V

    invoke-direct {v0, v7}, Lcom/shabakaty/downloader/oj4;-><init>(Lcom/shabakaty/downloader/oj4$b;)V

    return-object v0
.end method
