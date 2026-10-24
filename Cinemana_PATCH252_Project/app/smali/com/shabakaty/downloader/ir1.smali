.class public Lcom/shabakaty/downloader/ir1;
.super Lcom/shabakaty/downloader/wr4;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/wr4<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/wr4;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/ga2;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ga2;->L()Lcom/shabakaty/downloader/ka2;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/ka2;->z:Lcom/shabakaty/downloader/ka2;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ga2;->B()V

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ga2;->v()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public b(Lcom/shabakaty/downloader/pa2;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Number;

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/pa2;->k()Lcom/shabakaty/downloader/pa2;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/pa2;->B(Ljava/lang/String;)Lcom/shabakaty/downloader/pa2;

    :goto_0
    return-void
.end method
