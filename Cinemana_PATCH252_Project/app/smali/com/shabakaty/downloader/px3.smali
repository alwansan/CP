.class public Lcom/shabakaty/downloader/px3;
.super Ljava/lang/Object;
.source "Scene.java"


# instance fields
.field public a:Landroid/view/ViewGroup;

.field public b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/px3;->a:Landroid/view/ViewGroup;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/px3;->b:Landroid/view/View;

    return-void
.end method

.method public static b(Landroid/view/ViewGroup;)Lcom/shabakaty/downloader/px3;
    .locals 1

    const v0, 0x7f0a04cc

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/px3;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/px3;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/px3;->a:Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/px3;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/shabakaty/downloader/px3;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/px3;->a:Landroid/view/ViewGroup;

    const v1, 0x7f0a04cc

    .line 6
    invoke-virtual {v0, v1, p0}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    return-void
.end method
