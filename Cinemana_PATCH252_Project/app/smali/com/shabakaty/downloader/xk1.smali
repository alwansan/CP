.class public Lcom/shabakaty/downloader/xk1;
.super Lcom/shabakaty/downloader/wk1;
.source "FragmentSubtitlesSettingsBindingImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/i63$a;


# static fields
.field public static final r0:Landroid/util/SparseIntArray;


# instance fields
.field public final j0:Landroid/view/View$OnClickListener;

.field public final k0:Landroid/view/View$OnClickListener;

.field public final l0:Landroid/view/View$OnClickListener;

.field public final m0:Landroid/view/View$OnClickListener;

.field public final n0:Landroid/view/View$OnClickListener;

.field public final o0:Landroid/view/View$OnClickListener;

.field public final p0:Landroid/view/View$OnClickListener;

.field public q0:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/xk1;->r0:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0410

    const/16 v2, 0x15

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0411

    const/16 v2, 0x16

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/gl0;Landroid/view/View;)V
    .locals 28

    move-object/from16 v3, p0

    move-object/from16 v15, p2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    sget-object v4, Lcom/shabakaty/downloader/xk1;->r0:Landroid/util/SparseIntArray;

    const/16 v5, 0x17

    const/4 v14, 0x0

    move-object/from16 v6, p1

    invoke-static {v6, v15, v5, v14, v4}, Landroidx/databinding/ViewDataBinding;->s(Lcom/shabakaty/downloader/gl0;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v26

    const/16 v4, 0x14

    .line 2
    aget-object v4, v26, v4

    check-cast v4, Lcom/google/android/material/button/MaterialButton;

    const/16 v5, 0x13

    aget-object v5, v26, v5

    check-cast v5, Landroid/widget/TextView;

    const/16 v6, 0x15

    aget-object v6, v26, v6

    check-cast v6, Landroidx/appcompat/widget/AppCompatImageView;

    const/16 v7, 0x16

    aget-object v7, v26, v7

    check-cast v7, Lcom/google/android/exoplayer2/ui/SubtitleView;

    const/16 v8, 0x10

    aget-object v8, v26, v8

    check-cast v8, Landroid/widget/LinearLayout;

    const/16 v9, 0x12

    aget-object v9, v26, v9

    check-cast v9, Landroid/widget/TextView;

    const/16 v10, 0xf

    aget-object v10, v26, v10

    check-cast v10, Landroid/widget/TextView;

    const/16 v11, 0xc

    aget-object v11, v26, v11

    check-cast v11, Landroid/widget/LinearLayout;

    const/16 v12, 0xe

    aget-object v12, v26, v12

    check-cast v12, Landroid/widget/TextView;

    const/16 v13, 0xb

    aget-object v13, v26, v13

    check-cast v13, Landroid/widget/TextView;

    const/16 v16, 0x8

    aget-object v16, v26, v16

    check-cast v16, Landroid/widget/LinearLayout;

    move-object/from16 v14, v16

    const/16 v16, 0xa

    aget-object v16, v26, v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v15, v16

    const/4 v3, 0x7

    aget-object v16, v26, v3

    check-cast v16, Landroid/widget/TextView;

    const/4 v3, 0x6

    aget-object v17, v26, v3

    check-cast v17, Landroid/widget/TextView;

    const/4 v3, 0x5

    aget-object v18, v26, v3

    check-cast v18, Landroid/widget/TextView;

    const/4 v3, 0x2

    aget-object v19, v26, v3

    check-cast v19, Landroid/widget/TextView;

    const/4 v3, 0x1

    aget-object v20, v26, v3

    check-cast v20, Landroid/widget/TextView;

    const/4 v3, 0x4

    aget-object v21, v26, v3

    check-cast v21, Landroid/widget/TextView;

    const/4 v3, 0x3

    aget-object v22, v26, v3

    check-cast v22, Landroid/widget/TextView;

    const/16 v23, 0x11

    aget-object v23, v26, v23

    check-cast v23, Landroid/view/View;

    const/16 v24, 0xd

    aget-object v24, v26, v24

    check-cast v24, Landroid/view/View;

    const/16 v25, 0x9

    aget-object v25, v26, v25

    check-cast v25, Landroid/view/View;

    const/16 v27, 0x1

    move/from16 v3, v27

    invoke-direct/range {v0 .. v25}, Lcom/shabakaty/downloader/wk1;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/google/android/exoplayer2/ui/SubtitleView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 3
    iput-wide v0, v2, Lcom/shabakaty/downloader/xk1;->q0:J

    .line 4
    iget-object v0, v2, Lcom/shabakaty/downloader/wk1;->M:Lcom/google/android/material/button/MaterialButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 5
    aget-object v0, v26, v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v2, Lcom/shabakaty/downloader/wk1;->N:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object v0, v2, Lcom/shabakaty/downloader/wk1;->P:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object v0, v2, Lcom/shabakaty/downloader/wk1;->Q:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object v0, v2, Lcom/shabakaty/downloader/wk1;->R:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object v0, v2, Lcom/shabakaty/downloader/wk1;->S:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 12
    iget-object v0, v2, Lcom/shabakaty/downloader/wk1;->T:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object v0, v2, Lcom/shabakaty/downloader/wk1;->U:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 14
    iget-object v0, v2, Lcom/shabakaty/downloader/wk1;->V:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 15
    iget-object v0, v2, Lcom/shabakaty/downloader/wk1;->W:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 16
    iget-object v0, v2, Lcom/shabakaty/downloader/wk1;->X:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 17
    iget-object v0, v2, Lcom/shabakaty/downloader/wk1;->Y:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 18
    iget-object v0, v2, Lcom/shabakaty/downloader/wk1;->Z:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 19
    iget-object v0, v2, Lcom/shabakaty/downloader/wk1;->a0:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 20
    iget-object v0, v2, Lcom/shabakaty/downloader/wk1;->b0:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 21
    iget-object v0, v2, Lcom/shabakaty/downloader/wk1;->c0:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 22
    iget-object v0, v2, Lcom/shabakaty/downloader/wk1;->d0:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 23
    iget-object v0, v2, Lcom/shabakaty/downloader/wk1;->e0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 24
    iget-object v0, v2, Lcom/shabakaty/downloader/wk1;->f0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 25
    iget-object v0, v2, Lcom/shabakaty/downloader/wk1;->g0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a0128

    move-object/from16 v1, p2

    .line 26
    invoke-virtual {v1, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 27
    new-instance v0, Lcom/shabakaty/downloader/i63;

    const/4 v1, 0x6

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/i63;-><init>(Lcom/shabakaty/downloader/i63$a;I)V

    iput-object v0, v2, Lcom/shabakaty/downloader/xk1;->j0:Landroid/view/View$OnClickListener;

    .line 28
    new-instance v0, Lcom/shabakaty/downloader/i63;

    const/4 v1, 0x2

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/i63;-><init>(Lcom/shabakaty/downloader/i63$a;I)V

    iput-object v0, v2, Lcom/shabakaty/downloader/xk1;->k0:Landroid/view/View$OnClickListener;

    .line 29
    new-instance v0, Lcom/shabakaty/downloader/i63;

    const/4 v1, 0x7

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/i63;-><init>(Lcom/shabakaty/downloader/i63$a;I)V

    iput-object v0, v2, Lcom/shabakaty/downloader/xk1;->l0:Landroid/view/View$OnClickListener;

    .line 30
    new-instance v0, Lcom/shabakaty/downloader/i63;

    const/4 v1, 0x3

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/i63;-><init>(Lcom/shabakaty/downloader/i63$a;I)V

    iput-object v0, v2, Lcom/shabakaty/downloader/xk1;->m0:Landroid/view/View$OnClickListener;

    .line 31
    new-instance v0, Lcom/shabakaty/downloader/i63;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/i63;-><init>(Lcom/shabakaty/downloader/i63$a;I)V

    iput-object v0, v2, Lcom/shabakaty/downloader/xk1;->n0:Landroid/view/View$OnClickListener;

    .line 32
    new-instance v0, Lcom/shabakaty/downloader/i63;

    const/4 v1, 0x4

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/i63;-><init>(Lcom/shabakaty/downloader/i63$a;I)V

    iput-object v0, v2, Lcom/shabakaty/downloader/xk1;->o0:Landroid/view/View$OnClickListener;

    .line 33
    new-instance v0, Lcom/shabakaty/downloader/i63;

    const/4 v1, 0x5

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/i63;-><init>(Lcom/shabakaty/downloader/i63$a;I)V

    iput-object v0, v2, Lcom/shabakaty/downloader/xk1;->p0:Landroid/view/View$OnClickListener;

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/xk1;->p()V

    return-void
.end method


# virtual methods
.method public D(ILjava/lang/Object;)Z
    .locals 3

    const/16 v0, 0x10

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/ah4;

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/wk1;->h0:Lcom/shabakaty/downloader/ah4;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/xk1;->q0:J

    const-wide/16 v1, 0x2

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/xk1;->q0:J

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p0, v0}, Landroidx/databinding/a;->f(I)V

    .line 7
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->x()V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    const/16 v0, 0x26

    if-ne v0, p1, :cond_1

    .line 9
    check-cast p2, Lcom/shabakaty/downloader/ih4;

    .line 10
    iput-object p2, p0, Lcom/shabakaty/downloader/wk1;->i0:Lcom/shabakaty/downloader/ih4;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_2
    iget-wide p1, p0, Lcom/shabakaty/downloader/xk1;->q0:J

    const-wide/16 v1, 0x4

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/xk1;->q0:J

    .line 13
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14
    invoke-virtual {p0, v0}, Landroidx/databinding/a;->f(I)V

    .line 15
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->x()V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 16
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final b(ILandroid/view/View;)V
    .locals 1

    const/4 p2, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_7

    .line 1
    :pswitch_0
    iget-object p1, p0, Lcom/shabakaty/downloader/wk1;->h0:Lcom/shabakaty/downloader/ah4;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_7

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/ah4;->B()V

    goto :goto_7

    .line 3
    :pswitch_1
    iget-object p1, p0, Lcom/shabakaty/downloader/wk1;->h0:Lcom/shabakaty/downloader/ah4;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_7

    .line 4
    invoke-interface {p1}, Lcom/shabakaty/downloader/ah4;->y1()V

    goto :goto_7

    .line 5
    :pswitch_2
    iget-object p1, p0, Lcom/shabakaty/downloader/wk1;->h0:Lcom/shabakaty/downloader/ah4;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    :goto_2
    if-eqz p2, :cond_7

    .line 6
    invoke-interface {p1}, Lcom/shabakaty/downloader/ah4;->b0()V

    goto :goto_7

    .line 7
    :pswitch_3
    iget-object p1, p0, Lcom/shabakaty/downloader/wk1;->h0:Lcom/shabakaty/downloader/ah4;

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 p2, 0x0

    :goto_3
    if-eqz p2, :cond_7

    .line 8
    invoke-interface {p1}, Lcom/shabakaty/downloader/ah4;->X()V

    goto :goto_7

    .line 9
    :pswitch_4
    iget-object p1, p0, Lcom/shabakaty/downloader/wk1;->h0:Lcom/shabakaty/downloader/ah4;

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    const/4 p2, 0x0

    :goto_4
    if-eqz p2, :cond_7

    .line 10
    invoke-interface {p1}, Lcom/shabakaty/downloader/ah4;->p1()V

    goto :goto_7

    .line 11
    :pswitch_5
    iget-object p1, p0, Lcom/shabakaty/downloader/wk1;->h0:Lcom/shabakaty/downloader/ah4;

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    const/4 p2, 0x0

    :goto_5
    if-eqz p2, :cond_7

    .line 12
    invoke-interface {p1}, Lcom/shabakaty/downloader/ah4;->N()V

    goto :goto_7

    .line 13
    :pswitch_6
    iget-object p1, p0, Lcom/shabakaty/downloader/wk1;->h0:Lcom/shabakaty/downloader/ah4;

    if-eqz p1, :cond_6

    goto :goto_6

    :cond_6
    const/4 p2, 0x0

    :goto_6
    if-eqz p2, :cond_7

    .line 14
    invoke-interface {p1}, Lcom/shabakaty/downloader/ah4;->J1()V

    :cond_7
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public i()V
    .locals 15

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/xk1;->q0:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lcom/shabakaty/downloader/xk1;->q0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v4, p0, Lcom/shabakaty/downloader/wk1;->i0:Lcom/shabakaty/downloader/ih4;

    const-wide/16 v5, 0xd

    and-long/2addr v5, v0

    const/4 v7, 0x0

    cmp-long v8, v5, v2

    if-eqz v8, :cond_7

    if-eqz v4, :cond_0

    .line 6
    iget-object v2, v4, Lcom/shabakaty/downloader/ih4;->g:Lcom/shabakaty/downloader/gc4;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 7
    :goto_0
    invoke-static {p0, v7, v2}, Lcom/shabakaty/downloader/h35;->a(Landroidx/databinding/ViewDataBinding;ILcom/shabakaty/downloader/te1;)Z

    if-eqz v2, :cond_1

    .line 8
    invoke-interface {v2}, Lcom/shabakaty/downloader/gc4;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 9
    iget-object v2, v2, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;->subtitlesSettings:Lcom/shabakaty/downloader/pg4;

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_3

    .line 10
    iget v3, v2, Lcom/shabakaty/downloader/pg4;->b:I

    .line 11
    iget-object v4, v2, Lcom/shabakaty/downloader/pg4;->f:Lcom/shabakaty/downloader/gg4;

    .line 12
    iget-object v5, v2, Lcom/shabakaty/downloader/pg4;->d:Lcom/shabakaty/downloader/fg4;

    .line 13
    iget v6, v2, Lcom/shabakaty/downloader/pg4;->a:I

    .line 14
    iget v9, v2, Lcom/shabakaty/downloader/pg4;->c:I

    .line 15
    iget-object v2, v2, Lcom/shabakaty/downloader/pg4;->e:Lcom/shabakaty/downloader/hg4;

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    :goto_3
    const-string v10, "#%08X"

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    .line 16
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v7

    invoke-static {v10, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "#%08X"

    new-array v13, v11, [Ljava/lang/Object;

    .line 17
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v7

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "#%08X"

    new-array v11, v11, [Ljava/lang/Object;

    .line 18
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v11, v7

    invoke-static {v13, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    if-eqz v4, :cond_4

    .line 19
    iget-object v4, v4, Lcom/shabakaty/downloader/gg4;->a:Ljava/lang/String;

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    if-eqz v5, :cond_5

    .line 20
    iget v5, v5, Lcom/shabakaty/downloader/fg4;->b:I

    goto :goto_5

    :cond_5
    const/4 v5, 0x0

    :goto_5
    if-eqz v2, :cond_6

    .line 21
    iget v7, v2, Lcom/shabakaty/downloader/hg4;->b:I

    :cond_6
    move v2, v7

    move v7, v5

    goto :goto_6

    :cond_7
    const/4 v2, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    :goto_6
    const-wide/16 v13, 0x8

    and-long/2addr v0, v13

    const-wide/16 v13, 0x0

    cmp-long v5, v0, v13

    if-eqz v5, :cond_8

    .line 22
    iget-object v0, p0, Lcom/shabakaty/downloader/wk1;->M:Lcom/google/android/material/button/MaterialButton;

    iget-object v1, p0, Lcom/shabakaty/downloader/xk1;->l0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object v0, p0, Lcom/shabakaty/downloader/wk1;->M:Lcom/google/android/material/button/MaterialButton;

    const v1, 0x7f120239

    invoke-static {v0, v1, v0}, Lcom/shabakaty/downloader/e3;->a(Lcom/google/android/material/button/MaterialButton;ILcom/google/android/material/button/MaterialButton;)V

    .line 24
    iget-object v0, p0, Lcom/shabakaty/downloader/wk1;->N:Landroid/widget/TextView;

    const v1, 0x7f120237

    invoke-static {v0, v1, v0}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 25
    iget-object v0, p0, Lcom/shabakaty/downloader/wk1;->P:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/shabakaty/downloader/xk1;->j0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object v0, p0, Lcom/shabakaty/downloader/wk1;->R:Landroid/widget/TextView;

    const v1, 0x7f12026d

    invoke-static {v0, v1, v0}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 27
    iget-object v0, p0, Lcom/shabakaty/downloader/wk1;->S:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/shabakaty/downloader/xk1;->p0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object v0, p0, Lcom/shabakaty/downloader/wk1;->U:Landroid/widget/TextView;

    const v1, 0x7f12026e

    invoke-static {v0, v1, v0}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 29
    iget-object v0, p0, Lcom/shabakaty/downloader/wk1;->V:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/shabakaty/downloader/xk1;->o0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object v0, p0, Lcom/shabakaty/downloader/wk1;->X:Landroid/widget/TextView;

    const v1, 0x7f12026f

    invoke-static {v0, v1, v0}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 31
    iget-object v0, p0, Lcom/shabakaty/downloader/wk1;->Y:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/shabakaty/downloader/xk1;->m0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v0, p0, Lcom/shabakaty/downloader/wk1;->Z:Landroid/widget/TextView;

    const v1, 0x7f120270

    invoke-static {v0, v1, v0}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 33
    iget-object v0, p0, Lcom/shabakaty/downloader/wk1;->a0:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/shabakaty/downloader/xk1;->n0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v0, p0, Lcom/shabakaty/downloader/wk1;->b0:Landroid/widget/TextView;

    const v1, 0x7f120139

    invoke-static {v0, v1, v0}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 35
    iget-object v0, p0, Lcom/shabakaty/downloader/wk1;->c0:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/shabakaty/downloader/xk1;->k0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v0, p0, Lcom/shabakaty/downloader/wk1;->d0:Landroid/widget/TextView;

    const v1, 0x7f120138

    invoke-static {v0, v1, v0}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    :cond_8
    if-eqz v8, :cond_9

    .line 37
    iget-object v0, p0, Lcom/shabakaty/downloader/wk1;->Q:Landroid/widget/TextView;

    invoke-static {v0, v11}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/shabakaty/downloader/wk1;->T:Landroid/widget/TextView;

    invoke-static {v0, v12}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/shabakaty/downloader/wk1;->W:Landroid/widget/TextView;

    invoke-static {v0, v10}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/shabakaty/downloader/wk1;->Y:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    .line 41
    iget-object v0, p0, Lcom/shabakaty/downloader/wk1;->a0:Landroid/widget/TextView;

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/shabakaty/downloader/wk1;->c0:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 43
    iget-object v0, p0, Lcom/shabakaty/downloader/wk1;->e0:Landroid/view/View;

    .line 44
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 46
    iget-object v0, p0, Lcom/shabakaty/downloader/wk1;->f0:Landroid/view/View;

    .line 47
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 49
    iget-object v0, p0, Lcom/shabakaty/downloader/wk1;->g0:Landroid/view/View;

    .line 50
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    return-void

    :catchall_0
    move-exception v0

    .line 52
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public o()Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/xk1;->q0:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 3
    monitor-exit p0

    return v0

    .line 4
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public p()V
    .locals 2

    .line 1
    monitor-enter p0

    const-wide/16 v0, 0x8

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/shabakaty/downloader/xk1;->q0:J

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->x()V

    return-void

    :catchall_0
    move-exception v0

    .line 5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public u(ILjava/lang/Object;I)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 1
    :cond_0
    check-cast p2, Lcom/shabakaty/downloader/gc4;

    if-nez p3, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/xk1;->q0:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/shabakaty/downloader/xk1;->q0:J

    .line 4
    monitor-exit p0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return v0
.end method
