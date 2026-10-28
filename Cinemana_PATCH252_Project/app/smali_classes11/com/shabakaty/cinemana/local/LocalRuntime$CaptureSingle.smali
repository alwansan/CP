.class final Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle;
.super Lcom/shabakaty/downloader/f74;
.source "LocalRuntime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/local/LocalRuntime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CaptureSingle"
.end annotation


# instance fields
.field final id:Ljava/lang/String;

.field final upstream:Lcom/shabakaty/downloader/f74;


# direct methods
.method constructor <init>(Lcom/shabakaty/downloader/f74;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/shabakaty/downloader/f74;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle;->upstream:Lcom/shabakaty/downloader/f74;

    iput-object p2, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public l(Lcom/shabakaty/downloader/y74;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "detail_begin id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle;->id:Ljava/lang/String;

    invoke-static {v3}, Lcom/shabakaty/cinemana/local/LocalRuntime;->safeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle;->upstream:Lcom/shabakaty/downloader/f74;

    new-instance v3, Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle$1;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle$1;-><init>(Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle;Lcom/shabakaty/downloader/y74;J)V

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/f74;->a(Lcom/shabakaty/downloader/y74;)V

    return-void
.end method
