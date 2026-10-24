.class public abstract Lcom/shabakaty/downloader/yz2;
.super Lcom/shabakaty/downloader/z83;
.source "OverridingStrategy.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/z83;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/shabakaty/downloader/tq;Lcom/shabakaty/downloader/tq;)V
    .locals 1

    const-string v0, "first"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "second"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/yz2;->d(Lcom/shabakaty/downloader/tq;Lcom/shabakaty/downloader/tq;)V

    return-void
.end method

.method public abstract d(Lcom/shabakaty/downloader/tq;Lcom/shabakaty/downloader/tq;)V
.end method
