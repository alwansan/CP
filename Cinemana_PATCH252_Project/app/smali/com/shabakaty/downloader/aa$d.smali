.class public Lcom/shabakaty/downloader/aa$d;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/p2$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:Lcom/shabakaty/downloader/p2$a;

.field public final synthetic b:Lcom/shabakaty/downloader/aa;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/aa;Lcom/shabakaty/downloader/p2$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/aa$d;->b:Lcom/shabakaty/downloader/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/aa$d;->a:Lcom/shabakaty/downloader/p2$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/p2;Landroid/view/Menu;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/aa$d;->b:Lcom/shabakaty/downloader/aa;

    iget-object v0, v0, Lcom/shabakaty/downloader/aa;->L:Landroid/view/ViewGroup;

    sget-object v1, Lcom/shabakaty/downloader/c35;->a:Ljava/util/WeakHashMap;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->requestApplyInsets()V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/aa$d;->a:Lcom/shabakaty/downloader/p2$a;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/p2$a;->a(Lcom/shabakaty/downloader/p2;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/shabakaty/downloader/p2;Landroid/view/Menu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/aa$d;->a:Lcom/shabakaty/downloader/p2$a;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/p2$a;->b(Lcom/shabakaty/downloader/p2;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public c(Lcom/shabakaty/downloader/p2;Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/aa$d;->a:Lcom/shabakaty/downloader/p2$a;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/p2$a;->c(Lcom/shabakaty/downloader/p2;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public d(Lcom/shabakaty/downloader/p2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/aa$d;->a:Lcom/shabakaty/downloader/p2$a;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/p2$a;->d(Lcom/shabakaty/downloader/p2;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/aa$d;->b:Lcom/shabakaty/downloader/aa;

    iget-object v0, p1, Lcom/shabakaty/downloader/aa;->H:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/aa;->w:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/shabakaty/downloader/aa$d;->b:Lcom/shabakaty/downloader/aa;

    iget-object v0, v0, Lcom/shabakaty/downloader/aa;->I:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/aa$d;->b:Lcom/shabakaty/downloader/aa;

    iget-object v0, p1, Lcom/shabakaty/downloader/aa;->G:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/aa;->M()V

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/aa$d;->b:Lcom/shabakaty/downloader/aa;

    iget-object v0, p1, Lcom/shabakaty/downloader/aa;->G:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v0}, Lcom/shabakaty/downloader/c35;->b(Landroid/view/View;)Lcom/shabakaty/downloader/b45;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/b45;->a(F)Lcom/shabakaty/downloader/b45;

    iput-object v0, p1, Lcom/shabakaty/downloader/aa;->J:Lcom/shabakaty/downloader/b45;

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/aa$d;->b:Lcom/shabakaty/downloader/aa;

    iget-object p1, p1, Lcom/shabakaty/downloader/aa;->J:Lcom/shabakaty/downloader/b45;

    new-instance v0, Lcom/shabakaty/downloader/aa$d$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/aa$d$a;-><init>(Lcom/shabakaty/downloader/aa$d;)V

    .line 8
    iget-object v1, p1, Lcom/shabakaty/downloader/b45;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/shabakaty/downloader/b45;->e(Landroid/view/View;Lcom/shabakaty/downloader/d45;)V

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/shabakaty/downloader/aa$d;->b:Lcom/shabakaty/downloader/aa;

    iget-object v0, p1, Lcom/shabakaty/downloader/aa;->y:Lcom/shabakaty/downloader/v9;

    if-eqz v0, :cond_2

    .line 11
    iget-object p1, p1, Lcom/shabakaty/downloader/aa;->F:Lcom/shabakaty/downloader/p2;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/v9;->onSupportActionModeFinished(Lcom/shabakaty/downloader/p2;)V

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/aa$d;->b:Lcom/shabakaty/downloader/aa;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/shabakaty/downloader/aa;->F:Lcom/shabakaty/downloader/p2;

    .line 13
    iget-object p1, p1, Lcom/shabakaty/downloader/aa;->L:Landroid/view/ViewGroup;

    sget-object v0, Lcom/shabakaty/downloader/c35;->a:Ljava/util/WeakHashMap;

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    return-void
.end method
