.class public abstract Lcom/shabakaty/downloader/w31;
.super Lcom/shabakaty/downloader/f54;
.source "EntityDeletionOrUpdateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/f54;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vt3;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/f54;-><init>(Lcom/shabakaty/downloader/vt3;)V

    return-void
.end method


# virtual methods
.method public abstract e(Lcom/shabakaty/downloader/ci4;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ci4;",
            "TT;)V"
        }
    .end annotation
.end method

.method public final f(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/f54;->a()Lcom/shabakaty/downloader/ci4;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/shabakaty/downloader/w31;->e(Lcom/shabakaty/downloader/ci4;Ljava/lang/Object;)V

    .line 3
    invoke-interface {v0}, Lcom/shabakaty/downloader/ci4;->P()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/f54;->c:Lcom/shabakaty/downloader/ci4;

    if-ne v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/f54;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return p1

    :catchall_0
    move-exception p1

    .line 6
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/f54;->d(Lcom/shabakaty/downloader/ci4;)V

    .line 7
    throw p1
.end method
