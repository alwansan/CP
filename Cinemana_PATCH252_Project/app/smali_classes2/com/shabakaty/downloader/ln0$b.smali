.class public final Lcom/shabakaty/downloader/ln0$b;
.super Ljava/lang/Object;
.source "DefaultCallAdapterFactory.java"

# interfaces
.implements Lcom/shabakaty/downloader/nq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ln0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/nq<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final r:Ljava/util/concurrent/Executor;

.field public final s:Lcom/shabakaty/downloader/nq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/nq<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/nq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/shabakaty/downloader/nq<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ln0$b;->r:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/ln0$b;->s:Lcom/shabakaty/downloader/nq;

    return-void
.end method


# virtual methods
.method public G0()Lcom/shabakaty/downloader/nq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/nq<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ln0$b;

    iget-object v1, p0, Lcom/shabakaty/downloader/ln0$b;->r:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/shabakaty/downloader/ln0$b;->s:Lcom/shabakaty/downloader/nq;

    invoke-interface {v2}, Lcom/shabakaty/downloader/nq;->G0()Lcom/shabakaty/downloader/nq;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/ln0$b;-><init>(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/nq;)V

    return-object v0
.end method

.method public c0(Lcom/shabakaty/downloader/xq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/xq<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ln0$b;->s:Lcom/shabakaty/downloader/nq;

    new-instance v1, Lcom/shabakaty/downloader/ln0$b$a;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/ln0$b$a;-><init>(Lcom/shabakaty/downloader/ln0$b;Lcom/shabakaty/downloader/xq;)V

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/nq;->c0(Lcom/shabakaty/downloader/xq;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ln0$b;->s:Lcom/shabakaty/downloader/nq;

    invoke-interface {v0}, Lcom/shabakaty/downloader/nq;->cancel()V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ln0$b;->G0()Lcom/shabakaty/downloader/nq;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/shabakaty/downloader/vr3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ln0$b;->s:Lcom/shabakaty/downloader/nq;

    invoke-interface {v0}, Lcom/shabakaty/downloader/nq;->d()Lcom/shabakaty/downloader/vr3;

    move-result-object v0

    return-object v0
.end method

.method public execute()Lcom/shabakaty/downloader/xs3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/xs3<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ln0$b;->s:Lcom/shabakaty/downloader/nq;

    invoke-interface {v0}, Lcom/shabakaty/downloader/nq;->execute()Lcom/shabakaty/downloader/xs3;

    move-result-object v0

    return-object v0
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ln0$b;->s:Lcom/shabakaty/downloader/nq;

    invoke-interface {v0}, Lcom/shabakaty/downloader/nq;->p()Z

    move-result v0

    return v0
.end method
