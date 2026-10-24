.class public final enum Lcom/shabakaty/downloader/do4$j0;
.super Lcom/shabakaty/downloader/do4;
.source "TokeniserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/do4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/shabakaty/downloader/do4;-><init>(Ljava/lang/String;ILcom/shabakaty/downloader/do4$k;)V

    return-void
.end method


# virtual methods
.method public D(Lcom/shabakaty/downloader/co4;Lcom/shabakaty/downloader/ez;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/do4;->r:Lcom/shabakaty/downloader/do4;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/ez;->d()C

    move-result v1

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_1

    const v2, 0xffff

    if-eq v1, v2, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/co4;->i(Lcom/shabakaty/downloader/do4;)V

    .line 3
    invoke-virtual {p2}, Lcom/shabakaty/downloader/ez;->t()V

    .line 4
    sget-object p2, Lcom/shabakaty/downloader/do4;->Y:Lcom/shabakaty/downloader/do4;

    .line 5
    iput-object p2, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/co4;->h(Lcom/shabakaty/downloader/do4;)V

    .line 7
    iput-object v0, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_0

    .line 8
    :cond_1
    iget-object p2, p1, Lcom/shabakaty/downloader/co4;->i:Lcom/shabakaty/downloader/zn4$i;

    const/4 v1, 0x1

    iput-boolean v1, p2, Lcom/shabakaty/downloader/zn4$i;->i:Z

    .line 9
    invoke-virtual {p1}, Lcom/shabakaty/downloader/co4;->g()V

    .line 10
    iput-object v0, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    :goto_0
    return-void
.end method
