.class public Lcom/shabakaty/downloader/eo4;
.super Lcom/shabakaty/downloader/k2;
.source "ToolbarActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/eo4$d;,
        Lcom/shabakaty/downloader/eo4$c;,
        Lcom/shabakaty/downloader/eo4$e;
    }
.end annotation


# instance fields
.field public a:Lcom/shabakaty/downloader/en0;

.field public b:Z

.field public c:Landroid/view/Window$Callback;

.field public d:Z

.field public e:Z

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/k2$b;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/k2;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/eo4;->f:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/eo4$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/eo4$a;-><init>(Lcom/shabakaty/downloader/eo4;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/eo4;->g:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/eo4$b;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/eo4$b;-><init>(Lcom/shabakaty/downloader/eo4;)V

    .line 5
    new-instance v1, Landroidx/appcompat/widget/c;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroidx/appcompat/widget/c;-><init>(Landroidx/appcompat/widget/Toolbar;Z)V

    iput-object v1, p0, Lcom/shabakaty/downloader/eo4;->a:Lcom/shabakaty/downloader/en0;

    .line 6
    new-instance v1, Lcom/shabakaty/downloader/eo4$e;

    invoke-direct {v1, p0, p3}, Lcom/shabakaty/downloader/eo4$e;-><init>(Lcom/shabakaty/downloader/eo4;Landroid/view/Window$Callback;)V

    iput-object v1, p0, Lcom/shabakaty/downloader/eo4;->c:Landroid/view/Window$Callback;

    .line 7
    iget-object p3, p0, Lcom/shabakaty/downloader/eo4;->a:Lcom/shabakaty/downloader/en0;

    invoke-interface {p3, v1}, Lcom/shabakaty/downloader/en0;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 8
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$f;)V

    .line 9
    iget-object p1, p0, Lcom/shabakaty/downloader/eo4;->a:Lcom/shabakaty/downloader/en0;

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/en0;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/eo4;->a:Lcom/shabakaty/downloader/en0;

    invoke-interface {v0}, Lcom/shabakaty/downloader/en0;->g()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/eo4;->a:Lcom/shabakaty/downloader/en0;

    invoke-interface {v0}, Lcom/shabakaty/downloader/en0;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/eo4;->a:Lcom/shabakaty/downloader/en0;

    invoke-interface {v0}, Lcom/shabakaty/downloader/en0;->collapseActionView()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/eo4;->e:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/shabakaty/downloader/eo4;->e:Z

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/eo4;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/eo4;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/k2$b;

    invoke-interface {v2, p1}, Lcom/shabakaty/downloader/k2$b;->a(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/eo4;->a:Lcom/shabakaty/downloader/en0;

    invoke-interface {v0}, Lcom/shabakaty/downloader/en0;->v()I

    move-result v0

    return v0
.end method

.method public e()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/eo4;->a:Lcom/shabakaty/downloader/en0;

    invoke-interface {v0}, Lcom/shabakaty/downloader/en0;->a()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/eo4;->a:Lcom/shabakaty/downloader/en0;

    invoke-interface {v0}, Lcom/shabakaty/downloader/en0;->t()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/eo4;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/eo4;->a:Lcom/shabakaty/downloader/en0;

    invoke-interface {v0}, Lcom/shabakaty/downloader/en0;->t()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/eo4;->g:Ljava/lang/Runnable;

    sget-object v2, Lcom/shabakaty/downloader/c35;->a:Ljava/util/WeakHashMap;

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method public g(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/eo4;->a:Lcom/shabakaty/downloader/en0;

    invoke-interface {v0}, Lcom/shabakaty/downloader/en0;->t()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/eo4;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public i(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/eo4;->t()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 3
    :goto_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0, v3}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 5
    invoke-interface {v0, p1, p2, v1}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public j(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/eo4;->a:Lcom/shabakaty/downloader/en0;

    invoke-interface {p1}, Lcom/shabakaty/downloader/en0;->h()Z

    :cond_0
    return v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/eo4;->a:Lcom/shabakaty/downloader/en0;

    invoke-interface {v0}, Lcom/shabakaty/downloader/en0;->h()Z

    move-result v0

    return v0
.end method

.method public l(Z)V
    .locals 0

    return-void
.end method

.method public m(Z)V
    .locals 3

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/eo4;->a:Lcom/shabakaty/downloader/en0;

    invoke-interface {v1}, Lcom/shabakaty/downloader/en0;->v()I

    move-result v1

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/eo4;->a:Lcom/shabakaty/downloader/en0;

    and-int/2addr p1, v0

    const/4 v0, -0x5

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    invoke-interface {v2, p1}, Lcom/shabakaty/downloader/en0;->l(I)V

    return-void
.end method

.method public n(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/eo4;->a:Lcom/shabakaty/downloader/en0;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/en0;->r(I)V

    return-void
.end method

.method public o(Z)V
    .locals 0

    return-void
.end method

.method public p(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/eo4;->a:Lcom/shabakaty/downloader/en0;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/en0;->m(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public q(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/eo4;->a:Lcom/shabakaty/downloader/en0;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/en0;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public r(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/eo4;->a:Lcom/shabakaty/downloader/en0;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/en0;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final t()Landroid/view/Menu;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/eo4;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/eo4;->a:Lcom/shabakaty/downloader/en0;

    new-instance v1, Lcom/shabakaty/downloader/eo4$c;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/eo4$c;-><init>(Lcom/shabakaty/downloader/eo4;)V

    new-instance v2, Lcom/shabakaty/downloader/eo4$d;

    invoke-direct {v2, p0}, Lcom/shabakaty/downloader/eo4$d;-><init>(Lcom/shabakaty/downloader/eo4;)V

    invoke-interface {v0, v1, v2}, Lcom/shabakaty/downloader/en0;->s(Landroidx/appcompat/view/menu/i$a;Landroidx/appcompat/view/menu/e$a;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/eo4;->d:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/eo4;->a:Lcom/shabakaty/downloader/en0;

    invoke-interface {v0}, Lcom/shabakaty/downloader/en0;->n()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method
