.class public final Lcom/shabakaty/downloader/mm;
.super Ljava/lang/Object;
.source "Okio.kt"

# interfaces
.implements Lcom/shabakaty/downloader/l84;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b0(Lcom/shabakaty/downloader/zn;J)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1, p2, p3}, Lcom/shabakaty/downloader/zn;->skip(J)V

    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public l()Lcom/shabakaty/downloader/on4;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/on4;->d:Lcom/shabakaty/downloader/on4;

    return-object v0
.end method
