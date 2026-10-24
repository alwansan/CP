.class public Lcom/shabakaty/downloader/rk4;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lcom/shabakaty/downloader/wd0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/wd0<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/fq1;

.field public final synthetic b:Lcom/shabakaty/downloader/wd0;

.field public final synthetic c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/xk4;Lcom/shabakaty/downloader/fq1;Lcom/shabakaty/downloader/wd0;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/shabakaty/downloader/rk4;->a:Lcom/shabakaty/downloader/fq1;

    iput-object p3, p0, Lcom/shabakaty/downloader/rk4;->b:Lcom/shabakaty/downloader/wd0;

    iput-object p4, p0, Lcom/shabakaty/downloader/rk4;->c:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/xk4;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/rk4;->a:Lcom/shabakaty/downloader/fq1;

    iget-object v1, p0, Lcom/shabakaty/downloader/rk4;->b:Lcom/shabakaty/downloader/wd0;

    iget-object v2, p0, Lcom/shabakaty/downloader/rk4;->c:Ljava/util/concurrent/Executor;

    .line 2
    :try_start_0
    new-instance v3, Lcom/shabakaty/downloader/sk4;

    invoke-direct {v3, v0, v1, p1}, Lcom/shabakaty/downloader/sk4;-><init>(Lcom/shabakaty/downloader/fq1;Lcom/shabakaty/downloader/wd0;Lcom/shabakaty/downloader/xk4;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/v61;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/v61;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/fq1;->g1(Ljava/lang/Exception;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
