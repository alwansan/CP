.class public Lcom/shabakaty/downloader/se1;
.super Lcom/shabakaty/downloader/u45;
.source "Flow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/se1$a;
    }
.end annotation


# instance fields
.field public D0:I

.field public E0:I

.field public F0:I

.field public G0:I

.field public H0:I

.field public I0:I

.field public J0:F

.field public K0:F

.field public L0:F

.field public M0:F

.field public N0:F

.field public O0:F

.field public P0:I

.field public Q0:I

.field public R0:I

.field public S0:I

.field public T0:I

.field public U0:I

.field public V0:I

.field public W0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/se1$a;",
            ">;"
        }
    .end annotation
.end field

.field public X0:[Lcom/shabakaty/downloader/ec0;

.field public Y0:[Lcom/shabakaty/downloader/ec0;

.field public Z0:[I

.field public a1:[Lcom/shabakaty/downloader/ec0;

.field public b1:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/u45;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/se1;->D0:I

    .line 3
    iput v0, p0, Lcom/shabakaty/downloader/se1;->E0:I

    .line 4
    iput v0, p0, Lcom/shabakaty/downloader/se1;->F0:I

    .line 5
    iput v0, p0, Lcom/shabakaty/downloader/se1;->G0:I

    .line 6
    iput v0, p0, Lcom/shabakaty/downloader/se1;->H0:I

    .line 7
    iput v0, p0, Lcom/shabakaty/downloader/se1;->I0:I

    const/high16 v1, 0x3f000000    # 0.5f

    .line 8
    iput v1, p0, Lcom/shabakaty/downloader/se1;->J0:F

    .line 9
    iput v1, p0, Lcom/shabakaty/downloader/se1;->K0:F

    .line 10
    iput v1, p0, Lcom/shabakaty/downloader/se1;->L0:F

    .line 11
    iput v1, p0, Lcom/shabakaty/downloader/se1;->M0:F

    .line 12
    iput v1, p0, Lcom/shabakaty/downloader/se1;->N0:F

    .line 13
    iput v1, p0, Lcom/shabakaty/downloader/se1;->O0:F

    const/4 v1, 0x0

    .line 14
    iput v1, p0, Lcom/shabakaty/downloader/se1;->P0:I

    .line 15
    iput v1, p0, Lcom/shabakaty/downloader/se1;->Q0:I

    const/4 v2, 0x2

    .line 16
    iput v2, p0, Lcom/shabakaty/downloader/se1;->R0:I

    .line 17
    iput v2, p0, Lcom/shabakaty/downloader/se1;->S0:I

    .line 18
    iput v1, p0, Lcom/shabakaty/downloader/se1;->T0:I

    .line 19
    iput v0, p0, Lcom/shabakaty/downloader/se1;->U0:I

    .line 20
    iput v1, p0, Lcom/shabakaty/downloader/se1;->V0:I

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/se1;->W0:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/shabakaty/downloader/se1;->X0:[Lcom/shabakaty/downloader/ec0;

    .line 23
    iput-object v0, p0, Lcom/shabakaty/downloader/se1;->Y0:[Lcom/shabakaty/downloader/ec0;

    .line 24
    iput-object v0, p0, Lcom/shabakaty/downloader/se1;->Z0:[I

    .line 25
    iput v1, p0, Lcom/shabakaty/downloader/se1;->b1:I

    return-void
.end method


# virtual methods
.method public U(IIII)V
    .locals 33

    move-object/from16 v8, p0

    .line 1
    iget v0, v8, Lcom/shabakaty/downloader/bt1;->r0:I

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x3

    if-lez v0, :cond_9

    .line 2
    iget-object v0, v8, Lcom/shabakaty/downloader/ec0;->U:Lcom/shabakaty/downloader/ec0;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/fc0;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/fc0;->u0:Lcom/shabakaty/downloader/hl$b;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_4

    :cond_1
    const/4 v2, 0x0

    .line 5
    :goto_1
    iget v3, v8, Lcom/shabakaty/downloader/bt1;->r0:I

    if-ge v2, v3, :cond_8

    .line 6
    iget-object v3, v8, Lcom/shabakaty/downloader/bt1;->q0:[Lcom/shabakaty/downloader/ec0;

    aget-object v3, v3, v2

    if-nez v3, :cond_2

    goto :goto_3

    .line 7
    :cond_2
    instance-of v4, v3, Lcom/shabakaty/downloader/pr1;

    if-eqz v4, :cond_3

    goto :goto_3

    .line 8
    :cond_3
    invoke-virtual {v3, v11}, Lcom/shabakaty/downloader/ec0;->m(I)I

    move-result v4

    .line 9
    invoke-virtual {v3, v10}, Lcom/shabakaty/downloader/ec0;->m(I)I

    move-result v5

    if-ne v4, v12, :cond_4

    .line 10
    iget v6, v3, Lcom/shabakaty/downloader/ec0;->q:I

    if-eq v6, v10, :cond_4

    if-ne v5, v12, :cond_4

    iget v6, v3, Lcom/shabakaty/downloader/ec0;->r:I

    if-eq v6, v10, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_5

    goto :goto_3

    :cond_5
    if-ne v4, v12, :cond_6

    const/4 v4, 0x2

    :cond_6
    if-ne v5, v12, :cond_7

    const/4 v5, 0x2

    .line 11
    :cond_7
    iget-object v6, v8, Lcom/shabakaty/downloader/u45;->B0:Lcom/shabakaty/downloader/hl$a;

    iput v4, v6, Lcom/shabakaty/downloader/hl$a;->a:I

    .line 12
    iput v5, v6, Lcom/shabakaty/downloader/hl$a;->b:I

    .line 13
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ec0;->t()I

    move-result v4

    iput v4, v6, Lcom/shabakaty/downloader/hl$a;->c:I

    .line 14
    iget-object v4, v8, Lcom/shabakaty/downloader/u45;->B0:Lcom/shabakaty/downloader/hl$a;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/ec0;->n()I

    move-result v5

    iput v5, v4, Lcom/shabakaty/downloader/hl$a;->d:I

    .line 15
    iget-object v4, v8, Lcom/shabakaty/downloader/u45;->B0:Lcom/shabakaty/downloader/hl$a;

    move-object v5, v0

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-virtual {v5, v3, v4}, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b(Lcom/shabakaty/downloader/ec0;Lcom/shabakaty/downloader/hl$a;)V

    .line 16
    iget-object v4, v8, Lcom/shabakaty/downloader/u45;->B0:Lcom/shabakaty/downloader/hl$a;

    iget v4, v4, Lcom/shabakaty/downloader/hl$a;->e:I

    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/ec0;->Q(I)V

    .line 17
    iget-object v4, v8, Lcom/shabakaty/downloader/u45;->B0:Lcom/shabakaty/downloader/hl$a;

    iget v4, v4, Lcom/shabakaty/downloader/hl$a;->f:I

    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/ec0;->L(I)V

    .line 18
    iget-object v4, v8, Lcom/shabakaty/downloader/u45;->B0:Lcom/shabakaty/downloader/hl$a;

    iget v4, v4, Lcom/shabakaty/downloader/hl$a;->g:I

    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/ec0;->I(I)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    const/4 v0, 0x1

    :goto_4
    if-nez v0, :cond_9

    .line 19
    iput v11, v8, Lcom/shabakaty/downloader/u45;->z0:I

    .line 20
    iput v11, v8, Lcom/shabakaty/downloader/u45;->A0:I

    .line 21
    iput-boolean v11, v8, Lcom/shabakaty/downloader/u45;->y0:Z

    return-void

    .line 22
    :cond_9
    iget v13, v8, Lcom/shabakaty/downloader/u45;->w0:I

    .line 23
    iget v14, v8, Lcom/shabakaty/downloader/u45;->x0:I

    .line 24
    iget v15, v8, Lcom/shabakaty/downloader/u45;->s0:I

    .line 25
    iget v7, v8, Lcom/shabakaty/downloader/u45;->t0:I

    new-array v6, v9, [I

    sub-int v0, p2, v13

    sub-int/2addr v0, v14

    .line 26
    iget v2, v8, Lcom/shabakaty/downloader/se1;->V0:I

    if-ne v2, v10, :cond_a

    sub-int v0, p4, v15

    sub-int/2addr v0, v7

    :cond_a
    move v5, v0

    const/4 v0, -0x1

    if-nez v2, :cond_c

    .line 27
    iget v2, v8, Lcom/shabakaty/downloader/se1;->D0:I

    if-ne v2, v0, :cond_b

    .line 28
    iput v11, v8, Lcom/shabakaty/downloader/se1;->D0:I

    .line 29
    :cond_b
    iget v2, v8, Lcom/shabakaty/downloader/se1;->E0:I

    if-ne v2, v0, :cond_e

    .line 30
    iput v11, v8, Lcom/shabakaty/downloader/se1;->E0:I

    goto :goto_5

    .line 31
    :cond_c
    iget v2, v8, Lcom/shabakaty/downloader/se1;->D0:I

    if-ne v2, v0, :cond_d

    .line 32
    iput v11, v8, Lcom/shabakaty/downloader/se1;->D0:I

    .line 33
    :cond_d
    iget v2, v8, Lcom/shabakaty/downloader/se1;->E0:I

    if-ne v2, v0, :cond_e

    .line 34
    iput v11, v8, Lcom/shabakaty/downloader/se1;->E0:I

    .line 35
    :cond_e
    :goto_5
    iget-object v0, v8, Lcom/shabakaty/downloader/bt1;->q0:[Lcom/shabakaty/downloader/ec0;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 36
    :goto_6
    iget v4, v8, Lcom/shabakaty/downloader/bt1;->r0:I

    const/16 v12, 0x8

    if-ge v2, v4, :cond_10

    .line 37
    iget-object v4, v8, Lcom/shabakaty/downloader/bt1;->q0:[Lcom/shabakaty/downloader/ec0;

    aget-object v4, v4, v2

    .line 38
    iget v4, v4, Lcom/shabakaty/downloader/ec0;->h0:I

    if-ne v4, v12, :cond_f

    add-int/lit8 v3, v3, 0x1

    :cond_f
    add-int/lit8 v2, v2, 0x1

    const/4 v12, 0x3

    goto :goto_6

    :cond_10
    if-lez v3, :cond_12

    sub-int/2addr v4, v3

    .line 39
    new-array v0, v4, [Lcom/shabakaty/downloader/ec0;

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 40
    :goto_7
    iget v3, v8, Lcom/shabakaty/downloader/bt1;->r0:I

    if-ge v2, v3, :cond_12

    .line 41
    iget-object v3, v8, Lcom/shabakaty/downloader/bt1;->q0:[Lcom/shabakaty/downloader/ec0;

    aget-object v3, v3, v2

    .line 42
    iget v11, v3, Lcom/shabakaty/downloader/ec0;->h0:I

    if-eq v11, v12, :cond_11

    .line 43
    aput-object v3, v0, v4

    add-int/lit8 v4, v4, 0x1

    :cond_11
    add-int/lit8 v2, v2, 0x1

    const/4 v11, 0x0

    goto :goto_7

    :cond_12
    move-object v11, v0

    move v12, v4

    .line 44
    iput-object v11, v8, Lcom/shabakaty/downloader/se1;->a1:[Lcom/shabakaty/downloader/ec0;

    .line 45
    iput v12, v8, Lcom/shabakaty/downloader/se1;->b1:I

    .line 46
    iget v0, v8, Lcom/shabakaty/downloader/se1;->T0:I

    if-eqz v0, :cond_55

    if-eq v0, v10, :cond_3a

    if-eq v0, v9, :cond_13

    move-object/from16 v28, v6

    move/from16 v29, v7

    move/from16 v27, v13

    move/from16 v31, v14

    move/from16 v30, v15

    goto/16 :goto_2e

    .line 47
    :cond_13
    iget v0, v8, Lcom/shabakaty/downloader/se1;->V0:I

    if-nez v0, :cond_19

    .line 48
    iget v2, v8, Lcom/shabakaty/downloader/se1;->U0:I

    if-gtz v2, :cond_18

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_8
    if-ge v2, v12, :cond_17

    if-lez v2, :cond_14

    .line 49
    iget v1, v8, Lcom/shabakaty/downloader/se1;->P0:I

    add-int/2addr v3, v1

    .line 50
    :cond_14
    aget-object v1, v11, v2

    if-nez v1, :cond_15

    goto :goto_9

    .line 51
    :cond_15
    invoke-virtual {v8, v1, v5}, Lcom/shabakaty/downloader/se1;->X(Lcom/shabakaty/downloader/ec0;I)I

    move-result v1

    add-int/2addr v1, v3

    if-le v1, v5, :cond_16

    goto :goto_a

    :cond_16
    add-int/lit8 v4, v4, 0x1

    move v3, v1

    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_17
    :goto_a
    move v2, v4

    :cond_18
    const/4 v1, 0x0

    goto :goto_e

    .line 52
    :cond_19
    iget v1, v8, Lcom/shabakaty/downloader/se1;->U0:I

    if-gtz v1, :cond_1e

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v1, v12, :cond_1d

    if-lez v1, :cond_1a

    .line 53
    iget v4, v8, Lcom/shabakaty/downloader/se1;->Q0:I

    add-int/2addr v2, v4

    .line 54
    :cond_1a
    aget-object v4, v11, v1

    if-nez v4, :cond_1b

    goto :goto_c

    .line 55
    :cond_1b
    invoke-virtual {v8, v4, v5}, Lcom/shabakaty/downloader/se1;->W(Lcom/shabakaty/downloader/ec0;I)I

    move-result v4

    add-int/2addr v4, v2

    if-le v4, v5, :cond_1c

    goto :goto_d

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    move v2, v4

    :goto_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1d
    :goto_d
    move v1, v3

    :cond_1e
    const/4 v2, 0x0

    .line 56
    :goto_e
    iget-object v3, v8, Lcom/shabakaty/downloader/se1;->Z0:[I

    if-nez v3, :cond_1f

    new-array v3, v9, [I

    .line 57
    iput-object v3, v8, Lcom/shabakaty/downloader/se1;->Z0:[I

    :cond_1f
    if-nez v1, :cond_20

    if-eq v0, v10, :cond_21

    :cond_20
    if-nez v2, :cond_22

    if-nez v0, :cond_22

    :cond_21
    move/from16 v3, p3

    move/from16 v4, p4

    move v9, v5

    move-object/from16 v21, v6

    move-object v10, v8

    move-object/from16 v20, v10

    move/from16 v16, v14

    move/from16 v18, v15

    move v5, v0

    move v14, v12

    move v15, v13

    move/from16 v0, p1

    move v12, v7

    move-object v13, v11

    move v7, v2

    move-object/from16 v11, v21

    const/4 v2, 0x1

    move v6, v1

    move/from16 v1, p2

    goto/16 :goto_1c

    :cond_22
    move/from16 v3, p4

    move v4, v0

    move-object v9, v6

    move-object v10, v8

    move-object/from16 v20, v10

    move/from16 v16, v14

    move/from16 v18, v15

    const/16 v19, 0x0

    move/from16 v0, p1

    move v14, v12

    move v15, v13

    move v12, v7

    move-object v13, v11

    move v6, v2

    move v7, v5

    move-object v11, v9

    move/from16 v2, p3

    move v5, v1

    move/from16 v1, p2

    :goto_f
    if-nez v19, :cond_39

    if-nez v4, :cond_23

    int-to-float v5, v14

    move/from16 p1, v0

    int-to-float v0, v6

    div-float/2addr v5, v0

    move/from16 p2, v1

    float-to-double v0, v5

    .line 58
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    move v1, v0

    move v0, v6

    goto :goto_10

    :cond_23
    move/from16 p1, v0

    move/from16 p2, v1

    int-to-float v0, v14

    int-to-float v1, v5

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 59
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    move v1, v5

    .line 60
    :goto_10
    iget-object v5, v10, Lcom/shabakaty/downloader/se1;->Y0:[Lcom/shabakaty/downloader/ec0;

    if-eqz v5, :cond_25

    array-length v6, v5

    if-ge v6, v0, :cond_24

    goto :goto_11

    :cond_24
    const/4 v6, 0x0

    .line 61
    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_12

    :cond_25
    :goto_11
    const/4 v6, 0x0

    .line 62
    new-array v5, v0, [Lcom/shabakaty/downloader/ec0;

    iput-object v5, v10, Lcom/shabakaty/downloader/se1;->Y0:[Lcom/shabakaty/downloader/ec0;

    .line 63
    :goto_12
    iget-object v5, v10, Lcom/shabakaty/downloader/se1;->X0:[Lcom/shabakaty/downloader/ec0;

    if-eqz v5, :cond_27

    array-length v6, v5

    if-ge v6, v1, :cond_26

    goto :goto_13

    :cond_26
    const/4 v6, 0x0

    .line 64
    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_14

    .line 65
    :cond_27
    :goto_13
    new-array v5, v1, [Lcom/shabakaty/downloader/ec0;

    iput-object v5, v10, Lcom/shabakaty/downloader/se1;->X0:[Lcom/shabakaty/downloader/ec0;

    :goto_14
    const/4 v5, 0x0

    :goto_15
    if-ge v5, v0, :cond_30

    const/4 v6, 0x0

    :goto_16
    if-ge v6, v1, :cond_2f

    mul-int v21, v6, v0

    add-int v21, v21, v5

    move/from16 p3, v2

    const/4 v2, 0x1

    if-ne v4, v2, :cond_28

    mul-int v2, v5, v1

    add-int v21, v2, v6

    :cond_28
    move/from16 p4, v3

    move/from16 v2, v21

    .line 66
    array-length v3, v13

    if-lt v2, v3, :cond_29

    goto :goto_17

    .line 67
    :cond_29
    aget-object v2, v13, v2

    if-nez v2, :cond_2a

    :goto_17
    move-object/from16 v21, v9

    goto :goto_18

    .line 68
    :cond_2a
    invoke-virtual {v10, v2, v7}, Lcom/shabakaty/downloader/se1;->X(Lcom/shabakaty/downloader/ec0;I)I

    move-result v3

    move-object/from16 v21, v9

    .line 69
    iget-object v9, v10, Lcom/shabakaty/downloader/se1;->Y0:[Lcom/shabakaty/downloader/ec0;

    aget-object v22, v9, v5

    if-eqz v22, :cond_2b

    aget-object v9, v9, v5

    .line 70
    invoke-virtual {v9}, Lcom/shabakaty/downloader/ec0;->t()I

    move-result v9

    if-ge v9, v3, :cond_2c

    .line 71
    :cond_2b
    iget-object v3, v10, Lcom/shabakaty/downloader/se1;->Y0:[Lcom/shabakaty/downloader/ec0;

    aput-object v2, v3, v5

    .line 72
    :cond_2c
    invoke-virtual {v10, v2, v7}, Lcom/shabakaty/downloader/se1;->W(Lcom/shabakaty/downloader/ec0;I)I

    move-result v3

    .line 73
    iget-object v9, v10, Lcom/shabakaty/downloader/se1;->X0:[Lcom/shabakaty/downloader/ec0;

    aget-object v22, v9, v6

    if-eqz v22, :cond_2d

    aget-object v9, v9, v6

    .line 74
    invoke-virtual {v9}, Lcom/shabakaty/downloader/ec0;->n()I

    move-result v9

    if-ge v9, v3, :cond_2e

    .line 75
    :cond_2d
    iget-object v3, v10, Lcom/shabakaty/downloader/se1;->X0:[Lcom/shabakaty/downloader/ec0;

    aput-object v2, v3, v6

    :cond_2e
    :goto_18
    add-int/lit8 v6, v6, 0x1

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v9, v21

    goto :goto_16

    :cond_2f
    move/from16 p3, v2

    move/from16 p4, v3

    move-object/from16 v21, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_30
    move/from16 p3, v2

    move/from16 p4, v3

    move-object/from16 v21, v9

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_19
    if-ge v2, v0, :cond_33

    .line 76
    iget-object v5, v10, Lcom/shabakaty/downloader/se1;->Y0:[Lcom/shabakaty/downloader/ec0;

    aget-object v5, v5, v2

    if-eqz v5, :cond_32

    if-lez v2, :cond_31

    .line 77
    iget v6, v10, Lcom/shabakaty/downloader/se1;->P0:I

    add-int/2addr v3, v6

    .line 78
    :cond_31
    invoke-virtual {v10, v5, v7}, Lcom/shabakaty/downloader/se1;->X(Lcom/shabakaty/downloader/ec0;I)I

    move-result v5

    add-int/2addr v5, v3

    move v3, v5

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_33
    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_1a
    if-ge v2, v1, :cond_36

    .line 79
    iget-object v6, v10, Lcom/shabakaty/downloader/se1;->X0:[Lcom/shabakaty/downloader/ec0;

    aget-object v6, v6, v2

    if-eqz v6, :cond_35

    if-lez v2, :cond_34

    .line 80
    iget v9, v10, Lcom/shabakaty/downloader/se1;->Q0:I

    add-int/2addr v5, v9

    .line 81
    :cond_34
    invoke-virtual {v10, v6, v7}, Lcom/shabakaty/downloader/se1;->W(Lcom/shabakaty/downloader/ec0;I)I

    move-result v6

    add-int/2addr v6, v5

    move v5, v6

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_36
    const/4 v2, 0x0

    .line 82
    aput v3, v11, v2

    const/4 v2, 0x1

    .line 83
    aput v5, v11, v2

    if-nez v4, :cond_37

    if-le v3, v7, :cond_38

    if-le v0, v2, :cond_38

    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    :cond_37
    if-le v5, v7, :cond_38

    if-le v1, v2, :cond_38

    add-int/lit8 v1, v1, -0x1

    :goto_1b
    move v6, v0

    move v5, v1

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v9, v21

    goto/16 :goto_f

    :cond_38
    move/from16 v3, p3

    move v6, v1

    move v5, v4

    move v9, v7

    move/from16 v1, p2

    move/from16 v4, p4

    move v7, v0

    move/from16 v0, p1

    :goto_1c
    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v9

    move-object/from16 v9, v21

    const/16 v19, 0x1

    goto/16 :goto_f

    :cond_39
    move/from16 p1, v0

    move/from16 p2, v1

    move/from16 p3, v2

    move/from16 p4, v3

    move-object/from16 v21, v9

    const/4 v2, 0x1

    .line 84
    iget-object v0, v10, Lcom/shabakaty/downloader/se1;->Z0:[I

    const/4 v1, 0x0

    aput v6, v0, v1

    .line 85
    aput v5, v0, v2

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move v7, v12

    move v13, v15

    move/from16 v14, v16

    move/from16 v15, v18

    move-object/from16 v6, v21

    goto/16 :goto_2f

    .line 86
    :cond_3a
    iget v10, v8, Lcom/shabakaty/downloader/se1;->V0:I

    if-nez v12, :cond_3b

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v20, v8

    goto/16 :goto_2f

    .line 87
    :cond_3b
    iget-object v0, v8, Lcom/shabakaty/downloader/se1;->W0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 88
    new-instance v4, Lcom/shabakaty/downloader/se1$a;

    iget-object v3, v8, Lcom/shabakaty/downloader/ec0;->I:Lcom/shabakaty/downloader/wb0;

    iget-object v2, v8, Lcom/shabakaty/downloader/ec0;->J:Lcom/shabakaty/downloader/wb0;

    iget-object v1, v8, Lcom/shabakaty/downloader/ec0;->K:Lcom/shabakaty/downloader/wb0;

    iget-object v0, v8, Lcom/shabakaty/downloader/ec0;->L:Lcom/shabakaty/downloader/wb0;

    move-object/from16 v17, v0

    move-object v0, v4

    move-object/from16 v18, v1

    move-object/from16 v1, p0

    move-object/from16 v19, v2

    move v2, v10

    move-object v9, v4

    move-object/from16 v4, v19

    move/from16 v27, v5

    move-object/from16 v5, v18

    move-object/from16 v28, v6

    move-object/from16 v6, v17

    move/from16 v29, v7

    move/from16 v7, v27

    invoke-direct/range {v0 .. v7}, Lcom/shabakaty/downloader/se1$a;-><init>(Lcom/shabakaty/downloader/se1;ILcom/shabakaty/downloader/wb0;Lcom/shabakaty/downloader/wb0;Lcom/shabakaty/downloader/wb0;Lcom/shabakaty/downloader/wb0;I)V

    .line 89
    iget-object v0, v8, Lcom/shabakaty/downloader/se1;->W0:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v10, :cond_43

    move-object v4, v9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v9, 0x0

    :goto_1d
    if-ge v9, v12, :cond_42

    .line 90
    aget-object v7, v11, v9

    move/from16 v6, v27

    .line 91
    invoke-virtual {v8, v7, v6}, Lcom/shabakaty/downloader/se1;->X(Lcom/shabakaty/downloader/ec0;I)I

    move-result v17

    .line 92
    invoke-virtual {v7}, Lcom/shabakaty/downloader/ec0;->o()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3c

    add-int/lit8 v0, v0, 0x1

    :cond_3c
    move/from16 v18, v0

    if-eq v1, v6, :cond_3d

    .line 93
    iget v0, v8, Lcom/shabakaty/downloader/se1;->P0:I

    add-int/2addr v0, v1

    add-int v0, v0, v17

    if-le v0, v6, :cond_3e

    .line 94
    :cond_3d
    iget-object v0, v4, Lcom/shabakaty/downloader/se1$a;->b:Lcom/shabakaty/downloader/ec0;

    if-eqz v0, :cond_3e

    const/4 v0, 0x1

    goto :goto_1e

    :cond_3e
    const/4 v0, 0x0

    :goto_1e
    if-nez v0, :cond_3f

    if-lez v9, :cond_3f

    .line 95
    iget v2, v8, Lcom/shabakaty/downloader/se1;->U0:I

    if-lez v2, :cond_3f

    rem-int v2, v9, v2

    if-nez v2, :cond_3f

    const/4 v0, 0x1

    :cond_3f
    if-eqz v0, :cond_40

    .line 96
    new-instance v5, Lcom/shabakaty/downloader/se1$a;

    iget-object v3, v8, Lcom/shabakaty/downloader/ec0;->I:Lcom/shabakaty/downloader/wb0;

    iget-object v4, v8, Lcom/shabakaty/downloader/ec0;->J:Lcom/shabakaty/downloader/wb0;

    iget-object v2, v8, Lcom/shabakaty/downloader/ec0;->K:Lcom/shabakaty/downloader/wb0;

    iget-object v1, v8, Lcom/shabakaty/downloader/ec0;->L:Lcom/shabakaty/downloader/wb0;

    move-object v0, v5

    move-object/from16 v19, v1

    move-object/from16 v1, p0

    move-object/from16 v21, v2

    move v2, v10

    move/from16 v27, v13

    move-object v13, v5

    move-object/from16 v5, v21

    move/from16 v30, v6

    move-object/from16 v6, v19

    move/from16 v31, v14

    move-object v14, v7

    move/from16 v7, v30

    invoke-direct/range {v0 .. v7}, Lcom/shabakaty/downloader/se1$a;-><init>(Lcom/shabakaty/downloader/se1;ILcom/shabakaty/downloader/wb0;Lcom/shabakaty/downloader/wb0;Lcom/shabakaty/downloader/wb0;Lcom/shabakaty/downloader/wb0;I)V

    .line 97
    iput v9, v13, Lcom/shabakaty/downloader/se1$a;->n:I

    .line 98
    iget-object v0, v8, Lcom/shabakaty/downloader/se1;->W0:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v4, v13

    goto :goto_1f

    :cond_40
    move/from16 v30, v6

    move/from16 v27, v13

    move/from16 v31, v14

    move-object v14, v7

    if-lez v9, :cond_41

    .line 99
    iget v0, v8, Lcom/shabakaty/downloader/se1;->P0:I

    add-int v0, v0, v17

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_20

    :cond_41
    :goto_1f
    move/from16 v1, v17

    .line 100
    :goto_20
    invoke-virtual {v4, v14}, Lcom/shabakaty/downloader/se1$a;->a(Lcom/shabakaty/downloader/ec0;)V

    add-int/lit8 v9, v9, 0x1

    move/from16 v0, v18

    move/from16 v13, v27

    move/from16 v27, v30

    move/from16 v14, v31

    goto :goto_1d

    :cond_42
    move/from16 v31, v14

    move/from16 v30, v27

    move/from16 v27, v13

    goto/16 :goto_25

    :cond_43
    move/from16 v31, v14

    move/from16 v30, v27

    move/from16 v27, v13

    move-object v4, v9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v9, 0x0

    :goto_21
    if-ge v9, v12, :cond_4a

    .line 101
    aget-object v13, v11, v9

    move/from16 v14, v30

    .line 102
    invoke-virtual {v8, v13, v14}, Lcom/shabakaty/downloader/se1;->W(Lcom/shabakaty/downloader/ec0;I)I

    move-result v17

    .line 103
    invoke-virtual {v13}, Lcom/shabakaty/downloader/ec0;->s()I

    move-result v2

    const/4 v7, 0x3

    if-ne v2, v7, :cond_44

    add-int/lit8 v0, v0, 0x1

    :cond_44
    move/from16 v16, v0

    if-eq v1, v14, :cond_45

    .line 104
    iget v0, v8, Lcom/shabakaty/downloader/se1;->Q0:I

    add-int/2addr v0, v1

    add-int v0, v0, v17

    if-le v0, v14, :cond_46

    .line 105
    :cond_45
    iget-object v0, v4, Lcom/shabakaty/downloader/se1$a;->b:Lcom/shabakaty/downloader/ec0;

    if-eqz v0, :cond_46

    const/4 v0, 0x1

    goto :goto_22

    :cond_46
    const/4 v0, 0x0

    :goto_22
    if-nez v0, :cond_47

    if-lez v9, :cond_47

    .line 106
    iget v2, v8, Lcom/shabakaty/downloader/se1;->U0:I

    if-lez v2, :cond_47

    rem-int v2, v9, v2

    if-nez v2, :cond_47

    const/4 v0, 0x1

    :cond_47
    if-eqz v0, :cond_48

    .line 107
    new-instance v6, Lcom/shabakaty/downloader/se1$a;

    iget-object v3, v8, Lcom/shabakaty/downloader/ec0;->I:Lcom/shabakaty/downloader/wb0;

    iget-object v4, v8, Lcom/shabakaty/downloader/ec0;->J:Lcom/shabakaty/downloader/wb0;

    iget-object v5, v8, Lcom/shabakaty/downloader/ec0;->K:Lcom/shabakaty/downloader/wb0;

    iget-object v2, v8, Lcom/shabakaty/downloader/ec0;->L:Lcom/shabakaty/downloader/wb0;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v18, v2

    move v2, v10

    move/from16 v30, v15

    move-object v15, v6

    move-object/from16 v6, v18

    const/16 v18, 0x3

    move v7, v14

    invoke-direct/range {v0 .. v7}, Lcom/shabakaty/downloader/se1$a;-><init>(Lcom/shabakaty/downloader/se1;ILcom/shabakaty/downloader/wb0;Lcom/shabakaty/downloader/wb0;Lcom/shabakaty/downloader/wb0;Lcom/shabakaty/downloader/wb0;I)V

    .line 108
    iput v9, v15, Lcom/shabakaty/downloader/se1$a;->n:I

    .line 109
    iget-object v0, v8, Lcom/shabakaty/downloader/se1;->W0:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v4, v15

    goto :goto_23

    :cond_48
    move/from16 v30, v15

    const/16 v18, 0x3

    if-lez v9, :cond_49

    .line 110
    iget v0, v8, Lcom/shabakaty/downloader/se1;->Q0:I

    add-int v0, v0, v17

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_24

    :cond_49
    :goto_23
    move/from16 v1, v17

    .line 111
    :goto_24
    invoke-virtual {v4, v13}, Lcom/shabakaty/downloader/se1$a;->a(Lcom/shabakaty/downloader/ec0;)V

    add-int/lit8 v9, v9, 0x1

    move/from16 v0, v16

    move/from16 v15, v30

    move/from16 v30, v14

    goto :goto_21

    :cond_4a
    :goto_25
    move/from16 v14, v30

    move/from16 v30, v15

    .line 112
    iget-object v1, v8, Lcom/shabakaty/downloader/se1;->W0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 113
    iget-object v2, v8, Lcom/shabakaty/downloader/ec0;->I:Lcom/shabakaty/downloader/wb0;

    .line 114
    iget-object v3, v8, Lcom/shabakaty/downloader/ec0;->J:Lcom/shabakaty/downloader/wb0;

    .line 115
    iget-object v4, v8, Lcom/shabakaty/downloader/ec0;->K:Lcom/shabakaty/downloader/wb0;

    .line 116
    iget-object v5, v8, Lcom/shabakaty/downloader/ec0;->L:Lcom/shabakaty/downloader/wb0;

    .line 117
    iget v6, v8, Lcom/shabakaty/downloader/u45;->w0:I

    .line 118
    iget v7, v8, Lcom/shabakaty/downloader/u45;->s0:I

    .line 119
    iget v9, v8, Lcom/shabakaty/downloader/u45;->x0:I

    .line 120
    iget v11, v8, Lcom/shabakaty/downloader/u45;->t0:I

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ec0;->o()I

    move-result v12

    const/4 v13, 0x2

    if-eq v12, v13, :cond_4c

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ec0;->s()I

    move-result v12

    if-ne v12, v13, :cond_4b

    goto :goto_26

    :cond_4b
    const/4 v12, 0x0

    goto :goto_27

    :cond_4c
    :goto_26
    const/4 v12, 0x1

    :goto_27
    if-lez v0, :cond_4e

    if-eqz v12, :cond_4e

    const/4 v0, 0x0

    :goto_28
    if-ge v0, v1, :cond_4e

    .line 123
    iget-object v12, v8, Lcom/shabakaty/downloader/se1;->W0:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/shabakaty/downloader/se1$a;

    if-nez v10, :cond_4d

    .line 124
    invoke-virtual {v12}, Lcom/shabakaty/downloader/se1$a;->d()I

    move-result v13

    sub-int v13, v14, v13

    invoke-virtual {v12, v13}, Lcom/shabakaty/downloader/se1$a;->e(I)V

    goto :goto_29

    .line 125
    :cond_4d
    invoke-virtual {v12}, Lcom/shabakaty/downloader/se1$a;->c()I

    move-result v13

    sub-int v13, v14, v13

    invoke-virtual {v12, v13}, Lcom/shabakaty/downloader/se1$a;->e(I)V

    :goto_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_4e
    const/4 v0, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_2a
    if-ge v0, v1, :cond_54

    .line 126
    iget-object v15, v8, Lcom/shabakaty/downloader/se1;->W0:Ljava/util/ArrayList;

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/shabakaty/downloader/se1$a;

    if-nez v10, :cond_51

    add-int/lit8 v5, v1, -0x1

    if-ge v0, v5, :cond_4f

    .line 127
    iget-object v5, v8, Lcom/shabakaty/downloader/se1;->W0:Ljava/util/ArrayList;

    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/se1$a;

    .line 128
    iget-object v5, v5, Lcom/shabakaty/downloader/se1$a;->b:Lcom/shabakaty/downloader/ec0;

    .line 129
    iget-object v5, v5, Lcom/shabakaty/downloader/ec0;->J:Lcom/shabakaty/downloader/wb0;

    move/from16 v32, v1

    const/4 v11, 0x0

    goto :goto_2b

    .line 130
    :cond_4f
    iget-object v5, v8, Lcom/shabakaty/downloader/ec0;->L:Lcom/shabakaty/downloader/wb0;

    .line 131
    iget v11, v8, Lcom/shabakaty/downloader/u45;->t0:I

    move/from16 v32, v1

    .line 132
    :goto_2b
    iget-object v1, v15, Lcom/shabakaty/downloader/se1$a;->b:Lcom/shabakaty/downloader/ec0;

    .line 133
    iget-object v1, v1, Lcom/shabakaty/downloader/ec0;->L:Lcom/shabakaty/downloader/wb0;

    move-object/from16 v16, v15

    move/from16 v17, v10

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v24, v9

    move/from16 v25, v11

    move/from16 v26, v14

    .line 134
    invoke-virtual/range {v16 .. v26}, Lcom/shabakaty/downloader/se1$a;->f(ILcom/shabakaty/downloader/wb0;Lcom/shabakaty/downloader/wb0;Lcom/shabakaty/downloader/wb0;Lcom/shabakaty/downloader/wb0;IIIII)V

    .line 135
    invoke-virtual {v15}, Lcom/shabakaty/downloader/se1$a;->d()I

    move-result v3

    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 136
    invoke-virtual {v15}, Lcom/shabakaty/downloader/se1$a;->c()I

    move-result v7

    add-int/2addr v7, v13

    if-lez v0, :cond_50

    .line 137
    iget v12, v8, Lcom/shabakaty/downloader/se1;->Q0:I

    add-int/2addr v7, v12

    :cond_50
    move v12, v3

    move v13, v7

    const/4 v7, 0x0

    move-object v3, v1

    goto :goto_2d

    :cond_51
    move/from16 v32, v1

    add-int/lit8 v1, v32, -0x1

    if-ge v0, v1, :cond_52

    .line 138
    iget-object v1, v8, Lcom/shabakaty/downloader/se1;->W0:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/se1$a;

    .line 139
    iget-object v1, v1, Lcom/shabakaty/downloader/se1$a;->b:Lcom/shabakaty/downloader/ec0;

    .line 140
    iget-object v1, v1, Lcom/shabakaty/downloader/ec0;->I:Lcom/shabakaty/downloader/wb0;

    const/4 v4, 0x0

    goto :goto_2c

    .line 141
    :cond_52
    iget-object v1, v8, Lcom/shabakaty/downloader/ec0;->K:Lcom/shabakaty/downloader/wb0;

    .line 142
    iget v4, v8, Lcom/shabakaty/downloader/u45;->x0:I

    .line 143
    :goto_2c
    iget-object v9, v15, Lcom/shabakaty/downloader/se1$a;->b:Lcom/shabakaty/downloader/ec0;

    .line 144
    iget-object v9, v9, Lcom/shabakaty/downloader/ec0;->K:Lcom/shabakaty/downloader/wb0;

    move-object/from16 v16, v15

    move/from16 v17, v10

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v1

    move-object/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v24, v4

    move/from16 v25, v11

    move/from16 v26, v14

    .line 145
    invoke-virtual/range {v16 .. v26}, Lcom/shabakaty/downloader/se1$a;->f(ILcom/shabakaty/downloader/wb0;Lcom/shabakaty/downloader/wb0;Lcom/shabakaty/downloader/wb0;Lcom/shabakaty/downloader/wb0;IIIII)V

    .line 146
    invoke-virtual {v15}, Lcom/shabakaty/downloader/se1$a;->d()I

    move-result v2

    add-int/2addr v2, v12

    .line 147
    invoke-virtual {v15}, Lcom/shabakaty/downloader/se1$a;->c()I

    move-result v6

    invoke-static {v13, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-lez v0, :cond_53

    .line 148
    iget v12, v8, Lcom/shabakaty/downloader/se1;->P0:I

    add-int/2addr v2, v12

    :cond_53
    move v12, v2

    move v13, v6

    move-object v2, v9

    const/4 v6, 0x0

    move v9, v4

    move-object v4, v1

    :goto_2d
    add-int/lit8 v0, v0, 0x1

    move/from16 v1, v32

    goto/16 :goto_2a

    :cond_54
    const/4 v0, 0x0

    aput v12, v28, v0

    const/4 v0, 0x1

    aput v13, v28, v0

    goto :goto_2e

    :cond_55
    move-object/from16 v28, v6

    move/from16 v29, v7

    move/from16 v27, v13

    move/from16 v31, v14

    move/from16 v30, v15

    move v14, v5

    .line 149
    iget v2, v8, Lcom/shabakaty/downloader/se1;->V0:I

    if-nez v12, :cond_56

    :goto_2e
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v20, v8

    move/from16 v13, v27

    move-object/from16 v6, v28

    move/from16 v7, v29

    move/from16 v15, v30

    move/from16 v14, v31

    :goto_2f
    move v4, v2

    move v5, v3

    move-object/from16 v9, v20

    const/4 v2, 0x0

    move v3, v1

    const/4 v1, 0x1

    goto/16 :goto_32

    .line 150
    :cond_56
    iget-object v0, v8, Lcom/shabakaty/downloader/se1;->W0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_57

    .line 151
    new-instance v9, Lcom/shabakaty/downloader/se1$a;

    iget-object v3, v8, Lcom/shabakaty/downloader/ec0;->I:Lcom/shabakaty/downloader/wb0;

    iget-object v4, v8, Lcom/shabakaty/downloader/ec0;->J:Lcom/shabakaty/downloader/wb0;

    iget-object v5, v8, Lcom/shabakaty/downloader/ec0;->K:Lcom/shabakaty/downloader/wb0;

    iget-object v6, v8, Lcom/shabakaty/downloader/ec0;->L:Lcom/shabakaty/downloader/wb0;

    move-object v0, v9

    move-object/from16 v1, p0

    move v7, v14

    invoke-direct/range {v0 .. v7}, Lcom/shabakaty/downloader/se1$a;-><init>(Lcom/shabakaty/downloader/se1;ILcom/shabakaty/downloader/wb0;Lcom/shabakaty/downloader/wb0;Lcom/shabakaty/downloader/wb0;Lcom/shabakaty/downloader/wb0;I)V

    .line 152
    iget-object v0, v8, Lcom/shabakaty/downloader/se1;->W0:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 153
    :cond_57
    iget-object v0, v8, Lcom/shabakaty/downloader/se1;->W0:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/shabakaty/downloader/se1$a;

    .line 154
    iput v1, v9, Lcom/shabakaty/downloader/se1$a;->c:I

    const/4 v0, 0x0

    .line 155
    iput-object v0, v9, Lcom/shabakaty/downloader/se1$a;->b:Lcom/shabakaty/downloader/ec0;

    .line 156
    iput v1, v9, Lcom/shabakaty/downloader/se1$a;->l:I

    .line 157
    iput v1, v9, Lcom/shabakaty/downloader/se1$a;->m:I

    .line 158
    iput v1, v9, Lcom/shabakaty/downloader/se1$a;->n:I

    .line 159
    iput v1, v9, Lcom/shabakaty/downloader/se1$a;->o:I

    .line 160
    iput v1, v9, Lcom/shabakaty/downloader/se1$a;->p:I

    .line 161
    iget-object v0, v8, Lcom/shabakaty/downloader/ec0;->I:Lcom/shabakaty/downloader/wb0;

    iget-object v1, v8, Lcom/shabakaty/downloader/ec0;->J:Lcom/shabakaty/downloader/wb0;

    iget-object v3, v8, Lcom/shabakaty/downloader/ec0;->K:Lcom/shabakaty/downloader/wb0;

    iget-object v4, v8, Lcom/shabakaty/downloader/ec0;->L:Lcom/shabakaty/downloader/wb0;

    .line 162
    iget v5, v8, Lcom/shabakaty/downloader/u45;->w0:I

    .line 163
    iget v6, v8, Lcom/shabakaty/downloader/u45;->s0:I

    .line 164
    iget v7, v8, Lcom/shabakaty/downloader/u45;->x0:I

    .line 165
    iget v10, v8, Lcom/shabakaty/downloader/u45;->t0:I

    move-object/from16 v16, v9

    move/from16 v17, v2

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v7

    move/from16 v25, v10

    move/from16 v26, v14

    .line 166
    invoke-virtual/range {v16 .. v26}, Lcom/shabakaty/downloader/se1$a;->f(ILcom/shabakaty/downloader/wb0;Lcom/shabakaty/downloader/wb0;Lcom/shabakaty/downloader/wb0;Lcom/shabakaty/downloader/wb0;IIIII)V

    :goto_30
    const/4 v2, 0x0

    :goto_31
    if-ge v2, v12, :cond_58

    .line 167
    aget-object v0, v11, v2

    .line 168
    invoke-virtual {v9, v0}, Lcom/shabakaty/downloader/se1$a;->a(Lcom/shabakaty/downloader/ec0;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 169
    :cond_58
    invoke-virtual {v9}, Lcom/shabakaty/downloader/se1$a;->d()I

    move-result v0

    const/4 v2, 0x0

    aput v0, v28, v2

    .line 170
    invoke-virtual {v9}, Lcom/shabakaty/downloader/se1$a;->c()I

    move-result v0

    const/4 v1, 0x1

    aput v0, v28, v1

    move/from16 v0, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v9, v8

    move/from16 v13, v27

    move-object/from16 v6, v28

    move/from16 v7, v29

    move/from16 v15, v30

    move/from16 v14, v31

    .line 171
    :goto_32
    aget v10, v6, v2

    add-int/2addr v10, v13

    add-int/2addr v10, v14

    .line 172
    aget v6, v6, v1

    add-int/2addr v6, v15

    add-int/2addr v6, v7

    const/high16 v7, -0x80000000

    const/high16 v11, 0x40000000    # 2.0f

    if-ne v0, v11, :cond_59

    move v0, v3

    goto :goto_33

    :cond_59
    if-ne v0, v7, :cond_5a

    .line 173
    invoke-static {v10, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_33

    :cond_5a
    if-nez v0, :cond_5b

    move v0, v10

    goto :goto_33

    :cond_5b
    const/4 v0, 0x0

    :goto_33
    if-ne v4, v11, :cond_5c

    move v3, v5

    goto :goto_34

    :cond_5c
    if-ne v4, v7, :cond_5d

    .line 174
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_34

    :cond_5d
    if-nez v4, :cond_5e

    move v3, v6

    goto :goto_34

    :cond_5e
    const/4 v3, 0x0

    .line 175
    :goto_34
    iput v0, v9, Lcom/shabakaty/downloader/u45;->z0:I

    .line 176
    iput v3, v9, Lcom/shabakaty/downloader/u45;->A0:I

    .line 177
    invoke-virtual {v9, v0}, Lcom/shabakaty/downloader/ec0;->Q(I)V

    .line 178
    invoke-virtual {v9, v3}, Lcom/shabakaty/downloader/ec0;->L(I)V

    .line 179
    iget v0, v9, Lcom/shabakaty/downloader/bt1;->r0:I

    if-lez v0, :cond_5f

    const/4 v10, 0x1

    goto :goto_35

    :cond_5f
    const/4 v10, 0x0

    .line 180
    :goto_35
    iput-boolean v10, v9, Lcom/shabakaty/downloader/u45;->y0:Z

    return-void
.end method

.method public final W(Lcom/shabakaty/downloader/ec0;I)I
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ec0;->s()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 2
    iget v1, p1, Lcom/shabakaty/downloader/ec0;->r:I

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x2

    const/4 v3, 0x1

    if-ne v1, v0, :cond_3

    .line 3
    iget v0, p1, Lcom/shabakaty/downloader/ec0;->y:F

    int-to-float p2, p2

    mul-float v0, v0, p2

    float-to-int p2, v0

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ec0;->n()I

    move-result v0

    if-eq p2, v0, :cond_2

    .line 5
    iput-boolean v3, p1, Lcom/shabakaty/downloader/ec0;->g:Z

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ec0;->o()I

    move-result v6

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ec0;->t()I

    move-result v7

    const/4 v8, 0x1

    move-object v4, p0

    move-object v5, p1

    move v9, p2

    invoke-virtual/range {v4 .. v9}, Lcom/shabakaty/downloader/u45;->V(Lcom/shabakaty/downloader/ec0;IIII)V

    :cond_2
    return p2

    :cond_3
    if-ne v1, v3, :cond_4

    .line 7
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ec0;->n()I

    move-result p1

    return p1

    :cond_4
    if-ne v1, v2, :cond_5

    .line 8
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ec0;->t()I

    move-result p2

    int-to-float p2, p2

    iget p1, p1, Lcom/shabakaty/downloader/ec0;->X:F

    mul-float p2, p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1

    .line 9
    :cond_5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ec0;->n()I

    move-result p1

    return p1
.end method

.method public final X(Lcom/shabakaty/downloader/ec0;I)I
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ec0;->o()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 2
    iget v1, p1, Lcom/shabakaty/downloader/ec0;->q:I

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x2

    const/4 v3, 0x1

    if-ne v1, v0, :cond_3

    .line 3
    iget v0, p1, Lcom/shabakaty/downloader/ec0;->v:F

    int-to-float p2, p2

    mul-float v0, v0, p2

    float-to-int p2, v0

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ec0;->t()I

    move-result v0

    if-eq p2, v0, :cond_2

    .line 5
    iput-boolean v3, p1, Lcom/shabakaty/downloader/ec0;->g:Z

    const/4 v6, 0x1

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ec0;->s()I

    move-result v8

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ec0;->n()I

    move-result v9

    move-object v4, p0

    move-object v5, p1

    move v7, p2

    invoke-virtual/range {v4 .. v9}, Lcom/shabakaty/downloader/u45;->V(Lcom/shabakaty/downloader/ec0;IIII)V

    :cond_2
    return p2

    :cond_3
    if-ne v1, v3, :cond_4

    .line 7
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ec0;->t()I

    move-result p1

    return p1

    :cond_4
    if-ne v1, v2, :cond_5

    .line 8
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ec0;->n()I

    move-result p2

    int-to-float p2, p2

    iget p1, p1, Lcom/shabakaty/downloader/ec0;->X:F

    mul-float p2, p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1

    .line 9
    :cond_5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ec0;->t()I

    move-result p1

    return p1
.end method

.method public d(Lcom/shabakaty/downloader/zh2;Z)V
    .locals 10

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shabakaty/downloader/ec0;->d(Lcom/shabakaty/downloader/zh2;Z)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/ec0;->U:Lcom/shabakaty/downloader/ec0;

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    check-cast p1, Lcom/shabakaty/downloader/fc0;

    .line 4
    iget-boolean p1, p1, Lcom/shabakaty/downloader/fc0;->v0:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    iget v1, p0, Lcom/shabakaty/downloader/se1;->T0:I

    if-eqz v1, :cond_19

    if-eq v1, p2, :cond_17

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto/16 :goto_c

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/se1;->Z0:[I

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/shabakaty/downloader/se1;->Y0:[Lcom/shabakaty/downloader/ec0;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/shabakaty/downloader/se1;->X0:[Lcom/shabakaty/downloader/ec0;

    if-nez v1, :cond_2

    goto/16 :goto_c

    :cond_2
    const/4 v1, 0x0

    .line 7
    :goto_1
    iget v2, p0, Lcom/shabakaty/downloader/se1;->b1:I

    if-ge v1, v2, :cond_3

    .line 8
    iget-object v2, p0, Lcom/shabakaty/downloader/se1;->a1:[Lcom/shabakaty/downloader/ec0;

    aget-object v2, v2, v1

    .line 9
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ec0;->F()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/shabakaty/downloader/se1;->Z0:[I

    aget v2, v1, v0

    .line 11
    aget v1, v1, p2

    const/4 v3, 0x0

    .line 12
    iget v4, p0, Lcom/shabakaty/downloader/se1;->J0:F

    const/4 v5, 0x0

    :goto_2
    const/16 v6, 0x8

    if-ge v5, v2, :cond_a

    if-eqz p1, :cond_4

    sub-int v4, v2, v5

    sub-int/2addr v4, p2

    const/high16 v7, 0x3f800000    # 1.0f

    .line 13
    iget v8, p0, Lcom/shabakaty/downloader/se1;->J0:F

    sub-float/2addr v7, v8

    goto :goto_3

    :cond_4
    move v7, v4

    move v4, v5

    .line 14
    :goto_3
    iget-object v8, p0, Lcom/shabakaty/downloader/se1;->Y0:[Lcom/shabakaty/downloader/ec0;

    aget-object v4, v8, v4

    if-eqz v4, :cond_9

    .line 15
    iget v8, v4, Lcom/shabakaty/downloader/ec0;->h0:I

    if-ne v8, v6, :cond_5

    goto :goto_4

    :cond_5
    if-nez v5, :cond_6

    .line 16
    iget-object v6, v4, Lcom/shabakaty/downloader/ec0;->I:Lcom/shabakaty/downloader/wb0;

    iget-object v8, p0, Lcom/shabakaty/downloader/ec0;->I:Lcom/shabakaty/downloader/wb0;

    .line 17
    iget v9, p0, Lcom/shabakaty/downloader/u45;->w0:I

    .line 18
    invoke-virtual {v4, v6, v8, v9}, Lcom/shabakaty/downloader/ec0;->h(Lcom/shabakaty/downloader/wb0;Lcom/shabakaty/downloader/wb0;I)V

    .line 19
    iget v6, p0, Lcom/shabakaty/downloader/se1;->D0:I

    .line 20
    iput v6, v4, Lcom/shabakaty/downloader/ec0;->j0:I

    .line 21
    iput v7, v4, Lcom/shabakaty/downloader/ec0;->e0:F

    :cond_6
    add-int/lit8 v6, v2, -0x1

    if-ne v5, v6, :cond_7

    .line 22
    iget-object v6, v4, Lcom/shabakaty/downloader/ec0;->K:Lcom/shabakaty/downloader/wb0;

    iget-object v8, p0, Lcom/shabakaty/downloader/ec0;->K:Lcom/shabakaty/downloader/wb0;

    .line 23
    iget v9, p0, Lcom/shabakaty/downloader/u45;->x0:I

    .line 24
    invoke-virtual {v4, v6, v8, v9}, Lcom/shabakaty/downloader/ec0;->h(Lcom/shabakaty/downloader/wb0;Lcom/shabakaty/downloader/wb0;I)V

    :cond_7
    if-lez v5, :cond_8

    if-eqz v3, :cond_8

    .line 25
    iget-object v6, v4, Lcom/shabakaty/downloader/ec0;->I:Lcom/shabakaty/downloader/wb0;

    iget-object v8, v3, Lcom/shabakaty/downloader/ec0;->K:Lcom/shabakaty/downloader/wb0;

    iget v9, p0, Lcom/shabakaty/downloader/se1;->P0:I

    invoke-virtual {v4, v6, v8, v9}, Lcom/shabakaty/downloader/ec0;->h(Lcom/shabakaty/downloader/wb0;Lcom/shabakaty/downloader/wb0;I)V

    .line 26
    iget-object v6, v3, Lcom/shabakaty/downloader/ec0;->K:Lcom/shabakaty/downloader/wb0;

    iget-object v8, v4, Lcom/shabakaty/downloader/ec0;->I:Lcom/shabakaty/downloader/wb0;

    invoke-virtual {v3, v6, v8, v0}, Lcom/shabakaty/downloader/ec0;->h(Lcom/shabakaty/downloader/wb0;Lcom/shabakaty/downloader/wb0;I)V

    :cond_8
    move-object v3, v4

    :cond_9
    :goto_4
    add-int/lit8 v5, v5, 0x1

    move v4, v7

    goto :goto_2

    :cond_a
    const/4 p1, 0x0

    :goto_5
    if-ge p1, v1, :cond_10

    .line 27
    iget-object v4, p0, Lcom/shabakaty/downloader/se1;->X0:[Lcom/shabakaty/downloader/ec0;

    aget-object v4, v4, p1

    if-eqz v4, :cond_f

    .line 28
    iget v5, v4, Lcom/shabakaty/downloader/ec0;->h0:I

    if-ne v5, v6, :cond_b

    goto :goto_6

    :cond_b
    if-nez p1, :cond_c

    .line 29
    iget-object v5, v4, Lcom/shabakaty/downloader/ec0;->J:Lcom/shabakaty/downloader/wb0;

    iget-object v7, p0, Lcom/shabakaty/downloader/ec0;->J:Lcom/shabakaty/downloader/wb0;

    .line 30
    iget v8, p0, Lcom/shabakaty/downloader/u45;->s0:I

    .line 31
    invoke-virtual {v4, v5, v7, v8}, Lcom/shabakaty/downloader/ec0;->h(Lcom/shabakaty/downloader/wb0;Lcom/shabakaty/downloader/wb0;I)V

    .line 32
    iget v5, p0, Lcom/shabakaty/downloader/se1;->E0:I

    .line 33
    iput v5, v4, Lcom/shabakaty/downloader/ec0;->k0:I

    .line 34
    iget v5, p0, Lcom/shabakaty/downloader/se1;->K0:F

    .line 35
    iput v5, v4, Lcom/shabakaty/downloader/ec0;->f0:F

    :cond_c
    add-int/lit8 v5, v1, -0x1

    if-ne p1, v5, :cond_d

    .line 36
    iget-object v5, v4, Lcom/shabakaty/downloader/ec0;->L:Lcom/shabakaty/downloader/wb0;

    iget-object v7, p0, Lcom/shabakaty/downloader/ec0;->L:Lcom/shabakaty/downloader/wb0;

    .line 37
    iget v8, p0, Lcom/shabakaty/downloader/u45;->t0:I

    .line 38
    invoke-virtual {v4, v5, v7, v8}, Lcom/shabakaty/downloader/ec0;->h(Lcom/shabakaty/downloader/wb0;Lcom/shabakaty/downloader/wb0;I)V

    :cond_d
    if-lez p1, :cond_e

    if-eqz v3, :cond_e

    .line 39
    iget-object v5, v4, Lcom/shabakaty/downloader/ec0;->J:Lcom/shabakaty/downloader/wb0;

    iget-object v7, v3, Lcom/shabakaty/downloader/ec0;->L:Lcom/shabakaty/downloader/wb0;

    iget v8, p0, Lcom/shabakaty/downloader/se1;->Q0:I

    invoke-virtual {v4, v5, v7, v8}, Lcom/shabakaty/downloader/ec0;->h(Lcom/shabakaty/downloader/wb0;Lcom/shabakaty/downloader/wb0;I)V

    .line 40
    iget-object v5, v3, Lcom/shabakaty/downloader/ec0;->L:Lcom/shabakaty/downloader/wb0;

    iget-object v7, v4, Lcom/shabakaty/downloader/ec0;->J:Lcom/shabakaty/downloader/wb0;

    invoke-virtual {v3, v5, v7, v0}, Lcom/shabakaty/downloader/ec0;->h(Lcom/shabakaty/downloader/wb0;Lcom/shabakaty/downloader/wb0;I)V

    :cond_e
    move-object v3, v4

    :cond_f
    :goto_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_10
    const/4 p1, 0x0

    :goto_7
    if-ge p1, v2, :cond_1a

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v1, :cond_16

    mul-int v4, v3, v2

    add-int/2addr v4, p1

    .line 41
    iget v5, p0, Lcom/shabakaty/downloader/se1;->V0:I

    if-ne v5, p2, :cond_11

    mul-int v4, p1, v1

    add-int/2addr v4, v3

    .line 42
    :cond_11
    iget-object v5, p0, Lcom/shabakaty/downloader/se1;->a1:[Lcom/shabakaty/downloader/ec0;

    array-length v7, v5

    if-lt v4, v7, :cond_12

    goto :goto_9

    .line 43
    :cond_12
    aget-object v4, v5, v4

    if-eqz v4, :cond_15

    .line 44
    iget v5, v4, Lcom/shabakaty/downloader/ec0;->h0:I

    if-ne v5, v6, :cond_13

    goto :goto_9

    .line 45
    :cond_13
    iget-object v5, p0, Lcom/shabakaty/downloader/se1;->Y0:[Lcom/shabakaty/downloader/ec0;

    aget-object v5, v5, p1

    .line 46
    iget-object v7, p0, Lcom/shabakaty/downloader/se1;->X0:[Lcom/shabakaty/downloader/ec0;

    aget-object v7, v7, v3

    if-eq v4, v5, :cond_14

    .line 47
    iget-object v8, v4, Lcom/shabakaty/downloader/ec0;->I:Lcom/shabakaty/downloader/wb0;

    iget-object v9, v5, Lcom/shabakaty/downloader/ec0;->I:Lcom/shabakaty/downloader/wb0;

    invoke-virtual {v4, v8, v9, v0}, Lcom/shabakaty/downloader/ec0;->h(Lcom/shabakaty/downloader/wb0;Lcom/shabakaty/downloader/wb0;I)V

    .line 48
    iget-object v8, v4, Lcom/shabakaty/downloader/ec0;->K:Lcom/shabakaty/downloader/wb0;

    iget-object v5, v5, Lcom/shabakaty/downloader/ec0;->K:Lcom/shabakaty/downloader/wb0;

    invoke-virtual {v4, v8, v5, v0}, Lcom/shabakaty/downloader/ec0;->h(Lcom/shabakaty/downloader/wb0;Lcom/shabakaty/downloader/wb0;I)V

    :cond_14
    if-eq v4, v7, :cond_15

    .line 49
    iget-object v5, v4, Lcom/shabakaty/downloader/ec0;->J:Lcom/shabakaty/downloader/wb0;

    iget-object v8, v7, Lcom/shabakaty/downloader/ec0;->J:Lcom/shabakaty/downloader/wb0;

    invoke-virtual {v4, v5, v8, v0}, Lcom/shabakaty/downloader/ec0;->h(Lcom/shabakaty/downloader/wb0;Lcom/shabakaty/downloader/wb0;I)V

    .line 50
    iget-object v5, v4, Lcom/shabakaty/downloader/ec0;->L:Lcom/shabakaty/downloader/wb0;

    iget-object v7, v7, Lcom/shabakaty/downloader/ec0;->L:Lcom/shabakaty/downloader/wb0;

    invoke-virtual {v4, v5, v7, v0}, Lcom/shabakaty/downloader/ec0;->h(Lcom/shabakaty/downloader/wb0;Lcom/shabakaty/downloader/wb0;I)V

    :cond_15
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_16
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    .line 51
    :cond_17
    iget-object v1, p0, Lcom/shabakaty/downloader/se1;->W0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1a

    .line 52
    iget-object v3, p0, Lcom/shabakaty/downloader/se1;->W0:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/se1$a;

    add-int/lit8 v4, v1, -0x1

    if-ne v2, v4, :cond_18

    const/4 v4, 0x1

    goto :goto_b

    :cond_18
    const/4 v4, 0x0

    .line 53
    :goto_b
    invoke-virtual {v3, p1, v2, v4}, Lcom/shabakaty/downloader/se1$a;->b(ZIZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 54
    :cond_19
    iget-object v1, p0, Lcom/shabakaty/downloader/se1;->W0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1a

    .line 55
    iget-object v1, p0, Lcom/shabakaty/downloader/se1;->W0:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/se1$a;

    .line 56
    invoke-virtual {v1, p1, v0, p2}, Lcom/shabakaty/downloader/se1$a;->b(ZIZ)V

    .line 57
    :cond_1a
    :goto_c
    iput-boolean v0, p0, Lcom/shabakaty/downloader/u45;->y0:Z

    return-void
.end method
