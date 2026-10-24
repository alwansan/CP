.class public Lcom/shabakaty/downloader/c8;
.super Ljava/lang/Object;
.source "AnimationController.java"


# instance fields
.field public a:Lcom/shabakaty/downloader/lz4;

.field public b:Lcom/shabakaty/downloader/lz4$a;

.field public c:Lcom/shabakaty/downloader/yi;

.field public d:Lcom/shabakaty/downloader/r02;

.field public e:F

.field public f:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/r02;Lcom/shabakaty/downloader/lz4$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/lz4;

    invoke-direct {v0, p2}, Lcom/shabakaty/downloader/lz4;-><init>(Lcom/shabakaty/downloader/lz4$a;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/c8;->a:Lcom/shabakaty/downloader/lz4;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/c8;->b:Lcom/shabakaty/downloader/lz4$a;

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/c8;->d:Lcom/shabakaty/downloader/r02;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/c8;->d:Lcom/shabakaty/downloader/r02;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/r02;->a()Lcom/shabakaty/downloader/e8;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "ANIMATION_COORDINATE"

    const/4 v5, 0x2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1d

    .line 3
    :pswitch_0
    iget-object v1, v0, Lcom/shabakaty/downloader/c8;->d:Lcom/shabakaty/downloader/r02;

    .line 4
    iget v2, v1, Lcom/shabakaty/downloader/r02;->l:I

    .line 5
    iget v3, v1, Lcom/shabakaty/downloader/r02;->k:I

    .line 6
    iget v4, v1, Lcom/shabakaty/downloader/r02;->c:I

    .line 7
    iget v5, v1, Lcom/shabakaty/downloader/r02;->j:F

    .line 8
    iget-wide v6, v1, Lcom/shabakaty/downloader/r02;->r:J

    .line 9
    iget-object v1, v0, Lcom/shabakaty/downloader/c8;->a:Lcom/shabakaty/downloader/lz4;

    .line 10
    iget-object v8, v1, Lcom/shabakaty/downloader/lz4;->i:Lcom/shabakaty/downloader/lx3;

    if-nez v8, :cond_0

    .line 11
    new-instance v8, Lcom/shabakaty/downloader/lx3;

    iget-object v9, v1, Lcom/shabakaty/downloader/lz4;->j:Lcom/shabakaty/downloader/lz4$a;

    invoke-direct {v8, v9}, Lcom/shabakaty/downloader/lx3;-><init>(Lcom/shabakaty/downloader/lz4$a;)V

    iput-object v8, v1, Lcom/shabakaty/downloader/lz4;->i:Lcom/shabakaty/downloader/lx3;

    .line 12
    :cond_0
    iget-object v1, v1, Lcom/shabakaty/downloader/lz4;->i:Lcom/shabakaty/downloader/lx3;

    .line 13
    invoke-virtual {v1, v3, v2, v4, v5}, Lcom/shabakaty/downloader/jx3;->h(IIIF)Lcom/shabakaty/downloader/jx3;

    .line 14
    invoke-virtual {v1, v6, v7}, Lcom/shabakaty/downloader/yi;->b(J)Lcom/shabakaty/downloader/yi;

    .line 15
    iget-boolean v2, v0, Lcom/shabakaty/downloader/c8;->f:Z

    if-eqz v2, :cond_1

    .line 16
    iget v2, v0, Lcom/shabakaty/downloader/c8;->e:F

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/o50;->f(F)Lcom/shabakaty/downloader/yi;

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {v1}, Lcom/shabakaty/downloader/yi;->c()V

    .line 18
    :goto_0
    iput-object v1, v0, Lcom/shabakaty/downloader/c8;->c:Lcom/shabakaty/downloader/yi;

    goto/16 :goto_1d

    .line 19
    :pswitch_1
    iget-object v1, v0, Lcom/shabakaty/downloader/c8;->d:Lcom/shabakaty/downloader/r02;

    .line 20
    iget-boolean v6, v1, Lcom/shabakaty/downloader/r02;->m:Z

    if-eqz v6, :cond_2

    .line 21
    iget v7, v1, Lcom/shabakaty/downloader/r02;->t:I

    goto :goto_1

    .line 22
    :cond_2
    iget v7, v1, Lcom/shabakaty/downloader/r02;->v:I

    :goto_1
    if-eqz v6, :cond_3

    .line 23
    iget v6, v1, Lcom/shabakaty/downloader/r02;->u:I

    goto :goto_2

    .line 24
    :cond_3
    iget v6, v1, Lcom/shabakaty/downloader/r02;->t:I

    .line 25
    :goto_2
    invoke-static {v1, v7}, Lcom/shabakaty/downloader/he0;->i(Lcom/shabakaty/downloader/r02;I)I

    move-result v1

    .line 26
    iget-object v7, v0, Lcom/shabakaty/downloader/c8;->d:Lcom/shabakaty/downloader/r02;

    invoke-static {v7, v6}, Lcom/shabakaty/downloader/he0;->i(Lcom/shabakaty/downloader/r02;I)I

    move-result v6

    .line 27
    iget-object v7, v0, Lcom/shabakaty/downloader/c8;->d:Lcom/shabakaty/downloader/r02;

    .line 28
    iget-wide v7, v7, Lcom/shabakaty/downloader/r02;->r:J

    .line 29
    iget-object v9, v0, Lcom/shabakaty/downloader/c8;->a:Lcom/shabakaty/downloader/lz4;

    .line 30
    iget-object v10, v9, Lcom/shabakaty/downloader/lz4;->h:Lcom/shabakaty/downloader/wi4;

    if-nez v10, :cond_4

    .line 31
    new-instance v10, Lcom/shabakaty/downloader/wi4;

    iget-object v11, v9, Lcom/shabakaty/downloader/lz4;->j:Lcom/shabakaty/downloader/lz4$a;

    invoke-direct {v10, v11}, Lcom/shabakaty/downloader/wi4;-><init>(Lcom/shabakaty/downloader/lz4$a;)V

    iput-object v10, v9, Lcom/shabakaty/downloader/lz4;->h:Lcom/shabakaty/downloader/wi4;

    .line 32
    :cond_4
    iget-object v9, v9, Lcom/shabakaty/downloader/lz4;->h:Lcom/shabakaty/downloader/wi4;

    .line 33
    iget-object v10, v9, Lcom/shabakaty/downloader/yi;->c:Landroid/animation/Animator;

    if-eqz v10, :cond_7

    .line 34
    iget v10, v9, Lcom/shabakaty/downloader/wi4;->d:I

    if-eq v10, v1, :cond_5

    goto :goto_3

    .line 35
    :cond_5
    iget v10, v9, Lcom/shabakaty/downloader/wi4;->e:I

    if-eq v10, v6, :cond_6

    :goto_3
    const/4 v10, 0x1

    goto :goto_4

    :cond_6
    const/4 v10, 0x0

    :goto_4
    if-eqz v10, :cond_7

    .line 36
    iput v1, v9, Lcom/shabakaty/downloader/wi4;->d:I

    .line 37
    iput v6, v9, Lcom/shabakaty/downloader/wi4;->e:I

    .line 38
    invoke-virtual {v9, v4, v1, v6}, Lcom/shabakaty/downloader/wi4;->d(Ljava/lang/String;II)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    const-string v10, "ANIMATION_COORDINATE_REVERSE"

    .line 39
    invoke-virtual {v9, v10, v6, v1}, Lcom/shabakaty/downloader/wi4;->d(Ljava/lang/String;II)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 40
    iget-object v6, v9, Lcom/shabakaty/downloader/yi;->c:Landroid/animation/Animator;

    check-cast v6, Landroid/animation/ValueAnimator;

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, v5, v2

    aput-object v1, v5, v3

    invoke-virtual {v6, v5}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 41
    :cond_7
    invoke-virtual {v9, v7, v8}, Lcom/shabakaty/downloader/yi;->b(J)Lcom/shabakaty/downloader/yi;

    .line 42
    iget-boolean v1, v0, Lcom/shabakaty/downloader/c8;->f:Z

    if-eqz v1, :cond_8

    .line 43
    iget v1, v0, Lcom/shabakaty/downloader/c8;->e:F

    invoke-virtual {v9, v1}, Lcom/shabakaty/downloader/wi4;->e(F)Lcom/shabakaty/downloader/yi;

    goto :goto_5

    .line 44
    :cond_8
    invoke-virtual {v9}, Lcom/shabakaty/downloader/yi;->c()V

    .line 45
    :goto_5
    iput-object v9, v0, Lcom/shabakaty/downloader/c8;->c:Lcom/shabakaty/downloader/yi;

    goto/16 :goto_1d

    .line 46
    :pswitch_2
    iget-object v1, v0, Lcom/shabakaty/downloader/c8;->d:Lcom/shabakaty/downloader/r02;

    .line 47
    iget-boolean v4, v1, Lcom/shabakaty/downloader/r02;->m:Z

    if-eqz v4, :cond_9

    .line 48
    iget v5, v1, Lcom/shabakaty/downloader/r02;->t:I

    goto :goto_6

    .line 49
    :cond_9
    iget v5, v1, Lcom/shabakaty/downloader/r02;->v:I

    :goto_6
    if-eqz v4, :cond_a

    .line 50
    iget v4, v1, Lcom/shabakaty/downloader/r02;->u:I

    goto :goto_7

    .line 51
    :cond_a
    iget v4, v1, Lcom/shabakaty/downloader/r02;->t:I

    .line 52
    :goto_7
    invoke-static {v1, v5}, Lcom/shabakaty/downloader/he0;->i(Lcom/shabakaty/downloader/r02;I)I

    move-result v7

    .line 53
    iget-object v1, v0, Lcom/shabakaty/downloader/c8;->d:Lcom/shabakaty/downloader/r02;

    invoke-static {v1, v4}, Lcom/shabakaty/downloader/he0;->i(Lcom/shabakaty/downloader/r02;I)I

    move-result v8

    .line 54
    iget-object v1, v0, Lcom/shabakaty/downloader/c8;->d:Lcom/shabakaty/downloader/r02;

    .line 55
    iget v4, v1, Lcom/shabakaty/downloader/r02;->f:I

    .line 56
    iget v5, v1, Lcom/shabakaty/downloader/r02;->e:I

    .line 57
    invoke-virtual {v1}, Lcom/shabakaty/downloader/r02;->b()Lcom/shabakaty/downloader/n83;

    move-result-object v1

    sget-object v6, Lcom/shabakaty/downloader/n83;->r:Lcom/shabakaty/downloader/n83;

    if-ne v1, v6, :cond_b

    goto :goto_8

    :cond_b
    move v4, v5

    .line 58
    :goto_8
    iget-object v1, v0, Lcom/shabakaty/downloader/c8;->d:Lcom/shabakaty/downloader/r02;

    .line 59
    iget v5, v1, Lcom/shabakaty/downloader/r02;->c:I

    mul-int/lit8 v6, v5, 0x3

    add-int v15, v6, v4

    add-int/2addr v4, v5

    .line 60
    iget-wide v9, v1, Lcom/shabakaty/downloader/r02;->r:J

    .line 61
    iget-object v1, v0, Lcom/shabakaty/downloader/c8;->a:Lcom/shabakaty/downloader/lz4;

    .line 62
    iget-object v6, v1, Lcom/shabakaty/downloader/lz4;->g:Lcom/shabakaty/downloader/a11;

    if-nez v6, :cond_c

    .line 63
    new-instance v6, Lcom/shabakaty/downloader/a11;

    iget-object v11, v1, Lcom/shabakaty/downloader/lz4;->j:Lcom/shabakaty/downloader/lz4$a;

    invoke-direct {v6, v11}, Lcom/shabakaty/downloader/a11;-><init>(Lcom/shabakaty/downloader/lz4$a;)V

    iput-object v6, v1, Lcom/shabakaty/downloader/lz4;->g:Lcom/shabakaty/downloader/a11;

    .line 64
    :cond_c
    iget-object v1, v1, Lcom/shabakaty/downloader/lz4;->g:Lcom/shabakaty/downloader/a11;

    .line 65
    iput-wide v9, v1, Lcom/shabakaty/downloader/yi;->a:J

    .line 66
    iget-object v6, v1, Lcom/shabakaty/downloader/yi;->c:Landroid/animation/Animator;

    instance-of v11, v6, Landroid/animation/ValueAnimator;

    if-eqz v11, :cond_d

    .line 67
    invoke-virtual {v6, v9, v10}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 68
    :cond_d
    iget v6, v1, Lcom/shabakaty/downloader/a11;->d:I

    if-eq v6, v7, :cond_e

    goto :goto_9

    .line 69
    :cond_e
    iget v6, v1, Lcom/shabakaty/downloader/a11;->e:I

    if-eq v6, v8, :cond_f

    goto :goto_9

    .line 70
    :cond_f
    iget v6, v1, Lcom/shabakaty/downloader/a11;->f:I

    if-eq v6, v15, :cond_10

    goto :goto_9

    .line 71
    :cond_10
    iget v6, v1, Lcom/shabakaty/downloader/a11;->g:I

    if-eq v6, v4, :cond_11

    goto :goto_9

    .line 72
    :cond_11
    iget v6, v1, Lcom/shabakaty/downloader/a11;->h:I

    if-eq v6, v5, :cond_12

    :goto_9
    const/4 v2, 0x1

    :cond_12
    if-eqz v2, :cond_13

    .line 73
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 74
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 75
    iput-object v2, v1, Lcom/shabakaty/downloader/yi;->c:Landroid/animation/Animator;

    .line 76
    iput v7, v1, Lcom/shabakaty/downloader/a11;->d:I

    .line 77
    iput v8, v1, Lcom/shabakaty/downloader/a11;->e:I

    .line 78
    iput v15, v1, Lcom/shabakaty/downloader/a11;->f:I

    .line 79
    iput v4, v1, Lcom/shabakaty/downloader/a11;->g:I

    .line 80
    iput v5, v1, Lcom/shabakaty/downloader/a11;->h:I

    int-to-double v2, v5

    const-wide/high16 v9, 0x3ff8000000000000L    # 1.5

    div-double/2addr v2, v9

    double-to-int v2, v2

    .line 81
    iget-wide v9, v1, Lcom/shabakaty/downloader/yi;->a:J

    const-wide/16 v11, 0x2

    div-long v16, v9, v11

    const/4 v11, 0x1

    move-object v6, v1

    .line 82
    invoke-virtual/range {v6 .. v11}, Lcom/shabakaty/downloader/a11;->d(IIJI)Landroid/animation/ValueAnimator;

    move-result-object v3

    const/4 v6, 0x2

    const/4 v14, 0x2

    move-object v9, v1

    move v10, v15

    move v11, v4

    move-wide/from16 v12, v16

    .line 83
    invoke-virtual/range {v9 .. v14}, Lcom/shabakaty/downloader/a11;->d(IIJI)Landroid/animation/ValueAnimator;

    move-result-object v7

    const/4 v8, 0x3

    const/4 v14, 0x3

    move v10, v5

    move v11, v2

    .line 84
    invoke-virtual/range {v9 .. v14}, Lcom/shabakaty/downloader/a11;->d(IIJI)Landroid/animation/ValueAnimator;

    move-result-object v14

    move v10, v4

    move v11, v15

    move-object v4, v14

    move v14, v6

    .line 85
    invoke-virtual/range {v9 .. v14}, Lcom/shabakaty/downloader/a11;->d(IIJI)Landroid/animation/ValueAnimator;

    move-result-object v6

    move v10, v2

    move v11, v5

    move v14, v8

    .line 86
    invoke-virtual/range {v9 .. v14}, Lcom/shabakaty/downloader/a11;->d(IIJI)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 87
    iget-object v5, v1, Lcom/shabakaty/downloader/yi;->c:Landroid/animation/Animator;

    check-cast v5, Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    .line 88
    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    .line 89
    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    .line 90
    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    .line 91
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 92
    :cond_13
    iget-boolean v2, v0, Lcom/shabakaty/downloader/c8;->f:Z

    if-eqz v2, :cond_14

    .line 93
    iget v2, v0, Lcom/shabakaty/downloader/c8;->e:F

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/a11;->e(F)Lcom/shabakaty/downloader/yi;

    goto :goto_a

    .line 94
    :cond_14
    invoke-virtual {v1}, Lcom/shabakaty/downloader/yi;->c()V

    .line 95
    :goto_a
    iput-object v1, v0, Lcom/shabakaty/downloader/c8;->c:Lcom/shabakaty/downloader/yi;

    goto/16 :goto_1d

    .line 96
    :pswitch_3
    iget-object v1, v0, Lcom/shabakaty/downloader/c8;->d:Lcom/shabakaty/downloader/r02;

    .line 97
    iget-boolean v4, v1, Lcom/shabakaty/downloader/r02;->m:Z

    if-eqz v4, :cond_15

    .line 98
    iget v5, v1, Lcom/shabakaty/downloader/r02;->t:I

    goto :goto_b

    .line 99
    :cond_15
    iget v5, v1, Lcom/shabakaty/downloader/r02;->v:I

    :goto_b
    if-eqz v4, :cond_16

    .line 100
    iget v4, v1, Lcom/shabakaty/downloader/r02;->u:I

    goto :goto_c

    .line 101
    :cond_16
    iget v4, v1, Lcom/shabakaty/downloader/r02;->t:I

    .line 102
    :goto_c
    invoke-static {v1, v5}, Lcom/shabakaty/downloader/he0;->i(Lcom/shabakaty/downloader/r02;I)I

    move-result v1

    .line 103
    iget-object v6, v0, Lcom/shabakaty/downloader/c8;->d:Lcom/shabakaty/downloader/r02;

    invoke-static {v6, v4}, Lcom/shabakaty/downloader/he0;->i(Lcom/shabakaty/downloader/r02;I)I

    move-result v6

    if-le v4, v5, :cond_17

    const/4 v2, 0x1

    .line 104
    :cond_17
    iget-object v3, v0, Lcom/shabakaty/downloader/c8;->d:Lcom/shabakaty/downloader/r02;

    .line 105
    iget v4, v3, Lcom/shabakaty/downloader/r02;->c:I

    .line 106
    iget-wide v7, v3, Lcom/shabakaty/downloader/r02;->r:J

    .line 107
    iget-object v3, v0, Lcom/shabakaty/downloader/c8;->a:Lcom/shabakaty/downloader/lz4;

    .line 108
    iget-object v5, v3, Lcom/shabakaty/downloader/lz4;->f:Lcom/shabakaty/downloader/tm4;

    if-nez v5, :cond_18

    .line 109
    new-instance v5, Lcom/shabakaty/downloader/tm4;

    iget-object v9, v3, Lcom/shabakaty/downloader/lz4;->j:Lcom/shabakaty/downloader/lz4$a;

    invoke-direct {v5, v9}, Lcom/shabakaty/downloader/tm4;-><init>(Lcom/shabakaty/downloader/lz4$a;)V

    iput-object v5, v3, Lcom/shabakaty/downloader/lz4;->f:Lcom/shabakaty/downloader/tm4;

    .line 110
    :cond_18
    iget-object v3, v3, Lcom/shabakaty/downloader/lz4;->f:Lcom/shabakaty/downloader/tm4;

    .line 111
    invoke-virtual {v3, v1, v6, v4, v2}, Lcom/shabakaty/downloader/tm4;->k(IIIZ)Lcom/shabakaty/downloader/q85;

    .line 112
    iput-wide v7, v3, Lcom/shabakaty/downloader/yi;->a:J

    .line 113
    iget-object v1, v3, Lcom/shabakaty/downloader/yi;->c:Landroid/animation/Animator;

    instance-of v2, v1, Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_19

    .line 114
    invoke-virtual {v1, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 115
    :cond_19
    iget-boolean v1, v0, Lcom/shabakaty/downloader/c8;->f:Z

    if-eqz v1, :cond_1a

    .line 116
    iget v1, v0, Lcom/shabakaty/downloader/c8;->e:F

    .line 117
    invoke-virtual {v3, v1}, Lcom/shabakaty/downloader/tm4;->m(F)Lcom/shabakaty/downloader/tm4;

    goto :goto_d

    .line 118
    :cond_1a
    invoke-virtual {v3}, Lcom/shabakaty/downloader/yi;->c()V

    .line 119
    :goto_d
    iput-object v3, v0, Lcom/shabakaty/downloader/c8;->c:Lcom/shabakaty/downloader/yi;

    goto/16 :goto_1d

    .line 120
    :pswitch_4
    iget-object v1, v0, Lcom/shabakaty/downloader/c8;->d:Lcom/shabakaty/downloader/r02;

    .line 121
    iget v4, v1, Lcom/shabakaty/downloader/r02;->l:I

    .line 122
    iget v6, v1, Lcom/shabakaty/downloader/r02;->k:I

    .line 123
    iget v7, v1, Lcom/shabakaty/downloader/r02;->c:I

    .line 124
    iget v8, v1, Lcom/shabakaty/downloader/r02;->i:I

    .line 125
    iget-wide v9, v1, Lcom/shabakaty/downloader/r02;->r:J

    .line 126
    iget-object v1, v0, Lcom/shabakaty/downloader/c8;->a:Lcom/shabakaty/downloader/lz4;

    .line 127
    iget-object v11, v1, Lcom/shabakaty/downloader/lz4;->e:Lcom/shabakaty/downloader/ab1;

    if-nez v11, :cond_1b

    .line 128
    new-instance v11, Lcom/shabakaty/downloader/ab1;

    iget-object v12, v1, Lcom/shabakaty/downloader/lz4;->j:Lcom/shabakaty/downloader/lz4$a;

    invoke-direct {v11, v12}, Lcom/shabakaty/downloader/ab1;-><init>(Lcom/shabakaty/downloader/lz4$a;)V

    iput-object v11, v1, Lcom/shabakaty/downloader/lz4;->e:Lcom/shabakaty/downloader/ab1;

    .line 129
    :cond_1b
    iget-object v1, v1, Lcom/shabakaty/downloader/lz4;->e:Lcom/shabakaty/downloader/ab1;

    .line 130
    iget-object v11, v1, Lcom/shabakaty/downloader/yi;->c:Landroid/animation/Animator;

    if-eqz v11, :cond_20

    .line 131
    iget v11, v1, Lcom/shabakaty/downloader/o50;->e:I

    if-eq v11, v6, :cond_1c

    goto :goto_e

    .line 132
    :cond_1c
    iget v11, v1, Lcom/shabakaty/downloader/o50;->f:I

    if-eq v11, v4, :cond_1d

    goto :goto_e

    .line 133
    :cond_1d
    iget v11, v1, Lcom/shabakaty/downloader/ab1;->h:I

    if-eq v11, v7, :cond_1e

    goto :goto_e

    .line 134
    :cond_1e
    iget v11, v1, Lcom/shabakaty/downloader/ab1;->i:I

    if-eq v11, v8, :cond_1f

    :goto_e
    const/4 v11, 0x1

    goto :goto_f

    :cond_1f
    const/4 v11, 0x0

    :goto_f
    if-eqz v11, :cond_20

    .line 135
    iput v6, v1, Lcom/shabakaty/downloader/o50;->e:I

    .line 136
    iput v4, v1, Lcom/shabakaty/downloader/o50;->f:I

    .line 137
    iput v7, v1, Lcom/shabakaty/downloader/ab1;->h:I

    .line 138
    iput v8, v1, Lcom/shabakaty/downloader/ab1;->i:I

    .line 139
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/o50;->e(Z)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 140
    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/o50;->e(Z)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 141
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/ab1;->g(Z)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 142
    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/ab1;->g(Z)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 143
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/ab1;->h(Z)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 144
    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/ab1;->h(Z)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .line 145
    iget-object v13, v1, Lcom/shabakaty/downloader/yi;->c:Landroid/animation/Animator;

    check-cast v13, Landroid/animation/ValueAnimator;

    const/4 v14, 0x6

    new-array v14, v14, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, v14, v2

    aput-object v6, v14, v3

    aput-object v7, v14, v5

    const/4 v2, 0x3

    aput-object v8, v14, v2

    const/4 v2, 0x4

    aput-object v11, v14, v2

    const/4 v2, 0x5

    aput-object v12, v14, v2

    invoke-virtual {v13, v14}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 146
    :cond_20
    invoke-virtual {v1, v9, v10}, Lcom/shabakaty/downloader/yi;->b(J)Lcom/shabakaty/downloader/yi;

    .line 147
    iget-boolean v2, v0, Lcom/shabakaty/downloader/c8;->f:Z

    if-eqz v2, :cond_21

    .line 148
    iget v2, v0, Lcom/shabakaty/downloader/c8;->e:F

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/o50;->f(F)Lcom/shabakaty/downloader/yi;

    goto :goto_10

    .line 149
    :cond_21
    invoke-virtual {v1}, Lcom/shabakaty/downloader/yi;->c()V

    .line 150
    :goto_10
    iput-object v1, v0, Lcom/shabakaty/downloader/c8;->c:Lcom/shabakaty/downloader/yi;

    goto/16 :goto_1d

    .line 151
    :pswitch_5
    iget-object v1, v0, Lcom/shabakaty/downloader/c8;->d:Lcom/shabakaty/downloader/r02;

    .line 152
    iget-boolean v6, v1, Lcom/shabakaty/downloader/r02;->m:Z

    if-eqz v6, :cond_22

    .line 153
    iget v7, v1, Lcom/shabakaty/downloader/r02;->t:I

    goto :goto_11

    .line 154
    :cond_22
    iget v7, v1, Lcom/shabakaty/downloader/r02;->v:I

    :goto_11
    if-eqz v6, :cond_23

    .line 155
    iget v6, v1, Lcom/shabakaty/downloader/r02;->u:I

    goto :goto_12

    .line 156
    :cond_23
    iget v6, v1, Lcom/shabakaty/downloader/r02;->t:I

    .line 157
    :goto_12
    invoke-static {v1, v7}, Lcom/shabakaty/downloader/he0;->i(Lcom/shabakaty/downloader/r02;I)I

    move-result v1

    .line 158
    iget-object v7, v0, Lcom/shabakaty/downloader/c8;->d:Lcom/shabakaty/downloader/r02;

    invoke-static {v7, v6}, Lcom/shabakaty/downloader/he0;->i(Lcom/shabakaty/downloader/r02;I)I

    move-result v6

    .line 159
    iget-object v7, v0, Lcom/shabakaty/downloader/c8;->d:Lcom/shabakaty/downloader/r02;

    .line 160
    iget-wide v7, v7, Lcom/shabakaty/downloader/r02;->r:J

    .line 161
    iget-object v9, v0, Lcom/shabakaty/downloader/c8;->a:Lcom/shabakaty/downloader/lz4;

    .line 162
    iget-object v10, v9, Lcom/shabakaty/downloader/lz4;->d:Lcom/shabakaty/downloader/s84;

    if-nez v10, :cond_24

    .line 163
    new-instance v10, Lcom/shabakaty/downloader/s84;

    iget-object v11, v9, Lcom/shabakaty/downloader/lz4;->j:Lcom/shabakaty/downloader/lz4$a;

    invoke-direct {v10, v11}, Lcom/shabakaty/downloader/s84;-><init>(Lcom/shabakaty/downloader/lz4$a;)V

    iput-object v10, v9, Lcom/shabakaty/downloader/lz4;->d:Lcom/shabakaty/downloader/s84;

    .line 164
    :cond_24
    iget-object v9, v9, Lcom/shabakaty/downloader/lz4;->d:Lcom/shabakaty/downloader/s84;

    .line 165
    iget-object v10, v9, Lcom/shabakaty/downloader/yi;->c:Landroid/animation/Animator;

    if-eqz v10, :cond_27

    .line 166
    iget v10, v9, Lcom/shabakaty/downloader/s84;->e:I

    if-eq v10, v1, :cond_25

    goto :goto_13

    .line 167
    :cond_25
    iget v10, v9, Lcom/shabakaty/downloader/s84;->f:I

    if-eq v10, v6, :cond_26

    :goto_13
    const/4 v10, 0x1

    goto :goto_14

    :cond_26
    const/4 v10, 0x0

    :goto_14
    if-eqz v10, :cond_27

    .line 168
    iput v1, v9, Lcom/shabakaty/downloader/s84;->e:I

    .line 169
    iput v6, v9, Lcom/shabakaty/downloader/s84;->f:I

    new-array v5, v5, [I

    aput v1, v5, v2

    aput v6, v5, v3

    .line 170
    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 171
    new-instance v4, Landroid/animation/IntEvaluator;

    invoke-direct {v4}, Landroid/animation/IntEvaluator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 172
    iget-object v4, v9, Lcom/shabakaty/downloader/yi;->c:Landroid/animation/Animator;

    check-cast v4, Landroid/animation/ValueAnimator;

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v3, v2

    invoke-virtual {v4, v3}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 173
    :cond_27
    invoke-virtual {v9, v7, v8}, Lcom/shabakaty/downloader/yi;->b(J)Lcom/shabakaty/downloader/yi;

    .line 174
    iget-boolean v1, v0, Lcom/shabakaty/downloader/c8;->f:Z

    if-eqz v1, :cond_28

    .line 175
    iget v1, v0, Lcom/shabakaty/downloader/c8;->e:F

    invoke-virtual {v9, v1}, Lcom/shabakaty/downloader/s84;->d(F)Lcom/shabakaty/downloader/yi;

    goto :goto_15

    .line 176
    :cond_28
    invoke-virtual {v9}, Lcom/shabakaty/downloader/yi;->c()V

    .line 177
    :goto_15
    iput-object v9, v0, Lcom/shabakaty/downloader/c8;->c:Lcom/shabakaty/downloader/yi;

    goto/16 :goto_1d

    .line 178
    :pswitch_6
    iget-object v1, v0, Lcom/shabakaty/downloader/c8;->d:Lcom/shabakaty/downloader/r02;

    .line 179
    iget-boolean v4, v1, Lcom/shabakaty/downloader/r02;->m:Z

    if-eqz v4, :cond_29

    .line 180
    iget v5, v1, Lcom/shabakaty/downloader/r02;->t:I

    goto :goto_16

    .line 181
    :cond_29
    iget v5, v1, Lcom/shabakaty/downloader/r02;->v:I

    :goto_16
    if-eqz v4, :cond_2a

    .line 182
    iget v4, v1, Lcom/shabakaty/downloader/r02;->u:I

    goto :goto_17

    .line 183
    :cond_2a
    iget v4, v1, Lcom/shabakaty/downloader/r02;->t:I

    .line 184
    :goto_17
    invoke-static {v1, v5}, Lcom/shabakaty/downloader/he0;->i(Lcom/shabakaty/downloader/r02;I)I

    move-result v1

    .line 185
    iget-object v6, v0, Lcom/shabakaty/downloader/c8;->d:Lcom/shabakaty/downloader/r02;

    invoke-static {v6, v4}, Lcom/shabakaty/downloader/he0;->i(Lcom/shabakaty/downloader/r02;I)I

    move-result v6

    if-le v4, v5, :cond_2b

    const/4 v2, 0x1

    .line 186
    :cond_2b
    iget-object v3, v0, Lcom/shabakaty/downloader/c8;->d:Lcom/shabakaty/downloader/r02;

    .line 187
    iget v4, v3, Lcom/shabakaty/downloader/r02;->c:I

    .line 188
    iget-wide v7, v3, Lcom/shabakaty/downloader/r02;->r:J

    .line 189
    iget-object v3, v0, Lcom/shabakaty/downloader/c8;->a:Lcom/shabakaty/downloader/lz4;

    .line 190
    iget-object v5, v3, Lcom/shabakaty/downloader/lz4;->c:Lcom/shabakaty/downloader/q85;

    if-nez v5, :cond_2c

    .line 191
    new-instance v5, Lcom/shabakaty/downloader/q85;

    iget-object v9, v3, Lcom/shabakaty/downloader/lz4;->j:Lcom/shabakaty/downloader/lz4$a;

    invoke-direct {v5, v9}, Lcom/shabakaty/downloader/q85;-><init>(Lcom/shabakaty/downloader/lz4$a;)V

    iput-object v5, v3, Lcom/shabakaty/downloader/lz4;->c:Lcom/shabakaty/downloader/q85;

    .line 192
    :cond_2c
    iget-object v3, v3, Lcom/shabakaty/downloader/lz4;->c:Lcom/shabakaty/downloader/q85;

    .line 193
    invoke-virtual {v3, v1, v6, v4, v2}, Lcom/shabakaty/downloader/q85;->k(IIIZ)Lcom/shabakaty/downloader/q85;

    move-result-object v1

    .line 194
    invoke-virtual {v1, v7, v8}, Lcom/shabakaty/downloader/q85;->g(J)Lcom/shabakaty/downloader/q85;

    move-result-object v1

    .line 195
    iget-boolean v2, v0, Lcom/shabakaty/downloader/c8;->f:Z

    if-eqz v2, :cond_2d

    .line 196
    iget v2, v0, Lcom/shabakaty/downloader/c8;->e:F

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/q85;->i(F)Lcom/shabakaty/downloader/yi;

    goto :goto_18

    .line 197
    :cond_2d
    invoke-virtual {v1}, Lcom/shabakaty/downloader/yi;->c()V

    .line 198
    :goto_18
    iput-object v1, v0, Lcom/shabakaty/downloader/c8;->c:Lcom/shabakaty/downloader/yi;

    goto/16 :goto_1d

    .line 199
    :pswitch_7
    iget-object v1, v0, Lcom/shabakaty/downloader/c8;->d:Lcom/shabakaty/downloader/r02;

    .line 200
    iget v2, v1, Lcom/shabakaty/downloader/r02;->l:I

    .line 201
    iget v3, v1, Lcom/shabakaty/downloader/r02;->k:I

    .line 202
    iget v4, v1, Lcom/shabakaty/downloader/r02;->c:I

    .line 203
    iget v5, v1, Lcom/shabakaty/downloader/r02;->j:F

    .line 204
    iget-wide v6, v1, Lcom/shabakaty/downloader/r02;->r:J

    .line 205
    iget-object v1, v0, Lcom/shabakaty/downloader/c8;->a:Lcom/shabakaty/downloader/lz4;

    .line 206
    iget-object v8, v1, Lcom/shabakaty/downloader/lz4;->b:Lcom/shabakaty/downloader/jx3;

    if-nez v8, :cond_2e

    .line 207
    new-instance v8, Lcom/shabakaty/downloader/jx3;

    iget-object v9, v1, Lcom/shabakaty/downloader/lz4;->j:Lcom/shabakaty/downloader/lz4$a;

    invoke-direct {v8, v9}, Lcom/shabakaty/downloader/jx3;-><init>(Lcom/shabakaty/downloader/lz4$a;)V

    iput-object v8, v1, Lcom/shabakaty/downloader/lz4;->b:Lcom/shabakaty/downloader/jx3;

    .line 208
    :cond_2e
    iget-object v1, v1, Lcom/shabakaty/downloader/lz4;->b:Lcom/shabakaty/downloader/jx3;

    .line 209
    invoke-virtual {v1, v3, v2, v4, v5}, Lcom/shabakaty/downloader/jx3;->h(IIIF)Lcom/shabakaty/downloader/jx3;

    .line 210
    invoke-virtual {v1, v6, v7}, Lcom/shabakaty/downloader/yi;->b(J)Lcom/shabakaty/downloader/yi;

    .line 211
    iget-boolean v2, v0, Lcom/shabakaty/downloader/c8;->f:Z

    if-eqz v2, :cond_2f

    .line 212
    iget v2, v0, Lcom/shabakaty/downloader/c8;->e:F

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/o50;->f(F)Lcom/shabakaty/downloader/yi;

    goto :goto_19

    .line 213
    :cond_2f
    invoke-virtual {v1}, Lcom/shabakaty/downloader/yi;->c()V

    .line 214
    :goto_19
    iput-object v1, v0, Lcom/shabakaty/downloader/c8;->c:Lcom/shabakaty/downloader/yi;

    goto :goto_1d

    .line 215
    :pswitch_8
    iget-object v1, v0, Lcom/shabakaty/downloader/c8;->d:Lcom/shabakaty/downloader/r02;

    .line 216
    iget v4, v1, Lcom/shabakaty/downloader/r02;->l:I

    .line 217
    iget v6, v1, Lcom/shabakaty/downloader/r02;->k:I

    .line 218
    iget-wide v7, v1, Lcom/shabakaty/downloader/r02;->r:J

    .line 219
    iget-object v1, v0, Lcom/shabakaty/downloader/c8;->a:Lcom/shabakaty/downloader/lz4;

    .line 220
    iget-object v9, v1, Lcom/shabakaty/downloader/lz4;->a:Lcom/shabakaty/downloader/o50;

    if-nez v9, :cond_30

    .line 221
    new-instance v9, Lcom/shabakaty/downloader/o50;

    iget-object v10, v1, Lcom/shabakaty/downloader/lz4;->j:Lcom/shabakaty/downloader/lz4$a;

    invoke-direct {v9, v10}, Lcom/shabakaty/downloader/o50;-><init>(Lcom/shabakaty/downloader/lz4$a;)V

    iput-object v9, v1, Lcom/shabakaty/downloader/lz4;->a:Lcom/shabakaty/downloader/o50;

    .line 222
    :cond_30
    iget-object v1, v1, Lcom/shabakaty/downloader/lz4;->a:Lcom/shabakaty/downloader/o50;

    .line 223
    iget-object v9, v1, Lcom/shabakaty/downloader/yi;->c:Landroid/animation/Animator;

    if-eqz v9, :cond_33

    .line 224
    iget v9, v1, Lcom/shabakaty/downloader/o50;->e:I

    if-eq v9, v6, :cond_31

    goto :goto_1a

    .line 225
    :cond_31
    iget v9, v1, Lcom/shabakaty/downloader/o50;->f:I

    if-eq v9, v4, :cond_32

    :goto_1a
    const/4 v9, 0x1

    goto :goto_1b

    :cond_32
    const/4 v9, 0x0

    :goto_1b
    if-eqz v9, :cond_33

    .line 226
    iput v6, v1, Lcom/shabakaty/downloader/o50;->e:I

    .line 227
    iput v4, v1, Lcom/shabakaty/downloader/o50;->f:I

    .line 228
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/o50;->e(Z)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 229
    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/o50;->e(Z)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 230
    iget-object v9, v1, Lcom/shabakaty/downloader/yi;->c:Landroid/animation/Animator;

    check-cast v9, Landroid/animation/ValueAnimator;

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, v5, v2

    aput-object v6, v5, v3

    invoke-virtual {v9, v5}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 231
    :cond_33
    invoke-virtual {v1, v7, v8}, Lcom/shabakaty/downloader/yi;->b(J)Lcom/shabakaty/downloader/yi;

    .line 232
    iget-boolean v2, v0, Lcom/shabakaty/downloader/c8;->f:Z

    if-eqz v2, :cond_34

    .line 233
    iget v2, v0, Lcom/shabakaty/downloader/c8;->e:F

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/o50;->f(F)Lcom/shabakaty/downloader/yi;

    goto :goto_1c

    .line 234
    :cond_34
    invoke-virtual {v1}, Lcom/shabakaty/downloader/yi;->c()V

    .line 235
    :goto_1c
    iput-object v1, v0, Lcom/shabakaty/downloader/c8;->c:Lcom/shabakaty/downloader/yi;

    goto :goto_1d

    .line 236
    :pswitch_9
    iget-object v1, v0, Lcom/shabakaty/downloader/c8;->b:Lcom/shabakaty/downloader/lz4$a;

    const/4 v2, 0x0

    check-cast v1, Lcom/rd/a;

    invoke-virtual {v1, v2}, Lcom/rd/a;->b(Lcom/shabakaty/downloader/kz4;)V

    :goto_1d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
