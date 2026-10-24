.class public final synthetic Lcom/shabakaty/downloader/ow;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic r:Lcom/shabakaty/cinemana/ui/home_activity/CastButton;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/cinemana/ui/home_activity/CastButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ow;->r:Lcom/shabakaty/cinemana/ui/home_activity/CastButton;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object p1, p0, Lcom/shabakaty/downloader/ow;->r:Lcom/shabakaty/cinemana/ui/home_activity/CastButton;

    sget v0, Lcom/shabakaty/cinemana/ui/home_activity/CastButton;->z:I

    const-string v0, "this$0"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/cinemana/ui/home_activity/CastButton;->getFragmentContainer()Landroidx/fragment/app/FragmentContainerView;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p2}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 3
    :goto_0
    iget-object p2, p1, Lcom/shabakaty/cinemana/ui/home_activity/CastButton;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->l()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 4
    iget-object p2, p1, Lcom/shabakaty/cinemana/ui/home_activity/CastButton;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 5
    iget-object p2, p1, Lcom/shabakaty/cinemana/ui/home_activity/CastButton;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i()V

    .line 6
    iget-object p2, p1, Lcom/shabakaty/cinemana/ui/home_activity/CastButton;->x:Lcom/shabakaty/downloader/mu0;

    if-nez p2, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    invoke-interface {p2}, Lcom/shabakaty/downloader/mu0;->n()Z

    move-result p2

    if-nez p2, :cond_4

    .line 8
    iget-object p2, p1, Lcom/shabakaty/cinemana/ui/home_activity/CastButton;->x:Lcom/shabakaty/downloader/mu0;

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p2}, Lcom/shabakaty/downloader/mu0;->h()V

    :cond_4
    :goto_1
    const/4 p2, 0x0

    .line 9
    iput-object p2, p1, Lcom/shabakaty/cinemana/ui/home_activity/CastButton;->x:Lcom/shabakaty/downloader/mu0;

    .line 10
    :goto_2
    iget-object p2, p1, Lcom/shabakaty/cinemana/ui/home_activity/CastButton;->y:Lcom/shabakaty/downloader/f74;

    sget-object v0, Lcom/shabakaty/downloader/n5;->w:Lcom/shabakaty/downloader/n5;

    sget-object v1, Lcom/shabakaty/downloader/uh0;->v:Lcom/shabakaty/downloader/uh0;

    invoke-virtual {p2, v0, v1}, Lcom/shabakaty/downloader/f74;->k(Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;)Lcom/shabakaty/downloader/mu0;

    move-result-object p2

    iput-object p2, p1, Lcom/shabakaty/cinemana/ui/home_activity/CastButton;->x:Lcom/shabakaty/downloader/mu0;

    :cond_5
    const/4 v0, 0x1

    :goto_3
    return v0
.end method
