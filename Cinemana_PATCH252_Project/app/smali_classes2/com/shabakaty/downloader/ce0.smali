.class public abstract Lcom/shabakaty/downloader/ce0;
.super Lcom/shabakaty/downloader/sl1;
.source "ControlFrame.java"


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/rl1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/sl1;-><init>(Lcom/shabakaty/downloader/rl1$a;)V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/sl1;->a:Z

    if-eqz v0, :cond_3

    .line 2
    iget-boolean v0, p0, Lcom/shabakaty/downloader/sl1;->e:Z

    if-nez v0, :cond_2

    .line 3
    iget-boolean v0, p0, Lcom/shabakaty/downloader/sl1;->f:Z

    if-nez v0, :cond_1

    .line 4
    iget-boolean v0, p0, Lcom/shabakaty/downloader/sl1;->g:Z

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/m32;

    const-string v1, "Control frame cant have rsv3==true set"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/m32;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    new-instance v0, Lcom/shabakaty/downloader/m32;

    const-string v1, "Control frame cant have rsv2==true set"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/m32;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_2
    new-instance v0, Lcom/shabakaty/downloader/m32;

    const-string v1, "Control frame cant have rsv1==true set"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/m32;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_3
    new-instance v0, Lcom/shabakaty/downloader/m32;

    const-string v1, "Control frame cant have fin==false set"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/m32;-><init>(Ljava/lang/String;)V

    throw v0
.end method
