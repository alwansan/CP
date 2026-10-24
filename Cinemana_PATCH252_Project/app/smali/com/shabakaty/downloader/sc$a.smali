.class public final Lcom/shabakaty/downloader/sc$a;
.super Ljava/lang/Object;
.source "ArchTaskExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/sc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/sc;->m()Lcom/shabakaty/downloader/sc;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/sc;->s:Lcom/shabakaty/downloader/cl4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/cl4;->d(Ljava/lang/Runnable;)V

    return-void
.end method
