.class public final enum Lcom/shabakaty/downloader/do4$m;
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

    const/16 v0, 0x2d

    .line 1
    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/ez;->o(C)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/co4;->d(C)V

    .line 3
    sget-object p2, Lcom/shabakaty/downloader/do4;->O:Lcom/shabakaty/downloader/do4;

    .line 4
    iget-object v0, p1, Lcom/shabakaty/downloader/co4;->a:Lcom/shabakaty/downloader/ez;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ez;->a()V

    .line 5
    iput-object p2, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_0

    .line 6
    :cond_0
    sget-object p2, Lcom/shabakaty/downloader/do4;->w:Lcom/shabakaty/downloader/do4;

    .line 7
    iput-object p2, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    :goto_0
    return-void
.end method
