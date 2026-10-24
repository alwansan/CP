.class public Lcom/shabakaty/downloader/wy2;
.super Lcom/shabakaty/downloader/yb0;
.source "NetworkUnmeteredController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/yb0<",
        "Lcom/shabakaty/downloader/ry2;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/shabakaty/downloader/bl4;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/np4;->b(Landroid/content/Context;Lcom/shabakaty/downloader/bl4;)Lcom/shabakaty/downloader/np4;

    move-result-object p1

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/np4;->u:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/sy2;

    .line 3
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/yb0;-><init>(Lcom/shabakaty/downloader/cc0;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/shabakaty/downloader/d85;)Z
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/shabakaty/downloader/d85;->j:Lcom/shabakaty/downloader/gc0;

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/gc0;->a:Landroidx/work/c;

    .line 3
    sget-object v0, Landroidx/work/c;->t:Landroidx/work/c;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/ry2;

    .line 2
    iget-boolean v0, p1, Lcom/shabakaty/downloader/ry2;->a:Z

    if-eqz v0, :cond_1

    .line 3
    iget-boolean p1, p1, Lcom/shabakaty/downloader/ry2;->c:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
