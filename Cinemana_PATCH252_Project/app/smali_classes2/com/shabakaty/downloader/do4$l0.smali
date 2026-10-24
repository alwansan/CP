.class public final enum Lcom/shabakaty/downloader/do4$l0;
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
    .locals 1

    const-string v0, "--"

    .line 1
    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/ez;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p2, p1, Lcom/shabakaty/downloader/co4;->n:Lcom/shabakaty/downloader/zn4$d;

    .line 3
    iget-object v0, p2, Lcom/shabakaty/downloader/zn4$d;->b:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/shabakaty/downloader/zn4;->h(Ljava/lang/StringBuilder;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p2, Lcom/shabakaty/downloader/zn4$d;->c:Z

    .line 5
    sget-object p2, Lcom/shabakaty/downloader/do4;->j0:Lcom/shabakaty/downloader/do4;

    .line 6
    iput-object p2, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_0

    :cond_0
    const-string v0, "DOCTYPE"

    .line 7
    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/ez;->n(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    sget-object p2, Lcom/shabakaty/downloader/do4;->p0:Lcom/shabakaty/downloader/do4;

    .line 9
    iput-object p2, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_0

    :cond_1
    const-string v0, "[CDATA["

    .line 10
    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/ez;->m(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 11
    iget-object p2, p1, Lcom/shabakaty/downloader/co4;->h:Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/shabakaty/downloader/zn4;->h(Ljava/lang/StringBuilder;)V

    .line 12
    sget-object p2, Lcom/shabakaty/downloader/do4;->F0:Lcom/shabakaty/downloader/do4;

    .line 13
    iput-object p2, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/co4;->i(Lcom/shabakaty/downloader/do4;)V

    .line 15
    sget-object p2, Lcom/shabakaty/downloader/do4;->h0:Lcom/shabakaty/downloader/do4;

    .line 16
    iget-object v0, p1, Lcom/shabakaty/downloader/co4;->a:Lcom/shabakaty/downloader/ez;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ez;->a()V

    .line 17
    iput-object p2, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    :goto_0
    return-void
.end method
