.class public final Lcom/shabakaty/downloader/wn1;
.super Lcom/shabakaty/downloader/dq1;
.source "FunctionClassScope.kt"


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/un1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/dq1;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/q20;)V

    return-void
.end method


# virtual methods
.method public h()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/xn1;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/dq1;->b:Lcom/shabakaty/downloader/q20;

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/un1;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/un1;->x:Lcom/shabakaty/downloader/vn1;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 5
    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/dq1;->b:Lcom/shabakaty/downloader/q20;

    .line 7
    check-cast v0, Lcom/shabakaty/downloader/un1;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/ao1;->h1(Lcom/shabakaty/downloader/un1;Z)Lcom/shabakaty/downloader/ao1;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/iq6;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/dq1;->b:Lcom/shabakaty/downloader/q20;

    .line 9
    check-cast v0, Lcom/shabakaty/downloader/un1;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/ao1;->h1(Lcom/shabakaty/downloader/un1;Z)Lcom/shabakaty/downloader/ao1;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/iq6;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method
