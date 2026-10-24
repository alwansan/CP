.class public final Lcom/shabakaty/downloader/jn0;
.super Lcom/shabakaty/downloader/zd2;
.source "DefaultBuiltIns.kt"


# static fields
.field public static final f:Lcom/shabakaty/downloader/jn0;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/jn0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/jn0;-><init>(ZI)V

    sput-object v0, Lcom/shabakaty/downloader/jn0;->f:Lcom/shabakaty/downloader/jn0;

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p2, v0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 1
    :cond_0
    new-instance p2, Lcom/shabakaty/downloader/yj2;

    const-string v0, "DefaultBuiltIns"

    invoke-direct {p2, v0}, Lcom/shabakaty/downloader/yj2;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/zd2;-><init>(Lcom/shabakaty/downloader/md4;)V

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/zd2;->d(Z)V

    :cond_1
    return-void
.end method
