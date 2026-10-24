.class public final Landroidx/mediarouter/app/e$g;
.super Landroidx/mediarouter/media/g$b;
.source "MediaRouteDynamicControllerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/app/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "g"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/mediarouter/app/e;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/e$g;->a:Landroidx/mediarouter/app/e;

    invoke-direct {p0}, Landroidx/mediarouter/media/g$b;-><init>()V

    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroidx/mediarouter/media/g;Landroidx/mediarouter/media/g$h;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/mediarouter/app/e$g;->a:Landroidx/mediarouter/app/e;

    invoke-virtual {p1}, Landroidx/mediarouter/app/e;->k()V

    return-void
.end method

.method public onRouteChanged(Landroidx/mediarouter/media/g;Landroidx/mediarouter/media/g$h;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/mediarouter/app/e$g;->a:Landroidx/mediarouter/app/e;

    iget-object p1, p1, Landroidx/mediarouter/app/e;->u:Landroidx/mediarouter/media/g$h;

    if-ne p2, p1, :cond_2

    invoke-virtual {p2}, Landroidx/mediarouter/media/g$h;->a()Landroidx/mediarouter/media/c$b;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p2, Landroidx/mediarouter/media/g$h;->a:Landroidx/mediarouter/media/g$g;

    .line 3
    invoke-virtual {p1}, Landroidx/mediarouter/media/g$g;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/mediarouter/media/g$h;

    .line 4
    iget-object v0, p0, Landroidx/mediarouter/app/e$g;->a:Landroidx/mediarouter/app/e;

    iget-object v0, v0, Landroidx/mediarouter/app/e;->u:Landroidx/mediarouter/media/g$h;

    invoke-virtual {v0}, Landroidx/mediarouter/media/g$h;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Landroidx/mediarouter/app/e$g;->a:Landroidx/mediarouter/app/e;

    iget-object v0, v0, Landroidx/mediarouter/app/e;->u:Landroidx/mediarouter/media/g$h;

    .line 6
    invoke-virtual {v0, p2}, Landroidx/mediarouter/media/g$h;->b(Landroidx/mediarouter/media/g$h;)Landroidx/mediarouter/media/g$h$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Landroidx/mediarouter/media/g$h$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/mediarouter/app/e$g;->a:Landroidx/mediarouter/app/e;

    iget-object v0, v0, Landroidx/mediarouter/app/e;->w:Ljava/util/List;

    .line 8
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p0, Landroidx/mediarouter/app/e$g;->a:Landroidx/mediarouter/app/e;

    invoke-virtual {p1}, Landroidx/mediarouter/app/e;->l()V

    .line 10
    iget-object p1, p0, Landroidx/mediarouter/app/e$g;->a:Landroidx/mediarouter/app/e;

    invoke-virtual {p1}, Landroidx/mediarouter/app/e;->j()V

    goto :goto_2

    .line 11
    :cond_3
    iget-object p1, p0, Landroidx/mediarouter/app/e$g;->a:Landroidx/mediarouter/app/e;

    invoke-virtual {p1}, Landroidx/mediarouter/app/e;->k()V

    :goto_2
    return-void
.end method

.method public onRouteRemoved(Landroidx/mediarouter/media/g;Landroidx/mediarouter/media/g$h;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/mediarouter/app/e$g;->a:Landroidx/mediarouter/app/e;

    invoke-virtual {p1}, Landroidx/mediarouter/app/e;->k()V

    return-void
.end method

.method public onRouteSelected(Landroidx/mediarouter/media/g;Landroidx/mediarouter/media/g$h;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/mediarouter/app/e$g;->a:Landroidx/mediarouter/app/e;

    iput-object p2, p1, Landroidx/mediarouter/app/e;->u:Landroidx/mediarouter/media/g$h;

    .line 2
    invoke-virtual {p1}, Landroidx/mediarouter/app/e;->l()V

    .line 3
    iget-object p1, p0, Landroidx/mediarouter/app/e$g;->a:Landroidx/mediarouter/app/e;

    invoke-virtual {p1}, Landroidx/mediarouter/app/e;->j()V

    return-void
.end method

.method public onRouteUnselected(Landroidx/mediarouter/media/g;Landroidx/mediarouter/media/g$h;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/mediarouter/app/e$g;->a:Landroidx/mediarouter/app/e;

    invoke-virtual {p1}, Landroidx/mediarouter/app/e;->k()V

    return-void
.end method

.method public onRouteVolumeChanged(Landroidx/mediarouter/media/g;Landroidx/mediarouter/media/g$h;)V
    .locals 2

    .line 1
    iget p1, p2, Landroidx/mediarouter/media/g$h;->o:I

    .line 2
    sget-boolean v0, Landroidx/mediarouter/app/e;->e0:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRouteVolumeChanged(), route.getVolume:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaRouteCtrlDialog"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    iget-object p1, p0, Landroidx/mediarouter/app/e$g;->a:Landroidx/mediarouter/app/e;

    iget-object v0, p1, Landroidx/mediarouter/app/e;->I:Landroidx/mediarouter/media/g$h;

    if-eq v0, p2, :cond_2

    .line 5
    iget-object p1, p1, Landroidx/mediarouter/app/e;->H:Ljava/util/Map;

    .line 6
    iget-object p2, p2, Landroidx/mediarouter/media/g$h;->c:Ljava/lang/String;

    .line 7
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/mediarouter/app/e$f;

    if-eqz p1, :cond_2

    .line 8
    iget-object p2, p1, Landroidx/mediarouter/app/e$f;->a:Landroidx/mediarouter/media/g$h;

    .line 9
    iget p2, p2, Landroidx/mediarouter/media/g$h;->o:I

    if-nez p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/mediarouter/app/e$f;->b(Z)V

    .line 11
    iget-object p1, p1, Landroidx/mediarouter/app/e$f;->c:Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_2
    return-void
.end method
