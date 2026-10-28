.class Lcom/shabakaty/cinemana/local/LocalEpisodeJob$1;
.super Ljava/lang/Object;
.source "LocalEpisodeJob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/local/LocalEpisodeJob;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shabakaty/cinemana/local/LocalEpisodeJob;

.field final synthetic val$params:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lcom/shabakaty/cinemana/local/LocalEpisodeJob;Landroid/app/job/JobParameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/cinemana/local/LocalEpisodeJob$1;->this$0:Lcom/shabakaty/cinemana/local/LocalEpisodeJob;

    iput-object p2, p0, Lcom/shabakaty/cinemana/local/LocalEpisodeJob$1;->val$params:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->scan(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_e
    .catchall {:try_start_1 .. :try_end_4} :catchall_c

    :goto_4
    iget-object v1, p0, Lcom/shabakaty/cinemana/local/LocalEpisodeJob$1;->this$0:Lcom/shabakaty/cinemana/local/LocalEpisodeJob;

    iget-object v2, p0, Lcom/shabakaty/cinemana/local/LocalEpisodeJob$1;->val$params:Landroid/app/job/JobParameters;

    invoke-virtual {v1, v2, v0}, Lcom/shabakaty/cinemana/local/LocalEpisodeJob;->jobFinished(Landroid/app/job/JobParameters;Z)V

    goto :goto_15

    :catchall_c
    move-exception v1

    goto :goto_16

    :catch_e
    move-exception v1

    :try_start_f
    const-string v2, "job"

    invoke-static {v2, v1}, Lcom/shabakaty/cinemana/local/LocalRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_c

    goto :goto_4

    :goto_15
    return-void

    :goto_16
    iget-object v2, p0, Lcom/shabakaty/cinemana/local/LocalEpisodeJob$1;->this$0:Lcom/shabakaty/cinemana/local/LocalEpisodeJob;

    iget-object v3, p0, Lcom/shabakaty/cinemana/local/LocalEpisodeJob$1;->val$params:Landroid/app/job/JobParameters;

    invoke-virtual {v2, v3, v0}, Lcom/shabakaty/cinemana/local/LocalEpisodeJob;->jobFinished(Landroid/app/job/JobParameters;Z)V

    throw v1
.end method
