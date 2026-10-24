.class public Lcom/shabakaty/downloader/el1;
.super Lcom/shabakaty/downloader/bl1;
.source "FragmentTransitionSupport.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/bl1;-><init>()V

    return-void
.end method

.method public static z(Lcom/shabakaty/downloader/dq4;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/shabakaty/downloader/dq4;->v:Ljava/util/ArrayList;

    .line 2
    invoke-static {p0}, Lcom/shabakaty/downloader/bl1;->k(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 3
    invoke-static {p0}, Lcom/shabakaty/downloader/bl1;->k(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p0}, Lcom/shabakaty/downloader/bl1;->k(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/dq4;

    .line 2
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/dq4;->b(Landroid/view/View;)Lcom/shabakaty/downloader/dq4;

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/dq4;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    instance-of v0, p1, Lcom/shabakaty/downloader/iq4;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Lcom/shabakaty/downloader/iq4;

    .line 4
    iget-object v0, p1, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 5
    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/iq4;->N(I)Lcom/shabakaty/downloader/dq4;

    move-result-object v2

    .line 6
    invoke-virtual {p0, v2, p2}, Lcom/shabakaty/downloader/el1;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p1}, Lcom/shabakaty/downloader/el1;->z(Lcom/shabakaty/downloader/dq4;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p1, Lcom/shabakaty/downloader/dq4;->w:Ljava/util/ArrayList;

    .line 9
    invoke-static {v0}, Lcom/shabakaty/downloader/bl1;->k(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 11
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/dq4;->b(Landroid/view/View;)Lcom/shabakaty/downloader/dq4;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public c(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/dq4;

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/hq4;->a(Landroid/view/ViewGroup;Lcom/shabakaty/downloader/dq4;)V

    return-void
.end method

.method public e(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lcom/shabakaty/downloader/dq4;

    return p1
.end method

.method public g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/dq4;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/dq4;->k()Lcom/shabakaty/downloader/dq4;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public l(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/dq4;

    .line 2
    check-cast p2, Lcom/shabakaty/downloader/dq4;

    .line 3
    check-cast p3, Lcom/shabakaty/downloader/dq4;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/iq4;

    invoke-direct {v0}, Lcom/shabakaty/downloader/iq4;-><init>()V

    .line 5
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/iq4;->M(Lcom/shabakaty/downloader/dq4;)Lcom/shabakaty/downloader/iq4;

    .line 6
    invoke-virtual {v0, p2}, Lcom/shabakaty/downloader/iq4;->M(Lcom/shabakaty/downloader/dq4;)Lcom/shabakaty/downloader/iq4;

    const/4 p1, 0x1

    .line 7
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/iq4;->R(I)Lcom/shabakaty/downloader/iq4;

    move-object p1, v0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move-object p1, p2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p3, :cond_4

    .line 8
    new-instance p2, Lcom/shabakaty/downloader/iq4;

    invoke-direct {p2}, Lcom/shabakaty/downloader/iq4;-><init>()V

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/iq4;->M(Lcom/shabakaty/downloader/dq4;)Lcom/shabakaty/downloader/iq4;

    .line 10
    :cond_3
    invoke-virtual {p2, p3}, Lcom/shabakaty/downloader/iq4;->M(Lcom/shabakaty/downloader/dq4;)Lcom/shabakaty/downloader/iq4;

    return-object p2

    :cond_4
    return-object p1
.end method

.method public m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/iq4;

    invoke-direct {v0}, Lcom/shabakaty/downloader/iq4;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    check-cast p1, Lcom/shabakaty/downloader/dq4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/iq4;->M(Lcom/shabakaty/downloader/dq4;)Lcom/shabakaty/downloader/iq4;

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    check-cast p2, Lcom/shabakaty/downloader/dq4;

    invoke-virtual {v0, p2}, Lcom/shabakaty/downloader/iq4;->M(Lcom/shabakaty/downloader/dq4;)Lcom/shabakaty/downloader/iq4;

    :cond_1
    if-eqz p3, :cond_2

    .line 4
    check-cast p3, Lcom/shabakaty/downloader/dq4;

    invoke-virtual {v0, p3}, Lcom/shabakaty/downloader/iq4;->M(Lcom/shabakaty/downloader/dq4;)Lcom/shabakaty/downloader/iq4;

    :cond_2
    return-object v0
.end method

.method public o(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/dq4;

    .line 2
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/dq4;->z(Landroid/view/View;)Lcom/shabakaty/downloader/dq4;

    :cond_0
    return-void
.end method

.method public p(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/dq4;

    .line 2
    instance-of v0, p1, Lcom/shabakaty/downloader/iq4;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/shabakaty/downloader/iq4;

    .line 4
    iget-object v0, p1, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 5
    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/iq4;->N(I)Lcom/shabakaty/downloader/dq4;

    move-result-object v2

    .line 6
    invoke-virtual {p0, v2, p2, p3}, Lcom/shabakaty/downloader/el1;->p(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p1}, Lcom/shabakaty/downloader/el1;->z(Lcom/shabakaty/downloader/dq4;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    iget-object v0, p1, Lcom/shabakaty/downloader/dq4;->w:Ljava/util/ArrayList;

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 10
    invoke-interface {v0, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p3, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 12
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/dq4;->b(Landroid/view/View;)Lcom/shabakaty/downloader/dq4;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    :goto_2
    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_3

    .line 14
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/dq4;->z(Landroid/view/View;)Lcom/shabakaty/downloader/dq4;

    goto :goto_2

    :cond_3
    return-void
.end method

.method public q(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/dq4;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/el1$b;

    invoke-direct {v0, p0, p2, p3}, Lcom/shabakaty/downloader/el1$b;-><init>(Lcom/shabakaty/downloader/el1;Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/dq4;->a(Lcom/shabakaty/downloader/dq4$d;)Lcom/shabakaty/downloader/dq4;

    return-void
.end method

.method public r(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/dq4;

    .line 2
    new-instance v9, Lcom/shabakaty/downloader/el1$c;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/shabakaty/downloader/el1$c;-><init>(Lcom/shabakaty/downloader/el1;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v9}, Lcom/shabakaty/downloader/dq4;->a(Lcom/shabakaty/downloader/dq4$d;)Lcom/shabakaty/downloader/dq4;

    return-void
.end method

.method public s(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/dq4;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/el1$f;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/el1$f;-><init>(Lcom/shabakaty/downloader/el1;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/dq4;->D(Lcom/shabakaty/downloader/dq4$c;)V

    :cond_0
    return-void
.end method

.method public t(Ljava/lang/Object;Landroid/view/View;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/dq4;

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3
    invoke-virtual {p0, p2, v0}, Lcom/shabakaty/downloader/bl1;->j(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4
    new-instance p2, Lcom/shabakaty/downloader/el1$a;

    invoke-direct {p2, p0, v0}, Lcom/shabakaty/downloader/el1$a;-><init>(Lcom/shabakaty/downloader/el1;Landroid/graphics/Rect;)V

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/dq4;->D(Lcom/shabakaty/downloader/dq4$c;)V

    :cond_0
    return-void
.end method

.method public u(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Lcom/shabakaty/downloader/iv;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/dq4;

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/el1$d;

    invoke-direct {p1, p0, p2}, Lcom/shabakaty/downloader/el1$d;-><init>(Lcom/shabakaty/downloader/el1;Lcom/shabakaty/downloader/dq4;)V

    invoke-virtual {p3, p1}, Lcom/shabakaty/downloader/iv;->b(Lcom/shabakaty/downloader/iv$a;)V

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/el1$e;

    invoke-direct {p1, p0, p4}, Lcom/shabakaty/downloader/el1$e;-><init>(Lcom/shabakaty/downloader/el1;Ljava/lang/Runnable;)V

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/dq4;->a(Lcom/shabakaty/downloader/dq4$d;)Lcom/shabakaty/downloader/dq4;

    return-void
.end method

.method public w(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/iq4;

    .line 2
    iget-object v0, p1, Lcom/shabakaty/downloader/dq4;->w:Ljava/util/ArrayList;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 5
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 6
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/bl1;->d(Ljava/util/List;Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {p0, p1, p3}, Lcom/shabakaty/downloader/el1;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    return-void
.end method

.method public x(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/iq4;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p1, Lcom/shabakaty/downloader/dq4;->w:Ljava/util/ArrayList;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    iget-object v0, p1, Lcom/shabakaty/downloader/dq4;->w:Ljava/util/ArrayList;

    .line 5
    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lcom/shabakaty/downloader/el1;->p(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public y(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/iq4;

    invoke-direct {v0}, Lcom/shabakaty/downloader/iq4;-><init>()V

    .line 2
    check-cast p1, Lcom/shabakaty/downloader/dq4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/iq4;->M(Lcom/shabakaty/downloader/dq4;)Lcom/shabakaty/downloader/iq4;

    return-object v0
.end method
