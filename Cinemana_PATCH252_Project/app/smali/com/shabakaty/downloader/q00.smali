.class public Lcom/shabakaty/downloader/q00;
.super Lcom/shabakaty/downloader/p00;
.source "CinemanaPlaybackControlViewBindingImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/lm0$a;


# static fields
.field public static final t0:Landroid/util/SparseIntArray;


# instance fields
.field public final i0:Lcom/shabakaty/downloader/mm0;

.field public final j0:Lcom/shabakaty/downloader/mm0;

.field public final k0:Lcom/shabakaty/downloader/mm0;

.field public final l0:Lcom/shabakaty/downloader/mm0;

.field public final m0:Lcom/shabakaty/downloader/mm0;

.field public final n0:Lcom/shabakaty/downloader/mm0;

.field public final o0:Lcom/shabakaty/downloader/mm0;

.field public final p0:Lcom/shabakaty/downloader/mm0;

.field public final q0:Lcom/shabakaty/downloader/mm0;

.field public final r0:Lcom/shabakaty/downloader/mm0;

.field public s0:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/q00;->t0:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0348

    const/16 v2, 0x10

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a01f7

    const/16 v2, 0x11

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a01fa

    const/16 v2, 0x12

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a011c

    const/16 v2, 0x13

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a022f

    const/16 v2, 0x14

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a03f6

    const/16 v2, 0x15

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a03f5

    const/16 v2, 0x16

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/gl0;Landroid/view/View;)V
    .locals 27

    move-object/from16 v2, p0

    move-object/from16 v1, p2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/q00;->t0:Landroid/util/SparseIntArray;

    const/16 v3, 0x17

    const/4 v15, 0x0

    move-object/from16 v14, p1

    invoke-static {v14, v1, v3, v15, v0}, Landroidx/databinding/ViewDataBinding;->s(Lcom/shabakaty/downloader/gl0;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x13

    .line 2
    aget-object v3, v0, v3

    move-object v4, v3

    check-cast v4, Landroid/view/View;

    const/4 v3, 0x6

    aget-object v5, v0, v3

    check-cast v5, Lcom/shabakaty/cinemana/player/FastForwardRewindButton;

    const/16 v6, 0x11

    aget-object v6, v0, v6

    check-cast v6, Landroidx/constraintlayout/widget/Guideline;

    const/16 v7, 0x12

    aget-object v7, v0, v7

    check-cast v7, Landroidx/constraintlayout/widget/Guideline;

    const/16 v8, 0x14

    aget-object v8, v0, v8

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v9, 0xf

    aget-object v9, v0, v9

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView;

    const/16 v13, 0x8

    aget-object v10, v0, v13

    check-cast v10, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;

    const/4 v12, 0x4

    aget-object v11, v0, v12

    check-cast v11, Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v3, 0x2

    aget-object v16, v0, v3

    check-cast v16, Lcom/facebook/drawee/view/SimpleDraweeView;

    move-object/from16 v12, v16

    const/16 v16, 0xe

    aget-object v16, v0, v16

    check-cast v16, Landroid/widget/SeekBar;

    move-object/from16 v13, v16

    const/4 v3, 0x5

    aget-object v16, v0, v3

    check-cast v16, Lcom/facebook/drawee/view/SimpleDraweeView;

    move-object/from16 v14, v16

    const/16 v16, 0x0

    aget-object v16, v0, v16

    check-cast v16, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object/from16 v15, v16

    const/16 v16, 0x10

    aget-object v16, v0, v16

    check-cast v16, Landroid/widget/TextView;

    const/4 v3, 0x7

    aget-object v17, v0, v3

    check-cast v17, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;

    const/16 v3, 0x9

    aget-object v18, v0, v3

    check-cast v18, Lcom/shabakaty/cinemana/player/FastForwardRewindButton;

    const/16 v19, 0x16

    aget-object v19, v0, v19

    check-cast v19, Lcom/google/android/material/chip/ChipGroup;

    const/16 v20, 0x15

    aget-object v20, v0, v20

    check-cast v20, Landroid/widget/HorizontalScrollView;

    const/4 v3, 0x3

    aget-object v21, v0, v3

    check-cast v21, Lcom/facebook/drawee/view/SimpleDraweeView;

    const/16 v22, 0xb

    aget-object v22, v0, v22

    check-cast v22, Landroid/widget/Button;

    const/16 v23, 0xc

    aget-object v23, v0, v23

    check-cast v23, Landroid/widget/TextView;

    const/16 v3, 0xa

    aget-object v24, v0, v3

    check-cast v24, Landroid/widget/TextView;

    const/16 v25, 0xd

    aget-object v25, v0, v25

    check-cast v25, Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    move-object/from16 v26, v0

    check-cast v26, Landroid/widget/TextView;

    const/16 v0, 0xe

    move v3, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v26}, Lcom/shabakaty/downloader/p00;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/view/View;Lcom/shabakaty/cinemana/player/FastForwardRewindButton;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/SeekBar;Lcom/facebook/drawee/view/SimpleDraweeView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;Lcom/shabakaty/cinemana/player/FastForwardRewindButton;Lcom/google/android/material/chip/ChipGroup;Landroid/widget/HorizontalScrollView;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 3
    iput-wide v0, v2, Lcom/shabakaty/downloader/q00;->s0:J

    .line 4
    iget-object v0, v2, Lcom/shabakaty/downloader/p00;->N:Lcom/shabakaty/cinemana/player/FastForwardRewindButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v2, Lcom/shabakaty/downloader/p00;->P:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v2, Lcom/shabakaty/downloader/p00;->Q:Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v2, Lcom/shabakaty/downloader/p00;->R:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object v0, v2, Lcom/shabakaty/downloader/p00;->S:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object v0, v2, Lcom/shabakaty/downloader/p00;->T:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object v0, v2, Lcom/shabakaty/downloader/p00;->U:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object v0, v2, Lcom/shabakaty/downloader/p00;->V:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 12
    iget-object v0, v2, Lcom/shabakaty/downloader/p00;->X:Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object v0, v2, Lcom/shabakaty/downloader/p00;->Y:Lcom/shabakaty/cinemana/player/FastForwardRewindButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 14
    iget-object v0, v2, Lcom/shabakaty/downloader/p00;->a0:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 15
    iget-object v0, v2, Lcom/shabakaty/downloader/p00;->b0:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 16
    iget-object v0, v2, Lcom/shabakaty/downloader/p00;->c0:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 17
    iget-object v0, v2, Lcom/shabakaty/downloader/p00;->d0:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 18
    iget-object v0, v2, Lcom/shabakaty/downloader/p00;->e0:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 19
    iget-object v0, v2, Lcom/shabakaty/downloader/p00;->f0:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a0128

    move-object/from16 v1, p2

    .line 20
    invoke-virtual {v1, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 21
    new-instance v0, Lcom/shabakaty/downloader/lm0;

    const/4 v1, 0x3

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v0, v2, Lcom/shabakaty/downloader/q00;->i0:Lcom/shabakaty/downloader/mm0;

    .line 22
    new-instance v0, Lcom/shabakaty/downloader/lm0;

    const/4 v1, 0x6

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v0, v2, Lcom/shabakaty/downloader/q00;->j0:Lcom/shabakaty/downloader/mm0;

    .line 23
    new-instance v0, Lcom/shabakaty/downloader/lm0;

    const/4 v1, 0x4

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v0, v2, Lcom/shabakaty/downloader/q00;->k0:Lcom/shabakaty/downloader/mm0;

    .line 24
    new-instance v0, Lcom/shabakaty/downloader/lm0;

    const/16 v1, 0x8

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v0, v2, Lcom/shabakaty/downloader/q00;->l0:Lcom/shabakaty/downloader/mm0;

    .line 25
    new-instance v0, Lcom/shabakaty/downloader/lm0;

    const/4 v1, 0x7

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v0, v2, Lcom/shabakaty/downloader/q00;->m0:Lcom/shabakaty/downloader/mm0;

    .line 26
    new-instance v0, Lcom/shabakaty/downloader/lm0;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v0, v2, Lcom/shabakaty/downloader/q00;->n0:Lcom/shabakaty/downloader/mm0;

    .line 27
    new-instance v0, Lcom/shabakaty/downloader/lm0;

    const/4 v1, 0x2

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v0, v2, Lcom/shabakaty/downloader/q00;->o0:Lcom/shabakaty/downloader/mm0;

    .line 28
    new-instance v0, Lcom/shabakaty/downloader/lm0;

    const/16 v1, 0x9

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v0, v2, Lcom/shabakaty/downloader/q00;->p0:Lcom/shabakaty/downloader/mm0;

    .line 29
    new-instance v0, Lcom/shabakaty/downloader/lm0;

    const/4 v1, 0x5

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v0, v2, Lcom/shabakaty/downloader/q00;->q0:Lcom/shabakaty/downloader/mm0;

    .line 30
    new-instance v0, Lcom/shabakaty/downloader/lm0;

    const/16 v1, 0xa

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v0, v2, Lcom/shabakaty/downloader/q00;->r0:Lcom/shabakaty/downloader/mm0;

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/q00;->p()V

    return-void
.end method

.method public static ca1CleanPlayerTitle130(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    move-object v3, p0

    const-string v0, "(?i)\\s*\\[cnm-[a-z0-9]+\\]\\s*"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\s+"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :cond_1
    move-object v2, p0

    const-string v0, "(?i)\\s*[\\[(]\\s*(?:s(?:eason)?\\s*0*\\d{1,3})(?:\\s*[-._ ]*e(?:p(?:isode)?)?\\s*0*\\d{1,4})?\\s*[\\])]\\s*$"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "(?i)\\s*(?:[-\u2013\u2014|,:]\\s*)?s(?:eason)?\\s*0*\\d{1,3}(?:\\s*[-._ ]*e(?:p(?:isode)?)?\\s*0*\\d{1,4})?\\s*$"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\s*(?:[-\u2013\u2014|\u060c,:]\\s*)?\u0627\u0644\u0645\u0648\u0633\u0645\\s*[\u0660-\u06690-9]{1,3}(?:\\s*[-\u2013\u2014|\u060c,:]?\\s*\u0627\u0644\u062d\u0644\u0642\u0629\\s*[\u0660-\u06690-9]{1,4})?\\s*$"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "[\\s,\u060c;\u061b:|\\-\u2013\u2014_]+$"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    move-object p0, v3

    const-string v0, "(?i)\\s*\\[cnm-[a-z0-9]+\\]\\s*"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\s+"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method


# virtual methods
.method public D(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x10

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/ud3;

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/q00;->G(Lcom/shabakaty/downloader/ud3;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x26

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Lcom/shabakaty/downloader/q10;

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/q00;->H(Lcom/shabakaty/downloader/q10;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public G(Lcom/shabakaty/downloader/ud3;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/p00;->h0:Lcom/shabakaty/downloader/ud3;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/q00;->s0:J

    const-wide/16 v2, 0x4000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shabakaty/downloader/q00;->s0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x10

    .line 5
    invoke-virtual {p0, p1}, Landroidx/databinding/a;->f(I)V

    .line 6
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->x()V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public H(Lcom/shabakaty/downloader/q10;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/p00;->g0:Lcom/shabakaty/downloader/q10;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/q00;->s0:J

    const-wide/32 v2, 0x8000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shabakaty/downloader/q00;->s0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x26

    .line 5
    invoke-virtual {p0, p1}, Landroidx/databinding/a;->f(I)V

    .line 6
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->x()V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final d(ILandroid/view/View;)V
    .locals 1

    const/4 p2, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_a

    .line 1
    :pswitch_0
    iget-object p1, p0, Lcom/shabakaty/downloader/p00;->h0:Lcom/shabakaty/downloader/ud3;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_a

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/ud3;->r()V

    goto/16 :goto_a

    .line 3
    :pswitch_1
    iget-object p1, p0, Lcom/shabakaty/downloader/p00;->h0:Lcom/shabakaty/downloader/ud3;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_a

    .line 4
    invoke-interface {p1}, Lcom/shabakaty/downloader/ud3;->l()V

    goto/16 :goto_a

    .line 5
    :pswitch_2
    iget-object p1, p0, Lcom/shabakaty/downloader/p00;->h0:Lcom/shabakaty/downloader/ud3;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    :goto_2
    if-eqz p2, :cond_a

    .line 6
    invoke-interface {p1}, Lcom/shabakaty/downloader/ud3;->h()V

    goto :goto_a

    .line 7
    :pswitch_3
    iget-object p1, p0, Lcom/shabakaty/downloader/p00;->h0:Lcom/shabakaty/downloader/ud3;

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 p2, 0x0

    :goto_3
    if-eqz p2, :cond_a

    .line 8
    invoke-interface {p1}, Lcom/shabakaty/downloader/ud3;->g()V

    goto :goto_a

    .line 9
    :pswitch_4
    iget-object p1, p0, Lcom/shabakaty/downloader/p00;->h0:Lcom/shabakaty/downloader/ud3;

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    const/4 p2, 0x0

    :goto_4
    if-eqz p2, :cond_a

    .line 10
    invoke-interface {p1}, Lcom/shabakaty/downloader/ud3;->a()V

    goto :goto_a

    .line 11
    :pswitch_5
    iget-object p1, p0, Lcom/shabakaty/downloader/p00;->h0:Lcom/shabakaty/downloader/ud3;

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    const/4 p2, 0x0

    :goto_5
    if-eqz p2, :cond_a

    .line 12
    invoke-interface {p1}, Lcom/shabakaty/downloader/ud3;->k()V

    goto :goto_a

    .line 13
    :pswitch_6
    iget-object p1, p0, Lcom/shabakaty/downloader/p00;->h0:Lcom/shabakaty/downloader/ud3;

    if-eqz p1, :cond_6

    goto :goto_6

    :cond_6
    const/4 p2, 0x0

    :goto_6
    if-eqz p2, :cond_a

    .line 14
    invoke-interface {p1}, Lcom/shabakaty/downloader/ud3;->e()V

    goto :goto_a

    .line 15
    :pswitch_7
    iget-object p1, p0, Lcom/shabakaty/downloader/p00;->h0:Lcom/shabakaty/downloader/ud3;

    if-eqz p1, :cond_7

    goto :goto_7

    :cond_7
    const/4 p2, 0x0

    :goto_7
    if-eqz p2, :cond_a

    .line 16
    invoke-interface {p1}, Lcom/shabakaty/downloader/ud3;->d()V

    goto :goto_a

    .line 17
    :pswitch_8
    iget-object p1, p0, Lcom/shabakaty/downloader/p00;->h0:Lcom/shabakaty/downloader/ud3;

    if-eqz p1, :cond_8

    goto :goto_8

    :cond_8
    const/4 p2, 0x0

    :goto_8
    if-eqz p2, :cond_a

    .line 18
    invoke-interface {p1}, Lcom/shabakaty/downloader/ud3;->c()V

    goto :goto_a

    .line 19
    :pswitch_9
    iget-object p1, p0, Lcom/shabakaty/downloader/p00;->h0:Lcom/shabakaty/downloader/ud3;

    if-eqz p1, :cond_9

    goto :goto_9

    :cond_9
    const/4 p2, 0x0

    :goto_9
    if-eqz p2, :cond_a

    .line 20
    invoke-interface {p1}, Lcom/shabakaty/downloader/ud3;->j()V

    :cond_a
    :goto_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public i()V
    .locals 69

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/shabakaty/downloader/q00;->s0:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/shabakaty/downloader/q00;->s0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/shabakaty/downloader/p00;->g0:Lcom/shabakaty/downloader/q10;

    const-wide/32 v6, 0x1bfff

    and-long/2addr v6, v2

    const-wide/32 v12, 0x18020

    const-wide/32 v14, 0x18008

    const-wide/32 v16, 0x18210

    const-wide/32 v18, 0x18004

    const-wide/32 v20, 0x18002

    const-wide/32 v22, 0x40000

    const-wide/32 v24, 0x18001

    const-wide/32 v26, 0x18200

    const-wide v28, 0x400000000L

    const-wide/32 v30, 0x4000000

    const-wide/32 v32, 0x18600

    const-wide/32 v34, 0x19000

    const-wide/32 v36, 0x1a000

    const-wide/32 v38, 0x18800

    const-wide/32 v40, 0x18400

    const-wide/32 v42, 0x18100

    const/16 v46, 0x0

    const/4 v9, 0x0

    cmp-long v48, v6, v4

    if-eqz v48, :cond_39

    and-long v6, v2, v24

    cmp-long v48, v6, v4

    if-eqz v48, :cond_1

    if-eqz v0, :cond_0

    .line 6
    iget-object v6, v0, Lcom/shabakaty/downloader/q10;->A:Lcom/shabakaty/downloader/xv2;

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 7
    :goto_0
    invoke-virtual {v1, v9, v6}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v6, :cond_1

    .line 8
    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    and-long v48, v2, v20

    cmp-long v7, v48, v4

    if-eqz v7, :cond_3

    if-eqz v0, :cond_2

    .line 9
    iget-object v7, v0, Lcom/shabakaty/downloader/q10;->s:Lcom/shabakaty/downloader/xv2;

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    const/4 v9, 0x1

    .line 10
    invoke-virtual {v1, v9, v7}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v7, :cond_3

    .line 11
    invoke-virtual {v7}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    and-long v49, v2, v18

    cmp-long v9, v49, v4

    if-eqz v9, :cond_9

    if-eqz v0, :cond_4

    .line 12
    iget-object v8, v0, Lcom/shabakaty/downloader/q10;->C:Lcom/shabakaty/downloader/xv2;

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    :goto_4
    const/4 v10, 0x2

    .line 13
    invoke-virtual {v1, v10, v8}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v8, :cond_5

    .line 14
    invoke-virtual {v8}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    goto :goto_5

    :cond_5
    const/4 v8, 0x0

    .line 15
    :goto_5
    invoke-static {v8}, Landroidx/databinding/ViewDataBinding;->A(Ljava/lang/Boolean;)Z

    move-result v10

    if-eqz v9, :cond_7

    if-eqz v10, :cond_6

    const-wide v51, 0x1000000000L

    goto :goto_6

    :cond_6
    const-wide v51, 0x800000000L

    :goto_6
    or-long v2, v2, v51

    :cond_7
    if-eqz v10, :cond_8

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_8
    const v9, 0x3e99999a    # 0.3f

    :goto_7
    move/from16 v46, v9

    goto :goto_8

    :cond_9
    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_8
    and-long v51, v2, v14

    cmp-long v9, v51, v4

    if-eqz v9, :cond_f

    if-eqz v0, :cond_a

    .line 16
    iget-object v11, v0, Lcom/shabakaty/downloader/q10;->G:Lcom/shabakaty/downloader/xv2;

    goto :goto_9

    :cond_a
    const/4 v11, 0x0

    :goto_9
    const/4 v14, 0x3

    .line 17
    invoke-virtual {v1, v14, v11}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v11, :cond_b

    .line 18
    invoke-virtual {v11}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    goto :goto_a

    :cond_b
    const/4 v11, 0x0

    .line 19
    :goto_a
    invoke-static {v11}, Landroidx/databinding/ViewDataBinding;->A(Ljava/lang/Boolean;)Z

    move-result v11

    if-eqz v9, :cond_d

    if-eqz v11, :cond_c

    const-wide/32 v14, 0x10000000

    goto :goto_b

    :cond_c
    const-wide/32 v14, 0x8000000

    :goto_b
    or-long/2addr v2, v14

    :cond_d
    if-eqz v11, :cond_e

    .line 20
    iget-object v9, v1, Lcom/shabakaty/downloader/p00;->e0:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f120282

    goto :goto_c

    :cond_e
    iget-object v9, v1, Lcom/shabakaty/downloader/p00;->e0:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f120283

    :goto_c
    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_d

    :cond_f
    const/4 v9, 0x0

    :goto_d
    and-long v14, v2, v12

    cmp-long v11, v14, v4

    if-eqz v11, :cond_11

    if-eqz v0, :cond_10

    .line 21
    iget-object v11, v0, Lcom/shabakaty/downloader/q10;->t:Lcom/shabakaty/downloader/xv2;

    goto :goto_e

    :cond_10
    const/4 v11, 0x0

    :goto_e
    const/4 v14, 0x5

    .line 22
    invoke-virtual {v1, v14, v11}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v11, :cond_11

    .line 23
    invoke-virtual {v11}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    goto :goto_f

    :cond_11
    const/4 v11, 0x0

    :goto_f
    const-wide/32 v14, 0x18040

    and-long v53, v2, v14

    cmp-long v14, v53, v4

    if-eqz v14, :cond_14

    if-eqz v0, :cond_12

    .line 24
    iget-object v14, v0, Lcom/shabakaty/downloader/q10;->w:Lcom/shabakaty/downloader/xv2;

    goto :goto_10

    :cond_12
    const/4 v14, 0x0

    :goto_10
    const/4 v15, 0x6

    .line 25
    invoke-virtual {v1, v15, v14}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v14, :cond_13

    .line 26
    invoke-virtual {v14}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    goto :goto_11

    :cond_13
    const/4 v14, 0x0

    :goto_11
    if-eqz v14, :cond_14

    .line 27
    invoke-virtual {v14}, Ljava/lang/Long;->intValue()I

    move-result v14

    goto :goto_12

    :cond_14
    const/4 v14, 0x0

    :goto_12
    const-wide/32 v44, 0x18080

    and-long v53, v2, v44

    cmp-long v15, v53, v4

    if-eqz v15, :cond_1b

    if-eqz v0, :cond_15

    .line 28
    iget-object v12, v0, Lcom/shabakaty/downloader/q10;->y:Lcom/shabakaty/downloader/xv2;

    goto :goto_13

    :cond_15
    const/4 v12, 0x0

    :goto_13
    const/4 v13, 0x7

    .line 29
    invoke-virtual {v1, v13, v12}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v12, :cond_16

    .line 30
    invoke-virtual {v12}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    goto :goto_14

    :cond_16
    const/4 v12, 0x0

    .line 31
    :goto_14
    invoke-static {v12}, Landroidx/databinding/ViewDataBinding;->A(Ljava/lang/Boolean;)Z

    move-result v12

    if-eqz v15, :cond_18

    if-eqz v12, :cond_17

    const-wide/32 v55, 0x100000

    or-long v2, v2, v55

    const-wide/32 v55, 0x1000000

    goto :goto_15

    :cond_17
    const-wide/32 v55, 0x80000

    or-long v2, v2, v55

    const-wide/32 v55, 0x800000

    :goto_15
    or-long v2, v2, v55

    :cond_18
    if-eqz v12, :cond_19

    .line 32
    iget-object v13, v1, Lcom/shabakaty/downloader/p00;->R:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v15, 0x7f120262

    goto :goto_16

    :cond_19
    iget-object v13, v1, Lcom/shabakaty/downloader/p00;->R:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v15, 0x7f1201f3

    :goto_16
    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 33
    iget-object v15, v1, Lcom/shabakaty/downloader/p00;->R:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v15

    if-eqz v12, :cond_1a

    const v12, 0x7f080237

    goto :goto_17

    :cond_1a
    const v12, 0x7f080236

    :goto_17
    invoke-static {v15, v12}, Lcom/shabakaty/downloader/ra;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    goto :goto_18

    :cond_1b
    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_18
    and-long v55, v2, v42

    cmp-long v15, v55, v4

    if-eqz v15, :cond_1e

    if-eqz v0, :cond_1c

    .line 34
    iget-object v15, v0, Lcom/shabakaty/downloader/q10;->F:Lcom/shabakaty/downloader/xv2;

    const/16 v4, 0x8

    goto :goto_19

    :cond_1c
    const/16 v4, 0x8

    const/4 v15, 0x0

    .line 35
    :goto_19
    invoke-virtual {v1, v4, v15}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v15, :cond_1d

    .line 36
    invoke-virtual {v15}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    goto :goto_1a

    :cond_1d
    const/4 v5, 0x0

    :goto_1a
    if-eqz v5, :cond_1f

    .line 37
    invoke-virtual {v5}, Ljava/lang/Long;->intValue()I

    move-result v5

    goto :goto_1b

    :cond_1e
    const/16 v4, 0x8

    :cond_1f
    const/4 v5, 0x0

    :goto_1b
    const-wide/32 v57, 0x18610

    and-long v57, v2, v57

    const-wide/16 v55, 0x0

    cmp-long v15, v57, v55

    if-eqz v15, :cond_29

    if-eqz v0, :cond_20

    .line 38
    iget-object v15, v0, Lcom/shabakaty/downloader/q10;->D:Lcom/shabakaty/downloader/xv2;

    goto :goto_1c

    :cond_20
    const/4 v15, 0x0

    :goto_1c
    const/16 v4, 0x9

    .line 39
    invoke-virtual {v1, v4, v15}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v15, :cond_21

    .line 40
    invoke-virtual {v15}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    goto :goto_1d

    :cond_21
    const/4 v4, 0x0

    .line 41
    :goto_1d
    invoke-static {v4}, Landroidx/databinding/ViewDataBinding;->A(Ljava/lang/Boolean;)Z

    move-result v15

    and-long v57, v2, v32

    const-wide/16 v55, 0x0

    cmp-long v59, v57, v55

    if-eqz v59, :cond_23

    if-eqz v15, :cond_22

    or-long v2, v2, v22

    goto :goto_1e

    :cond_22
    const-wide/32 v57, 0x20000

    or-long v2, v2, v57

    :cond_23
    :goto_1e
    and-long v57, v2, v16

    cmp-long v59, v57, v55

    if-eqz v59, :cond_25

    if-eqz v15, :cond_24

    or-long v2, v2, v30

    or-long v2, v2, v28

    goto :goto_1f

    :cond_24
    const-wide/32 v57, 0x2000000

    or-long v2, v2, v57

    const-wide v57, 0x200000000L

    or-long v2, v2, v57

    :cond_25
    :goto_1f
    and-long v57, v2, v26

    const-wide/16 v55, 0x0

    cmp-long v59, v57, v55

    if-eqz v59, :cond_27

    if-eqz v15, :cond_26

    const-wide v57, 0x4000000000L

    goto :goto_20

    :cond_26
    const-wide v57, 0x2000000000L

    :goto_20
    or-long v2, v2, v57

    :cond_27
    and-long v57, v2, v26

    cmp-long v59, v57, v55

    if-eqz v59, :cond_2a

    if-eqz v15, :cond_28

    goto :goto_21

    :cond_28
    const/16 v57, 0x8

    goto :goto_22

    :cond_29
    const-wide/16 v55, 0x0

    const/4 v4, 0x0

    const/4 v15, 0x0

    :cond_2a
    :goto_21
    const/16 v57, 0x0

    :goto_22
    and-long v58, v2, v40

    cmp-long v60, v58, v55

    if-eqz v60, :cond_2e

    if-eqz v0, :cond_2b

    move-object/from16 v58, v4

    .line 42
    iget-object v4, v0, Lcom/shabakaty/downloader/q10;->z:Lcom/shabakaty/downloader/xv2;

    move/from16 v59, v5

    goto :goto_23

    :cond_2b
    move-object/from16 v58, v4

    move/from16 v59, v5

    const/4 v4, 0x0

    :goto_23
    const/16 v5, 0xa

    .line 43
    invoke-virtual {v1, v5, v4}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v4, :cond_2c

    .line 44
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    goto :goto_24

    :cond_2c
    const/4 v5, 0x0

    :goto_24
    if-eqz v5, :cond_2d

    .line 45
    invoke-virtual {v5}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->c()Ljava/lang/String;

    move-result-object v60

    move-object/from16 v61, v4

    .line 46
    iget-object v4, v5, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->kind:Ljava/lang/String;

    goto :goto_25

    :cond_2d
    move-object/from16 v61, v4

    const/4 v4, 0x0

    const/16 v60, 0x0

    goto :goto_25

    :cond_2e
    move-object/from16 v58, v4

    move/from16 v59, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    :goto_25
    and-long v62, v2, v38

    const-wide/16 v55, 0x0

    cmp-long v64, v62, v55

    if-eqz v64, :cond_31

    if-eqz v0, :cond_2f

    move-object/from16 v62, v4

    .line 47
    iget-object v4, v0, Lcom/shabakaty/downloader/q10;->E:Lcom/shabakaty/downloader/xv2;

    move-object/from16 v63, v5

    goto :goto_26

    :cond_2f
    move-object/from16 v62, v4

    move-object/from16 v63, v5

    const/4 v4, 0x0

    :goto_26
    const/16 v5, 0xb

    .line 48
    invoke-virtual {v1, v5, v4}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v4, :cond_30

    .line 49
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    goto :goto_27

    :cond_30
    const/4 v4, 0x0

    :goto_27
    if-eqz v4, :cond_32

    .line 50
    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v4

    goto :goto_28

    :cond_31
    move-object/from16 v62, v4

    move-object/from16 v63, v5

    :cond_32
    const/4 v4, 0x0

    :goto_28
    and-long v64, v2, v34

    const-wide/16 v55, 0x0

    cmp-long v5, v64, v55

    if-eqz v5, :cond_34

    if-eqz v0, :cond_33

    .line 51
    iget-object v5, v0, Lcom/shabakaty/downloader/q10;->u:Lcom/shabakaty/downloader/xv2;

    move/from16 v64, v4

    goto :goto_29

    :cond_33
    move/from16 v64, v4

    const/4 v5, 0x0

    :goto_29
    const/16 v4, 0xc

    .line 52
    invoke-virtual {v1, v4, v5}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v5, :cond_35

    .line 53
    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_2a

    :cond_34
    move/from16 v64, v4

    :cond_35
    const/4 v4, 0x0

    :goto_2a
    and-long v65, v2, v36

    const-wide/16 v55, 0x0

    cmp-long v5, v65, v55

    if-eqz v5, :cond_37

    if-eqz v0, :cond_36

    .line 54
    iget-object v5, v0, Lcom/shabakaty/downloader/q10;->v:Lcom/shabakaty/downloader/xv2;

    move-wide/from16 v65, v2

    goto :goto_2b

    :cond_36
    move-wide/from16 v65, v2

    const/4 v5, 0x0

    :goto_2b
    const/16 v2, 0xd

    .line 55
    invoke-virtual {v1, v2, v5}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v5, :cond_38

    .line 56
    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v5, v58

    move/from16 v58, v15

    move-object v15, v12

    move-object v12, v13

    move v13, v10

    move-object v10, v7

    move v7, v14

    move/from16 v14, v57

    move-object/from16 v57, v4

    move/from16 v4, v46

    move-object/from16 v46, v9

    move-object v9, v6

    move-object/from16 v6, v60

    move-object/from16 v60, v11

    move-object v11, v8

    move/from16 v8, v59

    move-object/from16 v59, v2

    move-wide/from16 v2, v65

    goto :goto_2c

    :cond_37
    move-wide/from16 v65, v2

    :cond_38
    move-object/from16 v5, v58

    move-wide/from16 v2, v65

    move/from16 v58, v15

    move-object v15, v12

    move-object v12, v13

    move v13, v10

    move-object v10, v7

    move v7, v14

    move/from16 v14, v57

    move-object/from16 v57, v4

    move/from16 v4, v46

    move-object/from16 v46, v9

    move-object v9, v6

    move-object/from16 v6, v60

    move-object/from16 v60, v11

    move-object v11, v8

    move/from16 v8, v59

    const/16 v59, 0x0

    goto :goto_2c

    :cond_39
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v46, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    :goto_2c
    const-wide v65, 0x404000000L

    and-long v65, v2, v65

    const-wide/16 v55, 0x0

    cmp-long v67, v65, v55

    if-eqz v67, :cond_43

    if-eqz v0, :cond_3a

    move/from16 v65, v7

    .line 57
    iget-object v7, v0, Lcom/shabakaty/downloader/q10;->x:Lcom/shabakaty/downloader/xv2;

    move/from16 v66, v8

    goto :goto_2d

    :cond_3a
    move/from16 v65, v7

    move/from16 v66, v8

    const/4 v7, 0x0

    :goto_2d
    const/4 v8, 0x4

    .line 58
    invoke-virtual {v1, v8, v7}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v7, :cond_3b

    .line 59
    invoke-virtual {v7}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    goto :goto_2e

    :cond_3b
    const/4 v7, 0x0

    .line 60
    :goto_2e
    invoke-static {v7}, Landroidx/databinding/ViewDataBinding;->A(Ljava/lang/Boolean;)Z

    move-result v7

    and-long v67, v2, v30

    const-wide/16 v55, 0x0

    cmp-long v8, v67, v55

    if-eqz v8, :cond_3d

    if-eqz v7, :cond_3c

    const-wide/32 v67, 0x40000000

    goto :goto_2f

    :cond_3c
    const-wide/32 v67, 0x20000000

    :goto_2f
    or-long v2, v2, v67

    :cond_3d
    and-long v67, v2, v28

    cmp-long v8, v67, v55

    if-eqz v8, :cond_3f

    if-eqz v7, :cond_3e

    const-wide v67, 0x100000000L

    goto :goto_30

    :cond_3e
    const-wide v67, 0x80000000L

    :goto_30
    or-long v2, v2, v67

    :cond_3f
    and-long v30, v2, v30

    cmp-long v8, v30, v55

    if-eqz v8, :cond_40

    if-eqz v7, :cond_40

    const/16 v8, 0x8

    goto :goto_31

    :cond_40
    const/4 v8, 0x0

    :goto_31
    and-long v28, v2, v28

    cmp-long v30, v28, v55

    if-eqz v30, :cond_42

    if-eqz v7, :cond_41

    goto :goto_32

    :cond_41
    const/16 v7, 0x8

    goto :goto_33

    :cond_42
    :goto_32
    const/4 v7, 0x0

    goto :goto_33

    :cond_43
    move/from16 v65, v7

    move/from16 v66, v8

    const-wide/16 v55, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_33
    and-long v22, v2, v22

    cmp-long v28, v22, v55

    if-eqz v28, :cond_48

    if-eqz v0, :cond_44

    .line 61
    iget-object v0, v0, Lcom/shabakaty/downloader/q10;->z:Lcom/shabakaty/downloader/xv2;

    move/from16 v22, v7

    goto :goto_34

    :cond_44
    move/from16 v22, v7

    move-object/from16 v0, v61

    :goto_34
    const/16 v7, 0xa

    .line 62
    invoke-virtual {v1, v7, v0}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v0, :cond_45

    .line 63
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v63, v0

    check-cast v63, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    :cond_45
    move-object/from16 v0, v63

    if-eqz v0, :cond_46

    .line 64
    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->kind:Ljava/lang/String;

    goto :goto_35

    :cond_46
    move-object/from16 v0, v62

    :goto_35
    if-eqz v0, :cond_47

    const-string v7, "2"

    .line 65
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_37

    :cond_47
    move-object/from16 v62, v0

    goto :goto_36

    :cond_48
    move/from16 v22, v7

    :goto_36
    move-object/from16 v0, v62

    const/4 v7, 0x0

    :goto_37
    and-long v28, v2, v32

    const-wide/16 v30, 0x0

    cmp-long v23, v28, v30

    if-eqz v23, :cond_4d

    if-eqz v58, :cond_49

    goto :goto_38

    :cond_49
    const/4 v7, 0x0

    :goto_38
    if-eqz v23, :cond_4b

    if-eqz v7, :cond_4a

    const-wide/32 v28, 0x400000

    goto :goto_39

    :cond_4a
    const-wide/32 v28, 0x200000

    :goto_39
    or-long v2, v2, v28

    :cond_4b
    if-eqz v7, :cond_4c

    goto :goto_3a

    :cond_4c
    const/16 v7, 0x8

    goto :goto_3b

    :cond_4d
    :goto_3a
    const/4 v7, 0x0

    :goto_3b
    and-long v16, v2, v16

    const-wide/16 v28, 0x0

    cmp-long v23, v16, v28

    if-eqz v23, :cond_50

    if-eqz v58, :cond_4e

    goto :goto_3c

    :cond_4e
    const/16 v8, 0x8

    :goto_3c
    if-eqz v58, :cond_4f

    move/from16 v47, v22

    goto :goto_3d

    :cond_4f
    const/16 v47, 0x8

    :goto_3d
    move/from16 v16, v7

    move/from16 v7, v47

    goto :goto_3e

    :cond_50
    move/from16 v16, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_3e
    const-wide/32 v28, 0x10000

    and-long v28, v2, v28

    const-wide/16 v30, 0x0

    cmp-long v17, v28, v30

    if-eqz v17, :cond_51

    move-object/from16 v17, v15

    .line 66
    iget-object v15, v1, Lcom/shabakaty/downloader/p00;->N:Lcom/shabakaty/cinemana/player/FastForwardRewindButton;

    move-object/from16 v22, v12

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    move/from16 v28, v7

    const v7, 0x7f12012a

    invoke-virtual {v12, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Lcom/shabakaty/downloader/nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 67
    iget-object v7, v1, Lcom/shabakaty/downloader/p00;->N:Lcom/shabakaty/cinemana/player/FastForwardRewindButton;

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v12}, Lcom/shabakaty/cinemana/player/FastForwardRewindButton;->setIsFastForward(Ljava/lang/Boolean;)V

    .line 68
    iget-object v7, v1, Lcom/shabakaty/downloader/p00;->N:Lcom/shabakaty/cinemana/player/FastForwardRewindButton;

    iget-object v15, v1, Lcom/shabakaty/downloader/q00;->q0:Lcom/shabakaty/downloader/mm0;

    move/from16 v29, v8

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v7, v15, v8}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    .line 69
    iget-object v7, v1, Lcom/shabakaty/downloader/p00;->Q:Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v30, v6

    const v6, 0x7f1201d4

    invoke-virtual {v15, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/shabakaty/downloader/nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 70
    iget-object v6, v1, Lcom/shabakaty/downloader/p00;->Q:Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;

    invoke-virtual {v6, v12}, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->setIsNext(Ljava/lang/Boolean;)V

    .line 71
    iget-object v6, v1, Lcom/shabakaty/downloader/p00;->Q:Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;

    iget-object v7, v1, Lcom/shabakaty/downloader/q00;->m0:Lcom/shabakaty/downloader/mm0;

    invoke-static {v6, v7, v8}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    .line 72
    iget-object v6, v1, Lcom/shabakaty/downloader/p00;->R:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v7, v1, Lcom/shabakaty/downloader/q00;->i0:Lcom/shabakaty/downloader/mm0;

    invoke-static {v6, v7, v8}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    .line 73
    iget-object v6, v1, Lcom/shabakaty/downloader/p00;->S:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v7, v1, Lcom/shabakaty/downloader/q00;->n0:Lcom/shabakaty/downloader/mm0;

    const/4 v12, 0x0

    invoke-static {v6, v7, v12}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    .line 74
    iget-object v6, v1, Lcom/shabakaty/downloader/p00;->T:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v12, 0x7f12024e

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/shabakaty/downloader/nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 75
    iget-object v6, v1, Lcom/shabakaty/downloader/p00;->U:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v12, 0x7f120213

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/shabakaty/downloader/nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 76
    iget-object v6, v1, Lcom/shabakaty/downloader/p00;->U:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v7, v1, Lcom/shabakaty/downloader/q00;->k0:Lcom/shabakaty/downloader/mm0;

    invoke-static {v6, v7, v8}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    .line 77
    iget-object v6, v1, Lcom/shabakaty/downloader/p00;->X:Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v12, 0x7f1201fe

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/shabakaty/downloader/nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 78
    iget-object v6, v1, Lcom/shabakaty/downloader/p00;->X:Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;

    invoke-virtual {v6, v8}, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->setIsNext(Ljava/lang/Boolean;)V

    .line 79
    iget-object v6, v1, Lcom/shabakaty/downloader/p00;->X:Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;

    iget-object v7, v1, Lcom/shabakaty/downloader/q00;->j0:Lcom/shabakaty/downloader/mm0;

    invoke-static {v6, v7, v8}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    .line 80
    iget-object v6, v1, Lcom/shabakaty/downloader/p00;->Y:Lcom/shabakaty/cinemana/player/FastForwardRewindButton;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v12, 0x7f12023e

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/shabakaty/downloader/nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 81
    iget-object v6, v1, Lcom/shabakaty/downloader/p00;->Y:Lcom/shabakaty/cinemana/player/FastForwardRewindButton;

    invoke-virtual {v6, v8}, Lcom/shabakaty/cinemana/player/FastForwardRewindButton;->setIsFastForward(Ljava/lang/Boolean;)V

    .line 82
    iget-object v6, v1, Lcom/shabakaty/downloader/p00;->Y:Lcom/shabakaty/cinemana/player/FastForwardRewindButton;

    iget-object v7, v1, Lcom/shabakaty/downloader/q00;->l0:Lcom/shabakaty/downloader/mm0;

    invoke-static {v6, v7, v8}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    .line 83
    iget-object v6, v1, Lcom/shabakaty/downloader/p00;->a0:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v12, 0x7f12024f

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/shabakaty/downloader/nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 84
    iget-object v6, v1, Lcom/shabakaty/downloader/p00;->a0:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v7, v1, Lcom/shabakaty/downloader/q00;->o0:Lcom/shabakaty/downloader/mm0;

    const/4 v12, 0x0

    invoke-static {v6, v7, v12}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    .line 85
    iget-object v6, v1, Lcom/shabakaty/downloader/p00;->b0:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v12, 0x7f12025e

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 86
    iget-object v6, v1, Lcom/shabakaty/downloader/p00;->b0:Landroid/widget/Button;

    iget-object v7, v1, Lcom/shabakaty/downloader/q00;->p0:Lcom/shabakaty/downloader/mm0;

    invoke-static {v6, v7, v8}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    .line 87
    iget-object v6, v1, Lcom/shabakaty/downloader/p00;->e0:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v7, v1, Lcom/shabakaty/downloader/q00;->r0:Lcom/shabakaty/downloader/mm0;

    invoke-static {v6, v7, v8}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    goto :goto_3f

    :cond_51
    move-object/from16 v30, v6

    move/from16 v28, v7

    move/from16 v29, v8

    move-object/from16 v22, v12

    move-object/from16 v17, v15

    :goto_3f
    and-long v6, v2, v26

    const-wide/16 v26, 0x0

    cmp-long v8, v6, v26

    if-eqz v8, :cond_52

    .line 88
    iget-object v6, v1, Lcom/shabakaty/downloader/p00;->N:Lcom/shabakaty/cinemana/player/FastForwardRewindButton;

    invoke-virtual {v6, v5}, Lcom/shabakaty/cinemana/player/FastForwardRewindButton;->setInnerEpisodesHidden(Ljava/lang/Boolean;)V

    .line 89
    iget-object v6, v1, Lcom/shabakaty/downloader/p00;->Q:Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;

    invoke-virtual {v6, v5}, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->setInnerEpisodesHidden(Ljava/lang/Boolean;)V

    .line 90
    iget-object v6, v1, Lcom/shabakaty/downloader/p00;->X:Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;

    invoke-virtual {v6, v5}, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->setInnerEpisodesHidden(Ljava/lang/Boolean;)V

    .line 91
    iget-object v6, v1, Lcom/shabakaty/downloader/p00;->Y:Lcom/shabakaty/cinemana/player/FastForwardRewindButton;

    invoke-virtual {v6, v5}, Lcom/shabakaty/cinemana/player/FastForwardRewindButton;->setInnerEpisodesHidden(Ljava/lang/Boolean;)V

    .line 92
    iget-object v5, v1, Lcom/shabakaty/downloader/p00;->a0:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_52
    and-long v5, v2, v18

    const-wide/16 v7, 0x0

    cmp-long v12, v5, v7

    if-eqz v12, :cond_53

    .line 93
    iget-object v5, v1, Lcom/shabakaty/downloader/p00;->N:Lcom/shabakaty/cinemana/player/FastForwardRewindButton;

    invoke-virtual {v5, v11}, Lcom/shabakaty/cinemana/player/FastForwardRewindButton;->setPlayerReady(Ljava/lang/Boolean;)V

    .line 94
    iget-object v5, v1, Lcom/shabakaty/downloader/p00;->Q:Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;

    invoke-virtual {v5, v11}, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->setPlayerReady(Ljava/lang/Boolean;)V

    .line 95
    iget-object v5, v1, Lcom/shabakaty/downloader/p00;->T:Landroid/widget/SeekBar;

    invoke-virtual {v5, v13}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 96
    iget-object v5, v1, Lcom/shabakaty/downloader/p00;->X:Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;

    invoke-virtual {v5, v11}, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->setPlayerReady(Ljava/lang/Boolean;)V

    .line 97
    iget-object v5, v1, Lcom/shabakaty/downloader/p00;->Y:Lcom/shabakaty/cinemana/player/FastForwardRewindButton;

    invoke-virtual {v5, v11}, Lcom/shabakaty/cinemana/player/FastForwardRewindButton;->setPlayerReady(Ljava/lang/Boolean;)V

    .line 98
    iget-object v5, v1, Lcom/shabakaty/downloader/p00;->b0:Landroid/widget/Button;

    invoke-virtual {v5, v13}, Landroid/widget/Button;->setEnabled(Z)V

    .line 99
    sget v5, Landroidx/databinding/ViewDataBinding;->G:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_53

    .line 100
    iget-object v5, v1, Lcom/shabakaty/downloader/p00;->T:Landroid/widget/SeekBar;

    invoke-virtual {v5, v4}, Landroid/widget/SeekBar;->setAlpha(F)V

    :cond_53
    and-long v4, v2, v24

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_54

    .line 101
    iget-object v4, v1, Lcom/shabakaty/downloader/p00;->P:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v5, 0x0

    invoke-static {v4, v9, v5, v5}, Lcom/shabakaty/downloader/fo3;->a(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;Ljava/lang/Integer;Lcom/shabakaty/downloader/tj$a;)V

    :cond_54
    and-long v4, v2, v20

    cmp-long v8, v4, v6

    if-eqz v8, :cond_55

    .line 102
    iget-object v4, v1, Lcom/shabakaty/downloader/p00;->Q:Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;

    invoke-virtual {v4, v10}, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->setHasNextEpisode(Ljava/lang/Boolean;)V

    :cond_55
    and-long v4, v2, v40

    cmp-long v8, v4, v6

    if-eqz v8, :cond_56

    .line 103
    iget-object v4, v1, Lcom/shabakaty/downloader/p00;->Q:Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;

    invoke-virtual {v4, v0}, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->setKind(Ljava/lang/String;)V

    .line 104
    iget-object v4, v1, Lcom/shabakaty/downloader/p00;->X:Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;

    invoke-virtual {v4, v0}, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->setKind(Ljava/lang/String;)V

    .line 105
    iget-object v0, v1, Lcom/shabakaty/downloader/p00;->f0:Landroid/widget/TextView;

    move-object/from16 v4, v30

    invoke-static {v4}, Lcom/shabakaty/downloader/q00;->ca1CleanPlayerTitle130(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_56
    if-eqz v23, :cond_57

    .line 106
    iget-object v0, v1, Lcom/shabakaty/downloader/p00;->R:Lcom/facebook/drawee/view/SimpleDraweeView;

    move/from16 v8, v29

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    iget-object v0, v1, Lcom/shabakaty/downloader/p00;->U:Lcom/facebook/drawee/view/SimpleDraweeView;

    move/from16 v4, v28

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_57
    const-wide/32 v4, 0x18080

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_58

    .line 108
    iget-object v0, v1, Lcom/shabakaty/downloader/p00;->R:Lcom/facebook/drawee/view/SimpleDraweeView;

    move-object/from16 v13, v22

    invoke-static {v0, v13}, Lcom/shabakaty/downloader/nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, v1, Lcom/shabakaty/downloader/p00;->R:Lcom/facebook/drawee/view/SimpleDraweeView;

    move-object/from16 v12, v17

    invoke-static {v0, v12}, Lcom/shabakaty/downloader/oy1;->d(Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/graphics/drawable/Drawable;)V

    :cond_58
    and-long v4, v2, v32

    cmp-long v0, v4, v6

    if-eqz v0, :cond_59

    .line 110
    iget-object v0, v1, Lcom/shabakaty/downloader/p00;->S:Lcom/facebook/drawee/view/SimpleDraweeView;

    move/from16 v4, v16

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_59
    and-long v4, v2, v42

    cmp-long v0, v4, v6

    if-eqz v0, :cond_5a

    .line 111
    iget-object v0, v1, Lcom/shabakaty/downloader/p00;->T:Landroid/widget/SeekBar;

    move/from16 v4, v66

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setMax(I)V

    :cond_5a
    const-wide/32 v4, 0x18040

    and-long/2addr v4, v2

    cmp-long v0, v4, v6

    if-eqz v0, :cond_5b

    .line 112
    iget-object v0, v1, Lcom/shabakaty/downloader/p00;->T:Landroid/widget/SeekBar;

    .line 113
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    move/from16 v14, v65

    if-eq v14, v4, :cond_5b

    .line 114
    invoke-virtual {v0, v14}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_5b
    and-long v4, v2, v38

    cmp-long v0, v4, v6

    if-eqz v0, :cond_5c

    .line 115
    iget-object v0, v1, Lcom/shabakaty/downloader/p00;->T:Landroid/widget/SeekBar;

    move/from16 v4, v64

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    :cond_5c
    const-wide/32 v4, 0x18020

    and-long/2addr v4, v2

    cmp-long v0, v4, v6

    if-eqz v0, :cond_5d

    .line 116
    iget-object v0, v1, Lcom/shabakaty/downloader/p00;->X:Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;

    move-object/from16 v11, v60

    invoke-virtual {v0, v11}, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->setHasPreviousEpisode(Ljava/lang/Boolean;)V

    :cond_5d
    and-long v4, v2, v36

    cmp-long v0, v4, v6

    if-eqz v0, :cond_5e

    .line 117
    iget-object v0, v1, Lcom/shabakaty/downloader/p00;->c0:Landroid/widget/TextView;

    move-object/from16 v4, v59

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_5e
    and-long v4, v2, v34

    cmp-long v0, v4, v6

    if-eqz v0, :cond_5f

    .line 118
    iget-object v0, v1, Lcom/shabakaty/downloader/p00;->d0:Landroid/widget/TextView;

    move-object/from16 v4, v57

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_5f
    const-wide/32 v4, 0x18008

    and-long/2addr v2, v4

    cmp-long v0, v2, v6

    if-eqz v0, :cond_60

    .line 119
    iget-object v0, v1, Lcom/shabakaty/downloader/p00;->e0:Lcom/facebook/drawee/view/SimpleDraweeView;

    move-object/from16 v9, v46

    invoke-static {v0, v9}, Lcom/shabakaty/downloader/nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_60
    return-void

    :catchall_0
    move-exception v0

    .line 120
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
    iget-wide v0, p0, Lcom/shabakaty/downloader/q00;->s0:J

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

    const-wide/32 v0, 0x10000

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/shabakaty/downloader/q00;->s0:J

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
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    return v1

    .line 1
    :pswitch_0
    check-cast p2, Lcom/shabakaty/downloader/xv2;

    if-nez p3, :cond_0

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/q00;->s0:J

    const-wide/16 v1, 0x2000

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/q00;->s0:J

    .line 4
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 5
    :pswitch_1
    check-cast p2, Lcom/shabakaty/downloader/xv2;

    if-nez p3, :cond_1

    .line 6
    monitor-enter p0

    .line 7
    :try_start_1
    iget-wide p1, p0, Lcom/shabakaty/downloader/q00;->s0:J

    const-wide/16 v1, 0x1000

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/q00;->s0:J

    .line 8
    monitor-exit p0

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 9
    :pswitch_2
    check-cast p2, Lcom/shabakaty/downloader/xv2;

    if-nez p3, :cond_2

    .line 10
    monitor-enter p0

    .line 11
    :try_start_2
    iget-wide p1, p0, Lcom/shabakaty/downloader/q00;->s0:J

    const-wide/16 v1, 0x800

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/q00;->s0:J

    .line 12
    monitor-exit p0

    goto :goto_2

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :cond_2
    const/4 v0, 0x0

    :goto_2
    return v0

    .line 13
    :pswitch_3
    check-cast p2, Lcom/shabakaty/downloader/xv2;

    if-nez p3, :cond_3

    .line 14
    monitor-enter p0

    .line 15
    :try_start_3
    iget-wide p1, p0, Lcom/shabakaty/downloader/q00;->s0:J

    const-wide/16 v1, 0x400

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/q00;->s0:J

    .line 16
    monitor-exit p0

    goto :goto_3

    :catchall_3
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p1

    :cond_3
    const/4 v0, 0x0

    :goto_3
    return v0

    .line 17
    :pswitch_4
    check-cast p2, Lcom/shabakaty/downloader/xv2;

    if-nez p3, :cond_4

    .line 18
    monitor-enter p0

    .line 19
    :try_start_4
    iget-wide p1, p0, Lcom/shabakaty/downloader/q00;->s0:J

    const-wide/16 v1, 0x200

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/q00;->s0:J

    .line 20
    monitor-exit p0

    goto :goto_4

    :catchall_4
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw p1

    :cond_4
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 21
    :pswitch_5
    check-cast p2, Lcom/shabakaty/downloader/xv2;

    if-nez p3, :cond_5

    .line 22
    monitor-enter p0

    .line 23
    :try_start_5
    iget-wide p1, p0, Lcom/shabakaty/downloader/q00;->s0:J

    const-wide/16 v1, 0x100

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/q00;->s0:J

    .line 24
    monitor-exit p0

    goto :goto_5

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw p1

    :cond_5
    const/4 v0, 0x0

    :goto_5
    return v0

    .line 25
    :pswitch_6
    check-cast p2, Lcom/shabakaty/downloader/xv2;

    if-nez p3, :cond_6

    .line 26
    monitor-enter p0

    .line 27
    :try_start_6
    iget-wide p1, p0, Lcom/shabakaty/downloader/q00;->s0:J

    const-wide/16 v1, 0x80

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/q00;->s0:J

    .line 28
    monitor-exit p0

    goto :goto_6

    :catchall_6
    move-exception p1

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw p1

    :cond_6
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 29
    :pswitch_7
    check-cast p2, Lcom/shabakaty/downloader/xv2;

    if-nez p3, :cond_7

    .line 30
    monitor-enter p0

    .line 31
    :try_start_7
    iget-wide p1, p0, Lcom/shabakaty/downloader/q00;->s0:J

    const-wide/16 v1, 0x40

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/q00;->s0:J

    .line 32
    monitor-exit p0

    goto :goto_7

    :catchall_7
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw p1

    :cond_7
    const/4 v0, 0x0

    :goto_7
    return v0

    .line 33
    :pswitch_8
    check-cast p2, Lcom/shabakaty/downloader/xv2;

    if-nez p3, :cond_8

    .line 34
    monitor-enter p0

    .line 35
    :try_start_8
    iget-wide p1, p0, Lcom/shabakaty/downloader/q00;->s0:J

    const-wide/16 v1, 0x20

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/q00;->s0:J

    .line 36
    monitor-exit p0

    goto :goto_8

    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    throw p1

    :cond_8
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 37
    :pswitch_9
    check-cast p2, Lcom/shabakaty/downloader/xv2;

    if-nez p3, :cond_9

    .line 38
    monitor-enter p0

    .line 39
    :try_start_9
    iget-wide p1, p0, Lcom/shabakaty/downloader/q00;->s0:J

    const-wide/16 v1, 0x10

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/q00;->s0:J

    .line 40
    monitor-exit p0

    goto :goto_9

    :catchall_9
    move-exception p1

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    throw p1

    :cond_9
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 41
    :pswitch_a
    check-cast p2, Lcom/shabakaty/downloader/xv2;

    if-nez p3, :cond_a

    .line 42
    monitor-enter p0

    .line 43
    :try_start_a
    iget-wide p1, p0, Lcom/shabakaty/downloader/q00;->s0:J

    const-wide/16 v1, 0x8

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/q00;->s0:J

    .line 44
    monitor-exit p0

    goto :goto_a

    :catchall_a
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    throw p1

    :cond_a
    const/4 v0, 0x0

    :goto_a
    return v0

    .line 45
    :pswitch_b
    check-cast p2, Lcom/shabakaty/downloader/xv2;

    if-nez p3, :cond_b

    .line 46
    monitor-enter p0

    .line 47
    :try_start_b
    iget-wide p1, p0, Lcom/shabakaty/downloader/q00;->s0:J

    const-wide/16 v1, 0x4

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/q00;->s0:J

    .line 48
    monitor-exit p0

    goto :goto_b

    :catchall_b
    move-exception p1

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    throw p1

    :cond_b
    const/4 v0, 0x0

    :goto_b
    return v0

    .line 49
    :pswitch_c
    check-cast p2, Lcom/shabakaty/downloader/xv2;

    if-nez p3, :cond_c

    .line 50
    monitor-enter p0

    .line 51
    :try_start_c
    iget-wide p1, p0, Lcom/shabakaty/downloader/q00;->s0:J

    const-wide/16 v1, 0x2

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/q00;->s0:J

    .line 52
    monitor-exit p0

    goto :goto_c

    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    throw p1

    :cond_c
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 53
    :pswitch_d
    check-cast p2, Lcom/shabakaty/downloader/xv2;

    if-nez p3, :cond_d

    .line 54
    monitor-enter p0

    .line 55
    :try_start_d
    iget-wide p1, p0, Lcom/shabakaty/downloader/q00;->s0:J

    const-wide/16 v1, 0x1

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/q00;->s0:J

    .line 56
    monitor-exit p0

    goto :goto_d

    :catchall_d
    move-exception p1

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    throw p1

    :cond_d
    const/4 v0, 0x0

    :goto_d
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
