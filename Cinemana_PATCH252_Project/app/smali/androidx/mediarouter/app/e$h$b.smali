.class public Landroidx/mediarouter/app/e$h$b;
.super Ljava/lang/Object;
.source "MediaRouteDynamicControllerDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/mediarouter/app/e$h;->f(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/mediarouter/app/e$h;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/e$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/e$h$b;->a:Landroidx/mediarouter/app/e$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/mediarouter/app/e$h$b;->a:Landroidx/mediarouter/app/e$h;

    iget-object p1, p1, Landroidx/mediarouter/app/e$h;->j:Landroidx/mediarouter/app/e;

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/mediarouter/app/e;->K:Z

    .line 2
    invoke-virtual {p1}, Landroidx/mediarouter/app/e;->l()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/mediarouter/app/e$h$b;->a:Landroidx/mediarouter/app/e$h;

    iget-object p1, p1, Landroidx/mediarouter/app/e$h;->j:Landroidx/mediarouter/app/e;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/mediarouter/app/e;->K:Z

    return-void
.end method
