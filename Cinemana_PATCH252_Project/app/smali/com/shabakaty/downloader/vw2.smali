.class public final Lcom/shabakaty/downloader/vw2;
.super Ljava/lang/Object;
.source "NavBackStackEntry.java"

# interfaces
.implements Lcom/shabakaty/downloader/rh2;
.implements Lcom/shabakaty/downloader/s35;
.implements Landroidx/lifecycle/d;
.implements Lcom/shabakaty/downloader/gx3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/vw2$c;,
        Lcom/shabakaty/downloader/vw2$b;
    }
.end annotation


# instance fields
.field public A:Landroidx/lifecycle/n$b;

.field public B:Lcom/shabakaty/downloader/fx3;

.field public final r:Landroid/content/Context;

.field public final s:Landroidx/navigation/c;

.field public t:Landroid/os/Bundle;

.field public final u:Landroidx/lifecycle/g;

.field public final v:Landroidx/savedstate/b;

.field public final w:Ljava/util/UUID;

.field public x:Landroidx/lifecycle/e$c;

.field public y:Landroidx/lifecycle/e$c;

.field public z:Lcom/shabakaty/downloader/xw2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/navigation/c;Landroid/os/Bundle;Lcom/shabakaty/downloader/rh2;Lcom/shabakaty/downloader/xw2;)V
    .locals 8

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 2
    invoke-direct/range {v0 .. v7}, Lcom/shabakaty/downloader/vw2;-><init>(Landroid/content/Context;Landroidx/navigation/c;Landroid/os/Bundle;Lcom/shabakaty/downloader/rh2;Lcom/shabakaty/downloader/xw2;Ljava/util/UUID;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/navigation/c;Landroid/os/Bundle;Lcom/shabakaty/downloader/rh2;Lcom/shabakaty/downloader/xw2;Ljava/util/UUID;Landroid/os/Bundle;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroidx/lifecycle/g;

    invoke-direct {v0, p0}, Landroidx/lifecycle/g;-><init>(Lcom/shabakaty/downloader/rh2;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/vw2;->u:Landroidx/lifecycle/g;

    .line 5
    new-instance v0, Landroidx/savedstate/b;

    invoke-direct {v0, p0}, Landroidx/savedstate/b;-><init>(Lcom/shabakaty/downloader/gx3;)V

    .line 6
    iput-object v0, p0, Lcom/shabakaty/downloader/vw2;->v:Landroidx/savedstate/b;

    .line 7
    sget-object v1, Landroidx/lifecycle/e$c;->t:Landroidx/lifecycle/e$c;

    iput-object v1, p0, Lcom/shabakaty/downloader/vw2;->x:Landroidx/lifecycle/e$c;

    .line 8
    sget-object v1, Landroidx/lifecycle/e$c;->v:Landroidx/lifecycle/e$c;

    iput-object v1, p0, Lcom/shabakaty/downloader/vw2;->y:Landroidx/lifecycle/e$c;

    .line 9
    iput-object p1, p0, Lcom/shabakaty/downloader/vw2;->r:Landroid/content/Context;

    .line 10
    iput-object p6, p0, Lcom/shabakaty/downloader/vw2;->w:Ljava/util/UUID;

    .line 11
    iput-object p2, p0, Lcom/shabakaty/downloader/vw2;->s:Landroidx/navigation/c;

    .line 12
    iput-object p3, p0, Lcom/shabakaty/downloader/vw2;->t:Landroid/os/Bundle;

    .line 13
    iput-object p5, p0, Lcom/shabakaty/downloader/vw2;->z:Lcom/shabakaty/downloader/xw2;

    .line 14
    invoke-virtual {v0, p7}, Landroidx/savedstate/b;->a(Landroid/os/Bundle;)V

    if-eqz p4, :cond_0

    .line 15
    invoke-interface {p4}, Lcom/shabakaty/downloader/rh2;->getLifecycle()Landroidx/lifecycle/e;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/e;->b()Landroidx/lifecycle/e$c;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/vw2;->x:Landroidx/lifecycle/e$c;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/fx3;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vw2;->B:Lcom/shabakaty/downloader/fx3;

    if-nez v0, :cond_3

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/vw2$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/vw2$b;-><init>(Lcom/shabakaty/downloader/gx3;Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/vw2;->getViewModelStore()Lcom/shabakaty/downloader/r35;

    move-result-object v1

    .line 4
    const-class v2, Lcom/shabakaty/downloader/vw2$c;

    .line 5
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    .line 6
    invoke-static {v4, v3}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7
    iget-object v4, v1, Lcom/shabakaty/downloader/r35;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/o35;

    .line 8
    invoke-virtual {v2, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 9
    invoke-virtual {v0, v4}, Landroidx/lifecycle/n$e;->b(Lcom/shabakaty/downloader/o35;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0, v3, v2}, Landroidx/lifecycle/n$c;->c(Ljava/lang/String;Ljava/lang/Class;)Lcom/shabakaty/downloader/o35;

    move-result-object v4

    .line 11
    iget-object v0, v1, Lcom/shabakaty/downloader/r35;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/o35;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Lcom/shabakaty/downloader/o35;->onCleared()V

    .line 13
    :cond_1
    :goto_0
    check-cast v4, Lcom/shabakaty/downloader/vw2$c;

    .line 14
    iget-object v0, v4, Lcom/shabakaty/downloader/vw2$c;->a:Lcom/shabakaty/downloader/fx3;

    .line 15
    iput-object v0, p0, Lcom/shabakaty/downloader/vw2;->B:Lcom/shabakaty/downloader/fx3;

    goto :goto_1

    .line 16
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Local and anonymous classes can not be ViewModels"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/shabakaty/downloader/vw2;->B:Lcom/shabakaty/downloader/fx3;

    return-object v0
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vw2;->x:Landroidx/lifecycle/e$c;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/downloader/vw2;->y:Landroidx/lifecycle/e$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/vw2;->u:Landroidx/lifecycle/g;

    iget-object v1, p0, Lcom/shabakaty/downloader/vw2;->x:Landroidx/lifecycle/e$c;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/g;->j(Landroidx/lifecycle/e$c;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/vw2;->u:Landroidx/lifecycle/g;

    iget-object v1, p0, Lcom/shabakaty/downloader/vw2;->y:Landroidx/lifecycle/e$c;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/g;->j(Landroidx/lifecycle/e$c;)V

    :goto_0
    return-void
.end method

.method public getDefaultViewModelProviderFactory()Landroidx/lifecycle/n$b;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vw2;->A:Landroidx/lifecycle/n$b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/lifecycle/l;

    iget-object v1, p0, Lcom/shabakaty/downloader/vw2;->r:Landroid/content/Context;

    .line 3
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    iget-object v2, p0, Lcom/shabakaty/downloader/vw2;->t:Landroid/os/Bundle;

    invoke-direct {v0, v1, p0, v2}, Landroidx/lifecycle/l;-><init>(Landroid/app/Application;Lcom/shabakaty/downloader/gx3;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/vw2;->A:Landroidx/lifecycle/n$b;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/vw2;->A:Landroidx/lifecycle/n$b;

    return-object v0
.end method

.method public getLifecycle()Landroidx/lifecycle/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vw2;->u:Landroidx/lifecycle/g;

    return-object v0
.end method

.method public getSavedStateRegistry()Landroidx/savedstate/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vw2;->v:Landroidx/savedstate/b;

    .line 2
    iget-object v0, v0, Landroidx/savedstate/b;->b:Landroidx/savedstate/a;

    return-object v0
.end method

.method public getViewModelStore()Lcom/shabakaty/downloader/r35;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vw2;->z:Lcom/shabakaty/downloader/xw2;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/vw2;->w:Ljava/util/UUID;

    .line 3
    iget-object v2, v0, Lcom/shabakaty/downloader/xw2;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/r35;

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Lcom/shabakaty/downloader/r35;

    invoke-direct {v2}, Lcom/shabakaty/downloader/r35;-><init>()V

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/xw2;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v2

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call setViewModelStore() on your NavHostController before accessing the ViewModelStore of a navigation graph."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
