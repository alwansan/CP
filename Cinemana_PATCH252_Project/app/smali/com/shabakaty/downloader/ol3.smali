.class public Lcom/shabakaty/downloader/ol3;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/text/Spannable;Ljava/lang/Object;III)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0, p2, p3, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, p2, :cond_0

    .line 4
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, p3, :cond_0

    .line 5
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, p4, :cond_0

    .line 6
    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x5

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "."

    const-string v2, ",."

    invoke-static {v0, v1, p0, v2, p0}, Lcom/shabakaty/downloader/nl3;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " *"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/view/View;I)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    check-cast p0, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 4
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static final d(Lcom/shabakaty/downloader/vt3;)Lcom/shabakaty/downloader/pe0;
    .locals 3

    const-string v0, "$this$queryDispatcher"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vt3;->l:Ljava/util/Map;

    const-string v1, "backingFieldMap"

    .line 2
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "QueryDispatcher"

    .line 3
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 4
    iget-object p0, p0, Lcom/shabakaty/downloader/vt3;->b:Ljava/util/concurrent/Executor;

    const-string v2, "queryExecutor"

    .line 5
    invoke-static {p0, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    instance-of v2, p0, Lcom/shabakaty/downloader/gu0;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move-object v2, p0

    :goto_0
    check-cast v2, Lcom/shabakaty/downloader/gu0;

    new-instance v2, Lcom/shabakaty/downloader/u61;

    invoke-direct {v2, p0}, Lcom/shabakaty/downloader/u61;-><init>(Ljava/util/concurrent/Executor;)V

    .line 7
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_1
    check-cast v2, Lcom/shabakaty/downloader/pe0;

    return-object v2
.end method

.method public static final e(Lcom/shabakaty/downloader/vt3;)Lcom/shabakaty/downloader/pe0;
    .locals 3

    const-string v0, "$this$transactionDispatcher"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vt3;->l:Ljava/util/Map;

    const-string v1, "backingFieldMap"

    .line 2
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "TransactionDispatcher"

    .line 3
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 4
    iget-object p0, p0, Lcom/shabakaty/downloader/vt3;->c:Ljava/util/concurrent/Executor;

    const-string v2, "transactionExecutor"

    .line 5
    invoke-static {p0, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    instance-of v2, p0, Lcom/shabakaty/downloader/gu0;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move-object v2, p0

    :goto_0
    check-cast v2, Lcom/shabakaty/downloader/gu0;

    new-instance v2, Lcom/shabakaty/downloader/u61;

    invoke-direct {v2, p0}, Lcom/shabakaty/downloader/u61;-><init>(Ljava/util/concurrent/Executor;)V

    .line 7
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_1
    check-cast v2, Lcom/shabakaty/downloader/pe0;

    return-object v2
.end method

.method public static final f(Lcom/shabakaty/downloader/tm1;)Landroidx/navigation/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/cx2;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Landroidx/navigation/g;"
        }
    .end annotation

    const-string v0, "optionsBuilder"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/cx2;

    invoke-direct {v0}, Lcom/shabakaty/downloader/cx2;-><init>()V

    invoke-interface {p0, v0}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p0, v0, Lcom/shabakaty/downloader/cx2;->a:Landroidx/navigation/g$a;

    .line 3
    iget-boolean v1, v0, Lcom/shabakaty/downloader/cx2;->b:Z

    .line 4
    iput-boolean v1, p0, Landroidx/navigation/g$a;->a:Z

    .line 5
    iget v0, v0, Lcom/shabakaty/downloader/cx2;->c:I

    .line 6
    iput v0, p0, Landroidx/navigation/g$a;->b:I

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Landroidx/navigation/g$a;->c:Z

    .line 8
    invoke-virtual {p0}, Landroidx/navigation/g$a;->a()Landroidx/navigation/g;

    move-result-object p0

    return-object p0
.end method

.method public static final g(Landroidx/appcompat/widget/Toolbar;Landroidx/navigation/NavController;Lcom/shabakaty/downloader/m9;)V
    .locals 1

    const-string v0, "$this$setupWithNavController"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "navController"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/fo4;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/fo4;-><init>(Landroidx/appcompat/widget/Toolbar;Lcom/shabakaty/downloader/m9;)V

    invoke-virtual {p1, v0}, Landroidx/navigation/NavController;->a(Landroidx/navigation/NavController$b;)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/wx2;

    invoke-direct {v0, p1, p2}, Lcom/shabakaty/downloader/wx2;-><init>(Landroidx/navigation/NavController;Lcom/shabakaty/downloader/m9;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static h(Landroidx/appcompat/widget/Toolbar;Landroidx/navigation/NavController;Lcom/shabakaty/downloader/m9;I)V
    .locals 3

    and-int/lit8 p2, p3, 0x2

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    .line 1
    invoke-virtual {p1}, Landroidx/navigation/NavController;->g()Landroidx/navigation/d;

    move-result-object p2

    const-string v0, "navController.graph"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/n9;->r:Lcom/shabakaty/downloader/n9;

    .line 3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 4
    :goto_0
    instance-of v2, p2, Landroidx/navigation/d;

    if-eqz v2, :cond_0

    .line 5
    check-cast p2, Landroidx/navigation/d;

    .line 6
    iget v2, p2, Landroidx/navigation/d;->A:I

    .line 7
    invoke-virtual {p2, v2}, Landroidx/navigation/d;->s(I)Landroidx/navigation/c;

    move-result-object p2

    goto :goto_0

    .line 8
    :cond_0
    iget p2, p2, Landroidx/navigation/c;->t:I

    .line 9
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_1

    .line 10
    new-instance p2, Lcom/shabakaty/downloader/o9;

    const/4 v2, 0x0

    invoke-direct {p2, v0, v2}, Lcom/shabakaty/downloader/o9;-><init>(Lcom/shabakaty/downloader/rm1;I)V

    move-object v0, p2

    :cond_1
    check-cast v0, Lcom/shabakaty/downloader/m9$b;

    .line 11
    new-instance p2, Lcom/shabakaty/downloader/m9;

    invoke-direct {p2, v1, p3, v0, p3}, Lcom/shabakaty/downloader/m9;-><init>(Ljava/util/Set;Lcom/shabakaty/downloader/w73;Lcom/shabakaty/downloader/m9$b;Lcom/shabakaty/downloader/m9$a;)V

    move-object p3, p2

    .line 12
    :cond_2
    invoke-static {p0, p1, p3}, Lcom/shabakaty/downloader/ol3;->g(Landroidx/appcompat/widget/Toolbar;Landroidx/navigation/NavController;Lcom/shabakaty/downloader/m9;)V

    return-void
.end method

.method public static i(I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    int-to-double v1, p0

    const-wide v3, 0x406fe00000000000L    # 255.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    const-string p0, "rgba(%d,%d,%d,%.3f)"

    .line 2
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/sy4;->n(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j(Lcom/shabakaty/downloader/ai5;Lcom/shabakaty/downloader/gj5;Lcom/shabakaty/downloader/np4;Ljava/util/List;)Lcom/shabakaty/downloader/gj5;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ai5;",
            "Lcom/shabakaty/downloader/gj5;",
            "Lcom/shabakaty/downloader/np4;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/gj5;",
            ">;)",
            "Lcom/shabakaty/downloader/gj5;"
        }
    .end annotation

    check-cast p1, Lcom/shabakaty/downloader/ck5;

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/ck5;->r:Ljava/lang/String;

    .line 2
    invoke-interface {p0, v0}, Lcom/shabakaty/downloader/ai5;->l(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p1, Lcom/shabakaty/downloader/ck5;->r:Ljava/lang/String;

    .line 4
    invoke-interface {p0, v0}, Lcom/shabakaty/downloader/ai5;->m(Ljava/lang/String;)Lcom/shabakaty/downloader/gj5;

    move-result-object p0

    .line 5
    instance-of v0, p0, Lcom/shabakaty/downloader/bh5;

    if-eqz v0, :cond_0

    .line 6
    check-cast p0, Lcom/shabakaty/downloader/bh5;

    invoke-virtual {p0, p2, p3}, Lcom/shabakaty/downloader/bh5;->a(Lcom/shabakaty/downloader/np4;Ljava/util/List;)Lcom/shabakaty/downloader/gj5;

    move-result-object p0

    return-object p0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array p2, v2, [Ljava/lang/Object;

    .line 8
    iget-object p1, p1, Lcom/shabakaty/downloader/ck5;->r:Ljava/lang/String;

    aput-object p1, p2, v1

    const-string p1, "%s is not a function"

    .line 9
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_1
    iget-object v0, p1, Lcom/shabakaty/downloader/ck5;->r:Ljava/lang/String;

    const-string v3, "hasOwnProperty"

    .line 11
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    invoke-static {v3, v2, p3}, Lcom/shabakaty/downloader/kl3;->t(Ljava/lang/String;ILjava/util/List;)V

    .line 13
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p1

    .line 14
    invoke-interface {p1}, Lcom/shabakaty/downloader/gj5;->h()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/shabakaty/downloader/ai5;->l(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/shabakaty/downloader/gj5;->n:Lcom/shabakaty/downloader/gj5;

    return-object p0

    .line 15
    :cond_2
    sget-object p0, Lcom/shabakaty/downloader/gj5;->o:Lcom/shabakaty/downloader/gj5;

    return-object p0

    .line 16
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array p2, v2, [Ljava/lang/Object;

    .line 17
    iget-object p1, p1, Lcom/shabakaty/downloader/ck5;->r:Ljava/lang/String;

    aput-object p1, p2, v1

    const-string p1, "Object has no function %s"

    .line 18
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static k(Lcom/shabakaty/downloader/pj6;)Lcom/shabakaty/downloader/gj5;
    .locals 3

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/shabakaty/downloader/gj5;->i:Lcom/shabakaty/downloader/gj5;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pj6;->B()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/shabakaty/downloader/pj6;->w()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/pj6;

    .line 4
    invoke-static {v2}, Lcom/shabakaty/downloader/ol3;->k(Lcom/shabakaty/downloader/pj6;)Lcom/shabakaty/downloader/gj5;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pj6;->u()Ljava/lang/String;

    move-result-object p0

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/mj5;

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/mj5;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0

    .line 6
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown type found. Cannot convert entity"

    .line 7
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pj6;->y()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    new-instance v0, Lcom/shabakaty/downloader/eg5;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/pj6;->x()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/eg5;-><init>(Ljava/lang/Boolean;)V

    return-object v0

    .line 10
    :cond_4
    new-instance p0, Lcom/shabakaty/downloader/eg5;

    invoke-direct {p0, v2}, Lcom/shabakaty/downloader/eg5;-><init>(Ljava/lang/Boolean;)V

    return-object p0

    :cond_5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pj6;->z()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 11
    new-instance v0, Lcom/shabakaty/downloader/ug5;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/pj6;->s()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/ug5;-><init>(Ljava/lang/Double;)V

    return-object v0

    .line 12
    :cond_6
    new-instance p0, Lcom/shabakaty/downloader/ug5;

    invoke-direct {p0, v2}, Lcom/shabakaty/downloader/ug5;-><init>(Ljava/lang/Double;)V

    return-object p0

    .line 13
    :cond_7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pj6;->A()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 14
    new-instance v0, Lcom/shabakaty/downloader/ck5;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/pj6;->v()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/ck5;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 15
    :cond_8
    sget-object p0, Lcom/shabakaty/downloader/gj5;->p:Lcom/shabakaty/downloader/gj5;

    return-object p0
.end method

.method public static l(Ljava/lang/Object;)Lcom/shabakaty/downloader/gj5;
    .locals 5

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/shabakaty/downloader/gj5;->j:Lcom/shabakaty/downloader/gj5;

    return-object p0

    .line 2
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/ck5;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/ck5;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_1
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/ug5;

    check-cast p0, Ljava/lang/Double;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/ug5;-><init>(Ljava/lang/Double;)V

    return-object v0

    .line 6
    :cond_2
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/ug5;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/ug5;-><init>(Ljava/lang/Double;)V

    return-object v0

    .line 8
    :cond_3
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 9
    new-instance v0, Lcom/shabakaty/downloader/ug5;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/ug5;-><init>(Ljava/lang/Double;)V

    return-object v0

    .line 10
    :cond_4
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 11
    new-instance v0, Lcom/shabakaty/downloader/eg5;

    check-cast p0, Ljava/lang/Boolean;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/eg5;-><init>(Ljava/lang/Boolean;)V

    return-object v0

    .line 12
    :cond_5
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_9

    .line 13
    new-instance v0, Lcom/shabakaty/downloader/hi5;

    invoke-direct {v0}, Lcom/shabakaty/downloader/hi5;-><init>()V

    .line 14
    check-cast p0, Ljava/util/Map;

    .line 15
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 16
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/shabakaty/downloader/ol3;->l(Ljava/lang/Object;)Lcom/shabakaty/downloader/gj5;

    move-result-object v3

    if-eqz v2, :cond_6

    .line 17
    instance-of v4, v2, Ljava/lang/String;

    if-nez v4, :cond_7

    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 19
    :cond_7
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/shabakaty/downloader/hi5;->n(Ljava/lang/String;Lcom/shabakaty/downloader/gj5;)V

    goto :goto_0

    :cond_8
    return-object v0

    .line 20
    :cond_9
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_b

    .line 21
    new-instance v0, Lcom/shabakaty/downloader/uf5;

    invoke-direct {v0}, Lcom/shabakaty/downloader/uf5;-><init>()V

    .line 22
    check-cast p0, Ljava/util/List;

    .line 23
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 24
    invoke-static {v1}, Lcom/shabakaty/downloader/ol3;->l(Ljava/lang/Object;)Lcom/shabakaty/downloader/gj5;

    move-result-object v1

    .line 25
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uf5;->s()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/shabakaty/downloader/uf5;->E(ILcom/shabakaty/downloader/gj5;)V

    goto :goto_1

    :cond_a
    return-object v0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid value type"

    .line 26
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
