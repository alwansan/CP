.class public Lcom/shabakaty/downloader/xp1;
.super Ljava/lang/Object;
.source "GetIdListener.java"

# interfaces
.implements Lcom/shabakaty/downloader/nc4;


# instance fields
.field public final a:Lcom/shabakaty/downloader/zk4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/zk4<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/zk4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/zk4<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/xp1;->a:Lcom/shabakaty/downloader/zk4;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/ac3;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ac3;->f()Lcom/shabakaty/downloader/zb3$a;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/zb3$a;->t:Lcom/shabakaty/downloader/zb3$a;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ac3;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ac3;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    return v2

    .line 4
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/shabakaty/downloader/xp1;->a:Lcom/shabakaty/downloader/zk4;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ac3;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/zk4;->b(Ljava/lang/Object;)Z

    return v3
.end method

.method public b(Ljava/lang/Exception;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
