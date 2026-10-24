.class public Lcom/facebook/imagepipeline/producers/JobScheduler$1;
.super Ljava/lang/Object;
.source "JobScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/JobScheduler;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/producers/JobScheduler$JobRunnable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/facebook/imagepipeline/producers/JobScheduler;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/JobScheduler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/JobScheduler$1;->r:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/JobScheduler$1;->r:Lcom/facebook/imagepipeline/producers/JobScheduler;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 4
    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v3, v0, Lcom/facebook/imagepipeline/producers/JobScheduler;->f:Lcom/facebook/imagepipeline/image/EncodedImage;

    .line 6
    iget v4, v0, Lcom/facebook/imagepipeline/producers/JobScheduler;->g:I

    const/4 v5, 0x0

    .line 7
    iput-object v5, v0, Lcom/facebook/imagepipeline/producers/JobScheduler;->f:Lcom/facebook/imagepipeline/image/EncodedImage;

    const/4 v5, 0x0

    .line 8
    iput v5, v0, Lcom/facebook/imagepipeline/producers/JobScheduler;->g:I

    .line 9
    sget-object v5, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->t:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    iput-object v5, v0, Lcom/facebook/imagepipeline/producers/JobScheduler;->h:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    .line 10
    iput-wide v1, v0, Lcom/facebook/imagepipeline/producers/JobScheduler;->j:J

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :try_start_1
    invoke-static {v3, v4}, Lcom/facebook/imagepipeline/producers/JobScheduler;->e(Lcom/facebook/imagepipeline/image/EncodedImage;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13
    iget-object v1, v0, Lcom/facebook/imagepipeline/producers/JobScheduler;->b:Lcom/facebook/imagepipeline/producers/JobScheduler$JobRunnable;

    invoke-interface {v1, v3, v4}, Lcom/facebook/imagepipeline/producers/JobScheduler$JobRunnable;->a(Lcom/facebook/imagepipeline/image/EncodedImage;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz v3, :cond_1

    .line 14
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/image/EncodedImage;->close()V

    .line 15
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/JobScheduler;->c()V

    return-void

    :catchall_0
    move-exception v1

    if-eqz v3, :cond_2

    .line 16
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/image/EncodedImage;->close()V

    .line 17
    :cond_2
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/JobScheduler;->c()V

    .line 18
    throw v1

    :catchall_1
    move-exception v1

    .line 19
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
