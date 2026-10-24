.class public final Lcom/shabakaty/downloader/iy2;
.super Ljava/lang/Object;
.source "NetworkInformation.kt"

# interfaces
.implements Lcom/shabakaty/downloader/wq;


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/gy2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/gy2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/iy2;->a:Lcom/shabakaty/downloader/gy2;

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

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/iy2;->a:Lcom/shabakaty/downloader/gy2;

    const-string p2, ""

    .line 2
    iput-object p2, p1, Lcom/shabakaty/downloader/gy2;->c:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/gy2;->a(Lcom/shabakaty/downloader/gy2;)V

    return-void
.end method

.method public onResponse(Lcom/shabakaty/downloader/mq;Lcom/shabakaty/downloader/ws3;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/iy2;->a:Lcom/shabakaty/downloader/gy2;

    .line 2
    iget-object p2, p2, Lcom/shabakaty/downloader/ws3;->y:Lcom/shabakaty/downloader/ys3;

    .line 3
    invoke-static {p2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/shabakaty/downloader/ys3;->g()Ljava/lang/String;

    move-result-object p2

    .line 4
    iput-object p2, p1, Lcom/shabakaty/downloader/gy2;->c:Ljava/lang/String;

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/iy2;->a:Lcom/shabakaty/downloader/gy2;

    invoke-static {p1}, Lcom/shabakaty/downloader/gy2;->a(Lcom/shabakaty/downloader/gy2;)V

    return-void
.end method
