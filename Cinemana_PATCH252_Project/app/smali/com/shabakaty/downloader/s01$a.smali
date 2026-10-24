.class public Lcom/shabakaty/downloader/s01$a;
.super Ljava/lang/Object;
.source "DrmSessionEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/s01;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/s01$a$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/shabakaty/downloader/uq2$a;

.field public final c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/shabakaty/downloader/s01$a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/s01$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/shabakaty/downloader/s01$a;->a:I

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/shabakaty/downloader/s01$a;->b:Lcom/shabakaty/downloader/uq2$a;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/shabakaty/downloader/uq2$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/shabakaty/downloader/s01$a$a;",
            ">;I",
            "Lcom/shabakaty/downloader/uq2$a;",
            ")V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/shabakaty/downloader/s01$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    iput p2, p0, Lcom/shabakaty/downloader/s01$a;->a:I

    .line 9
    iput-object p3, p0, Lcom/shabakaty/downloader/s01$a;->b:Lcom/shabakaty/downloader/uq2$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s01$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/s01$a$a;

    .line 2
    iget-object v2, v1, Lcom/shabakaty/downloader/s01$a$a;->b:Lcom/shabakaty/downloader/s01;

    .line 3
    iget-object v1, v1, Lcom/shabakaty/downloader/s01$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lcom/shabakaty/downloader/q01;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v2, v4}, Lcom/shabakaty/downloader/q01;-><init>(Lcom/shabakaty/downloader/s01$a;Lcom/shabakaty/downloader/s01;I)V

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/sy4;->L(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s01$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/s01$a$a;

    .line 2
    iget-object v2, v1, Lcom/shabakaty/downloader/s01$a$a;->b:Lcom/shabakaty/downloader/s01;

    .line 3
    iget-object v1, v1, Lcom/shabakaty/downloader/s01$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lcom/shabakaty/downloader/q01;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v2, v4}, Lcom/shabakaty/downloader/q01;-><init>(Lcom/shabakaty/downloader/s01$a;Lcom/shabakaty/downloader/s01;I)V

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/sy4;->L(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s01$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/s01$a$a;

    .line 2
    iget-object v2, v1, Lcom/shabakaty/downloader/s01$a$a;->b:Lcom/shabakaty/downloader/s01;

    .line 3
    iget-object v1, v1, Lcom/shabakaty/downloader/s01$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lcom/shabakaty/downloader/q01;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v2, v4}, Lcom/shabakaty/downloader/q01;-><init>(Lcom/shabakaty/downloader/s01$a;Lcom/shabakaty/downloader/s01;I)V

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/sy4;->L(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s01$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/s01$a$a;

    .line 2
    iget-object v2, v1, Lcom/shabakaty/downloader/s01$a$a;->b:Lcom/shabakaty/downloader/s01;

    .line 3
    iget-object v1, v1, Lcom/shabakaty/downloader/s01$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lcom/shabakaty/downloader/r01;

    invoke-direct {v3, p0, v2, p1}, Lcom/shabakaty/downloader/r01;-><init>(Lcom/shabakaty/downloader/s01$a;Lcom/shabakaty/downloader/s01;I)V

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/sy4;->L(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s01$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/s01$a$a;

    .line 2
    iget-object v2, v1, Lcom/shabakaty/downloader/s01$a$a;->b:Lcom/shabakaty/downloader/s01;

    .line 3
    iget-object v1, v1, Lcom/shabakaty/downloader/s01$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lcom/shabakaty/downloader/pr;

    invoke-direct {v3, p0, v2, p1}, Lcom/shabakaty/downloader/pr;-><init>(Lcom/shabakaty/downloader/s01$a;Lcom/shabakaty/downloader/s01;Ljava/lang/Exception;)V

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/sy4;->L(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s01$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/s01$a$a;

    .line 2
    iget-object v2, v1, Lcom/shabakaty/downloader/s01$a$a;->b:Lcom/shabakaty/downloader/s01;

    .line 3
    iget-object v1, v1, Lcom/shabakaty/downloader/s01$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lcom/shabakaty/downloader/q01;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v2, v4}, Lcom/shabakaty/downloader/q01;-><init>(Lcom/shabakaty/downloader/s01$a;Lcom/shabakaty/downloader/s01;I)V

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/sy4;->L(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g(ILcom/shabakaty/downloader/uq2$a;)Lcom/shabakaty/downloader/s01$a;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/s01$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/s01$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, v1, p1, p2}, Lcom/shabakaty/downloader/s01$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/shabakaty/downloader/uq2$a;)V

    return-object v0
.end method
