.class public final Lcom/shabakaty/downloader/x75;
.super Ljava/lang/Object;
.source "WorkProgressDao_Impl.java"

# interfaces
.implements Lcom/shabakaty/downloader/w75;


# instance fields
.field public final a:Lcom/shabakaty/downloader/vt3;

.field public final b:Lcom/shabakaty/downloader/f54;

.field public final c:Lcom/shabakaty/downloader/f54;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vt3;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/x75;->a:Lcom/shabakaty/downloader/vt3;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/x75$a;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/x75$a;-><init>(Lcom/shabakaty/downloader/x75;Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/x75;->b:Lcom/shabakaty/downloader/f54;

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/x75$b;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/x75$b;-><init>(Lcom/shabakaty/downloader/x75;Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/x75;->c:Lcom/shabakaty/downloader/f54;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/x75;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->b()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/x75;->b:Lcom/shabakaty/downloader/f54;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/f54;->a()Lcom/shabakaty/downloader/ci4;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 3
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, v1, p1}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/x75;->a:Lcom/shabakaty/downloader/vt3;

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 7
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->i()V

    .line 8
    :try_start_0
    invoke-interface {v0}, Lcom/shabakaty/downloader/ci4;->P()I

    .line 9
    iget-object p1, p0, Lcom/shabakaty/downloader/x75;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object p1, p0, Lcom/shabakaty/downloader/x75;->a:Lcom/shabakaty/downloader/vt3;

    .line 11
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 12
    iget-object p1, p0, Lcom/shabakaty/downloader/x75;->b:Lcom/shabakaty/downloader/f54;

    .line 13
    iget-object v1, p1, Lcom/shabakaty/downloader/f54;->c:Lcom/shabakaty/downloader/ci4;

    if-ne v0, v1, :cond_1

    .line 14
    iget-object p1, p1, Lcom/shabakaty/downloader/f54;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 15
    iget-object v1, p0, Lcom/shabakaty/downloader/x75;->a:Lcom/shabakaty/downloader/vt3;

    .line 16
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 17
    iget-object v1, p0, Lcom/shabakaty/downloader/x75;->b:Lcom/shabakaty/downloader/f54;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/f54;->d(Lcom/shabakaty/downloader/ci4;)V

    .line 18
    throw p1
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/x75;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->b()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/x75;->c:Lcom/shabakaty/downloader/f54;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/f54;->a()Lcom/shabakaty/downloader/ci4;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/x75;->a:Lcom/shabakaty/downloader/vt3;

    .line 4
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 5
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->i()V

    .line 6
    :try_start_0
    invoke-interface {v0}, Lcom/shabakaty/downloader/ci4;->P()I

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/x75;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/x75;->a:Lcom/shabakaty/downloader/vt3;

    .line 9
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 10
    iget-object v1, p0, Lcom/shabakaty/downloader/x75;->c:Lcom/shabakaty/downloader/f54;

    .line 11
    iget-object v2, v1, Lcom/shabakaty/downloader/f54;->c:Lcom/shabakaty/downloader/ci4;

    if-ne v0, v2, :cond_0

    .line 12
    iget-object v0, v1, Lcom/shabakaty/downloader/f54;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 13
    iget-object v2, p0, Lcom/shabakaty/downloader/x75;->a:Lcom/shabakaty/downloader/vt3;

    .line 14
    invoke-virtual {v2}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 15
    iget-object v2, p0, Lcom/shabakaty/downloader/x75;->c:Lcom/shabakaty/downloader/f54;

    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/f54;->d(Lcom/shabakaty/downloader/ci4;)V

    .line 16
    throw v1
.end method
