.class public Lcom/shabakaty/downloader/u65$a;
.super Lcom/shabakaty/downloader/e45;
.source "WindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/u65;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/u65;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/u65;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/u65$a;->a:Lcom/shabakaty/downloader/u65;

    invoke-direct {p0}, Lcom/shabakaty/downloader/e45;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/u65$a;->a:Lcom/shabakaty/downloader/u65;

    iget-boolean v0, p1, Lcom/shabakaty/downloader/u65;->p:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/shabakaty/downloader/u65;->g:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/u65$a;->a:Lcom/shabakaty/downloader/u65;

    iget-object p1, p1, Lcom/shabakaty/downloader/u65;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/u65$a;->a:Lcom/shabakaty/downloader/u65;

    iget-object p1, p1, Lcom/shabakaty/downloader/u65;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/u65$a;->a:Lcom/shabakaty/downloader/u65;

    iget-object p1, p1, Lcom/shabakaty/downloader/u65;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/u65$a;->a:Lcom/shabakaty/downloader/u65;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/shabakaty/downloader/u65;->t:Lcom/shabakaty/downloader/c45;

    .line 7
    iget-object v1, p1, Lcom/shabakaty/downloader/u65;->k:Lcom/shabakaty/downloader/p2$a;

    if-eqz v1, :cond_1

    .line 8
    iget-object v2, p1, Lcom/shabakaty/downloader/u65;->j:Lcom/shabakaty/downloader/p2;

    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/p2$a;->d(Lcom/shabakaty/downloader/p2;)V

    .line 9
    iput-object v0, p1, Lcom/shabakaty/downloader/u65;->j:Lcom/shabakaty/downloader/p2;

    .line 10
    iput-object v0, p1, Lcom/shabakaty/downloader/u65;->k:Lcom/shabakaty/downloader/p2$a;

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/shabakaty/downloader/u65$a;->a:Lcom/shabakaty/downloader/u65;

    iget-object p1, p1, Lcom/shabakaty/downloader/u65;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_2

    .line 12
    sget-object v0, Lcom/shabakaty/downloader/c35;->a:Ljava/util/WeakHashMap;

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    :cond_2
    return-void
.end method
