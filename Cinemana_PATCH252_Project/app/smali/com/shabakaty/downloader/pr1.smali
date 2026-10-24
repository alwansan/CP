.class public Lcom/shabakaty/downloader/pr1;
.super Lcom/shabakaty/downloader/ec0;
.source "Guideline.java"


# instance fields
.field public q0:F

.field public r0:I

.field public s0:I

.field public t0:Lcom/shabakaty/downloader/wb0;

.field public u0:I

.field public v0:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/ec0;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/pr1;->q0:F

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/shabakaty/downloader/pr1;->r0:I

    .line 4
    iput v0, p0, Lcom/shabakaty/downloader/pr1;->s0:I

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/ec0;->J:Lcom/shabakaty/downloader/wb0;

    iput-object v0, p0, Lcom/shabakaty/downloader/pr1;->t0:Lcom/shabakaty/downloader/wb0;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/shabakaty/downloader/pr1;->u0:I

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/ec0;->R:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/ec0;->R:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/shabakaty/downloader/pr1;->t0:Lcom/shabakaty/downloader/wb0;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v1, p0, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 10
    iget-object v2, p0, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    iget-object v3, p0, Lcom/shabakaty/downloader/pr1;->t0:Lcom/shabakaty/downloader/wb0;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public C()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/pr1;->v0:Z

    return v0
.end method

.method public D()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/pr1;->v0:Z

    return v0
.end method

.method public S(Lcom/shabakaty/downloader/zh2;Z)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/shabakaty/downloader/ec0;->U:Lcom/shabakaty/downloader/ec0;

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/shabakaty/downloader/pr1;->t0:Lcom/shabakaty/downloader/wb0;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/zh2;->o(Ljava/lang/Object;)I

    move-result p1

    .line 3
    iget p2, p0, Lcom/shabakaty/downloader/pr1;->u0:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    .line 4
    iput p1, p0, Lcom/shabakaty/downloader/ec0;->Z:I

    .line 5
    iput v1, p0, Lcom/shabakaty/downloader/ec0;->a0:I

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/ec0;->U:Lcom/shabakaty/downloader/ec0;

    .line 7
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ec0;->n()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ec0;->L(I)V

    .line 8
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/ec0;->Q(I)V

    goto :goto_0

    .line 9
    :cond_1
    iput v1, p0, Lcom/shabakaty/downloader/ec0;->Z:I

    .line 10
    iput p1, p0, Lcom/shabakaty/downloader/ec0;->a0:I

    .line 11
    iget-object p1, p0, Lcom/shabakaty/downloader/ec0;->U:Lcom/shabakaty/downloader/ec0;

    .line 12
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ec0;->t()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ec0;->Q(I)V

    .line 13
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/ec0;->L(I)V

    :goto_0
    return-void
.end method

.method public T(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/pr1;->t0:Lcom/shabakaty/downloader/wb0;

    .line 2
    iput p1, v0, Lcom/shabakaty/downloader/wb0;->b:I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, v0, Lcom/shabakaty/downloader/wb0;->c:Z

    .line 4
    iput-boolean p1, p0, Lcom/shabakaty/downloader/pr1;->v0:Z

    return-void
.end method

.method public U(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/pr1;->u0:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/shabakaty/downloader/pr1;->u0:I

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/ec0;->R:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget p1, p0, Lcom/shabakaty/downloader/pr1;->u0:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/ec0;->I:Lcom/shabakaty/downloader/wb0;

    iput-object p1, p0, Lcom/shabakaty/downloader/pr1;->t0:Lcom/shabakaty/downloader/wb0;

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/shabakaty/downloader/ec0;->J:Lcom/shabakaty/downloader/wb0;

    iput-object p1, p0, Lcom/shabakaty/downloader/pr1;->t0:Lcom/shabakaty/downloader/wb0;

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/ec0;->R:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/shabakaty/downloader/pr1;->t0:Lcom/shabakaty/downloader/wb0;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p0, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    array-length p1, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_2

    .line 9
    iget-object v1, p0, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    iget-object v2, p0, Lcom/shabakaty/downloader/pr1;->t0:Lcom/shabakaty/downloader/wb0;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public d(Lcom/shabakaty/downloader/zh2;Z)V
    .locals 7

    .line 1
    iget-object p2, p0, Lcom/shabakaty/downloader/ec0;->U:Lcom/shabakaty/downloader/ec0;

    .line 2
    check-cast p2, Lcom/shabakaty/downloader/fc0;

    if-nez p2, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/wb0$a;->r:Lcom/shabakaty/downloader/wb0$a;

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/ec0;->k(Lcom/shabakaty/downloader/wb0$a;)Lcom/shabakaty/downloader/wb0;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/wb0$a;->t:Lcom/shabakaty/downloader/wb0$a;

    invoke-virtual {p2, v1}, Lcom/shabakaty/downloader/ec0;->k(Lcom/shabakaty/downloader/wb0$a;)Lcom/shabakaty/downloader/wb0;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/ec0;->U:Lcom/shabakaty/downloader/ec0;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/shabakaty/downloader/ec0;->T:[I

    aget v2, v2, v4

    if-ne v2, v5, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 6
    :goto_0
    iget v6, p0, Lcom/shabakaty/downloader/pr1;->u0:I

    if-nez v6, :cond_3

    .line 7
    sget-object v0, Lcom/shabakaty/downloader/wb0$a;->s:Lcom/shabakaty/downloader/wb0$a;

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/ec0;->k(Lcom/shabakaty/downloader/wb0$a;)Lcom/shabakaty/downloader/wb0;

    move-result-object v0

    .line 8
    sget-object v1, Lcom/shabakaty/downloader/wb0$a;->u:Lcom/shabakaty/downloader/wb0$a;

    invoke-virtual {p2, v1}, Lcom/shabakaty/downloader/ec0;->k(Lcom/shabakaty/downloader/wb0$a;)Lcom/shabakaty/downloader/wb0;

    move-result-object v1

    .line 9
    iget-object p2, p0, Lcom/shabakaty/downloader/ec0;->U:Lcom/shabakaty/downloader/ec0;

    if-eqz p2, :cond_2

    iget-object p2, p2, Lcom/shabakaty/downloader/ec0;->T:[I

    aget p2, p2, v3

    if-ne p2, v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    move v2, v3

    .line 10
    :cond_3
    iget-boolean p2, p0, Lcom/shabakaty/downloader/pr1;->v0:Z

    const/4 v3, -0x1

    const/4 v5, 0x5

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/shabakaty/downloader/pr1;->t0:Lcom/shabakaty/downloader/wb0;

    .line 11
    iget-boolean v6, p2, Lcom/shabakaty/downloader/wb0;->c:Z

    if-eqz v6, :cond_6

    .line 12
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/zh2;->l(Ljava/lang/Object;)Lcom/shabakaty/downloader/n94;

    move-result-object p2

    .line 13
    iget-object v6, p0, Lcom/shabakaty/downloader/pr1;->t0:Lcom/shabakaty/downloader/wb0;

    invoke-virtual {v6}, Lcom/shabakaty/downloader/wb0;->d()I

    move-result v6

    invoke-virtual {p1, p2, v6}, Lcom/shabakaty/downloader/zh2;->e(Lcom/shabakaty/downloader/n94;I)V

    .line 14
    iget v6, p0, Lcom/shabakaty/downloader/pr1;->r0:I

    if-eq v6, v3, :cond_4

    if-eqz v2, :cond_5

    .line 15
    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/zh2;->l(Ljava/lang/Object;)Lcom/shabakaty/downloader/n94;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v4, v5}, Lcom/shabakaty/downloader/zh2;->f(Lcom/shabakaty/downloader/n94;Lcom/shabakaty/downloader/n94;II)V

    goto :goto_2

    .line 16
    :cond_4
    iget v6, p0, Lcom/shabakaty/downloader/pr1;->s0:I

    if-eq v6, v3, :cond_5

    if-eqz v2, :cond_5

    .line 17
    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/zh2;->l(Ljava/lang/Object;)Lcom/shabakaty/downloader/n94;

    move-result-object v1

    .line 18
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/zh2;->l(Ljava/lang/Object;)Lcom/shabakaty/downloader/n94;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v4, v5}, Lcom/shabakaty/downloader/zh2;->f(Lcom/shabakaty/downloader/n94;Lcom/shabakaty/downloader/n94;II)V

    .line 19
    invoke-virtual {p1, v1, p2, v4, v5}, Lcom/shabakaty/downloader/zh2;->f(Lcom/shabakaty/downloader/n94;Lcom/shabakaty/downloader/n94;II)V

    .line 20
    :cond_5
    :goto_2
    iput-boolean v4, p0, Lcom/shabakaty/downloader/pr1;->v0:Z

    return-void

    .line 21
    :cond_6
    iget p2, p0, Lcom/shabakaty/downloader/pr1;->r0:I

    const/16 v6, 0x8

    if-eq p2, v3, :cond_7

    .line 22
    iget-object p2, p0, Lcom/shabakaty/downloader/pr1;->t0:Lcom/shabakaty/downloader/wb0;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/zh2;->l(Ljava/lang/Object;)Lcom/shabakaty/downloader/n94;

    move-result-object p2

    .line 23
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/zh2;->l(Ljava/lang/Object;)Lcom/shabakaty/downloader/n94;

    move-result-object v0

    .line 24
    iget v3, p0, Lcom/shabakaty/downloader/pr1;->r0:I

    invoke-virtual {p1, p2, v0, v3, v6}, Lcom/shabakaty/downloader/zh2;->d(Lcom/shabakaty/downloader/n94;Lcom/shabakaty/downloader/n94;II)Lcom/shabakaty/downloader/bd;

    if-eqz v2, :cond_9

    .line 25
    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/zh2;->l(Ljava/lang/Object;)Lcom/shabakaty/downloader/n94;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v4, v5}, Lcom/shabakaty/downloader/zh2;->f(Lcom/shabakaty/downloader/n94;Lcom/shabakaty/downloader/n94;II)V

    goto :goto_3

    .line 26
    :cond_7
    iget p2, p0, Lcom/shabakaty/downloader/pr1;->s0:I

    if-eq p2, v3, :cond_8

    .line 27
    iget-object p2, p0, Lcom/shabakaty/downloader/pr1;->t0:Lcom/shabakaty/downloader/wb0;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/zh2;->l(Ljava/lang/Object;)Lcom/shabakaty/downloader/n94;

    move-result-object p2

    .line 28
    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/zh2;->l(Ljava/lang/Object;)Lcom/shabakaty/downloader/n94;

    move-result-object v1

    .line 29
    iget v3, p0, Lcom/shabakaty/downloader/pr1;->s0:I

    neg-int v3, v3

    invoke-virtual {p1, p2, v1, v3, v6}, Lcom/shabakaty/downloader/zh2;->d(Lcom/shabakaty/downloader/n94;Lcom/shabakaty/downloader/n94;II)Lcom/shabakaty/downloader/bd;

    if-eqz v2, :cond_9

    .line 30
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/zh2;->l(Ljava/lang/Object;)Lcom/shabakaty/downloader/n94;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v4, v5}, Lcom/shabakaty/downloader/zh2;->f(Lcom/shabakaty/downloader/n94;Lcom/shabakaty/downloader/n94;II)V

    .line 31
    invoke-virtual {p1, v1, p2, v4, v5}, Lcom/shabakaty/downloader/zh2;->f(Lcom/shabakaty/downloader/n94;Lcom/shabakaty/downloader/n94;II)V

    goto :goto_3

    .line 32
    :cond_8
    iget p2, p0, Lcom/shabakaty/downloader/pr1;->q0:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_9

    .line 33
    iget-object p2, p0, Lcom/shabakaty/downloader/pr1;->t0:Lcom/shabakaty/downloader/wb0;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/zh2;->l(Ljava/lang/Object;)Lcom/shabakaty/downloader/n94;

    move-result-object p2

    .line 34
    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/zh2;->l(Ljava/lang/Object;)Lcom/shabakaty/downloader/n94;

    move-result-object v1

    .line 35
    iget v2, p0, Lcom/shabakaty/downloader/pr1;->q0:F

    .line 36
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zh2;->m()Lcom/shabakaty/downloader/bd;

    move-result-object v3

    .line 37
    iget-object v4, v3, Lcom/shabakaty/downloader/bd;->d:Lcom/shabakaty/downloader/bd$a;

    invoke-interface {v4, p2, v0}, Lcom/shabakaty/downloader/bd$a;->a(Lcom/shabakaty/downloader/n94;F)V

    .line 38
    iget-object p2, v3, Lcom/shabakaty/downloader/bd;->d:Lcom/shabakaty/downloader/bd$a;

    invoke-interface {p2, v1, v2}, Lcom/shabakaty/downloader/bd$a;->a(Lcom/shabakaty/downloader/n94;F)V

    .line 39
    invoke-virtual {p1, v3}, Lcom/shabakaty/downloader/zh2;->c(Lcom/shabakaty/downloader/bd;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public k(Lcom/shabakaty/downloader/wb0$a;)Lcom/shabakaty/downloader/wb0;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget p1, p0, Lcom/shabakaty/downloader/pr1;->u0:I

    if-nez p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/pr1;->t0:Lcom/shabakaty/downloader/wb0;

    return-object p1

    .line 4
    :cond_1
    iget p1, p0, Lcom/shabakaty/downloader/pr1;->u0:I

    if-ne p1, v0, :cond_2

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/pr1;->t0:Lcom/shabakaty/downloader/wb0;

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
