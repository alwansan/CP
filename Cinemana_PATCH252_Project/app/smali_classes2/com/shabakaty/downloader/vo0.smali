.class public final Lcom/shabakaty/downloader/vo0;
.super Lcom/shabakaty/downloader/l81;
.source "Dispatcher.kt"


# static fields
.field public static final x:Lcom/shabakaty/downloader/pe0;

.field public static final y:Lcom/shabakaty/downloader/vo0;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/vo0;

    invoke-direct {v0}, Lcom/shabakaty/downloader/vo0;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/vo0;->y:Lcom/shabakaty/downloader/vo0;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/wh2;

    .line 3
    sget v2, Lcom/shabakaty/downloader/ek4;->a:I

    const/16 v3, 0x40

    if-ge v3, v2, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    const/16 v5, 0x40

    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    const-string v4, "kotlinx.coroutines.io.parallelism"

    .line 4
    invoke-static/range {v4 .. v9}, Lcom/shabakaty/downloader/rm3;->x(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v2

    const/4 v3, 0x1

    const-string v4, "Dispatchers.IO"

    .line 5
    invoke-direct {v1, v0, v2, v4, v3}, Lcom/shabakaty/downloader/wh2;-><init>(Lcom/shabakaty/downloader/l81;ILjava/lang/String;I)V

    sput-object v1, Lcom/shabakaty/downloader/vo0;->x:Lcom/shabakaty/downloader/pe0;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x7

    .line 1
    invoke-direct {p0, v0, v0, v1, v2}, Lcom/shabakaty/downloader/l81;-><init>(IILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Dispatchers.Default cannot be closed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Dispatchers.Default"

    return-object v0
.end method
