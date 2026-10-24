.class public Lcom/shabakaty/downloader/qb4;
.super Lcom/shabakaty/downloader/u;
.source "Builders.common.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/u<",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/me0;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/u;-><init>(Lcom/shabakaty/downloader/me0;Z)V

    return-void
.end method


# virtual methods
.method public U(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/u;->s:Lcom/shabakaty/downloader/me0;

    .line 2
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/md0;->y(Lcom/shabakaty/downloader/me0;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    return p1
.end method
