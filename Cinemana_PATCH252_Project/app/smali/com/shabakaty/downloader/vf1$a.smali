.class public final Lcom/shabakaty/downloader/vf1$a;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "FlowableDelaySubscriptionOther.java"

# interfaces
.implements Lcom/shabakaty/downloader/wg1;
.implements Lcom/shabakaty/downloader/lf4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/vf1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/vf1$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lcom/shabakaty/downloader/wg1<",
        "TT;>;",
        "Lcom/shabakaty/downloader/lf4;"
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/ef4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ef4<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final s:Lcom/shabakaty/downloader/wj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/wj3<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final t:Lcom/shabakaty/downloader/vf1$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/vf1$a<",
            "TT;>.a;"
        }
    .end annotation
.end field

.field public final u:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/shabakaty/downloader/lf4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ef4;Lcom/shabakaty/downloader/wj3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ef4<",
            "-TT;>;",
            "Lcom/shabakaty/downloader/wj3<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/vf1$a;->r:Lcom/shabakaty/downloader/ef4;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/vf1$a;->s:Lcom/shabakaty/downloader/wj3;

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/vf1$a$a;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/vf1$a$a;-><init>(Lcom/shabakaty/downloader/vf1$a;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/vf1$a;->t:Lcom/shabakaty/downloader/vf1$a$a;

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/vf1$a;->u:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vf1$a;->r:Lcom/shabakaty/downloader/ef4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/ef4;->a()V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vf1$a;->r:Lcom/shabakaty/downloader/ef4;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/ef4;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vf1$a;->t:Lcom/shabakaty/downloader/vf1$a$a;

    invoke-static {v0}, Lcom/shabakaty/downloader/pf4;->f(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/vf1$a;->u:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lcom/shabakaty/downloader/pf4;->f(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public d(Lcom/shabakaty/downloader/lf4;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vf1$a;->u:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p0, p1}, Lcom/shabakaty/downloader/pf4;->j(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;Lcom/shabakaty/downloader/lf4;)Z

    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vf1$a;->r:Lcom/shabakaty/downloader/ef4;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/ef4;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public u(J)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/pf4;->E(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/vf1$a;->u:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p0, p1, p2}, Lcom/shabakaty/downloader/pf4;->h(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;J)V

    :cond_0
    return-void
.end method
