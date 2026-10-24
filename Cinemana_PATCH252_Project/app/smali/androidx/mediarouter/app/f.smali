.class public Landroidx/mediarouter/app/f;
.super Ljava/lang/Object;
.source "MediaRouteDynamicControllerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic r:Landroidx/mediarouter/app/e$h$c;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/e$h$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/f;->r:Landroidx/mediarouter/app/e$h$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Landroidx/mediarouter/app/f;->r:Landroidx/mediarouter/app/e$h$c;

    iget-object v0, p1, Landroidx/mediarouter/app/e$h$c;->g:Landroidx/mediarouter/app/e$h;

    iget-object v0, v0, Landroidx/mediarouter/app/e$h;->j:Landroidx/mediarouter/app/e;

    iget-object v0, v0, Landroidx/mediarouter/app/e;->r:Landroidx/mediarouter/media/g;

    iget-object p1, p1, Landroidx/mediarouter/app/e$h$c;->f:Landroidx/mediarouter/media/g$h;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Landroidx/mediarouter/media/g;->b()V

    .line 3
    sget-object v0, Landroidx/mediarouter/media/g;->d:Landroidx/mediarouter/media/g$e;

    .line 4
    iget-object v1, v0, Landroidx/mediarouter/media/g$e;->q:Landroidx/mediarouter/media/c$e;

    instance-of v1, v1, Landroidx/mediarouter/media/c$b;

    if-eqz v1, :cond_3

    .line 5
    iget-object v1, v0, Landroidx/mediarouter/media/g$e;->p:Landroidx/mediarouter/media/g$h;

    invoke-virtual {v1, p1}, Landroidx/mediarouter/media/g$h;->b(Landroidx/mediarouter/media/g$h;)Landroidx/mediarouter/media/g$h$a;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, v1, Landroidx/mediarouter/media/g$h$a;->a:Landroidx/mediarouter/media/c$b$a;

    if-eqz v1, :cond_0

    .line 7
    iget-boolean v1, v1, Landroidx/mediarouter/media/c$b$a;->e:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, v0, Landroidx/mediarouter/media/g$e;->q:Landroidx/mediarouter/media/c$e;

    check-cast v0, Landroidx/mediarouter/media/c$b;

    .line 9
    iget-object p1, p1, Landroidx/mediarouter/media/g$h;->b:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/c$b;->n(Ljava/util/List;)V

    goto :goto_2

    :cond_2
    :goto_1
    const-string p1, "MediaRouter"

    const-string v0, "Ignoring attempt to transfer to a non-transferable route."

    .line 11
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :goto_2
    iget-object p1, p0, Landroidx/mediarouter/app/f;->r:Landroidx/mediarouter/app/e$h$c;

    iget-object p1, p1, Landroidx/mediarouter/app/e$h$c;->b:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Landroidx/mediarouter/app/f;->r:Landroidx/mediarouter/app/e$h$c;

    iget-object p1, p1, Landroidx/mediarouter/app/e$h$c;->c:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "There is no currently selected dynamic group route."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
