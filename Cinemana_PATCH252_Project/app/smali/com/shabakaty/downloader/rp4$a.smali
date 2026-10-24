.class public Lcom/shabakaty/downloader/rp4$a;
.super Ljava/lang/Object;
.source "TransactionExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/rp4;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Ljava/lang/Runnable;

.field public final synthetic s:Lcom/shabakaty/downloader/rp4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/rp4;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/rp4$a;->s:Lcom/shabakaty/downloader/rp4;

    iput-object p2, p0, Lcom/shabakaty/downloader/rp4$a;->r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/rp4$a;->r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/rp4$a;->s:Lcom/shabakaty/downloader/rp4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/rp4;->a()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/shabakaty/downloader/rp4$a;->s:Lcom/shabakaty/downloader/rp4;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/rp4;->a()V

    .line 3
    throw v0
.end method
