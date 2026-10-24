.class public final Lcom/shabakaty/downloader/qd4$a;
.super Lcom/shabakaty/downloader/xd0;
.source "StorageUtils.kt"


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.downloader.utils.StorageUtils"
    f = "StorageUtils.kt"
    l = {
        0x23,
        0x29,
        0x2a,
        0x35
    }
    m = "createDownloadItem"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/qd4;->a(Lcom/liulishuo/filedownloader/BaseDownloadTask;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public u:Ljava/lang/Object;

.field public v:Ljava/lang/Object;

.field public w:Ljava/lang/Object;

.field public synthetic x:Ljava/lang/Object;

.field public final synthetic y:Lcom/shabakaty/downloader/qd4;

.field public z:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qd4;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qd4;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qd4$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/qd4$a;->y:Lcom/shabakaty/downloader/qd4;

    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/xd0;-><init>(Lcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/shabakaty/downloader/qd4$a;->x:Ljava/lang/Object;

    iget p1, p0, Lcom/shabakaty/downloader/qd4$a;->z:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/shabakaty/downloader/qd4$a;->z:I

    iget-object p1, p0, Lcom/shabakaty/downloader/qd4$a;->y:Lcom/shabakaty/downloader/qd4;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/shabakaty/downloader/qd4;->a(Lcom/liulishuo/filedownloader/BaseDownloadTask;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
