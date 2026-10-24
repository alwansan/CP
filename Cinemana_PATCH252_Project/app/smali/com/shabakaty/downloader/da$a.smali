.class public Lcom/shabakaty/downloader/da$a;
.super Lcom/shabakaty/downloader/e45;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/da;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/da;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/da;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/da$a;->a:Lcom/shabakaty/downloader/da;

    invoke-direct {p0}, Lcom/shabakaty/downloader/e45;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/da$a;->a:Lcom/shabakaty/downloader/da;

    iget-object p1, p1, Lcom/shabakaty/downloader/da;->r:Lcom/shabakaty/downloader/aa;

    iget-object p1, p1, Lcom/shabakaty/downloader/aa;->G:Landroidx/appcompat/widget/ActionBarContextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/da$a;->a:Lcom/shabakaty/downloader/da;

    iget-object p1, p1, Lcom/shabakaty/downloader/da;->r:Lcom/shabakaty/downloader/aa;

    iget-object p1, p1, Lcom/shabakaty/downloader/aa;->J:Lcom/shabakaty/downloader/b45;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/b45;->d(Lcom/shabakaty/downloader/d45;)Lcom/shabakaty/downloader/b45;

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/da$a;->a:Lcom/shabakaty/downloader/da;

    iget-object p1, p1, Lcom/shabakaty/downloader/da;->r:Lcom/shabakaty/downloader/aa;

    iput-object v0, p1, Lcom/shabakaty/downloader/aa;->J:Lcom/shabakaty/downloader/b45;

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/da$a;->a:Lcom/shabakaty/downloader/da;

    iget-object p1, p1, Lcom/shabakaty/downloader/da;->r:Lcom/shabakaty/downloader/aa;

    iget-object p1, p1, Lcom/shabakaty/downloader/aa;->G:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    return-void
.end method
