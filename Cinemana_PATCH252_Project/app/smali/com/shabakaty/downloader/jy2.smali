.class public final Lcom/shabakaty/downloader/jy2;
.super Ljava/lang/Object;
.source "NetworkInformation.kt"

# interfaces
.implements Lcom/shabakaty/downloader/wq;


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/gy2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/gy2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/jy2;->a:Lcom/shabakaty/downloader/gy2;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/shabakaty/downloader/mq;Ljava/io/IOException;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e"

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lcom/shabakaty/downloader/mq;Lcom/shabakaty/downloader/ws3;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/jy2;->a:Lcom/shabakaty/downloader/gy2;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget p1, p2, Lcom/shabakaty/downloader/ws3;->v:I

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "sendNetworkInfo : "

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "checkNetworkInfo"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
