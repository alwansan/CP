.class public final Lcom/shabakaty/downloader/gy2$a;
.super Ljava/lang/Object;
.source "NetworkInformation.kt"

# interfaces
.implements Lcom/shabakaty/downloader/wq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/gy2;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/shabakaty/downloader/gy2;


# direct methods
.method public constructor <init>(ZLcom/shabakaty/downloader/gy2;)V
    .locals 0

    iput-boolean p1, p0, Lcom/shabakaty/downloader/gy2$a;->a:Z

    iput-object p2, p0, Lcom/shabakaty/downloader/gy2$a;->b:Lcom/shabakaty/downloader/gy2;

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
    iget-boolean p1, p0, Lcom/shabakaty/downloader/gy2$a;->a:Z

    const-string p2, ""

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/shabakaty/downloader/gy2$a;->b:Lcom/shabakaty/downloader/gy2;

    .line 2
    iput-object p2, p1, Lcom/shabakaty/downloader/gy2;->a:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/gy2$a;->b:Lcom/shabakaty/downloader/gy2;

    .line 4
    iput-object p2, p1, Lcom/shabakaty/downloader/gy2;->b:Ljava/lang/String;

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/gy2$a;->b:Lcom/shabakaty/downloader/gy2;

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
    iget-boolean p1, p0, Lcom/shabakaty/downloader/gy2$a;->a:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/shabakaty/downloader/gy2$a;->b:Lcom/shabakaty/downloader/gy2;

    .line 2
    iget-object p2, p2, Lcom/shabakaty/downloader/ws3;->y:Lcom/shabakaty/downloader/ys3;

    .line 3
    invoke-static {p2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/shabakaty/downloader/ys3;->g()Ljava/lang/String;

    move-result-object p2

    .line 4
    iput-object p2, p1, Lcom/shabakaty/downloader/gy2;->a:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/gy2$a;->b:Lcom/shabakaty/downloader/gy2;

    .line 6
    iget-object p2, p2, Lcom/shabakaty/downloader/ws3;->y:Lcom/shabakaty/downloader/ys3;

    .line 7
    invoke-static {p2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/shabakaty/downloader/ys3;->g()Ljava/lang/String;

    move-result-object p2

    .line 8
    iput-object p2, p1, Lcom/shabakaty/downloader/gy2;->b:Ljava/lang/String;

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/gy2$a;->b:Lcom/shabakaty/downloader/gy2;

    invoke-static {p1}, Lcom/shabakaty/downloader/gy2;->a(Lcom/shabakaty/downloader/gy2;)V

    return-void
.end method
