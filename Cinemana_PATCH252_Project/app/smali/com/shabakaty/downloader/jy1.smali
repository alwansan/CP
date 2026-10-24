.class public final Lcom/shabakaty/downloader/jy1;
.super Lcom/shabakaty/downloader/iy1;
.source "ImageAnalysisBlockingAnalyzer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/iy1;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/shabakaty/downloader/gz1;)Lcom/shabakaty/downloader/fz1;
    .locals 0

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/gz1;->g()Lcom/shabakaty/downloader/fz1;

    move-result-object p1

    return-object p1
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e(Lcom/shabakaty/downloader/fz1;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/iy1;->c(Lcom/shabakaty/downloader/fz1;)Lcom/shabakaty/downloader/pi2;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/jy1$a;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/jy1$a;-><init>(Lcom/shabakaty/downloader/jy1;Lcom/shabakaty/downloader/fz1;)V

    .line 3
    invoke-static {}, Lcom/shabakaty/downloader/jl3;->a()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 4
    new-instance v2, Lcom/shabakaty/downloader/ko1$d;

    invoke-direct {v2, v0, v1}, Lcom/shabakaty/downloader/ko1$d;-><init>(Ljava/util/concurrent/Future;Lcom/shabakaty/downloader/ho1;)V

    invoke-interface {v0, v2, p1}, Lcom/shabakaty/downloader/pi2;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
