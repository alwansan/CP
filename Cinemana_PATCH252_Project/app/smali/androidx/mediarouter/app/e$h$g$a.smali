.class public Landroidx/mediarouter/app/e$h$g$a;
.super Ljava/lang/Object;
.source "MediaRouteDynamicControllerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/app/e$h$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Landroidx/mediarouter/app/e$h$g;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/e$h$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/e$h$g$a;->r:Landroidx/mediarouter/app/e$h$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object p1, p0, Landroidx/mediarouter/app/e$h$g$a;->r:Landroidx/mediarouter/app/e$h$g;

    iget-object v0, p1, Landroidx/mediarouter/app/e$f;->a:Landroidx/mediarouter/media/g$h;

    invoke-virtual {p1, v0}, Landroidx/mediarouter/app/e$h$g;->c(Landroidx/mediarouter/media/g$h;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    .line 2
    iget-object v1, p0, Landroidx/mediarouter/app/e$h$g$a;->r:Landroidx/mediarouter/app/e$h$g;

    iget-object v1, v1, Landroidx/mediarouter/app/e$f;->a:Landroidx/mediarouter/media/g$h;

    invoke-virtual {v1}, Landroidx/mediarouter/media/g$h;->f()Z

    move-result v1

    const-string v2, "MediaRouter"

    const-string v3, "There is no currently selected dynamic group route."

    const/4 v4, 0x0

    if-eqz p1, :cond_3

    .line 3
    iget-object v5, p0, Landroidx/mediarouter/app/e$h$g$a;->r:Landroidx/mediarouter/app/e$h$g;

    iget-object v6, v5, Landroidx/mediarouter/app/e$h$g;->n:Landroidx/mediarouter/app/e$h;

    iget-object v6, v6, Landroidx/mediarouter/app/e$h;->j:Landroidx/mediarouter/app/e;

    iget-object v6, v6, Landroidx/mediarouter/app/e;->r:Landroidx/mediarouter/media/g;

    iget-object v5, v5, Landroidx/mediarouter/app/e$f;->a:Landroidx/mediarouter/media/g$h;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Landroidx/mediarouter/media/g;->b()V

    .line 5
    sget-object v6, Landroidx/mediarouter/media/g;->d:Landroidx/mediarouter/media/g$e;

    .line 6
    iget-object v7, v6, Landroidx/mediarouter/media/g$e;->q:Landroidx/mediarouter/media/c$e;

    instance-of v7, v7, Landroidx/mediarouter/media/c$b;

    if-eqz v7, :cond_2

    .line 7
    iget-object v3, v6, Landroidx/mediarouter/media/g$e;->p:Landroidx/mediarouter/media/g$h;

    invoke-virtual {v3, v5}, Landroidx/mediarouter/media/g$h;->b(Landroidx/mediarouter/media/g$h;)Landroidx/mediarouter/media/g$h$a;

    move-result-object v3

    .line 8
    iget-object v7, v6, Landroidx/mediarouter/media/g$e;->p:Landroidx/mediarouter/media/g$h;

    invoke-virtual {v7}, Landroidx/mediarouter/media/g$h;->c()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    if-eqz v3, :cond_1

    .line 9
    invoke-virtual {v3}, Landroidx/mediarouter/media/g$h$a;->a()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iget-object v2, v6, Landroidx/mediarouter/media/g$e;->q:Landroidx/mediarouter/media/c$e;

    check-cast v2, Landroidx/mediarouter/media/c$b;

    .line 11
    iget-object v3, v5, Landroidx/mediarouter/media/g$h;->b:Ljava/lang/String;

    .line 12
    invoke-virtual {v2, v3}, Landroidx/mediarouter/media/c$b;->l(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 13
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring attempt to add a non-groupable route to dynamic group : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_3
    iget-object v5, p0, Landroidx/mediarouter/app/e$h$g$a;->r:Landroidx/mediarouter/app/e$h$g;

    iget-object v6, v5, Landroidx/mediarouter/app/e$h$g;->n:Landroidx/mediarouter/app/e$h;

    iget-object v6, v6, Landroidx/mediarouter/app/e$h;->j:Landroidx/mediarouter/app/e;

    iget-object v6, v6, Landroidx/mediarouter/app/e;->r:Landroidx/mediarouter/media/g;

    iget-object v5, v5, Landroidx/mediarouter/app/e$f;->a:Landroidx/mediarouter/media/g$h;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {}, Landroidx/mediarouter/media/g;->b()V

    .line 17
    sget-object v6, Landroidx/mediarouter/media/g;->d:Landroidx/mediarouter/media/g$e;

    .line 18
    iget-object v7, v6, Landroidx/mediarouter/media/g$e;->q:Landroidx/mediarouter/media/c$e;

    instance-of v7, v7, Landroidx/mediarouter/media/c$b;

    if-eqz v7, :cond_13

    .line 19
    iget-object v3, v6, Landroidx/mediarouter/media/g$e;->p:Landroidx/mediarouter/media/g$h;

    invoke-virtual {v3, v5}, Landroidx/mediarouter/media/g$h;->b(Landroidx/mediarouter/media/g$h;)Landroidx/mediarouter/media/g$h$a;

    move-result-object v3

    .line 20
    iget-object v7, v6, Landroidx/mediarouter/media/g$e;->p:Landroidx/mediarouter/media/g$h;

    invoke-virtual {v7}, Landroidx/mediarouter/media/g$h;->c()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    if-eqz v3, :cond_8

    .line 21
    iget-object v3, v3, Landroidx/mediarouter/media/g$h$a;->a:Landroidx/mediarouter/media/c$b$a;

    if-eqz v3, :cond_5

    .line 22
    iget-boolean v3, v3, Landroidx/mediarouter/media/c$b$a;->c:Z

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-nez v3, :cond_6

    goto :goto_3

    .line 23
    :cond_6
    iget-object v3, v6, Landroidx/mediarouter/media/g$e;->p:Landroidx/mediarouter/media/g$h;

    invoke-virtual {v3}, Landroidx/mediarouter/media/g$h;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v0, :cond_7

    const-string v3, "Ignoring attempt to remove the last member route."

    .line 24
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 25
    :cond_7
    iget-object v2, v6, Landroidx/mediarouter/media/g$e;->q:Landroidx/mediarouter/media/c$e;

    check-cast v2, Landroidx/mediarouter/media/c$b;

    .line 26
    iget-object v3, v5, Landroidx/mediarouter/media/g$h;->b:Ljava/lang/String;

    .line 27
    invoke-virtual {v2, v3}, Landroidx/mediarouter/media/c$b;->m(Ljava/lang/String;)V

    goto :goto_4

    .line 28
    :cond_8
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring attempt to remove a non-unselectable member route : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :goto_4
    iget-object v2, p0, Landroidx/mediarouter/app/e$h$g$a;->r:Landroidx/mediarouter/app/e$h$g;

    xor-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, p1, v3}, Landroidx/mediarouter/app/e$h$g;->d(ZZ)V

    if-eqz v1, :cond_a

    .line 30
    iget-object v1, p0, Landroidx/mediarouter/app/e$h$g$a;->r:Landroidx/mediarouter/app/e$h$g;

    iget-object v1, v1, Landroidx/mediarouter/app/e$h$g;->n:Landroidx/mediarouter/app/e$h;

    iget-object v1, v1, Landroidx/mediarouter/app/e$h;->j:Landroidx/mediarouter/app/e;

    iget-object v1, v1, Landroidx/mediarouter/app/e;->u:Landroidx/mediarouter/media/g$h;

    .line 31
    invoke-virtual {v1}, Landroidx/mediarouter/media/g$h;->c()Ljava/util/List;

    move-result-object v1

    .line 32
    iget-object v2, p0, Landroidx/mediarouter/app/e$h$g$a;->r:Landroidx/mediarouter/app/e$h$g;

    iget-object v2, v2, Landroidx/mediarouter/app/e$f;->a:Landroidx/mediarouter/media/g$h;

    invoke-virtual {v2}, Landroidx/mediarouter/media/g$h;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/mediarouter/media/g$h;

    .line 33
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eq v5, p1, :cond_9

    .line 34
    iget-object v5, p0, Landroidx/mediarouter/app/e$h$g$a;->r:Landroidx/mediarouter/app/e$h$g;

    iget-object v5, v5, Landroidx/mediarouter/app/e$h$g;->n:Landroidx/mediarouter/app/e$h;

    iget-object v5, v5, Landroidx/mediarouter/app/e$h;->j:Landroidx/mediarouter/app/e;

    iget-object v5, v5, Landroidx/mediarouter/app/e;->H:Ljava/util/Map;

    .line 35
    iget-object v3, v3, Landroidx/mediarouter/media/g$h;->c:Ljava/lang/String;

    .line 36
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/mediarouter/app/e$f;

    .line 37
    instance-of v5, v3, Landroidx/mediarouter/app/e$h$g;

    if-eqz v5, :cond_9

    .line 38
    check-cast v3, Landroidx/mediarouter/app/e$h$g;

    .line 39
    invoke-virtual {v3, p1, v0}, Landroidx/mediarouter/app/e$h$g;->d(ZZ)V

    goto :goto_5

    .line 40
    :cond_a
    iget-object v1, p0, Landroidx/mediarouter/app/e$h$g$a;->r:Landroidx/mediarouter/app/e$h$g;

    iget-object v2, v1, Landroidx/mediarouter/app/e$h$g;->n:Landroidx/mediarouter/app/e$h;

    iget-object v1, v1, Landroidx/mediarouter/app/e$f;->a:Landroidx/mediarouter/media/g$h;

    .line 41
    iget-object v3, v2, Landroidx/mediarouter/app/e$h;->j:Landroidx/mediarouter/app/e;

    iget-object v3, v3, Landroidx/mediarouter/app/e;->u:Landroidx/mediarouter/media/g$h;

    invoke-virtual {v3}, Landroidx/mediarouter/media/g$h;->c()Ljava/util/List;

    move-result-object v3

    .line 42
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 43
    invoke-virtual {v1}, Landroidx/mediarouter/media/g$h;->f()Z

    move-result v6

    const/4 v7, -0x1

    if-eqz v6, :cond_d

    .line 44
    invoke-virtual {v1}, Landroidx/mediarouter/media/g$h;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/mediarouter/media/g$h;

    .line 45
    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eq v6, p1, :cond_b

    if-eqz p1, :cond_c

    const/4 v6, 0x1

    goto :goto_7

    :cond_c
    const/4 v6, -0x1

    :goto_7
    add-int/2addr v5, v6

    goto :goto_6

    :cond_d
    if-eqz p1, :cond_e

    const/4 v7, 0x1

    :cond_e
    add-int/2addr v5, v7

    .line 46
    :cond_f
    invoke-virtual {v2}, Landroidx/mediarouter/app/e$h;->h()Z

    move-result p1

    const/4 v1, 0x2

    if-lt v5, v1, :cond_10

    goto :goto_8

    :cond_10
    const/4 v0, 0x0

    :goto_8
    if-eq p1, v0, :cond_12

    .line 47
    iget-object p1, v2, Landroidx/mediarouter/app/e$h;->j:Landroidx/mediarouter/app/e;

    iget-object p1, p1, Landroidx/mediarouter/app/e;->E:Landroidx/recyclerview/widget/RecyclerView;

    .line 48
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->M(I)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object p1

    .line 49
    instance-of v1, p1, Landroidx/mediarouter/app/e$h$d;

    if-eqz v1, :cond_12

    .line 50
    check-cast p1, Landroidx/mediarouter/app/e$h$d;

    .line 51
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    if-eqz v0, :cond_11

    .line 52
    iget v4, p1, Landroidx/mediarouter/app/e$h$d;->f:I

    .line 53
    :cond_11
    invoke-virtual {v2, v1, v4}, Landroidx/mediarouter/app/e$h;->f(Landroid/view/View;I)V

    :cond_12
    return-void

    .line 54
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
