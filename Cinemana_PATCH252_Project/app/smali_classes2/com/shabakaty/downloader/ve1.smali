.class public final Lcom/shabakaty/downloader/ve1;
.super Lcom/shabakaty/downloader/my3;
.source "FlowCoroutine.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/my3<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/me0;",
            "Lcom/shabakaty/downloader/ud0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/my3;-><init>(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public I(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/oz;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/l92;->E(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
