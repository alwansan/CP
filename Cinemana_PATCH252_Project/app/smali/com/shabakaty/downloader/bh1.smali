.class public final Lcom/shabakaty/downloader/bh1;
.super Lcom/shabakaty/downloader/f74;
.source "FlowableToListSingle.java"

# interfaces
.implements Lcom/shabakaty/downloader/fo1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/bh1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Lcom/shabakaty/downloader/f74<",
        "TU;>;",
        "Lcom/shabakaty/downloader/fo1<",
        "TU;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/qf1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/qf1<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qf1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qf1<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/f74;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/bh1;->a:Lcom/shabakaty/downloader/qf1;

    return-void
.end method


# virtual methods
.method public b()Lcom/shabakaty/downloader/qf1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/qf1<",
            "TU;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ah1;

    iget-object v1, p0, Lcom/shabakaty/downloader/bh1;->a:Lcom/shabakaty/downloader/qf1;

    sget-object v2, Lcom/shabakaty/downloader/zc;->r:Lcom/shabakaty/downloader/zc;

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/ah1;-><init>(Lcom/shabakaty/downloader/qf1;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public l(Lcom/shabakaty/downloader/y74;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/y74<",
            "-TU;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/bh1;->a:Lcom/shabakaty/downloader/qf1;

    new-instance v2, Lcom/shabakaty/downloader/bh1$a;

    invoke-direct {v2, p1, v0}, Lcom/shabakaty/downloader/bh1$a;-><init>(Lcom/shabakaty/downloader/y74;Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/qf1;->h(Lcom/shabakaty/downloader/wg1;)V

    return-void

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/t21;->r:Lcom/shabakaty/downloader/t21;

    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/y74;->c(Lcom/shabakaty/downloader/mu0;)V

    .line 5
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/y74;->b(Ljava/lang/Throwable;)V

    return-void
.end method
