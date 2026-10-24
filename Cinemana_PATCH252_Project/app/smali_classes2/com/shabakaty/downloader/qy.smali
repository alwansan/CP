.class public Lcom/shabakaty/downloader/qy;
.super Lcom/shabakaty/downloader/u;
.source "ChannelCoroutine.kt"

# interfaces
.implements Lcom/shabakaty/downloader/py;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/u<",
        "Lcom/shabakaty/downloader/qv4;",
        ">;",
        "Lcom/shabakaty/downloader/py<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final u:Lcom/shabakaty/downloader/py;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/py<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/py;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/me0;",
            "Lcom/shabakaty/downloader/py<",
            "TE;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/shabakaty/downloader/u;-><init>(Lcom/shabakaty/downloader/me0;Z)V

    iput-object p2, p0, Lcom/shabakaty/downloader/qy;->u:Lcom/shabakaty/downloader/py;

    return-void
.end method


# virtual methods
.method public F(Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, p1, v0, v1, v0}, Lcom/shabakaty/downloader/l92;->j0(Lcom/shabakaty/downloader/l92;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/qy;->u:Lcom/shabakaty/downloader/py;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/yn3;->b(Ljava/util/concurrent/CancellationException;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/l92;->E(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/l92;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    new-instance p1, Lcom/shabakaty/downloader/f92;

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/l92;->H()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-direct {p1, v1, v0, p0}, Lcom/shabakaty/downloader/f92;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/shabakaty/downloader/e92;)V

    :goto_0
    const/4 v1, 0x1

    .line 5
    invoke-static {p0, p1, v0, v1, v0}, Lcom/shabakaty/downloader/l92;->j0(Lcom/shabakaty/downloader/l92;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/qy;->u:Lcom/shabakaty/downloader/py;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/yn3;->b(Ljava/util/concurrent/CancellationException;)V

    .line 7
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/l92;->E(Ljava/lang/Object;)Z

    return-void
.end method

.method public f(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/qy;->u:Lcom/shabakaty/downloader/py;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/h04;->f(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Lcom/shabakaty/downloader/xy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/xy<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/qy;->u:Lcom/shabakaty/downloader/py;

    invoke-interface {v0}, Lcom/shabakaty/downloader/yn3;->iterator()Lcom/shabakaty/downloader/xy;

    move-result-object v0

    return-object v0
.end method

.method public m(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/pz4<",
            "+TE;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qy;->u:Lcom/shabakaty/downloader/py;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/yn3;->m(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public s(Ljava/lang/Throwable;)Z
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/qy;->u:Lcom/shabakaty/downloader/py;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/h04;->s(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public y(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qy;->u:Lcom/shabakaty/downloader/py;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/h04;->y(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
