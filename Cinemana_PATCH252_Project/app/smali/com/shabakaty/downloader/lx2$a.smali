.class public Lcom/shabakaty/downloader/lx2$a;
.super Ljava/lang/Object;
.source "NavigationBarItemView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/lx2;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/lx2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/lx2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/lx2$a;->r:Lcom/shabakaty/downloader/lx2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/lx2$a;->r:Lcom/shabakaty/downloader/lx2;

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/lx2;->x:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/lx2$a;->r:Lcom/shabakaty/downloader/lx2;

    .line 5
    iget-object p2, p1, Lcom/shabakaty/downloader/lx2;->x:Landroid/widget/ImageView;

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/lx2;->b()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p1, Lcom/shabakaty/downloader/lx2;->G:Lcom/shabakaty/downloader/mi;

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/shabakaty/downloader/ni;->c(Lcom/shabakaty/downloader/mi;Landroid/view/View;Landroid/widget/FrameLayout;)V

    :cond_1
    :goto_0
    return-void
.end method
