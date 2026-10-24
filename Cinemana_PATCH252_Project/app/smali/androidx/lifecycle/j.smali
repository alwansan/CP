.class public Landroidx/lifecycle/j;
.super Lcom/shabakaty/downloader/p21;
.source "ProcessLifecycleOwner.java"


# instance fields
.field public final synthetic this$0:Landroidx/lifecycle/i;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/j;->this$0:Landroidx/lifecycle/i;

    invoke-direct {p0}, Lcom/shabakaty/downloader/p21;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-ge p2, v0, :cond_0

    .line 2
    sget p2, Landroidx/lifecycle/k;->s:I

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string p2, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/k;

    .line 4
    iget-object p2, p0, Landroidx/lifecycle/j;->this$0:Landroidx/lifecycle/i;

    iget-object p2, p2, Landroidx/lifecycle/i;->y:Landroidx/lifecycle/k$a;

    .line 5
    iput-object p2, p1, Landroidx/lifecycle/k;->r:Landroidx/lifecycle/k$a;

    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    .line 1
    iget-object p1, p0, Landroidx/lifecycle/j;->this$0:Landroidx/lifecycle/i;

    .line 2
    iget v0, p1, Landroidx/lifecycle/i;->s:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Landroidx/lifecycle/i;->s:I

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p1, Landroidx/lifecycle/i;->v:Landroid/os/Handler;

    iget-object p1, p1, Landroidx/lifecycle/i;->x:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    new-instance p2, Landroidx/lifecycle/j$a;

    invoke-direct {p2, p0}, Landroidx/lifecycle/j$a;-><init>(Landroidx/lifecycle/j;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    .line 1
    iget-object p1, p0, Landroidx/lifecycle/j;->this$0:Landroidx/lifecycle/i;

    .line 2
    iget v0, p1, Landroidx/lifecycle/i;->r:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p1, Landroidx/lifecycle/i;->r:I

    if-nez v0, :cond_0

    .line 3
    iget-boolean v0, p1, Landroidx/lifecycle/i;->t:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p1, Landroidx/lifecycle/i;->w:Landroidx/lifecycle/g;

    sget-object v2, Landroidx/lifecycle/e$b;->ON_STOP:Landroidx/lifecycle/e$b;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/g;->f(Landroidx/lifecycle/e$b;)V

    .line 5
    iput-boolean v1, p1, Landroidx/lifecycle/i;->u:Z

    :cond_0
    return-void
.end method
