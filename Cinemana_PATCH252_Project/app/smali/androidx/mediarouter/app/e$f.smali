.class public abstract Landroidx/mediarouter/app/e$f;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source "MediaRouteDynamicControllerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/app/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "f"
.end annotation


# instance fields
.field public a:Landroidx/mediarouter/media/g$h;

.field public final b:Landroid/widget/ImageButton;

.field public final c:Landroidx/mediarouter/app/MediaRouteVolumeSlider;

.field public final synthetic d:Landroidx/mediarouter/app/e;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/e;Landroid/view/View;Landroid/widget/ImageButton;Landroidx/mediarouter/app/MediaRouteVolumeSlider;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/e$f;->d:Landroidx/mediarouter/app/e;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    .line 3
    iput-object p3, p0, Landroidx/mediarouter/app/e$f;->b:Landroid/widget/ImageButton;

    .line 4
    iput-object p4, p0, Landroidx/mediarouter/app/e$f;->c:Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    .line 5
    iget-object p2, p1, Landroidx/mediarouter/app/e;->z:Landroid/content/Context;

    const v0, 0x7f080277

    .line 6
    invoke-static {p2, v0}, Landroidx/mediarouter/app/h;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 7
    invoke-virtual {p3, p2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    iget-object p1, p1, Landroidx/mediarouter/app/e;->z:Landroid/content/Context;

    .line 9
    invoke-static {p1}, Landroidx/mediarouter/app/h;->j(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f0600e6

    .line 10
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/ld0;->b(Landroid/content/Context;I)I

    move-result p2

    const p3, 0x7f0600e4

    .line 11
    invoke-static {p1, p3}, Lcom/shabakaty/downloader/ld0;->b(Landroid/content/Context;I)I

    move-result p1

    goto :goto_0

    :cond_0
    const p2, 0x7f0600e5

    .line 12
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/ld0;->b(Landroid/content/Context;I)I

    move-result p2

    const p3, 0x7f0600e3

    .line 13
    invoke-static {p1, p3}, Lcom/shabakaty/downloader/ld0;->b(Landroid/content/Context;I)I

    move-result p1

    .line 14
    :goto_0
    invoke-virtual {p4, p2, p1}, Landroidx/mediarouter/app/MediaRouteVolumeSlider;->a(II)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/mediarouter/media/g$h;)V
    .locals 3

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/e$f;->a:Landroidx/mediarouter/media/g$h;

    .line 2
    iget v0, p1, Landroidx/mediarouter/media/g$h;->o:I

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Landroidx/mediarouter/app/e$f;->b:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setActivated(Z)V

    .line 4
    iget-object v1, p0, Landroidx/mediarouter/app/e$f;->b:Landroid/widget/ImageButton;

    new-instance v2, Landroidx/mediarouter/app/e$f$a;

    invoke-direct {v2, p0}, Landroidx/mediarouter/app/e$f$a;-><init>(Landroidx/mediarouter/app/e$f;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v1, p0, Landroidx/mediarouter/app/e$f;->c:Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    iget-object v2, p0, Landroidx/mediarouter/app/e$f;->a:Landroidx/mediarouter/media/g$h;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v1, p0, Landroidx/mediarouter/app/e$f;->c:Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    .line 7
    iget p1, p1, Landroidx/mediarouter/media/g$h;->p:I

    .line 8
    invoke-virtual {v1, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 9
    iget-object p1, p0, Landroidx/mediarouter/app/e$f;->c:Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 10
    iget-object p1, p0, Landroidx/mediarouter/app/e$f;->c:Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    iget-object v0, p0, Landroidx/mediarouter/app/e$f;->d:Landroidx/mediarouter/app/e;

    iget-object v0, v0, Landroidx/mediarouter/app/e;->G:Landroidx/mediarouter/app/e$j;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/e$f;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isActivated()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/e$f;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setActivated(Z)V

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Landroidx/mediarouter/app/e$f;->d:Landroidx/mediarouter/app/e;

    iget-object p1, p1, Landroidx/mediarouter/app/e;->J:Ljava/util/Map;

    iget-object v0, p0, Landroidx/mediarouter/app/e$f;->a:Landroidx/mediarouter/media/g$h;

    .line 4
    iget-object v0, v0, Landroidx/mediarouter/media/g$h;->c:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Landroidx/mediarouter/app/e$f;->c:Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Landroidx/mediarouter/app/e$f;->d:Landroidx/mediarouter/app/e;

    iget-object p1, p1, Landroidx/mediarouter/app/e;->J:Ljava/util/Map;

    iget-object v0, p0, Landroidx/mediarouter/app/e$f;->a:Landroidx/mediarouter/media/g$h;

    .line 7
    iget-object v0, v0, Landroidx/mediarouter/media/g$h;->c:Ljava/lang/String;

    .line 8
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
