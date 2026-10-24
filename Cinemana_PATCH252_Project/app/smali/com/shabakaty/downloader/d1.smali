.class public Lcom/shabakaty/downloader/d1;
.super Ljava/lang/Object;
.source "AbstractSlider.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/e1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/e1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/d1;->r:Lcom/shabakaty/downloader/e1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/d1;->r:Lcom/shabakaty/downloader/e1;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/d1;->r:Lcom/shabakaty/downloader/e1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/e1;->e()V

    return-void
.end method
