.class public Lcom/shabakaty/downloader/bk4$a;
.super Lcom/shabakaty/downloader/x31;
.source "SystemIdInfoDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/bk4;-><init>(Lcom/shabakaty/downloader/vt3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/x31<",
        "Lcom/shabakaty/downloader/zj4;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/bk4;Lcom/shabakaty/downloader/vt3;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/x31;-><init>(Lcom/shabakaty/downloader/vt3;)V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`system_id`) VALUES (?,?)"

    return-object v0
.end method

.method public e(Lcom/shabakaty/downloader/ci4;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/zj4;

    .line 2
    iget-object v0, p2, Lcom/shabakaty/downloader/zj4;->a:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x2

    .line 5
    iget p2, p2, Lcom/shabakaty/downloader/zj4;->b:I

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Lcom/shabakaty/downloader/ai4;->h0(IJ)V

    return-void
.end method
