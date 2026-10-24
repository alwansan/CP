.class public Lcom/shabakaty/downloader/fc0;
.super Lcom/shabakaty/downloader/o65;
.source "ConstraintWidgetContainer.java"


# instance fields
.field public A0:I

.field public B0:[Lcom/shabakaty/downloader/hy;

.field public C0:[Lcom/shabakaty/downloader/hy;

.field public D0:I

.field public E0:Z

.field public F0:Z

.field public G0:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/shabakaty/downloader/wb0;",
            ">;"
        }
    .end annotation
.end field

.field public H0:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/shabakaty/downloader/wb0;",
            ">;"
        }
    .end annotation
.end field

.field public I0:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/shabakaty/downloader/wb0;",
            ">;"
        }
    .end annotation
.end field

.field public J0:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/shabakaty/downloader/wb0;",
            ">;"
        }
    .end annotation
.end field

.field public K0:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/shabakaty/downloader/ec0;",
            ">;"
        }
    .end annotation
.end field

.field public L0:Lcom/shabakaty/downloader/hl$a;

.field public r0:Lcom/shabakaty/downloader/hl;

.field public s0:Lcom/shabakaty/downloader/kq0;

.field public t0:I

.field public u0:Lcom/shabakaty/downloader/hl$b;

.field public v0:Z

.field public w0:Lcom/shabakaty/downloader/zh2;

.field public x0:I

.field public y0:I

.field public z0:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/o65;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/hl;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/hl;-><init>(Lcom/shabakaty/downloader/fc0;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/fc0;->r0:Lcom/shabakaty/downloader/hl;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/kq0;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/kq0;-><init>(Lcom/shabakaty/downloader/fc0;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/fc0;->s0:Lcom/shabakaty/downloader/kq0;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/fc0;->u0:Lcom/shabakaty/downloader/hl$b;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/shabakaty/downloader/fc0;->v0:Z

    .line 6
    new-instance v2, Lcom/shabakaty/downloader/zh2;

    invoke-direct {v2}, Lcom/shabakaty/downloader/zh2;-><init>()V

    iput-object v2, p0, Lcom/shabakaty/downloader/fc0;->w0:Lcom/shabakaty/downloader/zh2;

    .line 7
    iput v1, p0, Lcom/shabakaty/downloader/fc0;->z0:I

    .line 8
    iput v1, p0, Lcom/shabakaty/downloader/fc0;->A0:I

    const/4 v2, 0x4

    new-array v3, v2, [Lcom/shabakaty/downloader/hy;

    .line 9
    iput-object v3, p0, Lcom/shabakaty/downloader/fc0;->B0:[Lcom/shabakaty/downloader/hy;

    new-array v2, v2, [Lcom/shabakaty/downloader/hy;

    .line 10
    iput-object v2, p0, Lcom/shabakaty/downloader/fc0;->C0:[Lcom/shabakaty/downloader/hy;

    const/16 v2, 0x101

    .line 11
    iput v2, p0, Lcom/shabakaty/downloader/fc0;->D0:I

    .line 12
    iput-boolean v1, p0, Lcom/shabakaty/downloader/fc0;->E0:Z

    .line 13
    iput-boolean v1, p0, Lcom/shabakaty/downloader/fc0;->F0:Z

    .line 14
    iput-object v0, p0, Lcom/shabakaty/downloader/fc0;->G0:Ljava/lang/ref/WeakReference;

    .line 15
    iput-object v0, p0, Lcom/shabakaty/downloader/fc0;->H0:Ljava/lang/ref/WeakReference;

    .line 16
    iput-object v0, p0, Lcom/shabakaty/downloader/fc0;->I0:Ljava/lang/ref/WeakReference;

    .line 17
    iput-object v0, p0, Lcom/shabakaty/downloader/fc0;->J0:Ljava/lang/ref/WeakReference;

    .line 18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/fc0;->K0:Ljava/util/HashSet;

    .line 19
    new-instance v0, Lcom/shabakaty/downloader/hl$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/hl$a;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/fc0;->L0:Lcom/shabakaty/downloader/hl$a;

    return-void
.end method

.method public static c0(Lcom/shabakaty/downloader/ec0;Lcom/shabakaty/downloader/hl$b;Lcom/shabakaty/downloader/hl$a;I)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget v1, p0, Lcom/shabakaty/downloader/ec0;->h0:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_13

    .line 2
    instance-of v1, p0, Lcom/shabakaty/downloader/pr1;

    if-nez v1, :cond_13

    instance-of v1, p0, Lcom/shabakaty/downloader/ui;

    if-eqz v1, :cond_1

    goto/16 :goto_8

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ec0;->o()I

    move-result v1

    iput v1, p2, Lcom/shabakaty/downloader/hl$a;->a:I

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ec0;->s()I

    move-result v1

    iput v1, p2, Lcom/shabakaty/downloader/hl$a;->b:I

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ec0;->t()I

    move-result v1

    iput v1, p2, Lcom/shabakaty/downloader/hl$a;->c:I

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ec0;->n()I

    move-result v1

    iput v1, p2, Lcom/shabakaty/downloader/hl$a;->d:I

    .line 7
    iput-boolean v0, p2, Lcom/shabakaty/downloader/hl$a;->i:Z

    .line 8
    iput p3, p2, Lcom/shabakaty/downloader/hl$a;->j:I

    .line 9
    iget p3, p2, Lcom/shabakaty/downloader/hl$a;->a:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne p3, v1, :cond_2

    const/4 p3, 0x1

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    .line 10
    :goto_0
    iget v3, p2, Lcom/shabakaty/downloader/hl$a;->b:I

    if-ne v3, v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    const/4 v3, 0x0

    if-eqz p3, :cond_4

    .line 11
    iget v4, p0, Lcom/shabakaty/downloader/ec0;->X:F

    cmpl-float v4, v4, v3

    if-lez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    if-eqz v1, :cond_5

    .line 12
    iget v5, p0, Lcom/shabakaty/downloader/ec0;->X:F

    cmpl-float v3, v5, v3

    if-lez v3, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    const/4 v5, 0x2

    if-eqz p3, :cond_7

    .line 13
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ec0;->w(I)Z

    move-result v6

    if-eqz v6, :cond_7

    iget v6, p0, Lcom/shabakaty/downloader/ec0;->q:I

    if-nez v6, :cond_7

    if-nez v4, :cond_7

    .line 14
    iput v5, p2, Lcom/shabakaty/downloader/hl$a;->a:I

    if-eqz v1, :cond_6

    .line 15
    iget p3, p0, Lcom/shabakaty/downloader/ec0;->r:I

    if-nez p3, :cond_6

    .line 16
    iput v2, p2, Lcom/shabakaty/downloader/hl$a;->a:I

    :cond_6
    const/4 p3, 0x0

    :cond_7
    if-eqz v1, :cond_9

    .line 17
    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/ec0;->w(I)Z

    move-result v6

    if-eqz v6, :cond_9

    iget v6, p0, Lcom/shabakaty/downloader/ec0;->r:I

    if-nez v6, :cond_9

    if-nez v3, :cond_9

    .line 18
    iput v5, p2, Lcom/shabakaty/downloader/hl$a;->b:I

    if-eqz p3, :cond_8

    .line 19
    iget v1, p0, Lcom/shabakaty/downloader/ec0;->q:I

    if-nez v1, :cond_8

    .line 20
    iput v2, p2, Lcom/shabakaty/downloader/hl$a;->b:I

    :cond_8
    const/4 v1, 0x0

    .line 21
    :cond_9
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ec0;->C()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 22
    iput v2, p2, Lcom/shabakaty/downloader/hl$a;->a:I

    const/4 p3, 0x0

    .line 23
    :cond_a
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ec0;->D()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 24
    iput v2, p2, Lcom/shabakaty/downloader/hl$a;->b:I

    const/4 v1, 0x0

    :cond_b
    const/4 v6, 0x4

    if-eqz v4, :cond_e

    .line 25
    iget-object v4, p0, Lcom/shabakaty/downloader/ec0;->s:[I

    aget v4, v4, v0

    if-ne v4, v6, :cond_c

    .line 26
    iput v2, p2, Lcom/shabakaty/downloader/hl$a;->a:I

    goto :goto_5

    :cond_c
    if-nez v1, :cond_e

    .line 27
    iget v1, p2, Lcom/shabakaty/downloader/hl$a;->b:I

    if-ne v1, v2, :cond_d

    .line 28
    iget v1, p2, Lcom/shabakaty/downloader/hl$a;->d:I

    goto :goto_4

    .line 29
    :cond_d
    iput v5, p2, Lcom/shabakaty/downloader/hl$a;->a:I

    .line 30
    move-object v1, p1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-virtual {v1, p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b(Lcom/shabakaty/downloader/ec0;Lcom/shabakaty/downloader/hl$a;)V

    .line 31
    iget v1, p2, Lcom/shabakaty/downloader/hl$a;->f:I

    .line 32
    :goto_4
    iput v2, p2, Lcom/shabakaty/downloader/hl$a;->a:I

    .line 33
    iget v4, p0, Lcom/shabakaty/downloader/ec0;->X:F

    int-to-float v1, v1

    mul-float v4, v4, v1

    float-to-int v1, v4

    .line 34
    iput v1, p2, Lcom/shabakaty/downloader/hl$a;->c:I

    :cond_e
    :goto_5
    if-eqz v3, :cond_12

    .line 35
    iget-object v1, p0, Lcom/shabakaty/downloader/ec0;->s:[I

    aget v1, v1, v2

    if-ne v1, v6, :cond_f

    .line 36
    iput v2, p2, Lcom/shabakaty/downloader/hl$a;->b:I

    goto :goto_7

    :cond_f
    if-nez p3, :cond_12

    .line 37
    iget p3, p2, Lcom/shabakaty/downloader/hl$a;->a:I

    if-ne p3, v2, :cond_10

    .line 38
    iget p3, p2, Lcom/shabakaty/downloader/hl$a;->c:I

    goto :goto_6

    .line 39
    :cond_10
    iput v5, p2, Lcom/shabakaty/downloader/hl$a;->b:I

    .line 40
    move-object p3, p1

    check-cast p3, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-virtual {p3, p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b(Lcom/shabakaty/downloader/ec0;Lcom/shabakaty/downloader/hl$a;)V

    .line 41
    iget p3, p2, Lcom/shabakaty/downloader/hl$a;->e:I

    .line 42
    :goto_6
    iput v2, p2, Lcom/shabakaty/downloader/hl$a;->b:I

    .line 43
    iget v1, p0, Lcom/shabakaty/downloader/ec0;->Y:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_11

    int-to-float p3, p3

    .line 44
    iget v1, p0, Lcom/shabakaty/downloader/ec0;->X:F

    div-float/2addr p3, v1

    float-to-int p3, p3

    .line 45
    iput p3, p2, Lcom/shabakaty/downloader/hl$a;->d:I

    goto :goto_7

    .line 46
    :cond_11
    iget v1, p0, Lcom/shabakaty/downloader/ec0;->X:F

    int-to-float p3, p3

    mul-float v1, v1, p3

    float-to-int p3, v1

    .line 47
    iput p3, p2, Lcom/shabakaty/downloader/hl$a;->d:I

    .line 48
    :cond_12
    :goto_7
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b(Lcom/shabakaty/downloader/ec0;Lcom/shabakaty/downloader/hl$a;)V

    .line 49
    iget p1, p2, Lcom/shabakaty/downloader/hl$a;->e:I

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ec0;->Q(I)V

    .line 50
    iget p1, p2, Lcom/shabakaty/downloader/hl$a;->f:I

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ec0;->L(I)V

    .line 51
    iget-boolean p1, p2, Lcom/shabakaty/downloader/hl$a;->h:Z

    .line 52
    iput-boolean p1, p0, Lcom/shabakaty/downloader/ec0;->D:Z

    .line 53
    iget p1, p2, Lcom/shabakaty/downloader/hl$a;->g:I

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ec0;->I(I)V

    .line 54
    iput v0, p2, Lcom/shabakaty/downloader/hl$a;->j:I

    .line 55
    iget-boolean p0, p2, Lcom/shabakaty/downloader/hl$a;->i:Z

    return p0

    .line 56
    :cond_13
    :goto_8
    iput v0, p2, Lcom/shabakaty/downloader/hl$a;->e:I

    .line 57
    iput v0, p2, Lcom/shabakaty/downloader/hl$a;->f:I

    return v0
.end method


# virtual methods
.method public E()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fc0;->w0:Lcom/shabakaty/downloader/zh2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/zh2;->u()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/fc0;->x0:I

    .line 3
    iput v0, p0, Lcom/shabakaty/downloader/fc0;->y0:I

    .line 4
    invoke-super {p0}, Lcom/shabakaty/downloader/o65;->E()V

    return-void
.end method

.method public R(ZZ)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shabakaty/downloader/ec0;->R(ZZ)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/o65;->q0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/o65;->q0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/ec0;

    .line 4
    invoke-virtual {v2, p1, p2}, Lcom/shabakaty/downloader/ec0;->R(ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public T()V
    .locals 27

    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 1
    iput v2, v1, Lcom/shabakaty/downloader/ec0;->Z:I

    .line 2
    iput v2, v1, Lcom/shabakaty/downloader/ec0;->a0:I

    .line 3
    iput-boolean v2, v1, Lcom/shabakaty/downloader/fc0;->E0:Z

    .line 4
    iput-boolean v2, v1, Lcom/shabakaty/downloader/fc0;->F0:Z

    .line 5
    iget-object v0, v1, Lcom/shabakaty/downloader/o65;->q0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ec0;->t()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ec0;->n()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 8
    iget-object v5, v1, Lcom/shabakaty/downloader/ec0;->T:[I

    const/4 v6, 0x1

    aget v7, v5, v6

    .line 9
    aget v5, v5, v2

    .line 10
    iget v8, v1, Lcom/shabakaty/downloader/fc0;->t0:I

    const/4 v9, -0x1

    if-nez v8, :cond_1d

    iget v8, v1, Lcom/shabakaty/downloader/fc0;->D0:I

    invoke-static {v8, v6}, Lcom/shabakaty/downloader/c83;->b(II)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 11
    iget-object v8, v1, Lcom/shabakaty/downloader/fc0;->u0:Lcom/shabakaty/downloader/hl$b;

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ec0;->o()I

    move-result v11

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ec0;->s()I

    move-result v12

    .line 14
    sput v2, Lcom/shabakaty/downloader/it0;->b:I

    .line 15
    sput v2, Lcom/shabakaty/downloader/it0;->c:I

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ec0;->G()V

    .line 17
    iget-object v13, v1, Lcom/shabakaty/downloader/o65;->q0:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v14, :cond_0

    .line 19
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/shabakaty/downloader/ec0;

    .line 20
    invoke-virtual/range {v16 .. v16}, Lcom/shabakaty/downloader/ec0;->G()V

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 21
    :cond_0
    iget-boolean v15, v1, Lcom/shabakaty/downloader/fc0;->v0:Z

    if-ne v11, v6, :cond_1

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ec0;->t()I

    move-result v11

    invoke-virtual {v1, v2, v11}, Lcom/shabakaty/downloader/ec0;->J(II)V

    goto :goto_1

    .line 23
    :cond_1
    iget-object v11, v1, Lcom/shabakaty/downloader/ec0;->I:Lcom/shabakaty/downloader/wb0;

    .line 24
    iput v2, v11, Lcom/shabakaty/downloader/wb0;->b:I

    .line 25
    iput-boolean v6, v11, Lcom/shabakaty/downloader/wb0;->c:Z

    .line 26
    iput v2, v1, Lcom/shabakaty/downloader/ec0;->Z:I

    :goto_1
    const/4 v11, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_2
    const/high16 v18, 0x3f000000    # 0.5f

    if-ge v11, v14, :cond_7

    .line 27
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v10, v19

    check-cast v10, Lcom/shabakaty/downloader/ec0;

    .line 28
    instance-of v2, v10, Lcom/shabakaty/downloader/pr1;

    if-eqz v2, :cond_5

    .line 29
    check-cast v10, Lcom/shabakaty/downloader/pr1;

    .line 30
    iget v2, v10, Lcom/shabakaty/downloader/pr1;->u0:I

    if-ne v2, v6, :cond_6

    .line 31
    iget v2, v10, Lcom/shabakaty/downloader/pr1;->r0:I

    if-eq v2, v9, :cond_2

    .line 32
    invoke-virtual {v10, v2}, Lcom/shabakaty/downloader/pr1;->T(I)V

    goto :goto_3

    .line 33
    :cond_2
    iget v2, v10, Lcom/shabakaty/downloader/pr1;->s0:I

    if-eq v2, v9, :cond_3

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ec0;->C()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ec0;->t()I

    move-result v2

    .line 36
    iget v9, v10, Lcom/shabakaty/downloader/pr1;->s0:I

    sub-int/2addr v2, v9

    .line 37
    invoke-virtual {v10, v2}, Lcom/shabakaty/downloader/pr1;->T(I)V

    goto :goto_3

    .line 38
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ec0;->C()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 39
    iget v2, v10, Lcom/shabakaty/downloader/pr1;->q0:F

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ec0;->t()I

    move-result v9

    int-to-float v9, v9

    mul-float v2, v2, v9

    add-float v2, v2, v18

    float-to-int v2, v2

    .line 41
    invoke-virtual {v10, v2}, Lcom/shabakaty/downloader/pr1;->T(I)V

    :cond_4
    :goto_3
    const/16 v16, 0x1

    goto :goto_4

    .line 42
    :cond_5
    instance-of v2, v10, Lcom/shabakaty/downloader/ui;

    if-eqz v2, :cond_6

    .line 43
    check-cast v10, Lcom/shabakaty/downloader/ui;

    .line 44
    invoke-virtual {v10}, Lcom/shabakaty/downloader/ui;->V()I

    move-result v2

    if-nez v2, :cond_6

    const/16 v17, 0x1

    :cond_6
    :goto_4
    add-int/lit8 v11, v11, 0x1

    const/4 v2, 0x0

    const/4 v9, -0x1

    goto :goto_2

    :cond_7
    if-eqz v16, :cond_9

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v14, :cond_9

    .line 45
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/ec0;

    .line 46
    instance-of v10, v9, Lcom/shabakaty/downloader/pr1;

    if-eqz v10, :cond_8

    .line 47
    check-cast v9, Lcom/shabakaty/downloader/pr1;

    .line 48
    iget v10, v9, Lcom/shabakaty/downloader/pr1;->u0:I

    if-ne v10, v6, :cond_8

    const/4 v10, 0x0

    .line 49
    invoke-static {v10, v9, v8, v15}, Lcom/shabakaty/downloader/it0;->b(ILcom/shabakaty/downloader/ec0;Lcom/shabakaty/downloader/hl$b;Z)V

    goto :goto_6

    :cond_8
    const/4 v10, 0x0

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_9
    const/4 v10, 0x0

    .line 50
    invoke-static {v10, v1, v8, v15}, Lcom/shabakaty/downloader/it0;->b(ILcom/shabakaty/downloader/ec0;Lcom/shabakaty/downloader/hl$b;Z)V

    if-eqz v17, :cond_b

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v14, :cond_b

    .line 51
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/ec0;

    .line 52
    instance-of v10, v9, Lcom/shabakaty/downloader/ui;

    if-eqz v10, :cond_a

    .line 53
    check-cast v9, Lcom/shabakaty/downloader/ui;

    .line 54
    invoke-virtual {v9}, Lcom/shabakaty/downloader/ui;->V()I

    move-result v10

    if-nez v10, :cond_a

    .line 55
    invoke-virtual {v9}, Lcom/shabakaty/downloader/ui;->U()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 56
    invoke-static {v6, v9, v8, v15}, Lcom/shabakaty/downloader/it0;->b(ILcom/shabakaty/downloader/ec0;Lcom/shabakaty/downloader/hl$b;Z)V

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_b
    if-ne v12, v6, :cond_c

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ec0;->n()I

    move-result v2

    const/4 v9, 0x0

    invoke-virtual {v1, v9, v2}, Lcom/shabakaty/downloader/ec0;->K(II)V

    goto :goto_8

    :cond_c
    const/4 v9, 0x0

    .line 58
    iget-object v2, v1, Lcom/shabakaty/downloader/ec0;->J:Lcom/shabakaty/downloader/wb0;

    .line 59
    iput v9, v2, Lcom/shabakaty/downloader/wb0;->b:I

    .line 60
    iput-boolean v6, v2, Lcom/shabakaty/downloader/wb0;->c:Z

    .line 61
    iput v9, v1, Lcom/shabakaty/downloader/ec0;->a0:I

    :goto_8
    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_9
    if-ge v2, v14, :cond_12

    .line 62
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shabakaty/downloader/ec0;

    .line 63
    instance-of v12, v11, Lcom/shabakaty/downloader/pr1;

    if-eqz v12, :cond_10

    .line 64
    check-cast v11, Lcom/shabakaty/downloader/pr1;

    .line 65
    iget v12, v11, Lcom/shabakaty/downloader/pr1;->u0:I

    if-nez v12, :cond_11

    .line 66
    iget v9, v11, Lcom/shabakaty/downloader/pr1;->r0:I

    const/4 v12, -0x1

    if-eq v9, v12, :cond_d

    .line 67
    invoke-virtual {v11, v9}, Lcom/shabakaty/downloader/pr1;->T(I)V

    goto :goto_a

    .line 68
    :cond_d
    iget v9, v11, Lcom/shabakaty/downloader/pr1;->s0:I

    if-eq v9, v12, :cond_e

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ec0;->D()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ec0;->n()I

    move-result v9

    .line 71
    iget v12, v11, Lcom/shabakaty/downloader/pr1;->s0:I

    sub-int/2addr v9, v12

    .line 72
    invoke-virtual {v11, v9}, Lcom/shabakaty/downloader/pr1;->T(I)V

    goto :goto_a

    .line 73
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ec0;->D()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 74
    iget v9, v11, Lcom/shabakaty/downloader/pr1;->q0:F

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ec0;->n()I

    move-result v12

    int-to-float v12, v12

    mul-float v9, v9, v12

    add-float v9, v9, v18

    float-to-int v9, v9

    .line 76
    invoke-virtual {v11, v9}, Lcom/shabakaty/downloader/pr1;->T(I)V

    :cond_f
    :goto_a
    const/4 v9, 0x1

    goto :goto_b

    .line 77
    :cond_10
    instance-of v12, v11, Lcom/shabakaty/downloader/ui;

    if-eqz v12, :cond_11

    .line 78
    check-cast v11, Lcom/shabakaty/downloader/ui;

    .line 79
    invoke-virtual {v11}, Lcom/shabakaty/downloader/ui;->V()I

    move-result v11

    if-ne v11, v6, :cond_11

    const/4 v10, 0x1

    :cond_11
    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_12
    if-eqz v9, :cond_14

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v14, :cond_14

    .line 80
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/ec0;

    .line 81
    instance-of v11, v9, Lcom/shabakaty/downloader/pr1;

    if-eqz v11, :cond_13

    .line 82
    check-cast v9, Lcom/shabakaty/downloader/pr1;

    .line 83
    iget v11, v9, Lcom/shabakaty/downloader/pr1;->u0:I

    if-nez v11, :cond_13

    .line 84
    invoke-static {v6, v9, v8}, Lcom/shabakaty/downloader/it0;->g(ILcom/shabakaty/downloader/ec0;Lcom/shabakaty/downloader/hl$b;)V

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_14
    const/4 v2, 0x0

    .line 85
    invoke-static {v2, v1, v8}, Lcom/shabakaty/downloader/it0;->g(ILcom/shabakaty/downloader/ec0;Lcom/shabakaty/downloader/hl$b;)V

    if-eqz v10, :cond_16

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v14, :cond_16

    .line 86
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/ec0;

    .line 87
    instance-of v10, v9, Lcom/shabakaty/downloader/ui;

    if-eqz v10, :cond_15

    .line 88
    check-cast v9, Lcom/shabakaty/downloader/ui;

    .line 89
    invoke-virtual {v9}, Lcom/shabakaty/downloader/ui;->V()I

    move-result v10

    if-ne v10, v6, :cond_15

    .line 90
    invoke-virtual {v9}, Lcom/shabakaty/downloader/ui;->U()Z

    move-result v10

    if-eqz v10, :cond_15

    .line 91
    invoke-static {v6, v9, v8}, Lcom/shabakaty/downloader/it0;->g(ILcom/shabakaty/downloader/ec0;Lcom/shabakaty/downloader/hl$b;)V

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_16
    const/4 v2, 0x0

    :goto_e
    if-ge v2, v14, :cond_1a

    .line 92
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/ec0;

    .line 93
    invoke-virtual {v9}, Lcom/shabakaty/downloader/ec0;->B()Z

    move-result v10

    if-eqz v10, :cond_19

    invoke-static {v9}, Lcom/shabakaty/downloader/it0;->a(Lcom/shabakaty/downloader/ec0;)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 94
    sget-object v10, Lcom/shabakaty/downloader/it0;->a:Lcom/shabakaty/downloader/hl$a;

    const/4 v11, 0x0

    invoke-static {v9, v8, v10, v11}, Lcom/shabakaty/downloader/fc0;->c0(Lcom/shabakaty/downloader/ec0;Lcom/shabakaty/downloader/hl$b;Lcom/shabakaty/downloader/hl$a;I)Z

    .line 95
    instance-of v10, v9, Lcom/shabakaty/downloader/pr1;

    if-eqz v10, :cond_18

    .line 96
    move-object v10, v9

    check-cast v10, Lcom/shabakaty/downloader/pr1;

    .line 97
    iget v10, v10, Lcom/shabakaty/downloader/pr1;->u0:I

    if-nez v10, :cond_17

    .line 98
    invoke-static {v11, v9, v8}, Lcom/shabakaty/downloader/it0;->g(ILcom/shabakaty/downloader/ec0;Lcom/shabakaty/downloader/hl$b;)V

    goto :goto_f

    .line 99
    :cond_17
    invoke-static {v11, v9, v8, v15}, Lcom/shabakaty/downloader/it0;->b(ILcom/shabakaty/downloader/ec0;Lcom/shabakaty/downloader/hl$b;Z)V

    goto :goto_f

    .line 100
    :cond_18
    invoke-static {v11, v9, v8, v15}, Lcom/shabakaty/downloader/it0;->b(ILcom/shabakaty/downloader/ec0;Lcom/shabakaty/downloader/hl$b;Z)V

    .line 101
    invoke-static {v11, v9, v8}, Lcom/shabakaty/downloader/it0;->g(ILcom/shabakaty/downloader/ec0;Lcom/shabakaty/downloader/hl$b;)V

    :cond_19
    :goto_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1a
    const/4 v2, 0x0

    :goto_10
    if-ge v2, v3, :cond_1d

    .line 102
    iget-object v8, v1, Lcom/shabakaty/downloader/o65;->q0:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shabakaty/downloader/ec0;

    .line 103
    invoke-virtual {v8}, Lcom/shabakaty/downloader/ec0;->B()Z

    move-result v9

    if-eqz v9, :cond_1c

    instance-of v9, v8, Lcom/shabakaty/downloader/pr1;

    if-nez v9, :cond_1c

    instance-of v9, v8, Lcom/shabakaty/downloader/ui;

    if-nez v9, :cond_1c

    instance-of v9, v8, Lcom/shabakaty/downloader/u45;

    if-nez v9, :cond_1c

    .line 104
    iget-boolean v9, v8, Lcom/shabakaty/downloader/ec0;->F:Z

    if-nez v9, :cond_1c

    const/4 v9, 0x0

    .line 105
    invoke-virtual {v8, v9}, Lcom/shabakaty/downloader/ec0;->m(I)I

    move-result v10

    .line 106
    invoke-virtual {v8, v6}, Lcom/shabakaty/downloader/ec0;->m(I)I

    move-result v9

    const/4 v11, 0x3

    if-ne v10, v11, :cond_1b

    .line 107
    iget v10, v8, Lcom/shabakaty/downloader/ec0;->q:I

    if-eq v10, v6, :cond_1b

    if-ne v9, v11, :cond_1b

    iget v9, v8, Lcom/shabakaty/downloader/ec0;->r:I

    if-eq v9, v6, :cond_1b

    const/4 v9, 0x1

    goto :goto_11

    :cond_1b
    const/4 v9, 0x0

    :goto_11
    if-nez v9, :cond_1c

    .line 108
    new-instance v9, Lcom/shabakaty/downloader/hl$a;

    invoke-direct {v9}, Lcom/shabakaty/downloader/hl$a;-><init>()V

    .line 109
    iget-object v10, v1, Lcom/shabakaty/downloader/fc0;->u0:Lcom/shabakaty/downloader/hl$b;

    const/4 v11, 0x0

    invoke-static {v8, v10, v9, v11}, Lcom/shabakaty/downloader/fc0;->c0(Lcom/shabakaty/downloader/ec0;Lcom/shabakaty/downloader/hl$b;Lcom/shabakaty/downloader/hl$a;I)Z

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_1d
    const/4 v2, 0x2

    if-le v3, v2, :cond_53

    if-eq v5, v2, :cond_1e

    if-ne v7, v2, :cond_53

    .line 110
    :cond_1e
    iget v9, v1, Lcom/shabakaty/downloader/fc0;->D0:I

    const/16 v10, 0x400

    .line 111
    invoke-static {v9, v10}, Lcom/shabakaty/downloader/c83;->b(II)Z

    move-result v9

    if-eqz v9, :cond_53

    .line 112
    iget-object v9, v1, Lcom/shabakaty/downloader/fc0;->u0:Lcom/shabakaty/downloader/hl$b;

    .line 113
    sget-object v10, Lcom/shabakaty/downloader/wb0$a;->w:Lcom/shabakaty/downloader/wb0$a;

    iget-object v11, v1, Lcom/shabakaty/downloader/o65;->q0:Ljava/util/ArrayList;

    .line 114
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_12
    if-ge v13, v12, :cond_21

    .line 115
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/shabakaty/downloader/ec0;

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ec0;->o()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ec0;->s()I

    move-result v2

    .line 117
    invoke-virtual {v14}, Lcom/shabakaty/downloader/ec0;->o()I

    move-result v8

    invoke-virtual {v14}, Lcom/shabakaty/downloader/ec0;->s()I

    move-result v6

    .line 118
    invoke-static {v15, v2, v8, v6}, Lcom/shabakaty/downloader/ar1;->c(IIII)Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_13

    .line 119
    :cond_1f
    instance-of v2, v14, Lcom/shabakaty/downloader/se1;

    if-eqz v2, :cond_20

    :goto_13
    move/from16 v24, v0

    move/from16 v21, v3

    move/from16 v23, v4

    move/from16 v25, v5

    move/from16 v22, v7

    goto/16 :goto_29

    :cond_20
    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x2

    const/4 v6, 0x1

    goto :goto_12

    :cond_21
    move/from16 v21, v3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_14
    if-ge v3, v12, :cond_32

    .line 120
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    move/from16 v23, v4

    move-object/from16 v4, v22

    check-cast v4, Lcom/shabakaty/downloader/ec0;

    move/from16 v22, v7

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ec0;->o()I

    move-result v7

    move/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ec0;->s()I

    move-result v0

    move/from16 v25, v5

    .line 122
    invoke-virtual {v4}, Lcom/shabakaty/downloader/ec0;->o()I

    move-result v5

    move-object/from16 v26, v11

    invoke-virtual {v4}, Lcom/shabakaty/downloader/ec0;->s()I

    move-result v11

    .line 123
    invoke-static {v7, v0, v5, v11}, Lcom/shabakaty/downloader/ar1;->c(IIII)Z

    move-result v0

    if-nez v0, :cond_22

    .line 124
    iget-object v0, v1, Lcom/shabakaty/downloader/fc0;->L0:Lcom/shabakaty/downloader/hl$a;

    const/4 v5, 0x0

    invoke-static {v4, v9, v0, v5}, Lcom/shabakaty/downloader/fc0;->c0(Lcom/shabakaty/downloader/ec0;Lcom/shabakaty/downloader/hl$b;Lcom/shabakaty/downloader/hl$a;I)Z

    .line 125
    :cond_22
    instance-of v0, v4, Lcom/shabakaty/downloader/pr1;

    if-eqz v0, :cond_26

    .line 126
    move-object v5, v4

    check-cast v5, Lcom/shabakaty/downloader/pr1;

    .line 127
    iget v7, v5, Lcom/shabakaty/downloader/pr1;->u0:I

    if-nez v7, :cond_24

    if-nez v8, :cond_23

    .line 128
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v7

    .line 129
    :cond_23
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_24
    iget v7, v5, Lcom/shabakaty/downloader/pr1;->u0:I

    const/4 v11, 0x1

    if-ne v7, v11, :cond_26

    if-nez v2, :cond_25

    .line 131
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 132
    :cond_25
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_26
    instance-of v5, v4, Lcom/shabakaty/downloader/bt1;

    if-eqz v5, :cond_2d

    .line 134
    instance-of v5, v4, Lcom/shabakaty/downloader/ui;

    if-eqz v5, :cond_2a

    .line 135
    move-object v5, v4

    check-cast v5, Lcom/shabakaty/downloader/ui;

    .line 136
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ui;->V()I

    move-result v7

    if-nez v7, :cond_28

    if-nez v6, :cond_27

    .line 137
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 138
    :cond_27
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_28
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ui;->V()I

    move-result v7

    const/4 v11, 0x1

    if-ne v7, v11, :cond_2d

    if-nez v13, :cond_29

    .line 140
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 141
    :cond_29
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 142
    :cond_2a
    move-object v5, v4

    check-cast v5, Lcom/shabakaty/downloader/bt1;

    if-nez v6, :cond_2b

    .line 143
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 144
    :cond_2b
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v13, :cond_2c

    .line 145
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 146
    :cond_2c
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_2d
    :goto_15
    iget-object v5, v4, Lcom/shabakaty/downloader/ec0;->I:Lcom/shabakaty/downloader/wb0;

    iget-object v5, v5, Lcom/shabakaty/downloader/wb0;->f:Lcom/shabakaty/downloader/wb0;

    if-nez v5, :cond_2f

    iget-object v5, v4, Lcom/shabakaty/downloader/ec0;->K:Lcom/shabakaty/downloader/wb0;

    iget-object v5, v5, Lcom/shabakaty/downloader/wb0;->f:Lcom/shabakaty/downloader/wb0;

    if-nez v5, :cond_2f

    if-nez v0, :cond_2f

    instance-of v5, v4, Lcom/shabakaty/downloader/ui;

    if-nez v5, :cond_2f

    if-nez v14, :cond_2e

    .line 148
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 149
    :cond_2e
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_2f
    iget-object v5, v4, Lcom/shabakaty/downloader/ec0;->J:Lcom/shabakaty/downloader/wb0;

    iget-object v5, v5, Lcom/shabakaty/downloader/wb0;->f:Lcom/shabakaty/downloader/wb0;

    if-nez v5, :cond_31

    iget-object v5, v4, Lcom/shabakaty/downloader/ec0;->L:Lcom/shabakaty/downloader/wb0;

    iget-object v5, v5, Lcom/shabakaty/downloader/wb0;->f:Lcom/shabakaty/downloader/wb0;

    if-nez v5, :cond_31

    iget-object v5, v4, Lcom/shabakaty/downloader/ec0;->M:Lcom/shabakaty/downloader/wb0;

    iget-object v5, v5, Lcom/shabakaty/downloader/wb0;->f:Lcom/shabakaty/downloader/wb0;

    if-nez v5, :cond_31

    if-nez v0, :cond_31

    instance-of v0, v4, Lcom/shabakaty/downloader/ui;

    if-nez v0, :cond_31

    if-nez v15, :cond_30

    .line 151
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 152
    :cond_30
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    add-int/lit8 v3, v3, 0x1

    move/from16 v7, v22

    move/from16 v4, v23

    move/from16 v0, v24

    move/from16 v5, v25

    move-object/from16 v11, v26

    goto/16 :goto_14

    :cond_32
    move/from16 v24, v0

    move/from16 v23, v4

    move/from16 v25, v5

    move/from16 v22, v7

    move-object/from16 v26, v11

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_33

    .line 154
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/pr1;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 155
    invoke-static {v3, v5, v0, v4}, Lcom/shabakaty/downloader/ar1;->a(Lcom/shabakaty/downloader/ec0;ILjava/util/ArrayList;Lcom/shabakaty/downloader/p65;)Lcom/shabakaty/downloader/p65;

    goto :goto_16

    :cond_33
    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v6, :cond_34

    .line 156
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/bt1;

    .line 157
    invoke-static {v3, v5, v0, v4}, Lcom/shabakaty/downloader/ar1;->a(Lcom/shabakaty/downloader/ec0;ILjava/util/ArrayList;Lcom/shabakaty/downloader/p65;)Lcom/shabakaty/downloader/p65;

    move-result-object v6

    .line 158
    invoke-virtual {v3, v0, v5, v6}, Lcom/shabakaty/downloader/bt1;->T(Ljava/util/ArrayList;ILcom/shabakaty/downloader/p65;)V

    .line 159
    invoke-virtual {v6, v0}, Lcom/shabakaty/downloader/p65;->b(Ljava/util/ArrayList;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_17

    .line 160
    :cond_34
    sget-object v2, Lcom/shabakaty/downloader/wb0$a;->r:Lcom/shabakaty/downloader/wb0$a;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/ec0;->k(Lcom/shabakaty/downloader/wb0$a;)Lcom/shabakaty/downloader/wb0;

    move-result-object v2

    .line 161
    iget-object v2, v2, Lcom/shabakaty/downloader/wb0;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_35

    .line 162
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/wb0;

    .line 163
    iget-object v3, v3, Lcom/shabakaty/downloader/wb0;->d:Lcom/shabakaty/downloader/ec0;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v5, v0, v4}, Lcom/shabakaty/downloader/ar1;->a(Lcom/shabakaty/downloader/ec0;ILjava/util/ArrayList;Lcom/shabakaty/downloader/p65;)Lcom/shabakaty/downloader/p65;

    goto :goto_18

    .line 164
    :cond_35
    sget-object v2, Lcom/shabakaty/downloader/wb0$a;->t:Lcom/shabakaty/downloader/wb0$a;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/ec0;->k(Lcom/shabakaty/downloader/wb0$a;)Lcom/shabakaty/downloader/wb0;

    move-result-object v2

    .line 165
    iget-object v2, v2, Lcom/shabakaty/downloader/wb0;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_36

    .line 166
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/wb0;

    .line 167
    iget-object v3, v3, Lcom/shabakaty/downloader/wb0;->d:Lcom/shabakaty/downloader/ec0;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v5, v0, v4}, Lcom/shabakaty/downloader/ar1;->a(Lcom/shabakaty/downloader/ec0;ILjava/util/ArrayList;Lcom/shabakaty/downloader/p65;)Lcom/shabakaty/downloader/p65;

    goto :goto_19

    .line 168
    :cond_36
    invoke-virtual {v1, v10}, Lcom/shabakaty/downloader/ec0;->k(Lcom/shabakaty/downloader/wb0$a;)Lcom/shabakaty/downloader/wb0;

    move-result-object v2

    .line 169
    iget-object v2, v2, Lcom/shabakaty/downloader/wb0;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_37

    .line 170
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/wb0;

    .line 171
    iget-object v3, v3, Lcom/shabakaty/downloader/wb0;->d:Lcom/shabakaty/downloader/ec0;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v5, v0, v4}, Lcom/shabakaty/downloader/ar1;->a(Lcom/shabakaty/downloader/ec0;ILjava/util/ArrayList;Lcom/shabakaty/downloader/p65;)Lcom/shabakaty/downloader/p65;

    goto :goto_1a

    :cond_37
    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v14, :cond_38

    .line 172
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/ec0;

    .line 173
    invoke-static {v3, v5, v0, v4}, Lcom/shabakaty/downloader/ar1;->a(Lcom/shabakaty/downloader/ec0;ILjava/util/ArrayList;Lcom/shabakaty/downloader/p65;)Lcom/shabakaty/downloader/p65;

    goto :goto_1b

    :cond_38
    if-eqz v8, :cond_39

    .line 174
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/pr1;

    const/4 v5, 0x1

    .line 175
    invoke-static {v3, v5, v0, v4}, Lcom/shabakaty/downloader/ar1;->a(Lcom/shabakaty/downloader/ec0;ILjava/util/ArrayList;Lcom/shabakaty/downloader/p65;)Lcom/shabakaty/downloader/p65;

    goto :goto_1c

    :cond_39
    const/4 v5, 0x1

    if-eqz v13, :cond_3a

    .line 176
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/bt1;

    .line 177
    invoke-static {v3, v5, v0, v4}, Lcom/shabakaty/downloader/ar1;->a(Lcom/shabakaty/downloader/ec0;ILjava/util/ArrayList;Lcom/shabakaty/downloader/p65;)Lcom/shabakaty/downloader/p65;

    move-result-object v6

    .line 178
    invoke-virtual {v3, v0, v5, v6}, Lcom/shabakaty/downloader/bt1;->T(Ljava/util/ArrayList;ILcom/shabakaty/downloader/p65;)V

    .line 179
    invoke-virtual {v6, v0}, Lcom/shabakaty/downloader/p65;->b(Ljava/util/ArrayList;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_1d

    .line 180
    :cond_3a
    sget-object v2, Lcom/shabakaty/downloader/wb0$a;->s:Lcom/shabakaty/downloader/wb0$a;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/ec0;->k(Lcom/shabakaty/downloader/wb0$a;)Lcom/shabakaty/downloader/wb0;

    move-result-object v2

    .line 181
    iget-object v2, v2, Lcom/shabakaty/downloader/wb0;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_3b

    .line 182
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/wb0;

    .line 183
    iget-object v3, v3, Lcom/shabakaty/downloader/wb0;->d:Lcom/shabakaty/downloader/ec0;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v5, v0, v4}, Lcom/shabakaty/downloader/ar1;->a(Lcom/shabakaty/downloader/ec0;ILjava/util/ArrayList;Lcom/shabakaty/downloader/p65;)Lcom/shabakaty/downloader/p65;

    goto :goto_1e

    .line 184
    :cond_3b
    sget-object v2, Lcom/shabakaty/downloader/wb0$a;->v:Lcom/shabakaty/downloader/wb0$a;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/ec0;->k(Lcom/shabakaty/downloader/wb0$a;)Lcom/shabakaty/downloader/wb0;

    move-result-object v2

    .line 185
    iget-object v2, v2, Lcom/shabakaty/downloader/wb0;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_3c

    .line 186
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/wb0;

    .line 187
    iget-object v3, v3, Lcom/shabakaty/downloader/wb0;->d:Lcom/shabakaty/downloader/ec0;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v5, v0, v4}, Lcom/shabakaty/downloader/ar1;->a(Lcom/shabakaty/downloader/ec0;ILjava/util/ArrayList;Lcom/shabakaty/downloader/p65;)Lcom/shabakaty/downloader/p65;

    goto :goto_1f

    .line 188
    :cond_3c
    sget-object v2, Lcom/shabakaty/downloader/wb0$a;->u:Lcom/shabakaty/downloader/wb0$a;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/ec0;->k(Lcom/shabakaty/downloader/wb0$a;)Lcom/shabakaty/downloader/wb0;

    move-result-object v2

    .line 189
    iget-object v2, v2, Lcom/shabakaty/downloader/wb0;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_3d

    .line 190
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/wb0;

    .line 191
    iget-object v3, v3, Lcom/shabakaty/downloader/wb0;->d:Lcom/shabakaty/downloader/ec0;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v5, v0, v4}, Lcom/shabakaty/downloader/ar1;->a(Lcom/shabakaty/downloader/ec0;ILjava/util/ArrayList;Lcom/shabakaty/downloader/p65;)Lcom/shabakaty/downloader/p65;

    goto :goto_20

    .line 192
    :cond_3d
    invoke-virtual {v1, v10}, Lcom/shabakaty/downloader/ec0;->k(Lcom/shabakaty/downloader/wb0$a;)Lcom/shabakaty/downloader/wb0;

    move-result-object v2

    .line 193
    iget-object v2, v2, Lcom/shabakaty/downloader/wb0;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_3e

    .line 194
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/wb0;

    .line 195
    iget-object v3, v3, Lcom/shabakaty/downloader/wb0;->d:Lcom/shabakaty/downloader/ec0;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v5, v0, v4}, Lcom/shabakaty/downloader/ar1;->a(Lcom/shabakaty/downloader/ec0;ILjava/util/ArrayList;Lcom/shabakaty/downloader/p65;)Lcom/shabakaty/downloader/p65;

    goto :goto_21

    :cond_3e
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v15, :cond_3f

    .line 196
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/ec0;

    .line 197
    invoke-static {v3, v5, v0, v4}, Lcom/shabakaty/downloader/ar1;->a(Lcom/shabakaty/downloader/ec0;ILjava/util/ArrayList;Lcom/shabakaty/downloader/p65;)Lcom/shabakaty/downloader/p65;

    goto :goto_22

    :cond_3f
    const/4 v2, 0x0

    :goto_23
    if-ge v2, v12, :cond_42

    move-object/from16 v3, v26

    .line 198
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/ec0;

    .line 199
    iget-object v6, v4, Lcom/shabakaty/downloader/ec0;->T:[I

    const/4 v7, 0x0

    aget v8, v6, v7

    const/4 v7, 0x3

    if-ne v8, v7, :cond_40

    aget v6, v6, v5

    if-ne v6, v7, :cond_40

    const/4 v5, 0x1

    goto :goto_24

    :cond_40
    const/4 v5, 0x0

    :goto_24
    if-eqz v5, :cond_41

    .line 200
    iget v5, v4, Lcom/shabakaty/downloader/ec0;->o0:I

    invoke-static {v0, v5}, Lcom/shabakaty/downloader/ar1;->b(Ljava/util/ArrayList;I)Lcom/shabakaty/downloader/p65;

    move-result-object v5

    .line 201
    iget v4, v4, Lcom/shabakaty/downloader/ec0;->p0:I

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/ar1;->b(Ljava/util/ArrayList;I)Lcom/shabakaty/downloader/p65;

    move-result-object v4

    if-eqz v5, :cond_41

    if-eqz v4, :cond_41

    const/4 v6, 0x0

    .line 202
    invoke-virtual {v5, v6, v4}, Lcom/shabakaty/downloader/p65;->d(ILcom/shabakaty/downloader/p65;)V

    const/4 v6, 0x2

    .line 203
    iput v6, v4, Lcom/shabakaty/downloader/p65;->c:I

    .line 204
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_41
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v26, v3

    const/4 v5, 0x1

    goto :goto_23

    .line 205
    :cond_42
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_43

    goto/16 :goto_29

    .line 206
    :cond_43
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ec0;->o()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_47

    .line 207
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_44
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/p65;

    .line 208
    iget v7, v6, Lcom/shabakaty/downloader/p65;->c:I

    if-ne v7, v3, :cond_45

    const/4 v8, 0x0

    goto :goto_25

    .line 209
    :cond_45
    iget-object v7, v1, Lcom/shabakaty/downloader/fc0;->w0:Lcom/shabakaty/downloader/zh2;

    const/4 v8, 0x0

    .line 210
    invoke-virtual {v6, v7, v8}, Lcom/shabakaty/downloader/p65;->c(Lcom/shabakaty/downloader/zh2;I)I

    move-result v7

    if-le v7, v5, :cond_44

    move-object v4, v6

    move v5, v7

    goto :goto_25

    :cond_46
    const/4 v8, 0x0

    if-eqz v4, :cond_47

    .line 211
    iget-object v2, v1, Lcom/shabakaty/downloader/ec0;->T:[I

    aput v3, v2, v8

    .line 212
    invoke-virtual {v1, v5}, Lcom/shabakaty/downloader/ec0;->Q(I)V

    goto :goto_26

    :cond_47
    const/4 v4, 0x0

    .line 213
    :goto_26
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ec0;->s()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4b

    .line 214
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_48
    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/p65;

    .line 215
    iget v6, v5, Lcom/shabakaty/downloader/p65;->c:I

    if-nez v6, :cond_49

    const/4 v7, 0x1

    goto :goto_27

    .line 216
    :cond_49
    iget-object v6, v1, Lcom/shabakaty/downloader/fc0;->w0:Lcom/shabakaty/downloader/zh2;

    const/4 v7, 0x1

    .line 217
    invoke-virtual {v5, v6, v7}, Lcom/shabakaty/downloader/p65;->c(Lcom/shabakaty/downloader/zh2;I)I

    move-result v6

    if-le v6, v3, :cond_48

    move-object v2, v5

    move v3, v6

    goto :goto_27

    :cond_4a
    const/4 v7, 0x1

    if-eqz v2, :cond_4b

    .line 218
    iget-object v0, v1, Lcom/shabakaty/downloader/ec0;->T:[I

    aput v7, v0, v7

    .line 219
    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/ec0;->L(I)V

    goto :goto_28

    :cond_4b
    const/4 v2, 0x0

    :goto_28
    if-nez v4, :cond_4d

    if-eqz v2, :cond_4c

    goto :goto_2a

    :cond_4c
    :goto_29
    const/4 v0, 0x0

    goto :goto_2b

    :cond_4d
    :goto_2a
    const/4 v0, 0x1

    :goto_2b
    if-eqz v0, :cond_52

    move/from16 v2, v25

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4f

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ec0;->t()I

    move-result v0

    move/from16 v3, v24

    if-ge v3, v0, :cond_4e

    if-lez v3, :cond_4e

    .line 221
    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/ec0;->Q(I)V

    const/4 v4, 0x1

    .line 222
    iput-boolean v4, v1, Lcom/shabakaty/downloader/fc0;->E0:Z

    goto :goto_2c

    .line 223
    :cond_4e
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ec0;->t()I

    move-result v0

    goto :goto_2d

    :cond_4f
    move/from16 v3, v24

    :goto_2c
    move v0, v3

    :goto_2d
    move/from16 v4, v22

    const/4 v3, 0x2

    if-ne v4, v3, :cond_51

    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ec0;->n()I

    move-result v3

    move/from16 v5, v23

    if-ge v5, v3, :cond_50

    if-lez v5, :cond_50

    .line 225
    invoke-virtual {v1, v5}, Lcom/shabakaty/downloader/ec0;->L(I)V

    const/4 v3, 0x1

    .line 226
    iput-boolean v3, v1, Lcom/shabakaty/downloader/fc0;->F0:Z

    goto :goto_2e

    .line 227
    :cond_50
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ec0;->n()I

    move-result v3

    goto :goto_2f

    :cond_51
    move/from16 v5, v23

    :goto_2e
    move v3, v5

    :goto_2f
    move v5, v3

    move v3, v0

    const/4 v0, 0x1

    goto :goto_31

    :cond_52
    move/from16 v4, v22

    move/from16 v5, v23

    move/from16 v3, v24

    move/from16 v2, v25

    goto :goto_30

    :cond_53
    move/from16 v21, v3

    move v2, v5

    move v3, v0

    move v5, v4

    move v4, v7

    :goto_30
    const/4 v0, 0x0

    :goto_31
    const/16 v6, 0x40

    .line 228
    invoke-virtual {v1, v6}, Lcom/shabakaty/downloader/fc0;->d0(I)Z

    move-result v7

    if-nez v7, :cond_55

    const/16 v7, 0x80

    invoke-virtual {v1, v7}, Lcom/shabakaty/downloader/fc0;->d0(I)Z

    move-result v7

    if-eqz v7, :cond_54

    goto :goto_32

    :cond_54
    const/4 v7, 0x0

    goto :goto_33

    :cond_55
    :goto_32
    const/4 v7, 0x1

    .line 229
    :goto_33
    iget-object v8, v1, Lcom/shabakaty/downloader/fc0;->w0:Lcom/shabakaty/downloader/zh2;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x0

    .line 230
    iput-boolean v9, v8, Lcom/shabakaty/downloader/zh2;->g:Z

    .line 231
    iget v9, v1, Lcom/shabakaty/downloader/fc0;->D0:I

    if-eqz v9, :cond_56

    if-eqz v7, :cond_56

    const/4 v7, 0x1

    .line 232
    iput-boolean v7, v8, Lcom/shabakaty/downloader/zh2;->g:Z

    .line 233
    :cond_56
    iget-object v7, v1, Lcom/shabakaty/downloader/o65;->q0:Ljava/util/ArrayList;

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ec0;->o()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_58

    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ec0;->s()I

    move-result v8

    if-ne v8, v9, :cond_57

    goto :goto_34

    :cond_57
    const/4 v8, 0x0

    const/4 v10, 0x0

    goto :goto_35

    :cond_58
    :goto_34
    const/4 v8, 0x0

    const/4 v10, 0x1

    .line 235
    :goto_35
    iput v8, v1, Lcom/shabakaty/downloader/fc0;->z0:I

    .line 236
    iput v8, v1, Lcom/shabakaty/downloader/fc0;->A0:I

    move/from16 v9, v21

    const/4 v8, 0x0

    :goto_36
    if-ge v8, v9, :cond_5a

    .line 237
    iget-object v11, v1, Lcom/shabakaty/downloader/o65;->q0:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shabakaty/downloader/ec0;

    .line 238
    instance-of v12, v11, Lcom/shabakaty/downloader/o65;

    if-eqz v12, :cond_59

    .line 239
    check-cast v11, Lcom/shabakaty/downloader/o65;

    invoke-virtual {v11}, Lcom/shabakaty/downloader/o65;->T()V

    :cond_59
    add-int/lit8 v8, v8, 0x1

    goto :goto_36

    .line 240
    :cond_5a
    invoke-virtual {v1, v6}, Lcom/shabakaty/downloader/fc0;->d0(I)Z

    move-result v8

    move v11, v0

    const/4 v0, 0x0

    const/4 v12, 0x1

    :goto_37
    if-eqz v12, :cond_6f

    const/4 v13, 0x1

    add-int/lit8 v14, v0, 0x1

    .line 241
    :try_start_0
    iget-object v0, v1, Lcom/shabakaty/downloader/fc0;->w0:Lcom/shabakaty/downloader/zh2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/zh2;->u()V

    const/4 v13, 0x0

    .line 242
    iput v13, v1, Lcom/shabakaty/downloader/fc0;->z0:I

    .line 243
    iput v13, v1, Lcom/shabakaty/downloader/fc0;->A0:I

    .line 244
    iget-object v0, v1, Lcom/shabakaty/downloader/fc0;->w0:Lcom/shabakaty/downloader/zh2;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/ec0;->i(Lcom/shabakaty/downloader/zh2;)V

    const/4 v0, 0x0

    :goto_38
    if-ge v0, v9, :cond_5b

    .line 245
    iget-object v13, v1, Lcom/shabakaty/downloader/o65;->q0:Ljava/util/ArrayList;

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/shabakaty/downloader/ec0;

    .line 246
    iget-object v15, v1, Lcom/shabakaty/downloader/fc0;->w0:Lcom/shabakaty/downloader/zh2;

    invoke-virtual {v13, v15}, Lcom/shabakaty/downloader/ec0;->i(Lcom/shabakaty/downloader/zh2;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 247
    :cond_5b
    iget-object v0, v1, Lcom/shabakaty/downloader/fc0;->w0:Lcom/shabakaty/downloader/zh2;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/fc0;->V(Lcom/shabakaty/downloader/zh2;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 248
    :try_start_1
    iget-object v0, v1, Lcom/shabakaty/downloader/fc0;->G0:Ljava/lang/ref/WeakReference;

    const/4 v12, 0x5

    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 249
    iget-object v0, v1, Lcom/shabakaty/downloader/fc0;->G0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/wb0;

    iget-object v13, v1, Lcom/shabakaty/downloader/fc0;->w0:Lcom/shabakaty/downloader/zh2;

    iget-object v15, v1, Lcom/shabakaty/downloader/ec0;->J:Lcom/shabakaty/downloader/wb0;

    invoke-virtual {v13, v15}, Lcom/shabakaty/downloader/zh2;->l(Ljava/lang/Object;)Lcom/shabakaty/downloader/n94;

    move-result-object v13

    .line 250
    iget-object v15, v1, Lcom/shabakaty/downloader/fc0;->w0:Lcom/shabakaty/downloader/zh2;

    invoke-virtual {v15, v0}, Lcom/shabakaty/downloader/zh2;->l(Ljava/lang/Object;)Lcom/shabakaty/downloader/n94;

    move-result-object v0

    .line 251
    iget-object v15, v1, Lcom/shabakaty/downloader/fc0;->w0:Lcom/shabakaty/downloader/zh2;

    const/4 v6, 0x0

    invoke-virtual {v15, v0, v13, v6, v12}, Lcom/shabakaty/downloader/zh2;->f(Lcom/shabakaty/downloader/n94;Lcom/shabakaty/downloader/n94;II)V

    const/4 v6, 0x0

    .line 252
    iput-object v6, v1, Lcom/shabakaty/downloader/fc0;->G0:Ljava/lang/ref/WeakReference;

    .line 253
    :cond_5c
    iget-object v0, v1, Lcom/shabakaty/downloader/fc0;->I0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 254
    iget-object v0, v1, Lcom/shabakaty/downloader/fc0;->I0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/wb0;

    iget-object v6, v1, Lcom/shabakaty/downloader/fc0;->w0:Lcom/shabakaty/downloader/zh2;

    iget-object v13, v1, Lcom/shabakaty/downloader/ec0;->L:Lcom/shabakaty/downloader/wb0;

    invoke-virtual {v6, v13}, Lcom/shabakaty/downloader/zh2;->l(Ljava/lang/Object;)Lcom/shabakaty/downloader/n94;

    move-result-object v6

    .line 255
    iget-object v13, v1, Lcom/shabakaty/downloader/fc0;->w0:Lcom/shabakaty/downloader/zh2;

    invoke-virtual {v13, v0}, Lcom/shabakaty/downloader/zh2;->l(Ljava/lang/Object;)Lcom/shabakaty/downloader/n94;

    move-result-object v0

    .line 256
    iget-object v13, v1, Lcom/shabakaty/downloader/fc0;->w0:Lcom/shabakaty/downloader/zh2;

    const/4 v15, 0x0

    invoke-virtual {v13, v6, v0, v15, v12}, Lcom/shabakaty/downloader/zh2;->f(Lcom/shabakaty/downloader/n94;Lcom/shabakaty/downloader/n94;II)V

    const/4 v6, 0x0

    .line 257
    iput-object v6, v1, Lcom/shabakaty/downloader/fc0;->I0:Ljava/lang/ref/WeakReference;

    .line 258
    :cond_5d
    iget-object v0, v1, Lcom/shabakaty/downloader/fc0;->H0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 259
    iget-object v0, v1, Lcom/shabakaty/downloader/fc0;->H0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/wb0;

    iget-object v6, v1, Lcom/shabakaty/downloader/fc0;->w0:Lcom/shabakaty/downloader/zh2;

    iget-object v13, v1, Lcom/shabakaty/downloader/ec0;->I:Lcom/shabakaty/downloader/wb0;

    invoke-virtual {v6, v13}, Lcom/shabakaty/downloader/zh2;->l(Ljava/lang/Object;)Lcom/shabakaty/downloader/n94;

    move-result-object v6

    .line 260
    iget-object v13, v1, Lcom/shabakaty/downloader/fc0;->w0:Lcom/shabakaty/downloader/zh2;

    invoke-virtual {v13, v0}, Lcom/shabakaty/downloader/zh2;->l(Ljava/lang/Object;)Lcom/shabakaty/downloader/n94;

    move-result-object v0

    .line 261
    iget-object v13, v1, Lcom/shabakaty/downloader/fc0;->w0:Lcom/shabakaty/downloader/zh2;

    const/4 v15, 0x0

    invoke-virtual {v13, v0, v6, v15, v12}, Lcom/shabakaty/downloader/zh2;->f(Lcom/shabakaty/downloader/n94;Lcom/shabakaty/downloader/n94;II)V

    const/4 v6, 0x0

    .line 262
    iput-object v6, v1, Lcom/shabakaty/downloader/fc0;->H0:Ljava/lang/ref/WeakReference;

    goto :goto_3a

    :goto_39
    const/4 v6, 0x0

    goto :goto_3c

    .line 263
    :cond_5e
    :goto_3a
    iget-object v0, v1, Lcom/shabakaty/downloader/fc0;->J0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5f

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 264
    iget-object v0, v1, Lcom/shabakaty/downloader/fc0;->J0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/wb0;

    iget-object v6, v1, Lcom/shabakaty/downloader/fc0;->w0:Lcom/shabakaty/downloader/zh2;

    iget-object v13, v1, Lcom/shabakaty/downloader/ec0;->K:Lcom/shabakaty/downloader/wb0;

    invoke-virtual {v6, v13}, Lcom/shabakaty/downloader/zh2;->l(Ljava/lang/Object;)Lcom/shabakaty/downloader/n94;

    move-result-object v6

    .line 265
    iget-object v13, v1, Lcom/shabakaty/downloader/fc0;->w0:Lcom/shabakaty/downloader/zh2;

    invoke-virtual {v13, v0}, Lcom/shabakaty/downloader/zh2;->l(Ljava/lang/Object;)Lcom/shabakaty/downloader/n94;

    move-result-object v0

    .line 266
    iget-object v13, v1, Lcom/shabakaty/downloader/fc0;->w0:Lcom/shabakaty/downloader/zh2;

    const/4 v15, 0x0

    invoke-virtual {v13, v6, v0, v15, v12}, Lcom/shabakaty/downloader/zh2;->f(Lcom/shabakaty/downloader/n94;Lcom/shabakaty/downloader/n94;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v6, 0x0

    .line 267
    :try_start_2
    iput-object v6, v1, Lcom/shabakaty/downloader/fc0;->J0:Ljava/lang/ref/WeakReference;

    goto :goto_3b

    :catch_0
    move-exception v0

    goto :goto_39

    :cond_5f
    const/4 v6, 0x0

    .line 268
    :goto_3b
    iget-object v0, v1, Lcom/shabakaty/downloader/fc0;->w0:Lcom/shabakaty/downloader/zh2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/zh2;->q()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v12, 0x1

    goto :goto_3e

    :catch_1
    move-exception v0

    :goto_3c
    const/4 v12, 0x1

    goto :goto_3d

    :catch_2
    move-exception v0

    const/4 v6, 0x0

    .line 269
    :goto_3d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 270
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EXCEPTION : "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_3e
    if-eqz v12, :cond_64

    .line 271
    iget-object v0, v1, Lcom/shabakaty/downloader/fc0;->w0:Lcom/shabakaty/downloader/zh2;

    sget-object v6, Lcom/shabakaty/downloader/c83;->a:[Z

    const/4 v12, 0x2

    const/4 v13, 0x0

    .line 272
    aput-boolean v13, v6, v12

    const/16 v6, 0x40

    .line 273
    invoke-virtual {v1, v6}, Lcom/shabakaty/downloader/fc0;->d0(I)Z

    move-result v12

    .line 274
    invoke-virtual {v1, v0, v12}, Lcom/shabakaty/downloader/ec0;->S(Lcom/shabakaty/downloader/zh2;Z)V

    .line 275
    iget-object v13, v1, Lcom/shabakaty/downloader/o65;->q0:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v15, 0x0

    const/16 v20, 0x0

    :goto_3f
    if-ge v15, v13, :cond_63

    .line 276
    iget-object v6, v1, Lcom/shabakaty/downloader/o65;->q0:Ljava/util/ArrayList;

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/ec0;

    .line 277
    invoke-virtual {v6, v0, v12}, Lcom/shabakaty/downloader/ec0;->S(Lcom/shabakaty/downloader/zh2;Z)V

    move-object/from16 v22, v0

    .line 278
    iget v0, v6, Lcom/shabakaty/downloader/ec0;->h:I

    move/from16 v23, v12

    const/4 v12, -0x1

    if-ne v0, v12, :cond_61

    iget v0, v6, Lcom/shabakaty/downloader/ec0;->i:I

    if-eq v0, v12, :cond_60

    goto :goto_40

    :cond_60
    const/4 v0, 0x0

    goto :goto_41

    :cond_61
    :goto_40
    const/4 v0, 0x1

    :goto_41
    if-eqz v0, :cond_62

    const/16 v20, 0x1

    :cond_62
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v22

    move/from16 v12, v23

    const/16 v6, 0x40

    goto :goto_3f

    :cond_63
    const/4 v12, -0x1

    goto :goto_43

    :cond_64
    const/4 v12, -0x1

    .line 279
    iget-object v0, v1, Lcom/shabakaty/downloader/fc0;->w0:Lcom/shabakaty/downloader/zh2;

    invoke-virtual {v1, v0, v8}, Lcom/shabakaty/downloader/ec0;->S(Lcom/shabakaty/downloader/zh2;Z)V

    const/4 v0, 0x0

    :goto_42
    if-ge v0, v9, :cond_65

    .line 280
    iget-object v6, v1, Lcom/shabakaty/downloader/o65;->q0:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/ec0;

    .line 281
    iget-object v13, v1, Lcom/shabakaty/downloader/fc0;->w0:Lcom/shabakaty/downloader/zh2;

    invoke-virtual {v6, v13, v8}, Lcom/shabakaty/downloader/ec0;->S(Lcom/shabakaty/downloader/zh2;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    :cond_65
    const/16 v20, 0x0

    :goto_43
    const/16 v0, 0x8

    if-eqz v10, :cond_68

    if-ge v14, v0, :cond_68

    .line 282
    sget-object v6, Lcom/shabakaty/downloader/c83;->a:[Z

    const/4 v13, 0x2

    aget-boolean v6, v6, v13

    if-eqz v6, :cond_68

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_44
    if-ge v6, v9, :cond_66

    .line 283
    iget-object v12, v1, Lcom/shabakaty/downloader/o65;->q0:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/shabakaty/downloader/ec0;

    .line 284
    iget v0, v12, Lcom/shabakaty/downloader/ec0;->Z:I

    invoke-virtual {v12}, Lcom/shabakaty/downloader/ec0;->t()I

    move-result v23

    add-int v0, v23, v0

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 285
    iget v0, v12, Lcom/shabakaty/downloader/ec0;->a0:I

    invoke-virtual {v12}, Lcom/shabakaty/downloader/ec0;->n()I

    move-result v12

    add-int/2addr v12, v0

    invoke-static {v15, v12}, Ljava/lang/Math;->max(II)I

    move-result v15

    add-int/lit8 v6, v6, 0x1

    const/16 v0, 0x8

    const/4 v12, -0x1

    goto :goto_44

    .line 286
    :cond_66
    iget v0, v1, Lcom/shabakaty/downloader/ec0;->c0:I

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 287
    iget v6, v1, Lcom/shabakaty/downloader/ec0;->d0:I

    invoke-static {v6, v15}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 v12, 0x2

    if-ne v2, v12, :cond_67

    .line 288
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ec0;->t()I

    move-result v13

    if-ge v13, v0, :cond_67

    .line 289
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/ec0;->Q(I)V

    .line 290
    iget-object v0, v1, Lcom/shabakaty/downloader/ec0;->T:[I

    const/4 v11, 0x0

    aput v12, v0, v11

    const/4 v11, 0x1

    const/16 v20, 0x1

    :cond_67
    if-ne v4, v12, :cond_68

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ec0;->n()I

    move-result v0

    if-ge v0, v6, :cond_68

    .line 292
    invoke-virtual {v1, v6}, Lcom/shabakaty/downloader/ec0;->L(I)V

    .line 293
    iget-object v0, v1, Lcom/shabakaty/downloader/ec0;->T:[I

    const/4 v6, 0x1

    aput v12, v0, v6

    const/4 v11, 0x1

    const/16 v20, 0x1

    .line 294
    :cond_68
    iget v0, v1, Lcom/shabakaty/downloader/ec0;->c0:I

    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ec0;->t()I

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 295
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ec0;->t()I

    move-result v6

    if-le v0, v6, :cond_69

    .line 296
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/ec0;->Q(I)V

    .line 297
    iget-object v0, v1, Lcom/shabakaty/downloader/ec0;->T:[I

    const/4 v6, 0x1

    const/4 v11, 0x0

    aput v6, v0, v11

    const/16 v18, 0x1

    const/16 v20, 0x1

    goto :goto_45

    :cond_69
    const/4 v6, 0x1

    move/from16 v18, v11

    .line 298
    :goto_45
    iget v0, v1, Lcom/shabakaty/downloader/ec0;->d0:I

    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ec0;->n()I

    move-result v11

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ec0;->n()I

    move-result v11

    if-le v0, v11, :cond_6a

    .line 300
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/ec0;->L(I)V

    .line 301
    iget-object v0, v1, Lcom/shabakaty/downloader/ec0;->T:[I

    aput v6, v0, v6

    const/4 v11, 0x1

    const/16 v20, 0x1

    goto :goto_46

    :cond_6a
    move/from16 v11, v18

    :goto_46
    if-nez v11, :cond_6c

    .line 302
    iget-object v0, v1, Lcom/shabakaty/downloader/ec0;->T:[I

    const/4 v12, 0x0

    aget v0, v0, v12

    const/4 v13, 0x2

    if-ne v0, v13, :cond_6b

    if-lez v3, :cond_6b

    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ec0;->t()I

    move-result v0

    if-le v0, v3, :cond_6b

    .line 304
    iput-boolean v6, v1, Lcom/shabakaty/downloader/fc0;->E0:Z

    .line 305
    iget-object v0, v1, Lcom/shabakaty/downloader/ec0;->T:[I

    aput v6, v0, v12

    .line 306
    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/ec0;->Q(I)V

    const/4 v11, 0x1

    const/16 v20, 0x1

    .line 307
    :cond_6b
    iget-object v0, v1, Lcom/shabakaty/downloader/ec0;->T:[I

    aget v0, v0, v6

    const/4 v12, 0x2

    if-ne v0, v12, :cond_6d

    if-lez v5, :cond_6d

    .line 308
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ec0;->n()I

    move-result v0

    if-le v0, v5, :cond_6d

    .line 309
    iput-boolean v6, v1, Lcom/shabakaty/downloader/fc0;->F0:Z

    .line 310
    iget-object v0, v1, Lcom/shabakaty/downloader/ec0;->T:[I

    aput v6, v0, v6

    .line 311
    invoke-virtual {v1, v5}, Lcom/shabakaty/downloader/ec0;->L(I)V

    const/16 v0, 0x8

    const/4 v11, 0x1

    const/16 v20, 0x1

    goto :goto_47

    :cond_6c
    const/4 v12, 0x2

    :cond_6d
    const/16 v0, 0x8

    :goto_47
    if-le v14, v0, :cond_6e

    const/16 v20, 0x0

    :cond_6e
    move v0, v14

    move/from16 v12, v20

    const/16 v6, 0x40

    goto/16 :goto_37

    .line 312
    :cond_6f
    iput-object v7, v1, Lcom/shabakaty/downloader/o65;->q0:Ljava/util/ArrayList;

    if-eqz v11, :cond_70

    .line 313
    iget-object v0, v1, Lcom/shabakaty/downloader/ec0;->T:[I

    const/4 v3, 0x0

    aput v2, v0, v3

    const/4 v2, 0x1

    .line 314
    aput v4, v0, v2

    .line 315
    :cond_70
    iget-object v0, v1, Lcom/shabakaty/downloader/fc0;->w0:Lcom/shabakaty/downloader/zh2;

    .line 316
    iget-object v0, v0, Lcom/shabakaty/downloader/zh2;->l:Lcom/shabakaty/downloader/np4;

    .line 317
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/o65;->H(Lcom/shabakaty/downloader/np4;)V

    return-void
.end method

.method public U(Lcom/shabakaty/downloader/ec0;I)V
    .locals 5

    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 1
    iget p2, p0, Lcom/shabakaty/downloader/fc0;->z0:I

    add-int/2addr p2, v0

    iget-object v1, p0, Lcom/shabakaty/downloader/fc0;->C0:[Lcom/shabakaty/downloader/hy;

    array-length v2, v1

    if-lt p2, v2, :cond_0

    .line 2
    array-length p2, v1

    mul-int/lit8 p2, p2, 0x2

    .line 3
    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/shabakaty/downloader/hy;

    iput-object p2, p0, Lcom/shabakaty/downloader/fc0;->C0:[Lcom/shabakaty/downloader/hy;

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/shabakaty/downloader/fc0;->C0:[Lcom/shabakaty/downloader/hy;

    iget v1, p0, Lcom/shabakaty/downloader/fc0;->z0:I

    new-instance v2, Lcom/shabakaty/downloader/hy;

    const/4 v3, 0x0

    .line 5
    iget-boolean v4, p0, Lcom/shabakaty/downloader/fc0;->v0:Z

    .line 6
    invoke-direct {v2, p1, v3, v4}, Lcom/shabakaty/downloader/hy;-><init>(Lcom/shabakaty/downloader/ec0;IZ)V

    aput-object v2, p2, v1

    add-int/2addr v1, v0

    .line 7
    iput v1, p0, Lcom/shabakaty/downloader/fc0;->z0:I

    goto :goto_0

    :cond_1
    if-ne p2, v0, :cond_3

    .line 8
    iget p2, p0, Lcom/shabakaty/downloader/fc0;->A0:I

    add-int/2addr p2, v0

    iget-object v1, p0, Lcom/shabakaty/downloader/fc0;->B0:[Lcom/shabakaty/downloader/hy;

    array-length v2, v1

    if-lt p2, v2, :cond_2

    .line 9
    array-length p2, v1

    mul-int/lit8 p2, p2, 0x2

    .line 10
    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/shabakaty/downloader/hy;

    iput-object p2, p0, Lcom/shabakaty/downloader/fc0;->B0:[Lcom/shabakaty/downloader/hy;

    .line 11
    :cond_2
    iget-object p2, p0, Lcom/shabakaty/downloader/fc0;->B0:[Lcom/shabakaty/downloader/hy;

    iget v1, p0, Lcom/shabakaty/downloader/fc0;->A0:I

    new-instance v2, Lcom/shabakaty/downloader/hy;

    .line 12
    iget-boolean v3, p0, Lcom/shabakaty/downloader/fc0;->v0:Z

    .line 13
    invoke-direct {v2, p1, v0, v3}, Lcom/shabakaty/downloader/hy;-><init>(Lcom/shabakaty/downloader/ec0;IZ)V

    aput-object v2, p2, v1

    add-int/2addr v1, v0

    .line 14
    iput v1, p0, Lcom/shabakaty/downloader/fc0;->A0:I

    :cond_3
    :goto_0
    return-void
.end method

.method public V(Lcom/shabakaty/downloader/zh2;)Z
    .locals 12

    const/16 v0, 0x40

    .line 1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/fc0;->d0(I)Z

    move-result v0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/ec0;->d(Lcom/shabakaty/downloader/zh2;Z)V

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/o65;->q0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v1, :cond_1

    .line 4
    iget-object v6, p0, Lcom/shabakaty/downloader/o65;->q0:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/ec0;

    .line 5
    iget-object v7, v6, Lcom/shabakaty/downloader/ec0;->S:[Z

    aput-boolean v2, v7, v2

    .line 6
    aput-boolean v2, v7, v5

    .line 7
    instance-of v6, v6, Lcom/shabakaty/downloader/ui;

    if-eqz v6, :cond_0

    const/4 v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_8

    .line 8
    iget-object v6, p0, Lcom/shabakaty/downloader/o65;->q0:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/ec0;

    .line 9
    instance-of v7, v6, Lcom/shabakaty/downloader/ui;

    if-eqz v7, :cond_7

    .line 10
    check-cast v6, Lcom/shabakaty/downloader/ui;

    const/4 v7, 0x0

    .line 11
    :goto_2
    iget v8, v6, Lcom/shabakaty/downloader/bt1;->r0:I

    if-ge v7, v8, :cond_7

    .line 12
    iget-object v8, v6, Lcom/shabakaty/downloader/bt1;->q0:[Lcom/shabakaty/downloader/ec0;

    aget-object v8, v8, v7

    .line 13
    iget-boolean v9, v6, Lcom/shabakaty/downloader/ui;->t0:Z

    if-nez v9, :cond_2

    invoke-virtual {v8}, Lcom/shabakaty/downloader/ec0;->e()Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_4

    .line 14
    :cond_2
    iget v9, v6, Lcom/shabakaty/downloader/ui;->s0:I

    if-eqz v9, :cond_5

    if-ne v9, v5, :cond_3

    goto :goto_3

    :cond_3
    if-eq v9, v3, :cond_4

    const/4 v10, 0x3

    if-ne v9, v10, :cond_6

    .line 15
    :cond_4
    iget-object v8, v8, Lcom/shabakaty/downloader/ec0;->S:[Z

    aput-boolean v5, v8, v5

    goto :goto_4

    .line 16
    :cond_5
    :goto_3
    iget-object v8, v8, Lcom/shabakaty/downloader/ec0;->S:[Z

    aput-boolean v5, v8, v2

    :cond_6
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 17
    :cond_8
    iget-object v4, p0, Lcom/shabakaty/downloader/fc0;->K0:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v1, :cond_b

    .line 18
    iget-object v6, p0, Lcom/shabakaty/downloader/o65;->q0:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/ec0;

    .line 19
    invoke-virtual {v6}, Lcom/shabakaty/downloader/ec0;->c()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 20
    instance-of v7, v6, Lcom/shabakaty/downloader/u45;

    if-eqz v7, :cond_9

    .line 21
    iget-object v7, p0, Lcom/shabakaty/downloader/fc0;->K0:Ljava/util/HashSet;

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 22
    :cond_9
    invoke-virtual {v6, p1, v0}, Lcom/shabakaty/downloader/ec0;->d(Lcom/shabakaty/downloader/zh2;Z)V

    :cond_a
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 23
    :cond_b
    :goto_7
    iget-object v4, p0, Lcom/shabakaty/downloader/fc0;->K0:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_11

    .line 24
    iget-object v4, p0, Lcom/shabakaty/downloader/fc0;->K0:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    .line 25
    iget-object v6, p0, Lcom/shabakaty/downloader/fc0;->K0:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/ec0;

    .line 26
    check-cast v7, Lcom/shabakaty/downloader/u45;

    .line 27
    iget-object v8, p0, Lcom/shabakaty/downloader/fc0;->K0:Ljava/util/HashSet;

    const/4 v9, 0x0

    .line 28
    :goto_8
    iget v10, v7, Lcom/shabakaty/downloader/bt1;->r0:I

    if-ge v9, v10, :cond_e

    .line 29
    iget-object v10, v7, Lcom/shabakaty/downloader/bt1;->q0:[Lcom/shabakaty/downloader/ec0;

    aget-object v10, v10, v9

    .line 30
    invoke-virtual {v8, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    const/4 v8, 0x1

    goto :goto_9

    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_e
    const/4 v8, 0x0

    :goto_9
    if-eqz v8, :cond_c

    .line 31
    invoke-virtual {v7, p1, v0}, Lcom/shabakaty/downloader/ec0;->d(Lcom/shabakaty/downloader/zh2;Z)V

    .line 32
    iget-object v6, p0, Lcom/shabakaty/downloader/fc0;->K0:Ljava/util/HashSet;

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 33
    :cond_f
    iget-object v6, p0, Lcom/shabakaty/downloader/fc0;->K0:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    if-ne v4, v6, :cond_b

    .line 34
    iget-object v4, p0, Lcom/shabakaty/downloader/fc0;->K0:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/ec0;

    .line 35
    invoke-virtual {v6, p1, v0}, Lcom/shabakaty/downloader/ec0;->d(Lcom/shabakaty/downloader/zh2;Z)V

    goto :goto_a

    .line 36
    :cond_10
    iget-object v4, p0, Lcom/shabakaty/downloader/fc0;->K0:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    goto :goto_7

    .line 37
    :cond_11
    sget-boolean v4, Lcom/shabakaty/downloader/zh2;->p:Z

    if-eqz v4, :cond_15

    .line 38
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v1, :cond_13

    .line 39
    iget-object v7, p0, Lcom/shabakaty/downloader/o65;->q0:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/ec0;

    .line 40
    invoke-virtual {v7}, Lcom/shabakaty/downloader/ec0;->c()Z

    move-result v8

    if-nez v8, :cond_12

    .line 41
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 42
    :cond_13
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ec0;->o()I

    move-result v1

    if-ne v1, v3, :cond_14

    const/4 v10, 0x0

    goto :goto_c

    :cond_14
    const/4 v10, 0x1

    :goto_c
    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, p0

    move-object v8, p1

    move-object v9, v4

    .line 43
    invoke-virtual/range {v6 .. v11}, Lcom/shabakaty/downloader/ec0;->b(Lcom/shabakaty/downloader/fc0;Lcom/shabakaty/downloader/zh2;Ljava/util/HashSet;IZ)V

    .line 44
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/ec0;

    .line 45
    invoke-static {p0, p1, v3}, Lcom/shabakaty/downloader/c83;->a(Lcom/shabakaty/downloader/fc0;Lcom/shabakaty/downloader/zh2;Lcom/shabakaty/downloader/ec0;)V

    .line 46
    invoke-virtual {v3, p1, v0}, Lcom/shabakaty/downloader/ec0;->d(Lcom/shabakaty/downloader/zh2;Z)V

    goto :goto_d

    :cond_15
    const/4 v4, 0x0

    :goto_e
    if-ge v4, v1, :cond_1b

    .line 47
    iget-object v6, p0, Lcom/shabakaty/downloader/o65;->q0:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/ec0;

    .line 48
    instance-of v7, v6, Lcom/shabakaty/downloader/fc0;

    if-eqz v7, :cond_19

    .line 49
    iget-object v7, v6, Lcom/shabakaty/downloader/ec0;->T:[I

    aget v8, v7, v2

    .line 50
    aget v9, v7, v5

    if-ne v8, v3, :cond_16

    .line 51
    aput v5, v7, v2

    :cond_16
    if-ne v9, v3, :cond_17

    .line 52
    aput v5, v7, v5

    .line 53
    :cond_17
    invoke-virtual {v6, p1, v0}, Lcom/shabakaty/downloader/ec0;->d(Lcom/shabakaty/downloader/zh2;Z)V

    if-ne v8, v3, :cond_18

    .line 54
    invoke-virtual {v6, v8}, Lcom/shabakaty/downloader/ec0;->M(I)V

    :cond_18
    if-ne v9, v3, :cond_1a

    .line 55
    invoke-virtual {v6, v9}, Lcom/shabakaty/downloader/ec0;->P(I)V

    goto :goto_f

    .line 56
    :cond_19
    invoke-static {p0, p1, v6}, Lcom/shabakaty/downloader/c83;->a(Lcom/shabakaty/downloader/fc0;Lcom/shabakaty/downloader/zh2;Lcom/shabakaty/downloader/ec0;)V

    .line 57
    invoke-virtual {v6}, Lcom/shabakaty/downloader/ec0;->c()Z

    move-result v7

    if-nez v7, :cond_1a

    .line 58
    invoke-virtual {v6, p1, v0}, Lcom/shabakaty/downloader/ec0;->d(Lcom/shabakaty/downloader/zh2;Z)V

    :cond_1a
    :goto_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 59
    :cond_1b
    iget v0, p0, Lcom/shabakaty/downloader/fc0;->z0:I

    const/4 v1, 0x0

    if-lez v0, :cond_1c

    .line 60
    invoke-static {p0, p1, v1, v2}, Lcom/shabakaty/downloader/gy;->a(Lcom/shabakaty/downloader/fc0;Lcom/shabakaty/downloader/zh2;Ljava/util/ArrayList;I)V

    .line 61
    :cond_1c
    iget v0, p0, Lcom/shabakaty/downloader/fc0;->A0:I

    if-lez v0, :cond_1d

    .line 62
    invoke-static {p0, p1, v1, v5}, Lcom/shabakaty/downloader/gy;->a(Lcom/shabakaty/downloader/fc0;Lcom/shabakaty/downloader/zh2;Ljava/util/ArrayList;I)V

    :cond_1d
    return v5
.end method

.method public W(Lcom/shabakaty/downloader/wb0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fc0;->J0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/wb0;->d()I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/downloader/fc0;->J0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/wb0;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/wb0;->d()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/fc0;->J0:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public X(Lcom/shabakaty/downloader/wb0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fc0;->H0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/wb0;->d()I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/downloader/fc0;->H0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/wb0;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/wb0;->d()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/fc0;->H0:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public Y(Lcom/shabakaty/downloader/wb0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fc0;->I0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/wb0;->d()I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/downloader/fc0;->I0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/wb0;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/wb0;->d()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/fc0;->I0:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public Z(Lcom/shabakaty/downloader/wb0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fc0;->G0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/wb0;->d()I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/downloader/fc0;->G0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/wb0;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/wb0;->d()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/fc0;->G0:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public a0(ZI)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fc0;->s0:Lcom/shabakaty/downloader/kq0;

    const/4 v1, 0x1

    and-int/2addr p1, v1

    .line 2
    iget-object v2, v0, Lcom/shabakaty/downloader/kq0;->a:Lcom/shabakaty/downloader/fc0;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/ec0;->m(I)I

    move-result v2

    .line 3
    iget-object v4, v0, Lcom/shabakaty/downloader/kq0;->a:Lcom/shabakaty/downloader/fc0;

    invoke-virtual {v4, v1}, Lcom/shabakaty/downloader/ec0;->m(I)I

    move-result v4

    .line 4
    iget-object v5, v0, Lcom/shabakaty/downloader/kq0;->a:Lcom/shabakaty/downloader/fc0;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/ec0;->u()I

    move-result v5

    .line 5
    iget-object v6, v0, Lcom/shabakaty/downloader/kq0;->a:Lcom/shabakaty/downloader/fc0;

    invoke-virtual {v6}, Lcom/shabakaty/downloader/ec0;->v()I

    move-result v6

    if-eqz p1, :cond_4

    const/4 v7, 0x2

    if-eq v2, v7, :cond_0

    if-ne v4, v7, :cond_4

    .line 6
    :cond_0
    iget-object v8, v0, Lcom/shabakaty/downloader/kq0;->e:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/q65;

    .line 7
    iget v10, v9, Lcom/shabakaty/downloader/q65;->f:I

    if-ne v10, p2, :cond_1

    .line 8
    invoke-virtual {v9}, Lcom/shabakaty/downloader/q65;->k()Z

    move-result v9

    if-nez v9, :cond_1

    const/4 p1, 0x0

    :cond_2
    if-nez p2, :cond_3

    if-eqz p1, :cond_4

    if-ne v2, v7, :cond_4

    .line 9
    iget-object p1, v0, Lcom/shabakaty/downloader/kq0;->a:Lcom/shabakaty/downloader/fc0;

    .line 10
    iget-object v7, p1, Lcom/shabakaty/downloader/ec0;->T:[I

    aput v1, v7, v3

    .line 11
    invoke-virtual {v0, p1, v3}, Lcom/shabakaty/downloader/kq0;->d(Lcom/shabakaty/downloader/fc0;I)I

    move-result v7

    invoke-virtual {p1, v7}, Lcom/shabakaty/downloader/ec0;->Q(I)V

    .line 12
    iget-object p1, v0, Lcom/shabakaty/downloader/kq0;->a:Lcom/shabakaty/downloader/fc0;

    iget-object v7, p1, Lcom/shabakaty/downloader/ec0;->d:Lcom/shabakaty/downloader/iv1;

    iget-object v7, v7, Lcom/shabakaty/downloader/q65;->e:Lcom/shabakaty/downloader/gt0;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ec0;->t()I

    move-result p1

    invoke-virtual {v7, p1}, Lcom/shabakaty/downloader/gt0;->c(I)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    if-ne v4, v7, :cond_4

    .line 13
    iget-object p1, v0, Lcom/shabakaty/downloader/kq0;->a:Lcom/shabakaty/downloader/fc0;

    .line 14
    iget-object v7, p1, Lcom/shabakaty/downloader/ec0;->T:[I

    aput v1, v7, v1

    .line 15
    invoke-virtual {v0, p1, v1}, Lcom/shabakaty/downloader/kq0;->d(Lcom/shabakaty/downloader/fc0;I)I

    move-result v7

    invoke-virtual {p1, v7}, Lcom/shabakaty/downloader/ec0;->L(I)V

    .line 16
    iget-object p1, v0, Lcom/shabakaty/downloader/kq0;->a:Lcom/shabakaty/downloader/fc0;

    iget-object v7, p1, Lcom/shabakaty/downloader/ec0;->e:Lcom/shabakaty/downloader/j05;

    iget-object v7, v7, Lcom/shabakaty/downloader/q65;->e:Lcom/shabakaty/downloader/gt0;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ec0;->n()I

    move-result p1

    invoke-virtual {v7, p1}, Lcom/shabakaty/downloader/gt0;->c(I)V

    :cond_4
    :goto_0
    const/4 p1, 0x4

    if-nez p2, :cond_6

    .line 17
    iget-object v6, v0, Lcom/shabakaty/downloader/kq0;->a:Lcom/shabakaty/downloader/fc0;

    iget-object v7, v6, Lcom/shabakaty/downloader/ec0;->T:[I

    aget v8, v7, v3

    if-eq v8, v1, :cond_5

    aget v7, v7, v3

    if-ne v7, p1, :cond_7

    .line 18
    :cond_5
    invoke-virtual {v6}, Lcom/shabakaty/downloader/ec0;->t()I

    move-result p1

    add-int/2addr p1, v5

    .line 19
    iget-object v6, v0, Lcom/shabakaty/downloader/kq0;->a:Lcom/shabakaty/downloader/fc0;

    iget-object v6, v6, Lcom/shabakaty/downloader/ec0;->d:Lcom/shabakaty/downloader/iv1;

    iget-object v6, v6, Lcom/shabakaty/downloader/q65;->i:Lcom/shabakaty/downloader/lq0;

    invoke-virtual {v6, p1}, Lcom/shabakaty/downloader/lq0;->c(I)V

    .line 20
    iget-object v6, v0, Lcom/shabakaty/downloader/kq0;->a:Lcom/shabakaty/downloader/fc0;

    iget-object v6, v6, Lcom/shabakaty/downloader/ec0;->d:Lcom/shabakaty/downloader/iv1;

    iget-object v6, v6, Lcom/shabakaty/downloader/q65;->e:Lcom/shabakaty/downloader/gt0;

    sub-int/2addr p1, v5

    invoke-virtual {v6, p1}, Lcom/shabakaty/downloader/gt0;->c(I)V

    goto :goto_2

    .line 21
    :cond_6
    iget-object v5, v0, Lcom/shabakaty/downloader/kq0;->a:Lcom/shabakaty/downloader/fc0;

    iget-object v7, v5, Lcom/shabakaty/downloader/ec0;->T:[I

    aget v8, v7, v1

    if-eq v8, v1, :cond_8

    aget v7, v7, v1

    if-ne v7, p1, :cond_7

    goto :goto_1

    :cond_7
    const/4 p1, 0x0

    goto :goto_3

    .line 22
    :cond_8
    :goto_1
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ec0;->n()I

    move-result p1

    add-int/2addr p1, v6

    .line 23
    iget-object v5, v0, Lcom/shabakaty/downloader/kq0;->a:Lcom/shabakaty/downloader/fc0;

    iget-object v5, v5, Lcom/shabakaty/downloader/ec0;->e:Lcom/shabakaty/downloader/j05;

    iget-object v5, v5, Lcom/shabakaty/downloader/q65;->i:Lcom/shabakaty/downloader/lq0;

    invoke-virtual {v5, p1}, Lcom/shabakaty/downloader/lq0;->c(I)V

    .line 24
    iget-object v5, v0, Lcom/shabakaty/downloader/kq0;->a:Lcom/shabakaty/downloader/fc0;

    iget-object v5, v5, Lcom/shabakaty/downloader/ec0;->e:Lcom/shabakaty/downloader/j05;

    iget-object v5, v5, Lcom/shabakaty/downloader/q65;->e:Lcom/shabakaty/downloader/gt0;

    sub-int/2addr p1, v6

    invoke-virtual {v5, p1}, Lcom/shabakaty/downloader/gt0;->c(I)V

    :goto_2
    const/4 p1, 0x1

    .line 25
    :goto_3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/kq0;->g()V

    .line 26
    iget-object v5, v0, Lcom/shabakaty/downloader/kq0;->e:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/q65;

    .line 27
    iget v7, v6, Lcom/shabakaty/downloader/q65;->f:I

    if-eq v7, p2, :cond_9

    goto :goto_4

    .line 28
    :cond_9
    iget-object v7, v6, Lcom/shabakaty/downloader/q65;->b:Lcom/shabakaty/downloader/ec0;

    iget-object v8, v0, Lcom/shabakaty/downloader/kq0;->a:Lcom/shabakaty/downloader/fc0;

    if-ne v7, v8, :cond_a

    iget-boolean v7, v6, Lcom/shabakaty/downloader/q65;->g:Z

    if-nez v7, :cond_a

    goto :goto_4

    .line 29
    :cond_a
    invoke-virtual {v6}, Lcom/shabakaty/downloader/q65;->e()V

    goto :goto_4

    .line 30
    :cond_b
    iget-object v5, v0, Lcom/shabakaty/downloader/kq0;->e:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_c
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/q65;

    .line 31
    iget v7, v6, Lcom/shabakaty/downloader/q65;->f:I

    if-eq v7, p2, :cond_d

    goto :goto_5

    :cond_d
    if-nez p1, :cond_e

    .line 32
    iget-object v7, v6, Lcom/shabakaty/downloader/q65;->b:Lcom/shabakaty/downloader/ec0;

    iget-object v8, v0, Lcom/shabakaty/downloader/kq0;->a:Lcom/shabakaty/downloader/fc0;

    if-ne v7, v8, :cond_e

    goto :goto_5

    .line 33
    :cond_e
    iget-object v7, v6, Lcom/shabakaty/downloader/q65;->h:Lcom/shabakaty/downloader/lq0;

    iget-boolean v7, v7, Lcom/shabakaty/downloader/lq0;->j:Z

    if-nez v7, :cond_f

    goto :goto_6

    .line 34
    :cond_f
    iget-object v7, v6, Lcom/shabakaty/downloader/q65;->i:Lcom/shabakaty/downloader/lq0;

    iget-boolean v7, v7, Lcom/shabakaty/downloader/lq0;->j:Z

    if-nez v7, :cond_10

    goto :goto_6

    .line 35
    :cond_10
    instance-of v7, v6, Lcom/shabakaty/downloader/iy;

    if-nez v7, :cond_c

    iget-object v6, v6, Lcom/shabakaty/downloader/q65;->e:Lcom/shabakaty/downloader/gt0;

    iget-boolean v6, v6, Lcom/shabakaty/downloader/lq0;->j:Z

    if-nez v6, :cond_c

    :goto_6
    const/4 v1, 0x0

    .line 36
    :cond_11
    iget-object p1, v0, Lcom/shabakaty/downloader/kq0;->a:Lcom/shabakaty/downloader/fc0;

    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/ec0;->M(I)V

    .line 37
    iget-object p1, v0, Lcom/shabakaty/downloader/kq0;->a:Lcom/shabakaty/downloader/fc0;

    invoke-virtual {p1, v4}, Lcom/shabakaty/downloader/ec0;->P(I)V

    return v1
.end method

.method public b0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fc0;->s0:Lcom/shabakaty/downloader/kq0;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/shabakaty/downloader/kq0;->b:Z

    return-void
.end method

.method public d0(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/fc0;->D0:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shabakaty/downloader/fc0;->D0:I

    const/16 p1, 0x200

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/fc0;->d0(I)Z

    move-result p1

    sput-boolean p1, Lcom/shabakaty/downloader/zh2;->p:Z

    return-void
.end method
