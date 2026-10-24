.class public final Lcom/shabakaty/downloader/d80;
.super Lcom/shabakaty/downloader/q70;
.source "CompletableSubscribeOn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/d80$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/c80;

.field public final b:Lcom/shabakaty/downloader/wx3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/c80;Lcom/shabakaty/downloader/wx3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/q70;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/d80;->a:Lcom/shabakaty/downloader/c80;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/d80;->b:Lcom/shabakaty/downloader/wx3;

    return-void
.end method


# virtual methods
.method public f(Lcom/shabakaty/downloader/a80;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/d80$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/d80;->a:Lcom/shabakaty/downloader/c80;

    invoke-direct {v0, p1, v1}, Lcom/shabakaty/downloader/d80$a;-><init>(Lcom/shabakaty/downloader/a80;Lcom/shabakaty/downloader/c80;)V

    .line 2
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/a80;->c(Lcom/shabakaty/downloader/mu0;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/d80;->b:Lcom/shabakaty/downloader/wx3;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/wx3;->b(Ljava/lang/Runnable;)Lcom/shabakaty/downloader/mu0;

    move-result-object p1

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/d80$a;->s:Lcom/shabakaty/downloader/v04;

    .line 5
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/pu0;->u(Ljava/util/concurrent/atomic/AtomicReference;Lcom/shabakaty/downloader/mu0;)Z

    return-void
.end method
