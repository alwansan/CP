.class public final enum Lcom/shabakaty/downloader/do4$e1;
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

    move-result p2

    const/16 v1, 0x9

    if-eq p2, v1, :cond_4

    const/16 v1, 0xa

    if-eq p2, v1, :cond_4

    const/16 v1, 0xc

    if-eq p2, v1, :cond_4

    const/16 v1, 0xd

    if-eq p2, v1, :cond_4

    const/16 v1, 0x20

    if-eq p2, v1, :cond_4

    const/16 v1, 0x22

    if-eq p2, v1, :cond_3

    const/16 v1, 0x27

    if-eq p2, v1, :cond_2

    const/16 v1, 0x3e

    const/4 v2, 0x1

    if-eq p2, v1, :cond_1

    const v1, 0xffff

    if-eq p2, v1, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/co4;->i(Lcom/shabakaty/downloader/do4;)V

    .line 3
    iget-object p2, p1, Lcom/shabakaty/downloader/co4;->m:Lcom/shabakaty/downloader/zn4$e;

    iput-boolean v2, p2, Lcom/shabakaty/downloader/zn4$e;->f:Z

    .line 4
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/co4;->e(Lcom/shabakaty/downloader/zn4;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/co4;->h(Lcom/shabakaty/downloader/do4;)V

    .line 6
    iget-object p2, p1, Lcom/shabakaty/downloader/co4;->m:Lcom/shabakaty/downloader/zn4$e;

    iput-boolean v2, p2, Lcom/shabakaty/downloader/zn4$e;->f:Z

    .line 7
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/co4;->e(Lcom/shabakaty/downloader/zn4;)V

    .line 8
    iput-object v0, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/co4;->i(Lcom/shabakaty/downloader/do4;)V

    .line 10
    iget-object p2, p1, Lcom/shabakaty/downloader/co4;->m:Lcom/shabakaty/downloader/zn4$e;

    iput-boolean v2, p2, Lcom/shabakaty/downloader/zn4$e;->f:Z

    .line 11
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/co4;->e(Lcom/shabakaty/downloader/zn4;)V

    .line 12
    iput-object v0, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/co4;->i(Lcom/shabakaty/downloader/do4;)V

    .line 14
    sget-object p2, Lcom/shabakaty/downloader/do4;->C0:Lcom/shabakaty/downloader/do4;

    .line 15
    iput-object p2, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/co4;->i(Lcom/shabakaty/downloader/do4;)V

    .line 17
    sget-object p2, Lcom/shabakaty/downloader/do4;->B0:Lcom/shabakaty/downloader/do4;

    .line 18
    iput-object p2, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_0

    .line 19
    :cond_4
    sget-object p2, Lcom/shabakaty/downloader/do4;->A0:Lcom/shabakaty/downloader/do4;

    .line 20
    iput-object p2, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    :goto_0
    return-void
.end method
