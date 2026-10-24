.class public final Lcom/shabakaty/downloader/cx3;
.super Ljava/io/IOException;
.source "SampleQueueMappingException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x3c

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "Unable to bind a sample queue to TrackGroup with mime type "

    const-string v2, "."

    invoke-static {v0, v1, p1, v2}, Lcom/shabakaty/downloader/bc0;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method
