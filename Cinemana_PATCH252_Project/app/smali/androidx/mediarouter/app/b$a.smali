.class public Landroidx/mediarouter/app/b$a;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/app/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Landroidx/mediarouter/app/b;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/b$a;->r:Landroidx/mediarouter/app/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/b$a;->r:Landroidx/mediarouter/app/b;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroidx/mediarouter/app/b;->d(Z)V

    .line 3
    iget-object v1, v0, Landroidx/mediarouter/app/b;->P:Landroidx/mediarouter/app/OverlayListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->requestLayout()V

    .line 4
    iget-object v1, v0, Landroidx/mediarouter/app/b;->P:Landroidx/mediarouter/app/OverlayListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/shabakaty/downloader/xp2;

    invoke-direct {v2, v0}, Lcom/shabakaty/downloader/xp2;-><init>(Landroidx/mediarouter/app/b;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
