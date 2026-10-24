.class public final Lcom/shabakaty/downloader/w43$a$a;
.super Ljava/lang/Object;
.source "ObservableDelaySubscriptionOther.java"

# interfaces
.implements Lcom/shabakaty/downloader/q53;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/w43$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/q53<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/w43$a;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/w43$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/w43$a$a;->r:Lcom/shabakaty/downloader/w43$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w43$a$a;->r:Lcom/shabakaty/downloader/w43$a;

    iget-object v0, v0, Lcom/shabakaty/downloader/w43$a;->s:Lcom/shabakaty/downloader/q53;

    invoke-interface {v0}, Lcom/shabakaty/downloader/q53;->a()V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w43$a$a;->r:Lcom/shabakaty/downloader/w43$a;

    iget-object v0, v0, Lcom/shabakaty/downloader/w43$a;->s:Lcom/shabakaty/downloader/q53;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/q53;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lcom/shabakaty/downloader/mu0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w43$a$a;->r:Lcom/shabakaty/downloader/w43$a;

    iget-object v0, v0, Lcom/shabakaty/downloader/w43$a;->r:Lcom/shabakaty/downloader/v04;

    .line 2
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/pu0;->D(Ljava/util/concurrent/atomic/AtomicReference;Lcom/shabakaty/downloader/mu0;)Z

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
    iget-object v0, p0, Lcom/shabakaty/downloader/w43$a$a;->r:Lcom/shabakaty/downloader/w43$a;

    iget-object v0, v0, Lcom/shabakaty/downloader/w43$a;->s:Lcom/shabakaty/downloader/q53;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/q53;->e(Ljava/lang/Object;)V

    return-void
.end method
