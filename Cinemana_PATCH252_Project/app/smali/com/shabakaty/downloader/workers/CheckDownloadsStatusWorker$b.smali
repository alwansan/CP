.class public final Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$b;
.super Lcom/shabakaty/downloader/xd0;
.source "CheckDownloadsStatusWorker.kt"


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.downloader.workers.CheckDownloadsStatusWorker"
    f = "CheckDownloadsStatusWorker.kt"
    l = {
        0x22,
        0x24,
        0x27
    }
    m = "doWork"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker;->g(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public u:Ljava/lang/Object;

.field public synthetic v:Ljava/lang/Object;

.field public final synthetic w:Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker;

.field public x:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$b;->w:Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker;

    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/xd0;-><init>(Lcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$b;->v:Ljava/lang/Object;

    iget p1, p0, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$b;->x:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$b;->x:I

    iget-object p1, p0, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$b;->w:Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker;

    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker;->g(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
