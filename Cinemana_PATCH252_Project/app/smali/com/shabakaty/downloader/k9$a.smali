.class public final Lcom/shabakaty/downloader/k9$a;
.super Ljava/lang/Object;
.source "ApiServices.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/k9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static synthetic a(Lcom/shabakaty/downloader/k9;Ljava/lang/String;ILjava/lang/Object;)Lcom/shabakaty/downloader/f74;
    .locals 0

    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_0

    const-string p1, "cacheable-for-authorized, max-age=7200"

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-interface {p0, p1}, Lcom/shabakaty/downloader/k9;->D(Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object p0

    return-object p0
.end method
