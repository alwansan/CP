.class public final enum Lcom/shabakaty/downloader/do4$q0;
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
    .locals 4

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/do4;->r:Lcom/shabakaty/downloader/do4;

    sget-object v1, Lcom/shabakaty/downloader/do4;->l0:Lcom/shabakaty/downloader/do4;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/ez;->d()C

    move-result p2

    const-string v2, "--"

    if-eqz p2, :cond_4

    const/16 v3, 0x21

    if-eq p2, v3, :cond_3

    const/16 v3, 0x2d

    if-eq p2, v3, :cond_2

    const/16 v3, 0x3e

    if-eq p2, v3, :cond_1

    const v3, 0xffff

    if-eq p2, v3, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/co4;->i(Lcom/shabakaty/downloader/do4;)V

    .line 3
    iget-object v0, p1, Lcom/shabakaty/downloader/co4;->n:Lcom/shabakaty/downloader/zn4$d;

    iget-object v0, v0, Lcom/shabakaty/downloader/zn4$d;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    iput-object v1, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/co4;->h(Lcom/shabakaty/downloader/do4;)V

    .line 6
    iget-object p2, p1, Lcom/shabakaty/downloader/co4;->n:Lcom/shabakaty/downloader/zn4$d;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/co4;->e(Lcom/shabakaty/downloader/zn4;)V

    .line 7
    iput-object v0, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_0

    .line 8
    :cond_1
    iget-object p2, p1, Lcom/shabakaty/downloader/co4;->n:Lcom/shabakaty/downloader/zn4$d;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/co4;->e(Lcom/shabakaty/downloader/zn4;)V

    .line 9
    iput-object v0, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/co4;->i(Lcom/shabakaty/downloader/do4;)V

    .line 11
    iget-object p1, p1, Lcom/shabakaty/downloader/co4;->n:Lcom/shabakaty/downloader/zn4$d;

    iget-object p1, p1, Lcom/shabakaty/downloader/zn4$d;->b:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/co4;->i(Lcom/shabakaty/downloader/do4;)V

    .line 13
    sget-object p2, Lcom/shabakaty/downloader/do4;->o0:Lcom/shabakaty/downloader/do4;

    .line 14
    iput-object p2, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_0

    .line 15
    :cond_4
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/co4;->i(Lcom/shabakaty/downloader/do4;)V

    .line 16
    iget-object p2, p1, Lcom/shabakaty/downloader/co4;->n:Lcom/shabakaty/downloader/zn4$d;

    iget-object p2, p2, Lcom/shabakaty/downloader/zn4$d;->b:Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0xfffd

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    iput-object v1, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    :goto_0
    return-void
.end method
