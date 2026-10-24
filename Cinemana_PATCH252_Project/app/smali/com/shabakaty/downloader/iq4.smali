.class public Lcom/shabakaty/downloader/iq4;
.super Lcom/shabakaty/downloader/dq4;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/iq4$b;
    }
.end annotation


# instance fields
.field public Q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/dq4;",
            ">;"
        }
    .end annotation
.end field

.field public R:Z

.field public S:I

.field public T:Z

.field public U:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/dq4;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/iq4;->R:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/shabakaty/downloader/iq4;->T:Z

    .line 5
    iput v0, p0, Lcom/shabakaty/downloader/iq4;->U:I

    return-void
.end method


# virtual methods
.method public A(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/dq4;->A(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/dq4;

    invoke-virtual {v2, p1}, Lcom/shabakaty/downloader/dq4;->A(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public B()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/dq4;->J()V

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/dq4;->n()V

    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/iq4$b;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/iq4$b;-><init>(Lcom/shabakaty/downloader/iq4;)V

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/dq4;

    .line 6
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/dq4;->a(Lcom/shabakaty/downloader/dq4$d;)Lcom/shabakaty/downloader/dq4;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/shabakaty/downloader/iq4;->S:I

    .line 8
    iget-boolean v0, p0, Lcom/shabakaty/downloader/iq4;->R:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 9
    :goto_1
    iget-object v1, p0, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 10
    iget-object v1, p0, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/dq4;

    .line 11
    iget-object v2, p0, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/dq4;

    .line 12
    new-instance v3, Lcom/shabakaty/downloader/iq4$a;

    invoke-direct {v3, p0, v2}, Lcom/shabakaty/downloader/iq4$a;-><init>(Lcom/shabakaty/downloader/iq4;Lcom/shabakaty/downloader/dq4;)V

    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/dq4;->a(Lcom/shabakaty/downloader/dq4$d;)Lcom/shabakaty/downloader/dq4;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/dq4;

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {v0}, Lcom/shabakaty/downloader/dq4;->B()V

    goto :goto_3

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/dq4;

    .line 16
    invoke-virtual {v1}, Lcom/shabakaty/downloader/dq4;->B()V

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method public bridge synthetic C(J)Lcom/shabakaty/downloader/dq4;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/iq4;->P(J)Lcom/shabakaty/downloader/iq4;

    return-object p0
.end method

.method public D(Lcom/shabakaty/downloader/dq4$c;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/dq4;->L:Lcom/shabakaty/downloader/dq4$c;

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/iq4;->U:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/shabakaty/downloader/iq4;->U:I

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/dq4;

    invoke-virtual {v2, p1}, Lcom/shabakaty/downloader/dq4;->D(Lcom/shabakaty/downloader/dq4$c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic E(Landroid/animation/TimeInterpolator;)Lcom/shabakaty/downloader/dq4;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/iq4;->Q(Landroid/animation/TimeInterpolator;)Lcom/shabakaty/downloader/iq4;

    return-object p0
.end method

.method public F(Lcom/shabakaty/downloader/xa3;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/dq4;->O:Lcom/shabakaty/downloader/xa3;

    iput-object v0, p0, Lcom/shabakaty/downloader/dq4;->M:Lcom/shabakaty/downloader/xa3;

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/shabakaty/downloader/dq4;->M:Lcom/shabakaty/downloader/xa3;

    .line 3
    :goto_0
    iget v0, p0, Lcom/shabakaty/downloader/iq4;->U:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/shabakaty/downloader/iq4;->U:I

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 5
    :goto_1
    iget-object v1, p0, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/dq4;

    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/dq4;->F(Lcom/shabakaty/downloader/xa3;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public G(Lcom/shabakaty/downloader/cl4;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/dq4;->K:Lcom/shabakaty/downloader/cl4;

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/iq4;->U:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/shabakaty/downloader/iq4;->U:I

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/dq4;

    invoke-virtual {v2, p1}, Lcom/shabakaty/downloader/dq4;->G(Lcom/shabakaty/downloader/cl4;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public H(Landroid/view/ViewGroup;)Lcom/shabakaty/downloader/dq4;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/dq4;

    invoke-virtual {v2, p1}, Lcom/shabakaty/downloader/dq4;->H(Landroid/view/ViewGroup;)Lcom/shabakaty/downloader/dq4;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public I(J)Lcom/shabakaty/downloader/dq4;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shabakaty/downloader/dq4;->s:J

    return-object p0
.end method

.method public K(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/dq4;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    const-string v2, "\n"

    .line 3
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/vf3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/dq4;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/dq4;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public L(Lcom/shabakaty/downloader/dq4$d;)Lcom/shabakaty/downloader/iq4;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/dq4;->a(Lcom/shabakaty/downloader/dq4$d;)Lcom/shabakaty/downloader/dq4;

    return-object p0
.end method

.method public M(Lcom/shabakaty/downloader/dq4;)Lcom/shabakaty/downloader/iq4;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iput-object p0, p1, Lcom/shabakaty/downloader/dq4;->z:Lcom/shabakaty/downloader/iq4;

    .line 3
    iget-wide v0, p0, Lcom/shabakaty/downloader/dq4;->t:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 4
    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/downloader/dq4;->C(J)Lcom/shabakaty/downloader/dq4;

    .line 5
    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/iq4;->U:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/dq4;->u:Landroid/animation/TimeInterpolator;

    .line 7
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/dq4;->E(Landroid/animation/TimeInterpolator;)Lcom/shabakaty/downloader/dq4;

    .line 8
    :cond_1
    iget v0, p0, Lcom/shabakaty/downloader/iq4;->U:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/dq4;->K:Lcom/shabakaty/downloader/cl4;

    .line 10
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/dq4;->G(Lcom/shabakaty/downloader/cl4;)V

    .line 11
    :cond_2
    iget v0, p0, Lcom/shabakaty/downloader/iq4;->U:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/shabakaty/downloader/dq4;->M:Lcom/shabakaty/downloader/xa3;

    .line 13
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/dq4;->F(Lcom/shabakaty/downloader/xa3;)V

    .line 14
    :cond_3
    iget v0, p0, Lcom/shabakaty/downloader/iq4;->U:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 15
    iget-object v0, p0, Lcom/shabakaty/downloader/dq4;->L:Lcom/shabakaty/downloader/dq4$c;

    .line 16
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/dq4;->D(Lcom/shabakaty/downloader/dq4$c;)V

    :cond_4
    return-object p0
.end method

.method public N(I)Lcom/shabakaty/downloader/dq4;
    .locals 1

    if-ltz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/dq4;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public O(Lcom/shabakaty/downloader/dq4$d;)Lcom/shabakaty/downloader/iq4;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/dq4;->y(Lcom/shabakaty/downloader/dq4$d;)Lcom/shabakaty/downloader/dq4;

    return-object p0
.end method

.method public P(J)Lcom/shabakaty/downloader/iq4;
    .locals 3

    .line 1
    iput-wide p1, p0, Lcom/shabakaty/downloader/dq4;->t:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/dq4;

    invoke-virtual {v2, p1, p2}, Lcom/shabakaty/downloader/dq4;->C(J)Lcom/shabakaty/downloader/dq4;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public Q(Landroid/animation/TimeInterpolator;)Lcom/shabakaty/downloader/iq4;
    .locals 3

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/iq4;->U:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/iq4;->U:I

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/dq4;

    invoke-virtual {v2, p1}, Lcom/shabakaty/downloader/dq4;->E(Landroid/animation/TimeInterpolator;)Lcom/shabakaty/downloader/dq4;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/shabakaty/downloader/dq4;->u:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public R(I)Lcom/shabakaty/downloader/iq4;
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/shabakaty/downloader/iq4;->R:Z

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Invalid parameter for TransitionSet ordering: "

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/bl3;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/iq4;->R:Z

    :goto_0
    return-object p0
.end method

.method public a(Lcom/shabakaty/downloader/dq4$d;)Lcom/shabakaty/downloader/dq4;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/dq4;->a(Lcom/shabakaty/downloader/dq4$d;)Lcom/shabakaty/downloader/dq4;

    return-object p0
.end method

.method public b(Landroid/view/View;)Lcom/shabakaty/downloader/dq4;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/dq4;

    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/dq4;->b(Landroid/view/View;)Lcom/shabakaty/downloader/dq4;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/dq4;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public cancel()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/shabakaty/downloader/dq4;->cancel()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/dq4;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/dq4;->cancel()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/iq4;->k()Lcom/shabakaty/downloader/dq4;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcom/shabakaty/downloader/kq4;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/kq4;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/dq4;->v(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/dq4;

    .line 3
    iget-object v2, p1, Lcom/shabakaty/downloader/kq4;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/dq4;->v(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/dq4;->e(Lcom/shabakaty/downloader/kq4;)V

    .line 5
    iget-object v2, p1, Lcom/shabakaty/downloader/kq4;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public g(Lcom/shabakaty/downloader/kq4;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/dq4;->g(Lcom/shabakaty/downloader/kq4;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/dq4;

    invoke-virtual {v2, p1}, Lcom/shabakaty/downloader/dq4;->g(Lcom/shabakaty/downloader/kq4;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public h(Lcom/shabakaty/downloader/kq4;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/kq4;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/dq4;->v(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/dq4;

    .line 3
    iget-object v2, p1, Lcom/shabakaty/downloader/kq4;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/dq4;->v(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/dq4;->h(Lcom/shabakaty/downloader/kq4;)V

    .line 5
    iget-object v2, p1, Lcom/shabakaty/downloader/kq4;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public k()Lcom/shabakaty/downloader/dq4;
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/shabakaty/downloader/dq4;->k()Lcom/shabakaty/downloader/dq4;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/iq4;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 4
    iget-object v3, p0, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/dq4;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/dq4;->k()Lcom/shabakaty/downloader/dq4;

    move-result-object v3

    .line 5
    iget-object v4, v0, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iput-object v0, v3, Lcom/shabakaty/downloader/dq4;->z:Lcom/shabakaty/downloader/iq4;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public m(Landroid/view/ViewGroup;Lcom/shabakaty/downloader/np4;Lcom/shabakaty/downloader/np4;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/shabakaty/downloader/np4;",
            "Lcom/shabakaty/downloader/np4;",
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/kq4;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/kq4;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    iget-wide v1, v0, Lcom/shabakaty/downloader/dq4;->s:J

    .line 2
    iget-object v3, v0, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 3
    iget-object v5, v0, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/shabakaty/downloader/dq4;

    const-wide/16 v7, 0x0

    cmp-long v5, v1, v7

    if-lez v5, :cond_2

    .line 4
    iget-boolean v5, v0, Lcom/shabakaty/downloader/iq4;->R:Z

    if-nez v5, :cond_0

    if-nez v4, :cond_2

    .line 5
    :cond_0
    iget-wide v9, v6, Lcom/shabakaty/downloader/dq4;->s:J

    cmp-long v5, v9, v7

    if-lez v5, :cond_1

    add-long/2addr v9, v1

    .line 6
    invoke-virtual {v6, v9, v10}, Lcom/shabakaty/downloader/dq4;->I(J)Lcom/shabakaty/downloader/dq4;

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v6, v1, v2}, Lcom/shabakaty/downloader/dq4;->I(J)Lcom/shabakaty/downloader/dq4;

    :cond_2
    :goto_1
    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    .line 8
    invoke-virtual/range {v6 .. v11}, Lcom/shabakaty/downloader/dq4;->m(Landroid/view/ViewGroup;Lcom/shabakaty/downloader/np4;Lcom/shabakaty/downloader/np4;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public o(Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/dq4;->o(Landroid/view/ViewGroup;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/dq4;

    invoke-virtual {v2, p1}, Lcom/shabakaty/downloader/dq4;->o(Landroid/view/ViewGroup;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public x(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/dq4;->x(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/dq4;

    invoke-virtual {v2, p1}, Lcom/shabakaty/downloader/dq4;->x(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public y(Lcom/shabakaty/downloader/dq4$d;)Lcom/shabakaty/downloader/dq4;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/dq4;->y(Lcom/shabakaty/downloader/dq4$d;)Lcom/shabakaty/downloader/dq4;

    return-object p0
.end method

.method public z(Landroid/view/View;)Lcom/shabakaty/downloader/dq4;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/iq4;->Q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/dq4;

    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/dq4;->z(Landroid/view/View;)Lcom/shabakaty/downloader/dq4;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/dq4;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method
