.class public Lcom/shabakaty/downloader/nd4;
.super Lcom/shabakaty/downloader/yb0;
.source "StorageNotLowController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/yb0<",
        "Ljava/lang/Boolean;",
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
    iget-object p1, p1, Lcom/shabakaty/downloader/np4;->v:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/od4;

    .line 3
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/yb0;-><init>(Lcom/shabakaty/downloader/cc0;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/shabakaty/downloader/d85;)Z
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/shabakaty/downloader/d85;->j:Lcom/shabakaty/downloader/gc0;

    .line 2
    iget-boolean p1, p1, Lcom/shabakaty/downloader/gc0;->e:Z

    return p1
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
