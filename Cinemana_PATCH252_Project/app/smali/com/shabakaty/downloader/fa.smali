.class public Lcom/shabakaty/downloader/fa;
.super Landroid/app/Dialog;
.source "AppCompatDialog.java"

# interfaces
.implements Lcom/shabakaty/downloader/v9;


# instance fields
.field private mDelegate:Lcom/shabakaty/downloader/z9;

.field private final mKeyDispatcher:Lcom/shabakaty/downloader/ud2$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/shabakaty/downloader/fa;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 2
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/fa;->getThemeResId(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/fa$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/fa$a;-><init>(Lcom/shabakaty/downloader/fa;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/fa;->mKeyDispatcher:Lcom/shabakaty/downloader/ud2$a;

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fa;->getDelegate()Lcom/shabakaty/downloader/z9;

    move-result-object v0

    .line 5
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/fa;->getThemeResId(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/z9;->B(I)V

    const/4 p1, 0x0

    .line 6
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/z9;->n(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 8
    new-instance p1, Lcom/shabakaty/downloader/fa$a;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/fa$a;-><init>(Lcom/shabakaty/downloader/fa;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/fa;->mKeyDispatcher:Lcom/shabakaty/downloader/ud2$a;

    return-void
.end method

.method private static getThemeResId(Landroid/content/Context;I)I
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v0, 0x7f04018e

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3
    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    :cond_0
    return p1
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fa;->getDelegate()Lcom/shabakaty/downloader/z9;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/z9;->c(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fa;->getDelegate()Lcom/shabakaty/downloader/z9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/z9;->o()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/fa;->mKeyDispatcher:Lcom/shabakaty/downloader/ud2$a;

    invoke-static {v1, v0, p0, p1}, Lcom/shabakaty/downloader/ud2;->b(Lcom/shabakaty/downloader/ud2$a;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fa;->getDelegate()Lcom/shabakaty/downloader/z9;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/z9;->f(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getDelegate()Lcom/shabakaty/downloader/z9;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fa;->mDelegate:Lcom/shabakaty/downloader/z9;

    if-nez v0, :cond_0

    .line 2
    sget v0, Lcom/shabakaty/downloader/z9;->r:I

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/aa;

    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0, p0}, Lcom/shabakaty/downloader/aa;-><init>(Landroid/content/Context;Landroid/view/Window;Lcom/shabakaty/downloader/v9;Ljava/lang/Object;)V

    .line 5
    iput-object v0, p0, Lcom/shabakaty/downloader/fa;->mDelegate:Lcom/shabakaty/downloader/z9;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/fa;->mDelegate:Lcom/shabakaty/downloader/z9;

    return-object v0
.end method

.method public getSupportActionBar()Lcom/shabakaty/downloader/k2;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fa;->getDelegate()Lcom/shabakaty/downloader/z9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/z9;->j()Lcom/shabakaty/downloader/k2;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fa;->getDelegate()Lcom/shabakaty/downloader/z9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/z9;->l()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fa;->getDelegate()Lcom/shabakaty/downloader/z9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/z9;->k()V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fa;->getDelegate()Lcom/shabakaty/downloader/z9;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/z9;->n(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fa;->getDelegate()Lcom/shabakaty/downloader/z9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/z9;->t()V

    return-void
.end method

.method public onSupportActionModeFinished(Lcom/shabakaty/downloader/p2;)V
    .locals 0

    return-void
.end method

.method public onSupportActionModeStarted(Lcom/shabakaty/downloader/p2;)V
    .locals 0

    return-void
.end method

.method public onWindowStartingSupportActionMode(Lcom/shabakaty/downloader/p2$a;)Lcom/shabakaty/downloader/p2;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public setContentView(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fa;->getDelegate()Lcom/shabakaty/downloader/z9;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/z9;->w(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fa;->getDelegate()Lcom/shabakaty/downloader/z9;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/z9;->x(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fa;->getDelegate()Lcom/shabakaty/downloader/z9;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/z9;->y(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 2

    .line 3
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(I)V

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fa;->getDelegate()Lcom/shabakaty/downloader/z9;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/z9;->C(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fa;->getDelegate()Lcom/shabakaty/downloader/z9;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/z9;->C(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public supportRequestWindowFeature(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fa;->getDelegate()Lcom/shabakaty/downloader/z9;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/z9;->v(I)Z

    move-result p1

    return p1
.end method
