.class public Lcom/shabakaty/downloader/vj1$a;
.super Ljava/lang/Object;
.source "FragmentLayoutInflaterFactory.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/vj1;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Landroidx/fragment/app/s;

.field public final synthetic s:Lcom/shabakaty/downloader/vj1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vj1;Landroidx/fragment/app/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/vj1$a;->s:Lcom/shabakaty/downloader/vj1;

    iput-object p2, p0, Lcom/shabakaty/downloader/vj1$a;->r:Landroidx/fragment/app/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/vj1$a;->r:Landroidx/fragment/app/s;

    .line 2
    iget-object v0, p1, Landroidx/fragment/app/s;->c:Landroidx/fragment/app/Fragment;

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/s;->k()V

    .line 4
    iget-object p1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/shabakaty/downloader/vj1$a;->s:Lcom/shabakaty/downloader/vj1;

    iget-object v0, v0, Lcom/shabakaty/downloader/vj1;->r:Landroidx/fragment/app/q;

    invoke-static {p1, v0}, Landroidx/fragment/app/z;->f(Landroid/view/ViewGroup;Landroidx/fragment/app/q;)Landroidx/fragment/app/z;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroidx/fragment/app/z;->e()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
