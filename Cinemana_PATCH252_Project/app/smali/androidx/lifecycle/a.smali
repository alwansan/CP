.class public abstract Landroidx/lifecycle/a;
.super Landroidx/lifecycle/n$c;
.source "AbstractSavedStateViewModelFactory.java"


# instance fields
.field public final a:Landroidx/savedstate/a;

.field public final b:Landroidx/lifecycle/e;

.field public final c:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/gx3;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/n$c;-><init>()V

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/gx3;->getSavedStateRegistry()Landroidx/savedstate/a;

    move-result-object v0

    iput-object v0, p0, Landroidx/lifecycle/a;->a:Landroidx/savedstate/a;

    .line 3
    invoke-interface {p1}, Lcom/shabakaty/downloader/rh2;->getLifecycle()Landroidx/lifecycle/e;

    move-result-object p1

    iput-object p1, p0, Landroidx/lifecycle/a;->b:Landroidx/lifecycle/e;

    .line 4
    iput-object p2, p0, Landroidx/lifecycle/a;->c:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/shabakaty/downloader/o35;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/shabakaty/downloader/o35;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0, p1}, Landroidx/lifecycle/a;->c(Ljava/lang/String;Ljava/lang/Class;)Lcom/shabakaty/downloader/o35;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lcom/shabakaty/downloader/o35;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/a;->a:Landroidx/savedstate/a;

    iget-object v1, p0, Landroidx/lifecycle/a;->b:Landroidx/lifecycle/e;

    invoke-static {p1, v0, v1}, Landroidx/lifecycle/SavedStateHandleController;->a(Lcom/shabakaty/downloader/o35;Landroidx/savedstate/a;Landroidx/lifecycle/e;)V

    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/Class;)Lcom/shabakaty/downloader/o35;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/shabakaty/downloader/o35;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Landroidx/lifecycle/a;->a:Landroidx/savedstate/a;

    iget-object v0, p0, Landroidx/lifecycle/a;->b:Landroidx/lifecycle/e;

    iget-object v1, p0, Landroidx/lifecycle/a;->c:Landroid/os/Bundle;

    invoke-static {p2, v0, p1, v1}, Landroidx/lifecycle/SavedStateHandleController;->d(Landroidx/savedstate/a;Landroidx/lifecycle/e;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/lifecycle/SavedStateHandleController;

    move-result-object p1

    .line 2
    iget-object p2, p1, Landroidx/lifecycle/SavedStateHandleController;->t:Lcom/shabakaty/downloader/fx3;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/vw2$c;

    invoke-direct {v0, p2}, Lcom/shabakaty/downloader/vw2$c;-><init>(Lcom/shabakaty/downloader/fx3;)V

    const-string p2, "androidx.lifecycle.savedstate.vm.tag"

    .line 4
    invoke-virtual {v0, p2, p1}, Lcom/shabakaty/downloader/o35;->setTagIfAbsent(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
