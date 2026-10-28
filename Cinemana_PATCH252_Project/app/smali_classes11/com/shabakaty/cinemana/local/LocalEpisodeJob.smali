.class public final Lcom/shabakaty/cinemana/local/LocalEpisodeJob;
.super Landroid/app/job/JobService;
.source "LocalEpisodeJob.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->scanCancelled:Z

    invoke-static {p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->init(Landroid/content/Context;)V

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->NETWORK:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/shabakaty/cinemana/local/LocalEpisodeJob$1;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/cinemana/local/LocalEpisodeJob$1;-><init>(Lcom/shabakaty/cinemana/local/LocalEpisodeJob;Landroid/app/job/JobParameters;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p1, 0x1

    sput-boolean p1, Lcom/shabakaty/cinemana/local/LocalRuntime;->scanCancelled:Z

    return p1
.end method
