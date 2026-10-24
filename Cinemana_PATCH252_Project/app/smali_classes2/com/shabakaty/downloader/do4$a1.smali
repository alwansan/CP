.class public final enum Lcom/shabakaty/downloader/do4$a1;
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

    if-eqz p2, :cond_3

    const/16 v1, 0x27

    if-eq p2, v1, :cond_2

    const/16 v1, 0x3e

    const/4 v2, 0x1

    if-eq p2, v1, :cond_1

    const v1, 0xffff

    if-eq p2, v1, :cond_0

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/co4;->m:Lcom/shabakaty/downloader/zn4$e;

    iget-object p1, p1, Lcom/shabakaty/downloader/zn4$e;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/co4;->h(Lcom/shabakaty/downloader/do4;)V

    .line 4
    iget-object p2, p1, Lcom/shabakaty/downloader/co4;->m:Lcom/shabakaty/downloader/zn4$e;

    iput-boolean v2, p2, Lcom/shabakaty/downloader/zn4$e;->f:Z

    .line 5
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/co4;->e(Lcom/shabakaty/downloader/zn4;)V

    .line 6
    iput-object v0, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/co4;->i(Lcom/shabakaty/downloader/do4;)V

    .line 8
    iget-object p2, p1, Lcom/shabakaty/downloader/co4;->m:Lcom/shabakaty/downloader/zn4$e;

    iput-boolean v2, p2, Lcom/shabakaty/downloader/zn4$e;->f:Z

    .line 9
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/co4;->e(Lcom/shabakaty/downloader/zn4;)V

    .line 10
    iput-object v0, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_0

    .line 11
    :cond_2
    sget-object p2, Lcom/shabakaty/downloader/do4;->x0:Lcom/shabakaty/downloader/do4;

    .line 12
    iput-object p2, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/co4;->i(Lcom/shabakaty/downloader/do4;)V

    .line 14
    iget-object p1, p1, Lcom/shabakaty/downloader/co4;->m:Lcom/shabakaty/downloader/zn4$e;

    iget-object p1, p1, Lcom/shabakaty/downloader/zn4$e;->d:Ljava/lang/StringBuilder;

    const p2, 0xfffd

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method
