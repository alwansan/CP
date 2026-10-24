.class public Lcom/shabakaty/downloader/xl4;
.super Lcom/shabakaty/downloader/nl0;
.source "TextFrame.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/rl1$a;->s:Lcom/shabakaty/downloader/rl1$a;

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/nl0;-><init>(Lcom/shabakaty/downloader/rl1$a;)V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sl1;->c:Ljava/nio/ByteBuffer;

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/gz;->a(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/l32;

    const/16 v1, 0x3ef

    const-string v2, "Received text is no valid utf8 string!"

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/l32;-><init>(ILjava/lang/String;)V

    throw v0
.end method
