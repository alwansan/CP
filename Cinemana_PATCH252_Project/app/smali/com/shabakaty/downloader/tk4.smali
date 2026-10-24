.class public final Lcom/shabakaty/downloader/tk4;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/fq1;

.field public final synthetic s:Ljava/util/concurrent/Callable;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fq1;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/tk4;->r:Lcom/shabakaty/downloader/fq1;

    iput-object p2, p0, Lcom/shabakaty/downloader/tk4;->s:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/tk4;->r:Lcom/shabakaty/downloader/fq1;

    iget-object v1, p0, Lcom/shabakaty/downloader/tk4;->s:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/fq1;->h1(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/tk4;->r:Lcom/shabakaty/downloader/fq1;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/fq1;->g1(Ljava/lang/Exception;)V

    goto :goto_0

    .line 3
    :catch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/tk4;->r:Lcom/shabakaty/downloader/fq1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/fq1;->f1()V

    :goto_0
    return-void
.end method
