.class public Landroidx/mediarouter/app/e$f$a;
.super Ljava/lang/Object;
.source "MediaRouteDynamicControllerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/mediarouter/app/e$f;->a(Landroidx/mediarouter/media/g$h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Landroidx/mediarouter/app/e$f;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/e$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/e$f$a;->r:Landroidx/mediarouter/app/e$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/e$f$a;->r:Landroidx/mediarouter/app/e$f;

    iget-object v0, v0, Landroidx/mediarouter/app/e$f;->d:Landroidx/mediarouter/app/e;

    iget-object v1, v0, Landroidx/mediarouter/app/e;->I:Landroidx/mediarouter/media/g$h;

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, Landroidx/mediarouter/app/e;->D:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/e$f$a;->r:Landroidx/mediarouter/app/e$f;

    iget-object v1, v0, Landroidx/mediarouter/app/e$f;->d:Landroidx/mediarouter/app/e;

    iget-object v0, v0, Landroidx/mediarouter/app/e$f;->a:Landroidx/mediarouter/media/g$h;

    iput-object v0, v1, Landroidx/mediarouter/app/e;->I:Landroidx/mediarouter/media/g$h;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->isActivated()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Landroidx/mediarouter/app/e$f$a;->r:Landroidx/mediarouter/app/e$f;

    .line 6
    iget-object v3, v1, Landroidx/mediarouter/app/e$f;->d:Landroidx/mediarouter/app/e;

    iget-object v3, v3, Landroidx/mediarouter/app/e;->J:Ljava/util/Map;

    iget-object v1, v1, Landroidx/mediarouter/app/e$f;->a:Landroidx/mediarouter/media/g$h;

    .line 7
    iget-object v1, v1, Landroidx/mediarouter/media/g$h;->c:Ljava/lang/String;

    .line 8
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 10
    :goto_0
    iget-object v1, p0, Landroidx/mediarouter/app/e$f$a;->r:Landroidx/mediarouter/app/e$f;

    invoke-virtual {v1, p1}, Landroidx/mediarouter/app/e$f;->b(Z)V

    .line 11
    iget-object p1, p0, Landroidx/mediarouter/app/e$f$a;->r:Landroidx/mediarouter/app/e$f;

    iget-object p1, p1, Landroidx/mediarouter/app/e$f;->c:Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 12
    iget-object p1, p0, Landroidx/mediarouter/app/e$f$a;->r:Landroidx/mediarouter/app/e$f;

    iget-object p1, p1, Landroidx/mediarouter/app/e$f;->a:Landroidx/mediarouter/media/g$h;

    invoke-virtual {p1, v0}, Landroidx/mediarouter/media/g$h;->k(I)V

    .line 13
    iget-object p1, p0, Landroidx/mediarouter/app/e$f$a;->r:Landroidx/mediarouter/app/e$f;

    iget-object p1, p1, Landroidx/mediarouter/app/e$f;->d:Landroidx/mediarouter/app/e;

    iget-object p1, p1, Landroidx/mediarouter/app/e;->D:Landroid/os/Handler;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
