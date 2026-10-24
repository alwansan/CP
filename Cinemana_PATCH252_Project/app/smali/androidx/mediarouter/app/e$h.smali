.class public final Landroidx/mediarouter/app/e$h;
.super Landroidx/recyclerview/widget/RecyclerView$e;
.source "MediaRouteDynamicControllerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/app/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/app/e$h$c;,
        Landroidx/mediarouter/app/e$h$g;,
        Landroidx/mediarouter/app/e$h$e;,
        Landroidx/mediarouter/app/e$h$d;,
        Landroidx/mediarouter/app/e$h$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$e<",
        "Landroidx/recyclerview/widget/RecyclerView$b0;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/mediarouter/app/e$h$f;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/view/LayoutInflater;

.field public final c:Landroid/graphics/drawable/Drawable;

.field public final d:Landroid/graphics/drawable/Drawable;

.field public final e:Landroid/graphics/drawable/Drawable;

.field public final f:Landroid/graphics/drawable/Drawable;

.field public g:Landroidx/mediarouter/app/e$h$f;

.field public final h:I

.field public final i:Landroid/view/animation/Interpolator;

.field public final synthetic j:Landroidx/mediarouter/app/e;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/e;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/e$h;->j:Landroidx/mediarouter/app/e;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$e;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/app/e$h;->a:Ljava/util/ArrayList;

    .line 3
    iget-object v0, p1, Landroidx/mediarouter/app/e;->z:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/app/e$h;->b:Landroid/view/LayoutInflater;

    .line 4
    iget-object v0, p1, Landroidx/mediarouter/app/e;->z:Landroid/content/Context;

    const v1, 0x7f04030a

    .line 5
    invoke-static {v0, v1}, Landroidx/mediarouter/app/h;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 6
    iput-object v0, p0, Landroidx/mediarouter/app/e$h;->c:Landroid/graphics/drawable/Drawable;

    .line 7
    iget-object v0, p1, Landroidx/mediarouter/app/e;->z:Landroid/content/Context;

    const v1, 0x7f040313

    .line 8
    invoke-static {v0, v1}, Landroidx/mediarouter/app/h;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 9
    iput-object v0, p0, Landroidx/mediarouter/app/e$h;->d:Landroid/graphics/drawable/Drawable;

    .line 10
    iget-object v0, p1, Landroidx/mediarouter/app/e;->z:Landroid/content/Context;

    const v1, 0x7f040310

    .line 11
    invoke-static {v0, v1}, Landroidx/mediarouter/app/h;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 12
    iput-object v0, p0, Landroidx/mediarouter/app/e$h;->e:Landroid/graphics/drawable/Drawable;

    .line 13
    iget-object v0, p1, Landroidx/mediarouter/app/e;->z:Landroid/content/Context;

    const v1, 0x7f04030f

    .line 14
    invoke-static {v0, v1}, Landroidx/mediarouter/app/h;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 15
    iput-object v0, p0, Landroidx/mediarouter/app/e$h;->f:Landroid/graphics/drawable/Drawable;

    .line 16
    iget-object p1, p1, Landroidx/mediarouter/app/e;->z:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0019

    .line 17
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Landroidx/mediarouter/app/e$h;->h:I

    .line 18
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p1, p0, Landroidx/mediarouter/app/e$h;->i:Landroid/view/animation/Interpolator;

    .line 19
    invoke-virtual {p0}, Landroidx/mediarouter/app/e$h;->j()V

    return-void
.end method


# virtual methods
.method public f(Landroid/view/View;I)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2
    new-instance v1, Landroidx/mediarouter/app/e$h$a;

    invoke-direct {v1, p0, p2, v0, p1}, Landroidx/mediarouter/app/e$h$a;-><init>(Landroidx/mediarouter/app/e$h;IILandroid/view/View;)V

    .line 3
    new-instance p2, Landroidx/mediarouter/app/e$h$b;

    invoke-direct {p2, p0}, Landroidx/mediarouter/app/e$h$b;-><init>(Landroidx/mediarouter/app/e$h;)V

    invoke-virtual {v1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4
    iget p2, p0, Landroidx/mediarouter/app/e$h;->h:I

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 5
    iget-object p2, p0, Landroidx/mediarouter/app/e$h;->i:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public g(Landroidx/mediarouter/media/g$h;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    iget-object v0, p1, Landroidx/mediarouter/media/g$h;->f:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/mediarouter/app/e$h;->j:Landroidx/mediarouter/app/e;

    iget-object v1, v1, Landroidx/mediarouter/app/e;->z:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return-object v0

    :catch_0
    move-exception v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MediaRouteCtrlDialog"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    :cond_0
    iget v0, p1, Landroidx/mediarouter/media/g$h;->m:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 6
    invoke-virtual {p1}, Landroidx/mediarouter/media/g$h;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Landroidx/mediarouter/app/e$h;->f:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Landroidx/mediarouter/app/e$h;->c:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Landroidx/mediarouter/app/e$h;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 10
    :cond_3
    iget-object p1, p0, Landroidx/mediarouter/app/e$h;->d:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/e$h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Landroidx/mediarouter/app/e$h;->g:Landroidx/mediarouter/app/e$h$f;

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/e$h;->a:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/mediarouter/app/e$h$f;

    .line 3
    :goto_0
    iget p1, p1, Landroidx/mediarouter/app/e$h$f;->b:I

    return p1
.end method

.method public h()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/e$h;->j:Landroidx/mediarouter/app/e;

    iget-object v0, v0, Landroidx/mediarouter/app/e;->u:Landroidx/mediarouter/media/g$h;

    invoke-virtual {v0}, Landroidx/mediarouter/media/g$h;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public i()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/e$h;->j:Landroidx/mediarouter/app/e;

    iget-object v0, v0, Landroidx/mediarouter/app/e;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Landroidx/mediarouter/app/e$h;->j:Landroidx/mediarouter/app/e;

    iget-object v1, v0, Landroidx/mediarouter/app/e;->y:Ljava/util/List;

    iget-object v2, v0, Landroidx/mediarouter/app/e;->w:Ljava/util/List;

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v4, v0, Landroidx/mediarouter/app/e;->u:Landroidx/mediarouter/media/g$h;

    .line 5
    iget-object v4, v4, Landroidx/mediarouter/media/g$h;->a:Landroidx/mediarouter/media/g$g;

    .line 6
    invoke-virtual {v4}, Landroidx/mediarouter/media/g$g;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/mediarouter/media/g$h;

    .line 7
    iget-object v6, v0, Landroidx/mediarouter/app/e;->u:Landroidx/mediarouter/media/g$h;

    .line 8
    invoke-virtual {v6, v5}, Landroidx/mediarouter/media/g$h;->b(Landroidx/mediarouter/media/g$h;)Landroidx/mediarouter/media/g$h$a;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 9
    invoke-virtual {v6}, Landroidx/mediarouter/media/g$h$a;->a()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 10
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 12
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 13
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    return-void
.end method

.method public j()V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/e$h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    new-instance v0, Landroidx/mediarouter/app/e$h$f;

    iget-object v1, p0, Landroidx/mediarouter/app/e$h;->j:Landroidx/mediarouter/app/e;

    iget-object v2, v1, Landroidx/mediarouter/app/e;->u:Landroidx/mediarouter/media/g$h;

    const/4 v3, 0x1

    invoke-direct {v0, p0, v2, v3}, Landroidx/mediarouter/app/e$h$f;-><init>(Landroidx/mediarouter/app/e$h;Ljava/lang/Object;I)V

    iput-object v0, p0, Landroidx/mediarouter/app/e$h;->g:Landroidx/mediarouter/app/e$h$f;

    .line 3
    iget-object v0, v1, Landroidx/mediarouter/app/e;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Landroidx/mediarouter/app/e$h;->j:Landroidx/mediarouter/app/e;

    iget-object v0, v0, Landroidx/mediarouter/app/e;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/media/g$h;

    .line 5
    iget-object v4, p0, Landroidx/mediarouter/app/e$h;->a:Ljava/util/ArrayList;

    new-instance v5, Landroidx/mediarouter/app/e$h$f;

    invoke-direct {v5, p0, v2, v1}, Landroidx/mediarouter/app/e$h$f;-><init>(Landroidx/mediarouter/app/e$h;Ljava/lang/Object;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/e$h;->a:Ljava/util/ArrayList;

    new-instance v2, Landroidx/mediarouter/app/e$h$f;

    iget-object v4, p0, Landroidx/mediarouter/app/e$h;->j:Landroidx/mediarouter/app/e;

    iget-object v4, v4, Landroidx/mediarouter/app/e;->u:Landroidx/mediarouter/media/g$h;

    invoke-direct {v2, p0, v4, v1}, Landroidx/mediarouter/app/e$h$f;-><init>(Landroidx/mediarouter/app/e$h;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    iget-object v0, p0, Landroidx/mediarouter/app/e$h;->j:Landroidx/mediarouter/app/e;

    iget-object v0, v0, Landroidx/mediarouter/app/e;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v0, :cond_6

    .line 8
    iget-object v0, p0, Landroidx/mediarouter/app/e$h;->j:Landroidx/mediarouter/app/e;

    iget-object v0, v0, Landroidx/mediarouter/app/e;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v6, 0x0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/mediarouter/media/g$h;

    .line 9
    iget-object v8, p0, Landroidx/mediarouter/app/e$h;->j:Landroidx/mediarouter/app/e;

    iget-object v8, v8, Landroidx/mediarouter/app/e;->v:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    if-nez v6, :cond_5

    .line 10
    iget-object v6, p0, Landroidx/mediarouter/app/e$h;->j:Landroidx/mediarouter/app/e;

    iget-object v6, v6, Landroidx/mediarouter/app/e;->u:Landroidx/mediarouter/media/g$h;

    .line 11
    invoke-virtual {v6}, Landroidx/mediarouter/media/g$h;->a()Landroidx/mediarouter/media/c$b;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 12
    invoke-virtual {v6}, Landroidx/mediarouter/media/c$b;->j()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_3
    move-object v6, v4

    .line 13
    :goto_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 14
    iget-object v6, p0, Landroidx/mediarouter/app/e$h;->j:Landroidx/mediarouter/app/e;

    iget-object v6, v6, Landroidx/mediarouter/app/e;->z:Landroid/content/Context;

    const v8, 0x7f1201a0

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 15
    :cond_4
    iget-object v8, p0, Landroidx/mediarouter/app/e$h;->a:Ljava/util/ArrayList;

    new-instance v9, Landroidx/mediarouter/app/e$h$f;

    invoke-direct {v9, p0, v6, v2}, Landroidx/mediarouter/app/e$h$f;-><init>(Landroidx/mediarouter/app/e$h;Ljava/lang/Object;I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    .line 16
    :cond_5
    iget-object v8, p0, Landroidx/mediarouter/app/e$h;->a:Ljava/util/ArrayList;

    new-instance v9, Landroidx/mediarouter/app/e$h$f;

    invoke-direct {v9, p0, v7, v1}, Landroidx/mediarouter/app/e$h$f;-><init>(Landroidx/mediarouter/app/e$h;Ljava/lang/Object;I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 17
    :cond_6
    iget-object v0, p0, Landroidx/mediarouter/app/e$h;->j:Landroidx/mediarouter/app/e;

    iget-object v0, v0, Landroidx/mediarouter/app/e;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 18
    iget-object v0, p0, Landroidx/mediarouter/app/e$h;->j:Landroidx/mediarouter/app/e;

    iget-object v0, v0, Landroidx/mediarouter/app/e;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/mediarouter/media/g$h;

    .line 19
    iget-object v6, p0, Landroidx/mediarouter/app/e$h;->j:Landroidx/mediarouter/app/e;

    iget-object v6, v6, Landroidx/mediarouter/app/e;->u:Landroidx/mediarouter/media/g$h;

    if-eq v6, v1, :cond_7

    if-nez v5, :cond_a

    .line 20
    invoke-virtual {v6}, Landroidx/mediarouter/media/g$h;->a()Landroidx/mediarouter/media/c$b;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 21
    invoke-virtual {v5}, Landroidx/mediarouter/media/c$b;->k()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_8
    move-object v5, v4

    .line 22
    :goto_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 23
    iget-object v5, p0, Landroidx/mediarouter/app/e$h;->j:Landroidx/mediarouter/app/e;

    iget-object v5, v5, Landroidx/mediarouter/app/e;->z:Landroid/content/Context;

    const v6, 0x7f1201a1

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 24
    :cond_9
    iget-object v6, p0, Landroidx/mediarouter/app/e$h;->a:Ljava/util/ArrayList;

    new-instance v7, Landroidx/mediarouter/app/e$h$f;

    invoke-direct {v7, p0, v5, v2}, Landroidx/mediarouter/app/e$h$f;-><init>(Landroidx/mediarouter/app/e$h;Ljava/lang/Object;I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    .line 25
    :cond_a
    iget-object v6, p0, Landroidx/mediarouter/app/e$h;->a:Ljava/util/ArrayList;

    new-instance v7, Landroidx/mediarouter/app/e$h$f;

    const/4 v8, 0x4

    invoke-direct {v7, p0, v1, v8}, Landroidx/mediarouter/app/e$h$f;-><init>(Landroidx/mediarouter/app/e$h;Ljava/lang/Object;I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 26
    :cond_b
    invoke-virtual {p0}, Landroidx/mediarouter/app/e$h;->i()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 8

    .line 1
    invoke-virtual {p0, p2}, Landroidx/mediarouter/app/e$h;->getItemViewType(I)I

    move-result v0

    if-nez p2, :cond_0

    .line 2
    iget-object p2, p0, Landroidx/mediarouter/app/e$h;->g:Landroidx/mediarouter/app/e$h$f;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Landroidx/mediarouter/app/e$h;->a:Ljava/util/ArrayList;

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/mediarouter/app/e$h$f;

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_17

    const/4 v3, 0x2

    if-eq v0, v3, :cond_16

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/high16 v6, 0x3f800000    # 1.0f

    if-eq v0, v4, :cond_4

    if-eq v0, v5, :cond_1

    const-string p1, "MediaRouteCtrlDialog"

    const-string p2, "Cannot bind item to ViewHolder because of wrong view type"

    .line 4
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 5
    :cond_1
    check-cast p1, Landroidx/mediarouter/app/e$h$c;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p2, p2, Landroidx/mediarouter/app/e$h$f;->a:Ljava/lang/Object;

    .line 7
    check-cast p2, Landroidx/mediarouter/media/g$h;

    .line 8
    iput-object p2, p1, Landroidx/mediarouter/app/e$h$c;->f:Landroidx/mediarouter/media/g$h;

    .line 9
    iget-object v0, p1, Landroidx/mediarouter/app/e$h$c;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object v0, p1, Landroidx/mediarouter/app/e$h$c;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 11
    iget-object v0, p1, Landroidx/mediarouter/app/e$h$c;->g:Landroidx/mediarouter/app/e$h;

    iget-object v0, v0, Landroidx/mediarouter/app/e$h;->j:Landroidx/mediarouter/app/e;

    iget-object v0, v0, Landroidx/mediarouter/app/e;->u:Landroidx/mediarouter/media/g$h;

    .line 12
    invoke-virtual {v0}, Landroidx/mediarouter/media/g$h;->c()Ljava/util/List;

    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_2

    const/4 v1, 0x0

    .line 14
    :cond_2
    iget-object v0, p1, Landroidx/mediarouter/app/e$h$c;->a:Landroid/view/View;

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    iget v6, p1, Landroidx/mediarouter/app/e$h$c;->e:F

    :goto_1
    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    .line 15
    iget-object v0, p1, Landroidx/mediarouter/app/e$h$c;->a:Landroid/view/View;

    new-instance v1, Landroidx/mediarouter/app/f;

    invoke-direct {v1, p1}, Landroidx/mediarouter/app/f;-><init>(Landroidx/mediarouter/app/e$h$c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object v0, p1, Landroidx/mediarouter/app/e$h$c;->b:Landroid/widget/ImageView;

    iget-object v1, p1, Landroidx/mediarouter/app/e$h$c;->g:Landroidx/mediarouter/app/e$h;

    invoke-virtual {v1, p2}, Landroidx/mediarouter/app/e$h;->g(Landroidx/mediarouter/media/g$h;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 17
    iget-object p1, p1, Landroidx/mediarouter/app/e$h$c;->d:Landroid/widget/TextView;

    .line 18
    iget-object p2, p2, Landroidx/mediarouter/media/g$h;->d:Ljava/lang/String;

    .line 19
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 20
    :cond_4
    iget-object v0, p2, Landroidx/mediarouter/app/e$h$f;->a:Ljava/lang/Object;

    .line 21
    check-cast v0, Landroidx/mediarouter/media/g$h;

    .line 22
    iget-object v4, p0, Landroidx/mediarouter/app/e$h;->j:Landroidx/mediarouter/app/e;

    iget-object v4, v4, Landroidx/mediarouter/app/e;->H:Ljava/util/Map;

    .line 23
    iget-object v0, v0, Landroidx/mediarouter/media/g$h;->c:Ljava/lang/String;

    .line 24
    move-object v7, p1

    check-cast v7, Landroidx/mediarouter/app/e$f;

    .line 25
    invoke-interface {v4, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    check-cast p1, Landroidx/mediarouter/app/e$h$g;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object p2, p2, Landroidx/mediarouter/app/e$h$f;->a:Ljava/lang/Object;

    .line 28
    check-cast p2, Landroidx/mediarouter/media/g$h;

    .line 29
    iget-object v0, p1, Landroidx/mediarouter/app/e$h$g;->n:Landroidx/mediarouter/app/e$h;

    iget-object v0, v0, Landroidx/mediarouter/app/e$h;->j:Landroidx/mediarouter/app/e;

    iget-object v0, v0, Landroidx/mediarouter/app/e;->u:Landroidx/mediarouter/media/g$h;

    if-ne p2, v0, :cond_6

    invoke-virtual {p2}, Landroidx/mediarouter/media/g$h;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 30
    invoke-virtual {p2}, Landroidx/mediarouter/media/g$h;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/mediarouter/media/g$h;

    .line 31
    iget-object v7, p1, Landroidx/mediarouter/app/e$h$g;->n:Landroidx/mediarouter/app/e$h;

    iget-object v7, v7, Landroidx/mediarouter/app/e$h;->j:Landroidx/mediarouter/app/e;

    iget-object v7, v7, Landroidx/mediarouter/app/e;->w:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    move-object p2, v4

    .line 32
    :cond_6
    invoke-virtual {p1, p2}, Landroidx/mediarouter/app/e$f;->a(Landroidx/mediarouter/media/g$h;)V

    .line 33
    iget-object v0, p1, Landroidx/mediarouter/app/e$h$g;->f:Landroid/widget/ImageView;

    iget-object v4, p1, Landroidx/mediarouter/app/e$h$g;->n:Landroidx/mediarouter/app/e$h;

    invoke-virtual {v4, p2}, Landroidx/mediarouter/app/e$h;->g(Landroidx/mediarouter/media/g$h;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    iget-object v0, p1, Landroidx/mediarouter/app/e$h$g;->h:Landroid/widget/TextView;

    .line 35
    iget-object v4, p2, Landroidx/mediarouter/media/g$h;->d:Ljava/lang/String;

    .line 36
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v0, p1, Landroidx/mediarouter/app/e$h$g;->j:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 38
    invoke-virtual {p1, p2}, Landroidx/mediarouter/app/e$h$g;->c(Landroidx/mediarouter/media/g$h;)Z

    move-result v0

    .line 39
    iget-object v4, p1, Landroidx/mediarouter/app/e$h$g;->n:Landroidx/mediarouter/app/e$h;

    iget-object v4, v4, Landroidx/mediarouter/app/e$h;->j:Landroidx/mediarouter/app/e;

    iget-object v4, v4, Landroidx/mediarouter/app/e;->y:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_4

    .line 40
    :cond_7
    invoke-virtual {p1, p2}, Landroidx/mediarouter/app/e$h$g;->c(Landroidx/mediarouter/media/g$h;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p1, Landroidx/mediarouter/app/e$h$g;->n:Landroidx/mediarouter/app/e$h;

    iget-object v4, v4, Landroidx/mediarouter/app/e$h;->j:Landroidx/mediarouter/app/e;

    iget-object v4, v4, Landroidx/mediarouter/app/e;->u:Landroidx/mediarouter/media/g$h;

    invoke-virtual {v4}, Landroidx/mediarouter/media/g$h;->c()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v3, :cond_8

    goto :goto_4

    .line 41
    :cond_8
    invoke-virtual {p1, p2}, Landroidx/mediarouter/app/e$h$g;->c(Landroidx/mediarouter/media/g$h;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 42
    iget-object v3, p1, Landroidx/mediarouter/app/e$h$g;->n:Landroidx/mediarouter/app/e$h;

    iget-object v3, v3, Landroidx/mediarouter/app/e$h;->j:Landroidx/mediarouter/app/e;

    iget-object v3, v3, Landroidx/mediarouter/app/e;->u:Landroidx/mediarouter/media/g$h;

    .line 43
    invoke-virtual {v3, p2}, Landroidx/mediarouter/media/g$h;->b(Landroidx/mediarouter/media/g$h;)Landroidx/mediarouter/media/g$h$a;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 44
    iget-object p2, p2, Landroidx/mediarouter/media/g$h$a;->a:Landroidx/mediarouter/media/c$b$a;

    if-eqz p2, :cond_a

    .line 45
    iget-boolean p2, p2, Landroidx/mediarouter/media/c$b$a;->c:Z

    if-eqz p2, :cond_9

    goto :goto_2

    :cond_9
    const/4 p2, 0x0

    goto :goto_3

    :cond_a
    :goto_2
    const/4 p2, 0x1

    :goto_3
    if-eqz p2, :cond_b

    goto :goto_5

    :cond_b
    :goto_4
    const/4 p2, 0x0

    goto :goto_6

    :cond_c
    :goto_5
    const/4 p2, 0x1

    .line 46
    :goto_6
    iget-object v3, p1, Landroidx/mediarouter/app/e$h$g;->j:Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 47
    iget-object v3, p1, Landroidx/mediarouter/app/e$h$g;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 48
    iget-object v3, p1, Landroidx/mediarouter/app/e$h$g;->f:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 49
    iget-object v3, p1, Landroidx/mediarouter/app/e$h$g;->e:Landroid/view/View;

    invoke-virtual {v3, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 50
    iget-object v3, p1, Landroidx/mediarouter/app/e$h$g;->j:Landroid/widget/CheckBox;

    invoke-virtual {v3, p2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 51
    iget-object v3, p1, Landroidx/mediarouter/app/e$f;->b:Landroid/widget/ImageButton;

    if-nez p2, :cond_e

    if-eqz v0, :cond_d

    goto :goto_7

    :cond_d
    const/4 v4, 0x0

    goto :goto_8

    :cond_e
    :goto_7
    const/4 v4, 0x1

    :goto_8
    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 52
    iget-object v3, p1, Landroidx/mediarouter/app/e$f;->c:Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    if-nez p2, :cond_10

    if-eqz v0, :cond_f

    goto :goto_9

    :cond_f
    const/4 v1, 0x0

    :cond_10
    :goto_9
    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 53
    iget-object v1, p1, Landroidx/mediarouter/app/e$h$g;->e:Landroid/view/View;

    iget-object v3, p1, Landroidx/mediarouter/app/e$h$g;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v1, p1, Landroidx/mediarouter/app/e$h$g;->j:Landroid/widget/CheckBox;

    iget-object v3, p1, Landroidx/mediarouter/app/e$h$g;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v1, p1, Landroidx/mediarouter/app/e$h$g;->i:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_11

    .line 56
    iget-object v3, p1, Landroidx/mediarouter/app/e$f;->a:Landroidx/mediarouter/media/g$h;

    invoke-virtual {v3}, Landroidx/mediarouter/media/g$h;->f()Z

    move-result v3

    if-nez v3, :cond_11

    .line 57
    iget v2, p1, Landroidx/mediarouter/app/e$h$g;->l:I

    .line 58
    :cond_11
    invoke-static {v1, v2}, Landroidx/mediarouter/app/e;->d(Landroid/view/View;I)V

    .line 59
    iget-object v1, p1, Landroidx/mediarouter/app/e$h$g;->e:Landroid/view/View;

    if-nez p2, :cond_13

    if-eqz v0, :cond_12

    goto :goto_a

    :cond_12
    iget v2, p1, Landroidx/mediarouter/app/e$h$g;->k:F

    goto :goto_b

    :cond_13
    :goto_a
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_b
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 60
    iget-object v1, p1, Landroidx/mediarouter/app/e$h$g;->j:Landroid/widget/CheckBox;

    if-nez p2, :cond_15

    if-nez v0, :cond_14

    goto :goto_c

    :cond_14
    iget v6, p1, Landroidx/mediarouter/app/e$h$g;->k:F

    :cond_15
    :goto_c
    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setAlpha(F)V

    goto :goto_d

    .line 61
    :cond_16
    check-cast p1, Landroidx/mediarouter/app/e$h$e;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object p2, p2, Landroidx/mediarouter/app/e$h$f;->a:Ljava/lang/Object;

    .line 63
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 64
    iget-object p1, p1, Landroidx/mediarouter/app/e$h$e;->a:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 65
    :cond_17
    iget-object v0, p2, Landroidx/mediarouter/app/e$h$f;->a:Ljava/lang/Object;

    .line 66
    check-cast v0, Landroidx/mediarouter/media/g$h;

    .line 67
    iget-object v1, p0, Landroidx/mediarouter/app/e$h;->j:Landroidx/mediarouter/app/e;

    iget-object v1, v1, Landroidx/mediarouter/app/e;->H:Ljava/util/Map;

    .line 68
    iget-object v0, v0, Landroidx/mediarouter/media/g$h;->c:Ljava/lang/String;

    .line 69
    move-object v3, p1

    check-cast v3, Landroidx/mediarouter/app/e$f;

    .line 70
    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    check-cast p1, Landroidx/mediarouter/app/e$h$d;

    .line 72
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    iget-object v1, p1, Landroidx/mediarouter/app/e$h$d;->g:Landroidx/mediarouter/app/e$h;

    invoke-virtual {v1}, Landroidx/mediarouter/app/e$h;->h()Z

    move-result v1

    if-eqz v1, :cond_18

    iget v2, p1, Landroidx/mediarouter/app/e$h$d;->f:I

    :cond_18
    invoke-static {v0, v2}, Landroidx/mediarouter/app/e;->d(Landroid/view/View;I)V

    .line 73
    iget-object p2, p2, Landroidx/mediarouter/app/e$h$f;->a:Ljava/lang/Object;

    .line 74
    check-cast p2, Landroidx/mediarouter/media/g$h;

    .line 75
    invoke-virtual {p1, p2}, Landroidx/mediarouter/app/e$f;->a(Landroidx/mediarouter/media/g$h;)V

    .line 76
    iget-object p1, p1, Landroidx/mediarouter/app/e$h$d;->e:Landroid/widget/TextView;

    .line 77
    iget-object p2, p2, Landroidx/mediarouter/media/g$h;->d:Ljava/lang/String;

    .line 78
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_d
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const-string p1, "MediaRouteCtrlDialog"

    const-string p2, "Cannot create ViewHolder because of wrong view type"

    .line 1
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object p2, p0, Landroidx/mediarouter/app/e$h;->b:Landroid/view/LayoutInflater;

    const v0, 0x7f0d00be

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Landroidx/mediarouter/app/e$h$c;

    invoke-direct {p2, p0, p1}, Landroidx/mediarouter/app/e$h$c;-><init>(Landroidx/mediarouter/app/e$h;Landroid/view/View;)V

    return-object p2

    .line 4
    :cond_1
    iget-object p2, p0, Landroidx/mediarouter/app/e$h;->b:Landroid/view/LayoutInflater;

    const v0, 0x7f0d00c2

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 5
    new-instance p2, Landroidx/mediarouter/app/e$h$g;

    invoke-direct {p2, p0, p1}, Landroidx/mediarouter/app/e$h$g;-><init>(Landroidx/mediarouter/app/e$h;Landroid/view/View;)V

    return-object p2

    .line 6
    :cond_2
    iget-object p2, p0, Landroidx/mediarouter/app/e$h;->b:Landroid/view/LayoutInflater;

    const v0, 0x7f0d00c0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 7
    new-instance p2, Landroidx/mediarouter/app/e$h$e;

    invoke-direct {p2, p0, p1}, Landroidx/mediarouter/app/e$h$e;-><init>(Landroidx/mediarouter/app/e$h;Landroid/view/View;)V

    return-object p2

    .line 8
    :cond_3
    iget-object p2, p0, Landroidx/mediarouter/app/e$h;->b:Landroid/view/LayoutInflater;

    const v0, 0x7f0d00bf

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 9
    new-instance p2, Landroidx/mediarouter/app/e$h$d;

    invoke-direct {p2, p0, p1}, Landroidx/mediarouter/app/e$h$d;-><init>(Landroidx/mediarouter/app/e$h;Landroid/view/View;)V

    return-object p2
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$e;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 2
    iget-object v0, p0, Landroidx/mediarouter/app/e$h;->j:Landroidx/mediarouter/app/e;

    iget-object v0, v0, Landroidx/mediarouter/app/e;->H:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method
