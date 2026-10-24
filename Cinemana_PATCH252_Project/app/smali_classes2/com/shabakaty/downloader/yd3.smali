.class public Lcom/shabakaty/downloader/yd3;
.super Lcom/shabakaty/downloader/ce0;
.source "PongFrame.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/rl1$a;->v:Lcom/shabakaty/downloader/rl1$a;

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/ce0;-><init>(Lcom/shabakaty/downloader/rl1$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/jc3;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/rl1$a;->v:Lcom/shabakaty/downloader/rl1$a;

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/ce0;-><init>(Lcom/shabakaty/downloader/rl1$a;)V

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/sl1;->c:Ljava/nio/ByteBuffer;

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/sl1;->c:Ljava/nio/ByteBuffer;

    return-void
.end method
