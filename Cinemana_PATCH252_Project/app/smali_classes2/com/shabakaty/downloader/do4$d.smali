.class public final enum Lcom/shabakaty/downloader/do4$d;
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
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/shabakaty/downloader/ez;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/shabakaty/downloader/ez;->e()Ljava/lang/String;

    move-result-object p2

    .line 3
    iget-object v0, p1, Lcom/shabakaty/downloader/co4;->i:Lcom/shabakaty/downloader/zn4$i;

    invoke-virtual {v0, p2}, Lcom/shabakaty/downloader/zn4$i;->n(Ljava/lang/String;)V

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/co4;->h:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/shabakaty/downloader/ez;->d()C

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    const/16 v1, 0xc

    if-eq v0, v1, :cond_5

    const/16 v1, 0xd

    if-eq v0, v1, :cond_5

    const/16 v1, 0x20

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_1

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/do4$d;->E(Lcom/shabakaty/downloader/co4;Lcom/shabakaty/downloader/ez;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/co4;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/shabakaty/downloader/co4;->g()V

    .line 9
    sget-object p2, Lcom/shabakaty/downloader/do4;->r:Lcom/shabakaty/downloader/do4;

    .line 10
    iput-object p2, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/do4$d;->E(Lcom/shabakaty/downloader/co4;Lcom/shabakaty/downloader/ez;)V

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/co4;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    sget-object p2, Lcom/shabakaty/downloader/do4;->g0:Lcom/shabakaty/downloader/do4;

    .line 14
    iput-object p2, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_0

    .line 15
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/do4$d;->E(Lcom/shabakaty/downloader/co4;Lcom/shabakaty/downloader/ez;)V

    goto :goto_0

    .line 16
    :cond_5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/co4;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 17
    sget-object p2, Lcom/shabakaty/downloader/do4;->Y:Lcom/shabakaty/downloader/do4;

    .line 18
    iput-object p2, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_0

    .line 19
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/do4$d;->E(Lcom/shabakaty/downloader/co4;Lcom/shabakaty/downloader/ez;)V

    :goto_0
    return-void
.end method

.method public final E(Lcom/shabakaty/downloader/co4;Lcom/shabakaty/downloader/ez;)V
    .locals 2

    const-string v0, "</"

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/shabakaty/downloader/co4;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/co4;->f(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Lcom/shabakaty/downloader/ez;->t()V

    .line 3
    sget-object p2, Lcom/shabakaty/downloader/do4;->t:Lcom/shabakaty/downloader/do4;

    .line 4
    iput-object p2, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    return-void
.end method
