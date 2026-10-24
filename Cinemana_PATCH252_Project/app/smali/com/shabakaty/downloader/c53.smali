.class public final Lcom/shabakaty/downloader/c53;
.super Lcom/shabakaty/downloader/t43;
.source "ObservableJust.java"

# interfaces
.implements Lcom/shabakaty/downloader/hx3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/t43<",
        "TT;>;",
        "Lcom/shabakaty/downloader/hx3<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final r:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/t43;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/c53;->r:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/c53;->r:Ljava/lang/Object;

    return-object v0
.end method

.method public j(Lcom/shabakaty/downloader/q53;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/q53<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/i53;

    iget-object v1, p0, Lcom/shabakaty/downloader/c53;->r:Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lcom/shabakaty/downloader/i53;-><init>(Lcom/shabakaty/downloader/q53;Ljava/lang/Object;)V

    .line 2
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/q53;->c(Lcom/shabakaty/downloader/mu0;)V

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/i53;->run()V

    return-void
.end method
