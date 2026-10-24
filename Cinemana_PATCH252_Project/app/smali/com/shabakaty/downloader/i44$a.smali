.class public final Lcom/shabakaty/downloader/i44$a;
.super Ljava/lang/Object;
.source "ShabakatyDownloader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/i44;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static synthetic a(Lcom/shabakaty/downloader/i44;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/tm1;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p4, p7, 0x2

    const/4 p8, 0x0

    if-eqz p4, :cond_0

    move-object v2, p8

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_1

    move-object v3, p8

    goto :goto_1

    :cond_1
    move-object v3, p3

    :goto_1
    const/4 v4, 0x0

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_2

    .line 1
    sget-object p6, Lcom/shabakaty/downloader/i44$a$a;->r:Lcom/shabakaty/downloader/i44$a$a;

    :cond_2
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v5, p5

    .line 2
    invoke-interface/range {v0 .. v6}, Lcom/shabakaty/downloader/i44;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/tm1;)V

    return-void
.end method
