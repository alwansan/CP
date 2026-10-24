.class public Lcom/shabakaty/downloader/n81;
.super Ljava/lang/Object;
.source "ExposureControl.java"


# instance fields
.field public final a:Lcom/shabakaty/downloader/sr;

.field public final b:Lcom/shabakaty/downloader/o81;

.field public final c:Ljava/util/concurrent/Executor;

.field public d:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/sr;Lcom/shabakaty/downloader/zs;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/n81;->d:Z

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/n81;->a:Lcom/shabakaty/downloader/sr;

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/o81;

    invoke-direct {p1, p2, v0}, Lcom/shabakaty/downloader/o81;-><init>(Lcom/shabakaty/downloader/zs;I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/n81;->b:Lcom/shabakaty/downloader/o81;

    .line 5
    iput-object p3, p0, Lcom/shabakaty/downloader/n81;->c:Ljava/util/concurrent/Executor;

    return-void
.end method
