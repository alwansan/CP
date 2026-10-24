.class public final Lcom/shabakaty/downloader/fw1$a;
.super Lcom/shabakaty/downloader/fw1$c;
.source "HttpDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/fw1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/IOException;Lcom/shabakaty/downloader/yl0;)V
    .locals 6

    const-string v1, "Cleartext HTTP traffic not permitted. See https://exoplayer.dev/issues/cleartext-not-permitted"

    const/16 v4, 0x7d7

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/fw1$c;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/shabakaty/downloader/yl0;II)V

    return-void
.end method
