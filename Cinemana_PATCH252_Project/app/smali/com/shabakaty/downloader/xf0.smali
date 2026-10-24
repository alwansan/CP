.class public final synthetic Lcom/shabakaty/downloader/xf0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/un;


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/zf0;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/zf0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/xf0;->a:Lcom/shabakaty/downloader/zf0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/shabakaty/downloader/xf0;->a:Lcom/shabakaty/downloader/zf0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/shabakaty/downloader/zf0;->c:J

    sub-long/2addr v1, v3

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/zf0;->f:Lcom/shabakaty/downloader/tf0;

    .line 3
    iget-object v3, v0, Lcom/shabakaty/downloader/tf0;->d:Lcom/shabakaty/downloader/hf0;

    new-instance v4, Lcom/shabakaty/downloader/uf0;

    invoke-direct {v4, v0, v1, v2, p1}, Lcom/shabakaty/downloader/uf0;-><init>(Lcom/shabakaty/downloader/tf0;JLjava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/hf0;->b(Ljava/util/concurrent/Callable;)Lcom/shabakaty/downloader/uk4;

    return-void
.end method
