.class public Lcom/shabakaty/downloader/cq1$a;
.super Ljava/lang/Object;
.source "GhostViewPort.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/cq1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/cq1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/cq1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/cq1$a;->r:Lcom/shabakaty/downloader/cq1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cq1$a;->r:Lcom/shabakaty/downloader/cq1;

    sget-object v1, Lcom/shabakaty/downloader/c35;->a:Ljava/util/WeakHashMap;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/cq1$a;->r:Lcom/shabakaty/downloader/cq1;

    iget-object v1, v0, Lcom/shabakaty/downloader/cq1;->r:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/shabakaty/downloader/cq1;->s:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/cq1$a;->r:Lcom/shabakaty/downloader/cq1;

    iget-object v0, v0, Lcom/shabakaty/downloader/cq1;->r:Landroid/view/ViewGroup;

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/cq1$a;->r:Lcom/shabakaty/downloader/cq1;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/shabakaty/downloader/cq1;->r:Landroid/view/ViewGroup;

    .line 8
    iput-object v1, v0, Lcom/shabakaty/downloader/cq1;->s:Landroid/view/View;

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
