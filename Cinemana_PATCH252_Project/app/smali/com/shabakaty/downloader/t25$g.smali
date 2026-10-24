.class public Lcom/shabakaty/downloader/t25$g;
.super Ljava/lang/Object;
.source "VideoStatusDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/t25;->b(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/t25;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/t25;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/t25$g;->r:Lcom/shabakaty/downloader/t25;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/t25$g;->r:Lcom/shabakaty/downloader/t25;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/t25;->c:Lcom/shabakaty/downloader/f54;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/f54;->a()Lcom/shabakaty/downloader/ci4;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/t25$g;->r:Lcom/shabakaty/downloader/t25;

    .line 5
    iget-object v1, v1, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    .line 6
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 7
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->i()V

    .line 8
    :try_start_0
    invoke-interface {v0}, Lcom/shabakaty/downloader/ci4;->P()I

    .line 9
    iget-object v1, p0, Lcom/shabakaty/downloader/t25$g;->r:Lcom/shabakaty/downloader/t25;

    .line 10
    iget-object v1, v1, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    .line 11
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->n()V

    .line 12
    sget-object v1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iget-object v2, p0, Lcom/shabakaty/downloader/t25$g;->r:Lcom/shabakaty/downloader/t25;

    .line 14
    iget-object v2, v2, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    .line 15
    invoke-virtual {v2}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 16
    iget-object v2, p0, Lcom/shabakaty/downloader/t25$g;->r:Lcom/shabakaty/downloader/t25;

    .line 17
    iget-object v2, v2, Lcom/shabakaty/downloader/t25;->c:Lcom/shabakaty/downloader/f54;

    .line 18
    iget-object v3, v2, Lcom/shabakaty/downloader/f54;->c:Lcom/shabakaty/downloader/ci4;

    if-ne v0, v3, :cond_0

    .line 19
    iget-object v0, v2, Lcom/shabakaty/downloader/f54;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    .line 20
    iget-object v2, p0, Lcom/shabakaty/downloader/t25$g;->r:Lcom/shabakaty/downloader/t25;

    .line 21
    iget-object v2, v2, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    .line 22
    invoke-virtual {v2}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 23
    iget-object v2, p0, Lcom/shabakaty/downloader/t25$g;->r:Lcom/shabakaty/downloader/t25;

    .line 24
    iget-object v2, v2, Lcom/shabakaty/downloader/t25;->c:Lcom/shabakaty/downloader/f54;

    .line 25
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/f54;->d(Lcom/shabakaty/downloader/ci4;)V

    .line 26
    throw v1
.end method
