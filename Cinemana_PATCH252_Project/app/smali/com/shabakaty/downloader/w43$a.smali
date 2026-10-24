.class public final Lcom/shabakaty/downloader/w43$a;
.super Ljava/lang/Object;
.source "ObservableDelaySubscriptionOther.java"

# interfaces
.implements Lcom/shabakaty/downloader/q53;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/w43;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/w43$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/q53<",
        "TU;>;"
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/v04;

.field public final s:Lcom/shabakaty/downloader/q53;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/q53<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public t:Z

.field public final synthetic u:Lcom/shabakaty/downloader/w43;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/w43;Lcom/shabakaty/downloader/v04;Lcom/shabakaty/downloader/q53;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/v04;",
            "Lcom/shabakaty/downloader/q53<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/w43$a;->u:Lcom/shabakaty/downloader/w43;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/w43$a;->r:Lcom/shabakaty/downloader/v04;

    .line 3
    iput-object p3, p0, Lcom/shabakaty/downloader/w43$a;->s:Lcom/shabakaty/downloader/q53;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/w43$a;->t:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/w43$a;->t:Z

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/w43$a;->u:Lcom/shabakaty/downloader/w43;

    iget-object v0, v0, Lcom/shabakaty/downloader/w43;->r:Lcom/shabakaty/downloader/l53;

    new-instance v1, Lcom/shabakaty/downloader/w43$a$a;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/w43$a$a;-><init>(Lcom/shabakaty/downloader/w43$a;)V

    check-cast v0, Lcom/shabakaty/downloader/t43;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/t43;->i(Lcom/shabakaty/downloader/q53;)V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/w43$a;->t:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/xv3;->b(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/w43$a;->t:Z

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/w43$a;->s:Lcom/shabakaty/downloader/q53;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/q53;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lcom/shabakaty/downloader/mu0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w43$a;->r:Lcom/shabakaty/downloader/v04;

    .line 2
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/pu0;->D(Ljava/util/concurrent/atomic/AtomicReference;Lcom/shabakaty/downloader/mu0;)Z

    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/w43$a;->a()V

    return-void
.end method
