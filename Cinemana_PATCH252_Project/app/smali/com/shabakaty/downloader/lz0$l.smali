.class public Lcom/shabakaty/downloader/lz0$l;
.super Ljava/lang/Object;
.source "DownloadsDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/lz0;->g(Ljava/util/List;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
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
.field public final synthetic r:Ljava/util/List;

.field public final synthetic s:Lcom/shabakaty/downloader/lz0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/lz0;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/lz0$l;->s:Lcom/shabakaty/downloader/lz0;

    iput-object p2, p0, Lcom/shabakaty/downloader/lz0$l;->r:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lz0$l;->s:Lcom/shabakaty/downloader/lz0;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/lz0;->a:Lcom/shabakaty/downloader/vt3;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->i()V

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/lz0$l;->s:Lcom/shabakaty/downloader/lz0;

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/lz0;->b:Lcom/shabakaty/downloader/x31;

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/lz0$l;->r:Ljava/util/List;

    .line 8
    invoke-virtual {v0}, Lcom/shabakaty/downloader/f54;->a()Lcom/shabakaty/downloader/ci4;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 10
    invoke-virtual {v0, v2, v3}, Lcom/shabakaty/downloader/x31;->e(Lcom/shabakaty/downloader/ci4;Ljava/lang/Object;)V

    .line 11
    invoke-interface {v2}, Lcom/shabakaty/downloader/ci4;->u1()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 12
    :cond_0
    :try_start_2
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/f54;->d(Lcom/shabakaty/downloader/ci4;)V

    .line 13
    iget-object v0, p0, Lcom/shabakaty/downloader/lz0$l;->s:Lcom/shabakaty/downloader/lz0;

    .line 14
    iget-object v0, v0, Lcom/shabakaty/downloader/lz0;->a:Lcom/shabakaty/downloader/vt3;

    .line 15
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->n()V

    .line 16
    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 17
    iget-object v1, p0, Lcom/shabakaty/downloader/lz0$l;->s:Lcom/shabakaty/downloader/lz0;

    .line 18
    iget-object v1, v1, Lcom/shabakaty/downloader/lz0;->a:Lcom/shabakaty/downloader/vt3;

    .line 19
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->j()V

    return-object v0

    :catchall_0
    move-exception v1

    .line 20
    :try_start_3
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/f54;->d(Lcom/shabakaty/downloader/ci4;)V

    .line 21
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 22
    iget-object v1, p0, Lcom/shabakaty/downloader/lz0$l;->s:Lcom/shabakaty/downloader/lz0;

    .line 23
    iget-object v1, v1, Lcom/shabakaty/downloader/lz0;->a:Lcom/shabakaty/downloader/vt3;

    .line 24
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 25
    throw v0
.end method
