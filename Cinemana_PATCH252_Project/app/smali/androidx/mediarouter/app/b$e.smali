.class public Landroidx/mediarouter/app/b$e;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/mediarouter/app/b;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Landroidx/mediarouter/app/b$e;->r:Landroidx/mediarouter/app/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/mediarouter/app/b$e;->r:Landroidx/mediarouter/app/b;

    iget-boolean v0, p1, Landroidx/mediarouter/app/b;->p0:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Landroidx/mediarouter/app/b;->p0:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p1, Landroidx/mediarouter/app/b;->P:Landroidx/mediarouter/app/OverlayListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object p1, p0, Landroidx/mediarouter/app/b$e;->r:Landroidx/mediarouter/app/b;

    .line 4
    iget-boolean v0, p1, Landroidx/mediarouter/app/b;->p0:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/mediarouter/app/b;->w0:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p1, Landroidx/mediarouter/app/b;->x0:Landroid/view/animation/Interpolator;

    :goto_0
    iput-object v0, p1, Landroidx/mediarouter/app/b;->v0:Landroid/view/animation/Interpolator;

    .line 6
    invoke-virtual {p1, v1}, Landroidx/mediarouter/app/b;->r(Z)V

    return-void
.end method
