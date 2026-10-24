.class public final Lcom/shabakaty/downloader/zt4;
.super Ljava/lang/Object;
.source "TypeSystemContext.kt"


# direct methods
.method public static final a(Lcom/shabakaty/downloader/xz4;)Lcom/shabakaty/downloader/ju4;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 2
    sget-object p0, Lcom/shabakaty/downloader/ju4;->t:Lcom/shabakaty/downloader/ju4;

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/shabakaty/downloader/rz2;

    invoke-direct {p0}, Lcom/shabakaty/downloader/rz2;-><init>()V

    throw p0

    .line 3
    :cond_1
    sget-object p0, Lcom/shabakaty/downloader/ju4;->s:Lcom/shabakaty/downloader/ju4;

    goto :goto_0

    .line 4
    :cond_2
    sget-object p0, Lcom/shabakaty/downloader/ju4;->u:Lcom/shabakaty/downloader/ju4;

    :goto_0
    return-object p0
.end method
