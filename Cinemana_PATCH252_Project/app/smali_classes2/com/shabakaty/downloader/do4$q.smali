.class public final enum Lcom/shabakaty/downloader/do4$q;
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
    iget-object v0, p1, Lcom/shabakaty/downloader/co4;->h:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/shabakaty/downloader/zn4;->h(Ljava/lang/StringBuilder;)V

    .line 3
    iget-object v0, p1, Lcom/shabakaty/downloader/co4;->h:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/ez;->j()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/ez;->j()C

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/co4;->f(Ljava/lang/String;)V

    .line 5
    sget-object p2, Lcom/shabakaty/downloader/do4;->S:Lcom/shabakaty/downloader/do4;

    .line 6
    iget-object v0, p1, Lcom/shabakaty/downloader/co4;->a:Lcom/shabakaty/downloader/ez;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ez;->a()V

    .line 7
    iput-object p2, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_0

    :cond_0
    const/16 v0, 0x2f

    .line 8
    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/ez;->o(C)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 9
    iget-object p2, p1, Lcom/shabakaty/downloader/co4;->h:Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/shabakaty/downloader/zn4;->h(Ljava/lang/StringBuilder;)V

    .line 10
    sget-object p2, Lcom/shabakaty/downloader/do4;->Q:Lcom/shabakaty/downloader/do4;

    .line 11
    iget-object v0, p1, Lcom/shabakaty/downloader/co4;->a:Lcom/shabakaty/downloader/ez;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ez;->a()V

    .line 12
    iput-object p2, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_0

    :cond_1
    const/16 p2, 0x3c

    .line 13
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/co4;->d(C)V

    .line 14
    sget-object p2, Lcom/shabakaty/downloader/do4;->M:Lcom/shabakaty/downloader/do4;

    .line 15
    iput-object p2, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    :goto_0
    return-void
.end method
