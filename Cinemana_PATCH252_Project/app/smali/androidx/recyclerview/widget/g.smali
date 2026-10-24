.class public final Landroidx/recyclerview/widget/g;
.super Landroidx/recyclerview/widget/RecyclerView$e;
.source "ConcatAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/g$a;
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
.field public final a:Landroidx/recyclerview/widget/h;


# direct methods
.method public varargs constructor <init>([Landroidx/recyclerview/widget/RecyclerView$e;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/recyclerview/widget/RecyclerView$e<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    sget-object v0, Landroidx/recyclerview/widget/g$a;->a:Landroidx/recyclerview/widget/g$a;

    .line 2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$e;-><init>()V

    .line 4
    new-instance v1, Landroidx/recyclerview/widget/h;

    invoke-direct {v1, p0, v0}, Landroidx/recyclerview/widget/h;-><init>(Landroidx/recyclerview/widget/g;Landroidx/recyclerview/widget/g$a;)V

    iput-object v1, p0, Landroidx/recyclerview/widget/g;->a:Landroidx/recyclerview/widget/h;

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$e;

    .line 6
    iget-object v3, p0, Landroidx/recyclerview/widget/g;->a:Landroidx/recyclerview/widget/h;

    .line 7
    iget-object v4, v3, Landroidx/recyclerview/widget/h;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ltz v4, :cond_a

    .line 8
    iget-object v5, v3, Landroidx/recyclerview/widget/h;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gt v4, v5, :cond_a

    .line 9
    iget v5, v3, Landroidx/recyclerview/widget/h;->g:I

    if-eq v5, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    .line 10
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$e;->hasStableIds()Z

    move-result v2

    const-string v5, "All sub adapters must have stable ids when stable id mode is ISOLATED_STABLE_IDS or SHARED_STABLE_IDS"

    invoke-static {v2, v5}, Lcom/shabakaty/downloader/fl3;->e(ZLjava/lang/Object;)V

    goto :goto_2

    .line 11
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$e;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "ConcatAdapter"

    const-string v5, "Stable ids in the adapter will be ignored as the ConcatAdapter is configured not to have stable ids"

    .line 12
    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_2
    :goto_2
    iget-object v2, v3, Landroidx/recyclerview/widget/h;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_3
    const/4 v5, -0x1

    if-ge v1, v2, :cond_4

    .line 14
    iget-object v6, v3, Landroidx/recyclerview/widget/h;->e:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/t;

    iget-object v6, v6, Landroidx/recyclerview/widget/t;->c:Landroidx/recyclerview/widget/RecyclerView$e;

    if-ne v6, v0, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, -0x1

    :goto_4
    if-ne v1, v5, :cond_5

    const/4 v1, 0x0

    goto :goto_5

    .line 15
    :cond_5
    iget-object v2, v3, Landroidx/recyclerview/widget/h;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/t;

    :goto_5
    if-eqz v1, :cond_6

    goto :goto_0

    .line 16
    :cond_6
    new-instance v1, Landroidx/recyclerview/widget/t;

    iget-object v2, v3, Landroidx/recyclerview/widget/h;->b:Landroidx/recyclerview/widget/j0;

    iget-object v5, v3, Landroidx/recyclerview/widget/h;->h:Landroidx/recyclerview/widget/g0;

    .line 17
    invoke-interface {v5}, Landroidx/recyclerview/widget/g0;->a()Landroidx/recyclerview/widget/g0$b;

    move-result-object v5

    invoke-direct {v1, v0, v3, v2, v5}, Landroidx/recyclerview/widget/t;-><init>(Landroidx/recyclerview/widget/RecyclerView$e;Landroidx/recyclerview/widget/t$b;Landroidx/recyclerview/widget/j0;Landroidx/recyclerview/widget/g0$b;)V

    .line 18
    iget-object v2, v3, Landroidx/recyclerview/widget/h;->e:Ljava/util/List;

    invoke-interface {v2, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 19
    iget-object v2, v3, Landroidx/recyclerview/widget/h;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 20
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v4, :cond_7

    .line 21
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView$e;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_6

    .line 22
    :cond_8
    iget v0, v1, Landroidx/recyclerview/widget/t;->e:I

    if-lez v0, :cond_9

    .line 23
    iget-object v0, v3, Landroidx/recyclerview/widget/h;->a:Landroidx/recyclerview/widget/g;

    .line 24
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/h;->b(Landroidx/recyclerview/widget/t;)I

    move-result v2

    .line 25
    iget v1, v1, Landroidx/recyclerview/widget/t;->e:I

    .line 26
    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyItemRangeInserted(II)V

    .line 27
    :cond_9
    invoke-virtual {v3}, Landroidx/recyclerview/widget/h;->a()V

    goto/16 :goto_0

    .line 28
    :cond_a
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Index must be between 0 and "

    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v3, Landroidx/recyclerview/widget/h;->e:Ljava/util/List;

    .line 29
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". Given:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_b
    iget-object p1, p0, Landroidx/recyclerview/widget/g;->a:Landroidx/recyclerview/widget/h;

    .line 31
    iget p1, p1, Landroidx/recyclerview/widget/h;->g:I

    if-eq p1, v2, :cond_c

    const/4 v1, 0x1

    .line 32
    :cond_c
    invoke-super {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$e;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public f()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$e<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/g;->a:Landroidx/recyclerview/widget/h;

    .line 2
    iget-object v1, v0, Landroidx/recyclerview/widget/h;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 4
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Landroidx/recyclerview/widget/h;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    iget-object v0, v0, Landroidx/recyclerview/widget/h;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/t;

    .line 6
    iget-object v2, v2, Landroidx/recyclerview/widget/t;->c:Landroidx/recyclerview/widget/RecyclerView$e;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 7
    :goto_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public findRelativeAdapterPositionIn(Landroidx/recyclerview/widget/RecyclerView$e;Landroidx/recyclerview/widget/RecyclerView$b0;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$e<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            ">;",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            "I)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/g;->a:Landroidx/recyclerview/widget/h;

    .line 2
    iget-object v1, v0, Landroidx/recyclerview/widget/h;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/t;

    if-nez v1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/h;->b(Landroidx/recyclerview/widget/t;)I

    move-result v0

    sub-int/2addr p3, v0

    .line 4
    iget-object v0, v1, Landroidx/recyclerview/widget/t;->c:Landroidx/recyclerview/widget/RecyclerView$e;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$e;->getItemCount()I

    move-result v0

    if-ltz p3, :cond_1

    if-ge p3, v0, :cond_1

    .line 5
    iget-object v0, v1, Landroidx/recyclerview/widget/t;->c:Landroidx/recyclerview/widget/RecyclerView$e;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$e;->findRelativeAdapterPositionIn(Landroidx/recyclerview/widget/RecyclerView$e;Landroidx/recyclerview/widget/RecyclerView$b0;I)I

    move-result p1

    :goto_0
    return p1

    .line 6
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detected inconsistent adapter updates. The local position of the view holder maps to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " which is out of bounds for the adapter with size "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ".Make sure to immediately call notify methods in your adapter when you change the backing dataviewHolder:"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "adapter:"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public g(Landroidx/recyclerview/widget/RecyclerView$e$a;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$e;->setStateRestorationPolicy(Landroidx/recyclerview/widget/RecyclerView$e$a;)V

    return-void
.end method

.method public getItemCount()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/g;->a:Landroidx/recyclerview/widget/h;

    .line 2
    iget-object v0, v0, Landroidx/recyclerview/widget/h;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/t;

    .line 3
    iget v2, v2, Landroidx/recyclerview/widget/t;->e:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getItemId(I)J
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/g;->a:Landroidx/recyclerview/widget/h;

    .line 2
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/h;->c(I)Landroidx/recyclerview/widget/h$a;

    move-result-object p1

    .line 3
    iget-object v1, p1, Landroidx/recyclerview/widget/h$a;->a:Landroidx/recyclerview/widget/t;

    iget v2, p1, Landroidx/recyclerview/widget/h$a;->b:I

    .line 4
    iget-object v3, v1, Landroidx/recyclerview/widget/t;->c:Landroidx/recyclerview/widget/RecyclerView$e;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView$e;->getItemId(I)J

    move-result-wide v2

    .line 5
    iget-object v1, v1, Landroidx/recyclerview/widget/t;->b:Landroidx/recyclerview/widget/g0$b;

    invoke-interface {v1, v2, v3}, Landroidx/recyclerview/widget/g0$b;->a(J)J

    move-result-wide v1

    .line 6
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/h;->e(Landroidx/recyclerview/widget/h$a;)V

    return-wide v1
.end method

.method public getItemViewType(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/g;->a:Landroidx/recyclerview/widget/h;

    .line 2
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/h;->c(I)Landroidx/recyclerview/widget/h$a;

    move-result-object p1

    .line 3
    iget-object v1, p1, Landroidx/recyclerview/widget/h$a;->a:Landroidx/recyclerview/widget/t;

    iget v2, p1, Landroidx/recyclerview/widget/h$a;->b:I

    .line 4
    iget-object v3, v1, Landroidx/recyclerview/widget/t;->a:Landroidx/recyclerview/widget/j0$b;

    iget-object v1, v1, Landroidx/recyclerview/widget/t;->c:Landroidx/recyclerview/widget/RecyclerView$e;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$e;->getItemViewType(I)I

    move-result v1

    invoke-interface {v3, v1}, Landroidx/recyclerview/widget/j0$b;->b(I)I

    move-result v1

    .line 5
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/h;->e(Landroidx/recyclerview/widget/h$a;)V

    return v1
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/g;->a:Landroidx/recyclerview/widget/h;

    .line 2
    iget-object v1, v0, Landroidx/recyclerview/widget/h;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    goto :goto_2

    .line 4
    :cond_2
    iget-object v1, v0, Landroidx/recyclerview/widget/h;->c:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, v0, Landroidx/recyclerview/widget/h;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/t;

    .line 6
    iget-object v1, v1, Landroidx/recyclerview/widget/t;->c:Landroidx/recyclerview/widget/RecyclerView$e;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$e;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/g;->a:Landroidx/recyclerview/widget/h;

    .line 2
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/h;->c(I)Landroidx/recyclerview/widget/h$a;

    move-result-object p2

    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/h;->d:Ljava/util/IdentityHashMap;

    iget-object v2, p2, Landroidx/recyclerview/widget/h$a;->a:Landroidx/recyclerview/widget/t;

    invoke-virtual {v1, p1, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p2, Landroidx/recyclerview/widget/h$a;->a:Landroidx/recyclerview/widget/t;

    iget v2, p2, Landroidx/recyclerview/widget/h$a;->b:I

    .line 5
    iget-object v1, v1, Landroidx/recyclerview/widget/t;->c:Landroidx/recyclerview/widget/RecyclerView$e;

    invoke-virtual {v1, p1, v2}, Landroidx/recyclerview/widget/RecyclerView$e;->bindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    .line 6
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/h;->e(Landroidx/recyclerview/widget/h$a;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/g;->a:Landroidx/recyclerview/widget/h;

    .line 2
    iget-object v0, v0, Landroidx/recyclerview/widget/h;->b:Landroidx/recyclerview/widget/j0;

    invoke-interface {v0, p2}, Landroidx/recyclerview/widget/j0;->a(I)Landroidx/recyclerview/widget/t;

    move-result-object v0

    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/t;->a:Landroidx/recyclerview/widget/j0$b;

    invoke-interface {v1, p2}, Landroidx/recyclerview/widget/j0$b;->a(I)I

    move-result p2

    .line 4
    iget-object v0, v0, Landroidx/recyclerview/widget/t;->c:Landroidx/recyclerview/widget/RecyclerView$e;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$e;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object p1

    return-object p1
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/g;->a:Landroidx/recyclerview/widget/h;

    .line 2
    iget-object v1, v0, Landroidx/recyclerview/widget/h;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    .line 3
    iget-object v2, v0, Landroidx/recyclerview/widget/h;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 5
    iget-object v2, v0, Landroidx/recyclerview/widget/h;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 7
    iget-object v2, v0, Landroidx/recyclerview/widget/h;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 8
    :cond_2
    iget-object v0, v0, Landroidx/recyclerview/widget/h;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/t;

    .line 9
    iget-object v1, v1, Landroidx/recyclerview/widget/t;->c:Landroidx/recyclerview/widget/RecyclerView$e;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$e;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$b0;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/g;->a:Landroidx/recyclerview/widget/h;

    .line 2
    iget-object v1, v0, Landroidx/recyclerview/widget/h;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/t;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, Landroidx/recyclerview/widget/t;->c:Landroidx/recyclerview/widget/RecyclerView$e;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$e;->onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$b0;)Z

    move-result v1

    .line 4
    iget-object v0, v0, Landroidx/recyclerview/widget/h;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find wrapper for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", seems like it is not bound by this adapter: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/g;->a:Landroidx/recyclerview/widget/h;

    .line 2
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/h;->d(Landroidx/recyclerview/widget/RecyclerView$b0;)Landroidx/recyclerview/widget/t;

    move-result-object v0

    .line 3
    iget-object v0, v0, Landroidx/recyclerview/widget/t;->c:Landroidx/recyclerview/widget/RecyclerView$e;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$e;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/g;->a:Landroidx/recyclerview/widget/h;

    .line 2
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/h;->d(Landroidx/recyclerview/widget/RecyclerView$b0;)Landroidx/recyclerview/widget/t;

    move-result-object v0

    .line 3
    iget-object v0, v0, Landroidx/recyclerview/widget/t;->c:Landroidx/recyclerview/widget/RecyclerView$e;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$e;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/g;->a:Landroidx/recyclerview/widget/h;

    .line 2
    iget-object v1, v0, Landroidx/recyclerview/widget/h;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/t;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, Landroidx/recyclerview/widget/t;->c:Landroidx/recyclerview/widget/RecyclerView$e;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$e;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 4
    iget-object v0, v0, Landroidx/recyclerview/widget/h;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find wrapper for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", seems like it is not bound by this adapter: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setHasStableIds(Z)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Calling setHasStableIds is not allowed on the ConcatAdapter. Use the Config object passed in the constructor to control this behavior"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStateRestorationPolicy(Landroidx/recyclerview/widget/RecyclerView$e$a;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Calling setStateRestorationPolicy is not allowed on the ConcatAdapter. This value is inferred from added adapters"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
