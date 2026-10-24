.class public final Lcom/shabakaty/downloader/tf;
.super Ljava/lang/Object;
.source "AutoClosingRoomOpenHelper.java"

# interfaces
.implements Lcom/shabakaty/downloader/zh4;
.implements Lcom/shabakaty/downloader/yp0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/tf$a;
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/zh4;

.field public final s:Lcom/shabakaty/downloader/tf$a;


# virtual methods
.method public a()Lcom/shabakaty/downloader/zh4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tf;->r:Lcom/shabakaty/downloader/zh4;

    return-object v0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    :try_start_0
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 2
    throw v0
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tf;->r:Lcom/shabakaty/downloader/zh4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/zh4;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWritableDatabase()Lcom/shabakaty/downloader/yh4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tf;->s:Lcom/shabakaty/downloader/tf$a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    throw v0
.end method

.method public setWriteAheadLoggingEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tf;->r:Lcom/shabakaty/downloader/zh4;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/zh4;->setWriteAheadLoggingEnabled(Z)V

    return-void
.end method
