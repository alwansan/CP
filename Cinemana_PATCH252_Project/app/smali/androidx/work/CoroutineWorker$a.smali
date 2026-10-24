.class public final Landroidx/work/CoroutineWorker$a;
.super Ljava/lang/Object;
.source "CoroutineWorker.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/CoroutineWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic r:Landroidx/work/CoroutineWorker;


# direct methods
.method public constructor <init>(Landroidx/work/CoroutineWorker;)V
    .locals 0

    iput-object p1, p0, Landroidx/work/CoroutineWorker$a;->r:Landroidx/work/CoroutineWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/work/CoroutineWorker$a;->r:Landroidx/work/CoroutineWorker;

    .line 2
    iget-object v0, v0, Landroidx/work/CoroutineWorker;->w:Lcom/shabakaty/downloader/g24;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/b0;->r:Ljava/lang/Object;

    .line 4
    instance-of v0, v0, Lcom/shabakaty/downloader/b0$c;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Landroidx/work/CoroutineWorker$a;->r:Landroidx/work/CoroutineWorker;

    .line 6
    iget-object v0, v0, Landroidx/work/CoroutineWorker;->v:Lcom/shabakaty/downloader/x70;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 7
    invoke-static {v0, v2, v1, v2}, Lcom/shabakaty/downloader/e92$a;->a(Lcom/shabakaty/downloader/e92;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
