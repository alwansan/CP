.class public final Lcom/shabakaty/downloader/yj3;
.super Ljava/lang/Object;
.source "PushObserver.kt"

# interfaces
.implements Lcom/shabakaty/downloader/zj3;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ps1;",
            ">;)Z"
        }
    .end annotation

    const-string p1, "requestHeaders"

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public b(ILjava/util/List;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ps1;",
            ">;Z)Z"
        }
    .end annotation

    const-string p1, "responseHeaders"

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public c(ILcom/shabakaty/downloader/s41;)V
    .locals 0

    const-string p1, "errorCode"

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public d(ILcom/shabakaty/downloader/eo;IZ)Z
    .locals 0

    const-string p1, "source"

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-long p3, p3

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/zn;

    invoke-virtual {p2, p3, p4}, Lcom/shabakaty/downloader/zn;->skip(J)V

    const/4 p1, 0x1

    return p1
.end method
