.class public final Lcom/shabakaty/downloader/ls3$a;
.super Ljava/lang/Object;
.source "ResolutionScope.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ls3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lcom/shabakaty/downloader/ls3;Lcom/shabakaty/downloader/vq0;Lcom/shabakaty/downloader/tm1;ILjava/lang/Object;)Ljava/util/Collection;
    .locals 0

    and-int/lit8 p2, p3, 0x1

    if-eqz p2, :cond_0

    .line 1
    sget-object p1, Lcom/shabakaty/downloader/vq0;->m:Lcom/shabakaty/downloader/vq0;

    :cond_0
    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_1

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/mr2;->a:Lcom/shabakaty/downloader/mr2$a;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object p2, Lcom/shabakaty/downloader/mr2$a;->b:Lcom/shabakaty/downloader/tm1;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 4
    :goto_0
    invoke-interface {p0, p1, p2}, Lcom/shabakaty/downloader/ls3;->e(Lcom/shabakaty/downloader/vq0;Lcom/shabakaty/downloader/tm1;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method
