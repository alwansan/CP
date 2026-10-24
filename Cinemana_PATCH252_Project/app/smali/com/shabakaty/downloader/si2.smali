.class public final Lcom/shabakaty/downloader/si2;
.super Ljava/lang/Object;
.source "ListenerSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/si2$c;,
        Lcom/shabakaty/downloader/si2$b;,
        Lcom/shabakaty/downloader/si2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/w30;

.field public final b:Lcom/shabakaty/downloader/fs1;

.field public final c:Lcom/shabakaty/downloader/si2$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/si2$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/shabakaty/downloader/si2$c<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/shabakaty/downloader/w30;Lcom/shabakaty/downloader/si2$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/shabakaty/downloader/si2$c<",
            "TT;>;>;",
            "Landroid/os/Looper;",
            "Lcom/shabakaty/downloader/w30;",
            "Lcom/shabakaty/downloader/si2$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/shabakaty/downloader/si2;->a:Lcom/shabakaty/downloader/w30;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/si2;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 4
    iput-object p4, p0, Lcom/shabakaty/downloader/si2;->c:Lcom/shabakaty/downloader/si2$b;

    .line 5
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/si2;->e:Ljava/util/ArrayDeque;

    .line 6
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/si2;->f:Ljava/util/ArrayDeque;

    .line 7
    new-instance p1, Lcom/shabakaty/downloader/ri2;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/ri2;-><init>(Lcom/shabakaty/downloader/si2;)V

    invoke-interface {p3, p2, p1}, Lcom/shabakaty/downloader/w30;->b(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/shabakaty/downloader/fs1;

    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/shabakaty/downloader/si2;->b:Lcom/shabakaty/downloader/fs1;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/si2;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/si2;->b:Lcom/shabakaty/downloader/fs1;

    check-cast v0, Lcom/shabakaty/downloader/yj4;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/yj4;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/si2;->b:Lcom/shabakaty/downloader/fs1;

    check-cast v0, Lcom/shabakaty/downloader/yj4;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/yj4;->a(I)Lcom/shabakaty/downloader/fs1$a;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    check-cast v1, Lcom/shabakaty/downloader/yj4$b;

    iget-object v0, v0, Lcom/shabakaty/downloader/yj4;->a:Landroid/os/Handler;

    .line 6
    iget-object v2, v1, Lcom/shabakaty/downloader/yj4$b;->a:Landroid/os/Message;

    .line 7
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 9
    invoke-virtual {v1}, Lcom/shabakaty/downloader/yj4$b;->a()V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/si2;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 11
    iget-object v1, p0, Lcom/shabakaty/downloader/si2;->e:Ljava/util/ArrayDeque;

    iget-object v2, p0, Lcom/shabakaty/downloader/si2;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 12
    iget-object v1, p0, Lcom/shabakaty/downloader/si2;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    if-eqz v0, :cond_2

    return-void

    .line 13
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/si2;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 14
    iget-object v0, p0, Lcom/shabakaty/downloader/si2;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 15
    iget-object v0, p0, Lcom/shabakaty/downloader/si2;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public b(ILcom/shabakaty/downloader/si2$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/shabakaty/downloader/si2$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, Lcom/shabakaty/downloader/si2;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/si2;->f:Ljava/util/ArrayDeque;

    new-instance v2, Lcom/shabakaty/downloader/r01;

    invoke-direct {v2, v0, p1, p2}, Lcom/shabakaty/downloader/r01;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/shabakaty/downloader/si2$a;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method
