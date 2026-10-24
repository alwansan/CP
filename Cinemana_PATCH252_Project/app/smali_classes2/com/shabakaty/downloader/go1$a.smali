.class public final Lcom/shabakaty/downloader/go1$a;
.super Ljava/lang/Object;
.source "ChannelFlow.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/go1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static synthetic a(Lcom/shabakaty/downloader/go1;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/co;ILjava/lang/Object;)Lcom/shabakaty/downloader/te1;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 1
    sget-object p1, Lcom/shabakaty/downloader/s21;->r:Lcom/shabakaty/downloader/s21;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const/4 p2, -0x3

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 2
    sget-object p3, Lcom/shabakaty/downloader/co;->r:Lcom/shabakaty/downloader/co;

    :cond_2
    invoke-interface {p0, p1, p2, p3}, Lcom/shabakaty/downloader/go1;->a(Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/co;)Lcom/shabakaty/downloader/te1;

    move-result-object p0

    return-object p0
.end method
