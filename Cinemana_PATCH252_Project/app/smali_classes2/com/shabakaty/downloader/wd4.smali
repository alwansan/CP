.class public final Lcom/shabakaty/downloader/wd4;
.super Ljava/io/IOException;
.source "StreamResetException.kt"


# instance fields
.field public final r:Lcom/shabakaty/downloader/s41;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/s41;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stream was reset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/wd4;->r:Lcom/shabakaty/downloader/s41;

    return-void
.end method
