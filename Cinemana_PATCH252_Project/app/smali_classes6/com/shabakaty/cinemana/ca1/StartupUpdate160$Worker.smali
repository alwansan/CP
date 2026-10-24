.class final Lcom/shabakaty/cinemana/ca1/StartupUpdate160$Worker;
.super Ljava/lang/Object;
.source "StartupUpdate160.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/StartupUpdate160$Worker;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->fetchRelease()Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/StartupUpdate160$Worker;->activity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->isNewRelease(Ljava/lang/Object;Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/StartupUpdate160;->finish()V

    return-void

    :cond_0
    new-instance v2, Lcom/shabakaty/cinemana/ca1/StartupUpdate160$Prompt;

    invoke-direct {v2, v1, v0}, Lcom/shabakaty/cinemana/ca1/StartupUpdate160$Prompt;-><init>(Landroid/app/Activity;Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/StartupUpdate160;->finish()V

    return-void
.end method
