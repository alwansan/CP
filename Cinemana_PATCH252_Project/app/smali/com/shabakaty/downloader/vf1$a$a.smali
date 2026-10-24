.class public final Lcom/shabakaty/downloader/vf1$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "FlowableDelaySubscriptionOther.java"

# interfaces
.implements Lcom/shabakaty/downloader/wg1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/vf1$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lcom/shabakaty/downloader/lf4;",
        ">;",
        "Lcom/shabakaty/downloader/wg1<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/vf1$a;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vf1$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/vf1$a$a;->r:Lcom/shabakaty/downloader/vf1$a;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/lf4;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/pf4;->r:Lcom/shabakaty/downloader/pf4;

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/vf1$a$a;->r:Lcom/shabakaty/downloader/vf1$a;

    .line 4
    iget-object v1, v0, Lcom/shabakaty/downloader/vf1$a;->s:Lcom/shabakaty/downloader/wj3;

    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/wj3;->a(Lcom/shabakaty/downloader/ef4;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/lf4;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/pf4;->r:Lcom/shabakaty/downloader/pf4;

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/vf1$a$a;->r:Lcom/shabakaty/downloader/vf1$a;

    iget-object v0, v0, Lcom/shabakaty/downloader/vf1$a;->r:Lcom/shabakaty/downloader/ef4;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/ef4;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/shabakaty/downloader/xv3;->b(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public d(Lcom/shabakaty/downloader/lf4;)V
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/pf4;->D(Ljava/util/concurrent/atomic/AtomicReference;Lcom/shabakaty/downloader/lf4;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/lf4;->u(J)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/lf4;

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/pf4;->r:Lcom/shabakaty/downloader/pf4;

    if-eq p1, v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p1}, Lcom/shabakaty/downloader/lf4;->cancel()V

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/vf1$a$a;->r:Lcom/shabakaty/downloader/vf1$a;

    .line 6
    iget-object v0, p1, Lcom/shabakaty/downloader/vf1$a;->s:Lcom/shabakaty/downloader/wj3;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/wj3;->a(Lcom/shabakaty/downloader/ef4;)V

    :cond_0
    return-void
.end method
