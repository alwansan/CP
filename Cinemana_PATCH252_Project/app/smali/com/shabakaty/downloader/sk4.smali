.class public final Lcom/shabakaty/downloader/sk4;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/fq1;

.field public final synthetic s:Lcom/shabakaty/downloader/wd0;

.field public final synthetic t:Lcom/shabakaty/downloader/xk4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fq1;Lcom/shabakaty/downloader/wd0;Lcom/shabakaty/downloader/xk4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/sk4;->r:Lcom/shabakaty/downloader/fq1;

    iput-object p2, p0, Lcom/shabakaty/downloader/sk4;->s:Lcom/shabakaty/downloader/wd0;

    iput-object p3, p0, Lcom/shabakaty/downloader/sk4;->t:Lcom/shabakaty/downloader/xk4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/sk4;->s:Lcom/shabakaty/downloader/wd0;

    iget-object v1, p0, Lcom/shabakaty/downloader/sk4;->t:Lcom/shabakaty/downloader/xk4;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/wd0;->a(Lcom/shabakaty/downloader/xk4;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/sk4;->r:Lcom/shabakaty/downloader/fq1;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/fq1;->h1(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/sk4;->r:Lcom/shabakaty/downloader/fq1;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/fq1;->g1(Ljava/lang/Exception;)V

    goto :goto_0

    .line 4
    :catch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/sk4;->r:Lcom/shabakaty/downloader/fq1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/fq1;->f1()V

    :goto_0
    return-void
.end method
