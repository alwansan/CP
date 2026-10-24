.class public final Lcom/shabakaty/downloader/ns3;
.super Lcom/shabakaty/downloader/w0;
.source "ResolvableFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/w0<",
        "TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/w0;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/w0;->i(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public j(Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/w0;->j(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
