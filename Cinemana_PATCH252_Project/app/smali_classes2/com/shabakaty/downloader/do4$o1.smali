.class public final enum Lcom/shabakaty/downloader/do4$o1;
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
    sget-object v0, Lcom/shabakaty/downloader/do4;->r:Lcom/shabakaty/downloader/do4;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/ez;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/co4;->h(Lcom/shabakaty/downloader/do4;)V

    const-string p2, "</"

    .line 3
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/co4;->f(Ljava/lang/String;)V

    .line 4
    iput-object v0, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/shabakaty/downloader/ez;->q()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/co4;->c(Z)Lcom/shabakaty/downloader/zn4$i;

    .line 7
    sget-object p2, Lcom/shabakaty/downloader/do4;->A:Lcom/shabakaty/downloader/do4;

    .line 8
    iput-object p2, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_0

    :cond_1
    const/16 v1, 0x3e

    .line 9
    invoke-virtual {p2, v1}, Lcom/shabakaty/downloader/ez;->o(C)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 10
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/co4;->i(Lcom/shabakaty/downloader/do4;)V

    .line 11
    iget-object p2, p1, Lcom/shabakaty/downloader/co4;->a:Lcom/shabakaty/downloader/ez;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/ez;->a()V

    .line 12
    iput-object v0, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/co4;->i(Lcom/shabakaty/downloader/do4;)V

    .line 14
    sget-object p2, Lcom/shabakaty/downloader/do4;->h0:Lcom/shabakaty/downloader/do4;

    .line 15
    iget-object v0, p1, Lcom/shabakaty/downloader/co4;->a:Lcom/shabakaty/downloader/ez;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ez;->a()V

    .line 16
    iput-object p2, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    :goto_0
    return-void
.end method
