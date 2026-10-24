.class public Landroidx/mediarouter/app/e$h$c;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source "MediaRouteDynamicControllerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/app/e$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Landroid/widget/ImageView;

.field public final c:Landroid/widget/ProgressBar;

.field public final d:Landroid/widget/TextView;

.field public final e:F

.field public f:Landroidx/mediarouter/media/g$h;

.field public final synthetic g:Landroidx/mediarouter/app/e$h;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/e$h;Landroid/view/View;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/e$h$c;->g:Landroidx/mediarouter/app/e$h;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    .line 3
    iput-object p2, p0, Landroidx/mediarouter/app/e$h$c;->a:Landroid/view/View;

    const v0, 0x7f0a02b2

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/mediarouter/app/e$h$c;->b:Landroid/widget/ImageView;

    const v0, 0x7f0a02b4

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Landroidx/mediarouter/app/e$h$c;->c:Landroid/widget/ProgressBar;

    const v1, 0x7f0a02b3

    .line 6
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Landroidx/mediarouter/app/e$h$c;->d:Landroid/widget/TextView;

    .line 7
    iget-object p2, p1, Landroidx/mediarouter/app/e$h;->j:Landroidx/mediarouter/app/e;

    iget-object p2, p2, Landroidx/mediarouter/app/e;->z:Landroid/content/Context;

    invoke-static {p2}, Landroidx/mediarouter/app/h;->d(Landroid/content/Context;)F

    move-result p2

    iput p2, p0, Landroidx/mediarouter/app/e$h$c;->e:F

    .line 8
    iget-object p1, p1, Landroidx/mediarouter/app/e$h;->j:Landroidx/mediarouter/app/e;

    iget-object p1, p1, Landroidx/mediarouter/app/e;->z:Landroid/content/Context;

    invoke-static {p1, v0}, Landroidx/mediarouter/app/h;->l(Landroid/content/Context;Landroid/widget/ProgressBar;)V

    return-void
.end method
