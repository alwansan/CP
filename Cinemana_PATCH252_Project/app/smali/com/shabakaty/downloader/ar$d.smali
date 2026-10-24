.class public final Lcom/shabakaty/downloader/ar$d;
.super Ljava/lang/Object;
.source "CallbackToFutureAdapter.java"

# interfaces
.implements Lcom/shabakaty/downloader/pi2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/pi2<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final r:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/shabakaty/downloader/ar$a<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final s:Lcom/shabakaty/downloader/w0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/w0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ar$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ar$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ar$d$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/ar$d$a;-><init>(Lcom/shabakaty/downloader/ar$d;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/ar$d;->s:Lcom/shabakaty/downloader/w0;

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/ar$d;->r:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ar$d;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ar$a;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/ar$d;->s:Lcom/shabakaty/downloader/w0;

    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/w0;->cancel(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Lcom/shabakaty/downloader/ar$a;->a:Ljava/lang/Object;

    .line 4
    iput-object v1, v0, Lcom/shabakaty/downloader/ar$a;->b:Lcom/shabakaty/downloader/ar$d;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/ar$a;->c:Lcom/shabakaty/downloader/ns3;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ns3;->i(Ljava/lang/Object;)Z

    :cond_0
    return p1
.end method

.method public f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ar$d;->s:Lcom/shabakaty/downloader/w0;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/w0;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ar$d;->s:Lcom/shabakaty/downloader/w0;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/w0;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ar$d;->s:Lcom/shabakaty/downloader/w0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/shabakaty/downloader/w0;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isCancelled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ar$d;->s:Lcom/shabakaty/downloader/w0;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/w0;->r:Ljava/lang/Object;

    .line 3
    instance-of v0, v0, Lcom/shabakaty/downloader/w0$c;

    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ar$d;->s:Lcom/shabakaty/downloader/w0;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/w0;->isDone()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ar$d;->s:Lcom/shabakaty/downloader/w0;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/w0;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
