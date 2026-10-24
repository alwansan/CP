.class public Landroidx/fragment/app/l$a;
.super Ljava/lang/Object;
.source "FragmentAnim.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/l;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Landroidx/fragment/app/l;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/l$a;->r:Landroidx/fragment/app/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/l$a;->r:Landroidx/fragment/app/l;

    iget-object v0, v0, Landroidx/fragment/app/l;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/l$a;->r:Landroidx/fragment/app/l;

    iget-object v0, v0, Landroidx/fragment/app/l;->b:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/l$a;->r:Landroidx/fragment/app/l;

    iget-object v1, v0, Landroidx/fragment/app/l;->c:Landroidx/fragment/app/y$a;

    iget-object v2, v0, Landroidx/fragment/app/l;->b:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/l;->d:Lcom/shabakaty/downloader/iv;

    check-cast v1, Landroidx/fragment/app/q$d;

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/q$d;->a(Landroidx/fragment/app/Fragment;Lcom/shabakaty/downloader/iv;)V

    :cond_0
    return-void
.end method
