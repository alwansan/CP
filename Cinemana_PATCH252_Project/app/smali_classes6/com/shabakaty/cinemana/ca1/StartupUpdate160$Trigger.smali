.class final Lcom/shabakaty/cinemana/ca1/StartupUpdate160$Trigger;
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

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/StartupUpdate160$Trigger;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/StartupUpdate160$Trigger;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const-string v2, "ca1_update_check135"

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->check(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
