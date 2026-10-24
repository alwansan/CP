.class public final Lcom/shabakaty/downloader/qd4$e;
.super Lcom/shabakaty/downloader/xd0;
.source "StorageUtils.kt"


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.downloader.utils.StorageUtils"
    f = "StorageUtils.kt"
    l = {
        0x4b,
        0x4b,
        0x50
    }
    m = "updateDownloadItem"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/qd4;->d(Lcom/liulishuo/filedownloader/BaseDownloadTask;Lcom/shabakaty/downloader/xc4;Ljava/lang/Throwable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public A:I

.field public u:Ljava/lang/Object;

.field public v:Ljava/lang/Object;

.field public w:Ljava/lang/Object;

.field public x:Ljava/lang/Object;

.field public synthetic y:Ljava/lang/Object;

.field public final synthetic z:Lcom/shabakaty/downloader/qd4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qd4;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qd4;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qd4$e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/qd4$e;->z:Lcom/shabakaty/downloader/qd4;

    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/xd0;-><init>(Lcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/shabakaty/downloader/qd4$e;->y:Ljava/lang/Object;

    iget p1, p0, Lcom/shabakaty/downloader/qd4$e;->A:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/shabakaty/downloader/qd4$e;->A:I

    iget-object p1, p0, Lcom/shabakaty/downloader/qd4$e;->z:Lcom/shabakaty/downloader/qd4;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, p0}, Lcom/shabakaty/downloader/qd4;->d(Lcom/liulishuo/filedownloader/BaseDownloadTask;Lcom/shabakaty/downloader/xc4;Ljava/lang/Throwable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
