.class public Lcom/shabakaty/downloader/aa$d$a;
.super Lcom/shabakaty/downloader/e45;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/aa$d;->d(Lcom/shabakaty/downloader/p2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/aa$d;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/aa$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/aa$d$a;->a:Lcom/shabakaty/downloader/aa$d;

    invoke-direct {p0}, Lcom/shabakaty/downloader/e45;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/aa$d$a;->a:Lcom/shabakaty/downloader/aa$d;

    iget-object p1, p1, Lcom/shabakaty/downloader/aa$d;->b:Lcom/shabakaty/downloader/aa;

    iget-object p1, p1, Lcom/shabakaty/downloader/aa;->G:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/aa$d$a;->a:Lcom/shabakaty/downloader/aa$d;

    iget-object p1, p1, Lcom/shabakaty/downloader/aa$d;->b:Lcom/shabakaty/downloader/aa;

    iget-object v0, p1, Lcom/shabakaty/downloader/aa;->H:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p1, Lcom/shabakaty/downloader/aa;->G:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/aa$d$a;->a:Lcom/shabakaty/downloader/aa$d;

    iget-object p1, p1, Lcom/shabakaty/downloader/aa$d;->b:Lcom/shabakaty/downloader/aa;

    iget-object p1, p1, Lcom/shabakaty/downloader/aa;->G:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    sget-object v0, Lcom/shabakaty/downloader/c35;->a:Ljava/util/WeakHashMap;

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    .line 7
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/aa$d$a;->a:Lcom/shabakaty/downloader/aa$d;

    iget-object p1, p1, Lcom/shabakaty/downloader/aa$d;->b:Lcom/shabakaty/downloader/aa;

    iget-object p1, p1, Lcom/shabakaty/downloader/aa;->G:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->h()V

    .line 8
    iget-object p1, p0, Lcom/shabakaty/downloader/aa$d$a;->a:Lcom/shabakaty/downloader/aa$d;

    iget-object p1, p1, Lcom/shabakaty/downloader/aa$d;->b:Lcom/shabakaty/downloader/aa;

    iget-object p1, p1, Lcom/shabakaty/downloader/aa;->J:Lcom/shabakaty/downloader/b45;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/b45;->d(Lcom/shabakaty/downloader/d45;)Lcom/shabakaty/downloader/b45;

    .line 9
    iget-object p1, p0, Lcom/shabakaty/downloader/aa$d$a;->a:Lcom/shabakaty/downloader/aa$d;

    iget-object p1, p1, Lcom/shabakaty/downloader/aa$d;->b:Lcom/shabakaty/downloader/aa;

    iput-object v0, p1, Lcom/shabakaty/downloader/aa;->J:Lcom/shabakaty/downloader/b45;

    .line 10
    iget-object p1, p1, Lcom/shabakaty/downloader/aa;->L:Landroid/view/ViewGroup;

    sget-object v0, Lcom/shabakaty/downloader/c35;->a:Ljava/util/WeakHashMap;

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    return-void
.end method
