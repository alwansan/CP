.class public final Lcom/shabakaty/downloader/me0$a;
.super Ljava/lang/Object;
.source "CoroutineContext.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/me0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/me0;)Lcom/shabakaty/downloader/me0;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/s21;->r:Lcom/shabakaty/downloader/s21;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/me0$a$a;->r:Lcom/shabakaty/downloader/me0$a$a;

    invoke-interface {p1, p0, v0}, Lcom/shabakaty/downloader/me0;->fold(Ljava/lang/Object;Lcom/shabakaty/downloader/hn1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/me0;

    :goto_0
    return-object p0
.end method
