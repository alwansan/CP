.class public Lcom/shabakaty/downloader/s75$a;
.super Ljava/lang/Object;
.source "WorkManagerTaskExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/s75;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/s75;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/s75;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/s75$a;->r:Lcom/shabakaty/downloader/s75;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s75$a;->r:Lcom/shabakaty/downloader/s75;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/s75;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
