.class public final Lcom/shabakaty/downloader/n35;
.super Ljava/lang/Object;
.source "LifecycleFrameLayout.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/n35$a;
    }
.end annotation


# instance fields
.field public final a:Landroidx/lifecycle/g;

.field public final b:Landroid/os/Handler;

.field public c:Lcom/shabakaty/downloader/n35$a;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/rh2;)V
    .locals 1

    const-string v0, "provider"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/lifecycle/g;

    invoke-direct {v0, p1}, Landroidx/lifecycle/g;-><init>(Lcom/shabakaty/downloader/rh2;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/n35;->a:Landroidx/lifecycle/g;

    .line 3
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/n35;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/e$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/n35;->c:Lcom/shabakaty/downloader/n35$a;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/n35$a;->run()V

    .line 3
    :cond_1
    :goto_0
    new-instance v0, Lcom/shabakaty/downloader/n35$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/n35;->a:Landroidx/lifecycle/g;

    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/n35$a;-><init>(Landroidx/lifecycle/g;Landroidx/lifecycle/e$b;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/n35;->c:Lcom/shabakaty/downloader/n35$a;

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/n35;->b:Landroid/os/Handler;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/n35;->c:Lcom/shabakaty/downloader/n35$a;

    return-void
.end method
