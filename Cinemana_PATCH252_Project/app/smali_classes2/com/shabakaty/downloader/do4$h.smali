.class public final enum Lcom/shabakaty/downloader/do4$h;
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
    invoke-virtual {p2}, Lcom/shabakaty/downloader/ez;->d()C

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    const-string v0, "<"

    .line 2
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/co4;->f(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Lcom/shabakaty/downloader/ez;->t()V

    .line 4
    sget-object p2, Lcom/shabakaty/downloader/do4;->w:Lcom/shabakaty/downloader/do4;

    .line 5
    iput-object p2, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p1, Lcom/shabakaty/downloader/co4;->h:Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/shabakaty/downloader/zn4;->h(Ljava/lang/StringBuilder;)V

    .line 7
    sget-object p2, Lcom/shabakaty/downloader/do4;->I:Lcom/shabakaty/downloader/do4;

    .line 8
    iput-object p2, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_0

    :cond_1
    const-string p2, "<!"

    .line 9
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/co4;->f(Ljava/lang/String;)V

    .line 10
    sget-object p2, Lcom/shabakaty/downloader/do4;->K:Lcom/shabakaty/downloader/do4;

    .line 11
    iput-object p2, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    :goto_0
    return-void
.end method
