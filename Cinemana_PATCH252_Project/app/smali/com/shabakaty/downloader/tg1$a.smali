.class public final Lcom/shabakaty/downloader/tg1$a;
.super Lcom/shabakaty/downloader/qf1;
.source "FlowableScalarXMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/tg1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/qf1<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final s:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final t:Lcom/shabakaty/downloader/in1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/in1<",
            "-TT;+",
            "Lcom/shabakaty/downloader/wj3<",
            "+TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/shabakaty/downloader/in1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/shabakaty/downloader/in1<",
            "-TT;+",
            "Lcom/shabakaty/downloader/wj3<",
            "+TR;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/qf1;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/tg1$a;->s:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/tg1$a;->t:Lcom/shabakaty/downloader/in1;

    return-void
.end method


# virtual methods
.method public i(Lcom/shabakaty/downloader/ef4;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ef4<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/e31;->r:Lcom/shabakaty/downloader/e31;

    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/tg1$a;->t:Lcom/shabakaty/downloader/in1;

    iget-object v2, p0, Lcom/shabakaty/downloader/tg1$a;->s:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/in1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The mapper returned a null Publisher"

    .line 2
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    check-cast v1, Lcom/shabakaty/downloader/wj3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    instance-of v2, v1, Ljava/util/concurrent/Callable;

    if-eqz v2, :cond_1

    .line 5
    :try_start_1
    check-cast v1, Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 6
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/ef4;->d(Lcom/shabakaty/downloader/lf4;)V

    .line 7
    invoke-interface {p1}, Lcom/shabakaty/downloader/ef4;->a()V

    return-void

    .line 8
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/ix3;

    invoke-direct {v0, p1, v1}, Lcom/shabakaty/downloader/ix3;-><init>(Lcom/shabakaty/downloader/ef4;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/ef4;->d(Lcom/shabakaty/downloader/lf4;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 9
    invoke-static {v1}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 10
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/ef4;->d(Lcom/shabakaty/downloader/lf4;)V

    .line 11
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ef4;->b(Ljava/lang/Throwable;)V

    return-void

    .line 12
    :cond_1
    invoke-interface {v1, p1}, Lcom/shabakaty/downloader/wj3;->a(Lcom/shabakaty/downloader/ef4;)V

    :goto_0
    return-void

    :catchall_1
    move-exception v1

    .line 13
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/ef4;->d(Lcom/shabakaty/downloader/lf4;)V

    .line 14
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ef4;->b(Ljava/lang/Throwable;)V

    return-void
.end method
