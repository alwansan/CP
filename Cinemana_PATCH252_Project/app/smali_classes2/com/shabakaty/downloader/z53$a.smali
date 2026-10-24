.class public Lcom/shabakaty/downloader/z53$a;
.super Ljava/lang/Object;
.source "OkHttpCall.java"

# interfaces
.implements Lcom/shabakaty/downloader/wq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/z53;->c0(Lcom/shabakaty/downloader/xq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/xq;

.field public final synthetic b:Lcom/shabakaty/downloader/z53;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/z53;Lcom/shabakaty/downloader/xq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/z53$a;->b:Lcom/shabakaty/downloader/z53;

    iput-object p2, p0, Lcom/shabakaty/downloader/z53$a;->a:Lcom/shabakaty/downloader/xq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/shabakaty/downloader/mq;Ljava/io/IOException;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/shabakaty/downloader/z53$a;->a:Lcom/shabakaty/downloader/xq;

    iget-object v0, p0, Lcom/shabakaty/downloader/z53$a;->b:Lcom/shabakaty/downloader/z53;

    invoke-interface {p1, v0, p2}, Lcom/shabakaty/downloader/xq;->a(Lcom/shabakaty/downloader/nq;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/bz4;->o(Ljava/lang/Throwable;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onResponse(Lcom/shabakaty/downloader/mq;Lcom/shabakaty/downloader/ws3;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/shabakaty/downloader/z53$a;->b:Lcom/shabakaty/downloader/z53;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/z53;->c(Lcom/shabakaty/downloader/ws3;)Lcom/shabakaty/downloader/xs3;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-object p2, p0, Lcom/shabakaty/downloader/z53$a;->a:Lcom/shabakaty/downloader/xq;

    iget-object v0, p0, Lcom/shabakaty/downloader/z53$a;->b:Lcom/shabakaty/downloader/z53;

    invoke-interface {p2, v0, p1}, Lcom/shabakaty/downloader/xq;->b(Lcom/shabakaty/downloader/nq;Lcom/shabakaty/downloader/xs3;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/bz4;->o(Ljava/lang/Throwable;)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void

    :catchall_1
    move-exception p1

    .line 5
    invoke-static {p1}, Lcom/shabakaty/downloader/bz4;->o(Ljava/lang/Throwable;)V

    .line 6
    :try_start_2
    iget-object p2, p0, Lcom/shabakaty/downloader/z53$a;->a:Lcom/shabakaty/downloader/xq;

    iget-object v0, p0, Lcom/shabakaty/downloader/z53$a;->b:Lcom/shabakaty/downloader/z53;

    invoke-interface {p2, v0, p1}, Lcom/shabakaty/downloader/xq;->a(Lcom/shabakaty/downloader/nq;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    .line 7
    invoke-static {p1}, Lcom/shabakaty/downloader/bz4;->o(Ljava/lang/Throwable;)V

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method
