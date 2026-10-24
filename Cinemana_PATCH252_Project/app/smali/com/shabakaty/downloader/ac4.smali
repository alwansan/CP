.class public Lcom/shabakaty/downloader/ac4;
.super Ljava/lang/Object;
.source "StartWorkRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public r:Lcom/shabakaty/downloader/r75;

.field public s:Ljava/lang/String;

.field public t:Landroidx/work/WorkerParameters$a;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/r75;Ljava/lang/String;Landroidx/work/WorkerParameters$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ac4;->r:Lcom/shabakaty/downloader/r75;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/ac4;->s:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/ac4;->t:Landroidx/work/WorkerParameters$a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ac4;->r:Lcom/shabakaty/downloader/r75;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/r75;->f:Lcom/shabakaty/downloader/fg3;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/ac4;->s:Ljava/lang/String;

    iget-object v2, p0, Lcom/shabakaty/downloader/ac4;->t:Landroidx/work/WorkerParameters$a;

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/fg3;->f(Ljava/lang/String;Landroidx/work/WorkerParameters$a;)Z

    return-void
.end method
