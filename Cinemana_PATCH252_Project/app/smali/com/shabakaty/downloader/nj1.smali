.class public Lcom/shabakaty/downloader/nj1;
.super Lcom/shabakaty/downloader/mj1;
.source "FragmentFilterSettingsBindingImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/nj1$a;
    }
.end annotation


# static fields
.field public static final W:Landroid/util/SparseIntArray;


# instance fields
.field public U:Lcom/shabakaty/downloader/nj1$a;

.field public V:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/nj1;->W:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0337

    const/4 v2, 0x7

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/gl0;Landroid/view/View;)V
    .locals 15

    move-object v11, p0

    move-object/from16 v12, p2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/nj1;->W:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    const/4 v13, 0x0

    move-object/from16 v2, p1

    invoke-static {v2, v12, v1, v13, v0}, Landroidx/databinding/ViewDataBinding;->s(Lcom/shabakaty/downloader/gl0;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v14

    const/4 v0, 0x3

    .line 2
    aget-object v0, v14, v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    const/4 v0, 0x4

    aget-object v0, v14, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const/4 v0, 0x5

    aget-object v0, v14, v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    const/4 v0, 0x6

    aget-object v0, v14, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    const/4 v0, 0x1

    aget-object v0, v14, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    const/4 v0, 0x2

    aget-object v0, v14, v0

    move-object v9, v0

    check-cast v9, Lcom/google/android/material/chip/ChipGroup;

    const/4 v0, 0x7

    aget-object v0, v14, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/HorizontalScrollView;

    const/4 v3, 0x1

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v10}, Lcom/shabakaty/downloader/mj1;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/google/android/material/switchmaterial/SwitchMaterial;Landroid/widget/TextView;Lcom/google/android/material/switchmaterial/SwitchMaterial;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/chip/ChipGroup;Landroid/widget/HorizontalScrollView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, v11, Lcom/shabakaty/downloader/nj1;->V:J

    .line 4
    iget-object v0, v11, Lcom/shabakaty/downloader/mj1;->M:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    invoke-virtual {v0, v13}, Landroid/widget/CompoundButton;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v11, Lcom/shabakaty/downloader/mj1;->N:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v11, Lcom/shabakaty/downloader/mj1;->O:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    invoke-virtual {v0, v13}, Landroid/widget/CompoundButton;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v11, Lcom/shabakaty/downloader/mj1;->P:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object v0, v11, Lcom/shabakaty/downloader/mj1;->Q:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 9
    aget-object v0, v14, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 10
    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object v0, v11, Lcom/shabakaty/downloader/mj1;->R:Lcom/google/android/material/chip/ChipGroup;

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a0128

    .line 12
    invoke-virtual {v12, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 13
    invoke-virtual {p0}, Lcom/shabakaty/downloader/nj1;->p()V

    return-void
.end method


# virtual methods
.method public D(ILjava/lang/Object;)Z
    .locals 3

    const/16 v0, 0x10

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/gb1;

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/mj1;->S:Lcom/shabakaty/downloader/gb1;

    goto :goto_0

    :cond_0
    const/16 v0, 0x26

    if-ne v0, p1, :cond_1

    .line 3
    check-cast p2, Lcom/shabakaty/downloader/kb1;

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/mj1;->T:Lcom/shabakaty/downloader/kb1;

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/nj1;->V:J

    const-wide/16 v1, 0x4

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/nj1;->V:J

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p0, v0}, Landroidx/databinding/a;->f(I)V

    .line 9
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->x()V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public i()V
    .locals 17

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/shabakaty/downloader/nj1;->V:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/shabakaty/downloader/nj1;->V:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/shabakaty/downloader/mj1;->T:Lcom/shabakaty/downloader/kb1;

    const-wide/16 v6, 0xd

    and-long v8, v2, v6

    const-wide/16 v10, 0xc

    const/4 v12, 0x0

    cmp-long v13, v8, v4

    if-eqz v13, :cond_a

    if-eqz v0, :cond_1

    .line 6
    iget-object v8, v1, Lcom/shabakaty/downloader/nj1;->U:Lcom/shabakaty/downloader/nj1$a;

    if-nez v8, :cond_0

    new-instance v8, Lcom/shabakaty/downloader/nj1$a;

    invoke-direct {v8}, Lcom/shabakaty/downloader/nj1$a;-><init>()V

    iput-object v8, v1, Lcom/shabakaty/downloader/nj1;->U:Lcom/shabakaty/downloader/nj1$a;

    .line 7
    :cond_0
    iput-object v0, v8, Lcom/shabakaty/downloader/nj1$a;->a:Lcom/shabakaty/downloader/kb1;

    .line 8
    iget-object v9, v0, Lcom/shabakaty/downloader/kb1;->f:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {v9}, Lcom/shabakaty/usermanagement/UserManagement;->isLoggedIn()Z

    move-result v9

    .line 9
    iget-object v13, v0, Lcom/shabakaty/downloader/kb1;->h:Lcom/shabakaty/downloader/gc4;

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    .line 10
    :goto_0
    invoke-static {v1, v12, v13}, Lcom/shabakaty/downloader/h35;->a(Landroidx/databinding/ViewDataBinding;ILcom/shabakaty/downloader/te1;)Z

    if-eqz v13, :cond_2

    .line 11
    invoke-interface {v13}, Lcom/shabakaty/downloader/gc4;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    :goto_1
    if-eqz v13, :cond_3

    .line 12
    iget-object v13, v13, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;->filterSettings:Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;

    goto :goto_2

    :cond_3
    const/4 v13, 0x0

    :goto_2
    if-eqz v13, :cond_4

    .line 13
    iget-boolean v14, v13, Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;->showContentWithNoSubtitle:Z

    .line 14
    iget-boolean v15, v13, Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;->skipInAppropriateScenes:Z

    .line 15
    iget-object v13, v13, Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;->parentalLevel:Lcom/shabakaty/downloader/ia3;

    goto :goto_3

    :cond_4
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v13, 0x0

    :goto_3
    and-long/2addr v10, v2

    cmp-long v16, v10, v4

    if-eqz v16, :cond_9

    if-eqz v0, :cond_5

    .line 16
    iget-object v0, v0, Lcom/shabakaty/downloader/kb1;->f:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/UserManagement;->isLoggedIn()Z

    move-result v0

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    if-eqz v16, :cond_7

    if-eqz v0, :cond_6

    const-wide/16 v10, 0x20

    goto :goto_5

    :cond_6
    const-wide/16 v10, 0x10

    :goto_5
    or-long/2addr v2, v10

    :cond_7
    if-eqz v0, :cond_8

    goto :goto_6

    :cond_8
    const/16 v0, 0x8

    goto :goto_7

    :cond_9
    :goto_6
    const/4 v0, 0x0

    goto :goto_7

    :cond_a
    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v13, 0x0

    :goto_7
    and-long/2addr v6, v2

    cmp-long v10, v6, v4

    if-eqz v10, :cond_16

    .line 17
    iget-object v4, v1, Lcom/shabakaty/downloader/mj1;->M:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    invoke-static {v4, v15}, Lcom/shabakaty/downloader/i90;->a(Landroid/widget/CompoundButton;Z)V

    .line 18
    iget-object v4, v1, Lcom/shabakaty/downloader/mj1;->O:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    invoke-static {v4, v14}, Lcom/shabakaty/downloader/i90;->a(Landroid/widget/CompoundButton;Z)V

    .line 19
    iget-object v4, v1, Lcom/shabakaty/downloader/mj1;->R:Lcom/google/android/material/chip/ChipGroup;

    const-string v5, "<this>"

    .line 20
    invoke-static {v4, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "parentalLevel"

    invoke-static {v13, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v10, 0x4

    if-eqz v9, :cond_b

    new-array v9, v10, [Lcom/shabakaty/downloader/ia3;

    .line 21
    sget-object v11, Lcom/shabakaty/downloader/ia3$a;->d:Lcom/shabakaty/downloader/ia3$a;

    aput-object v11, v9, v12

    sget-object v11, Lcom/shabakaty/downloader/ia3$b;->d:Lcom/shabakaty/downloader/ia3$b;

    aput-object v11, v9, v7

    sget-object v7, Lcom/shabakaty/downloader/ia3$c;->d:Lcom/shabakaty/downloader/ia3$c;

    aput-object v7, v9, v5

    sget-object v5, Lcom/shabakaty/downloader/ia3$d;->d:Lcom/shabakaty/downloader/ia3$d;

    aput-object v5, v9, v6

    invoke-static {v9}, Lcom/shabakaty/downloader/iq6;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_8

    :cond_b
    new-array v6, v6, [Lcom/shabakaty/downloader/ia3;

    .line 22
    sget-object v9, Lcom/shabakaty/downloader/ia3$b;->d:Lcom/shabakaty/downloader/ia3$b;

    aput-object v9, v6, v12

    sget-object v9, Lcom/shabakaty/downloader/ia3$c;->d:Lcom/shabakaty/downloader/ia3$c;

    aput-object v9, v6, v7

    sget-object v7, Lcom/shabakaty/downloader/ia3$d;->d:Lcom/shabakaty/downloader/ia3$d;

    aput-object v7, v6, v5

    invoke-static {v6}, Lcom/shabakaty/downloader/iq6;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 23
    :goto_8
    invoke-static {v4}, Lcom/shabakaty/downloader/j35;->a(Landroid/view/ViewGroup;)Lcom/shabakaty/downloader/l04;

    move-result-object v6

    invoke-static {v6}, Lcom/shabakaty/downloader/t04;->E(Lcom/shabakaty/downloader/l04;)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lcom/google/android/material/chip/Chip;

    if-eqz v7, :cond_c

    check-cast v6, Lcom/google/android/material/chip/Chip;

    goto :goto_9

    :cond_c
    const/4 v6, 0x0

    :goto_9
    if-nez v6, :cond_d

    const/4 v6, 0x0

    goto :goto_a

    :cond_d
    invoke-virtual {v6}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    .line 24
    :goto_a
    invoke-static {v5}, Lcom/shabakaty/downloader/m50;->Z(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/ia3;

    .line 25
    iget v7, v7, Lcom/shabakaty/downloader/ia3;->b:I

    .line 26
    invoke-static {v4, v7}, Lcom/shabakaty/downloader/he0;->m(Landroid/view/View;I)Ljava/lang/String;

    move-result-object v7

    .line 27
    invoke-static {v7}, Lcom/shabakaty/downloader/nl6;->z(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 28
    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 29
    :cond_e
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-nez v6, :cond_15

    .line 30
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_f
    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/ia3;

    .line 31
    new-instance v7, Lcom/google/android/material/chip/Chip;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    const/4 v11, 0x0

    .line 32
    invoke-direct {v7, v9, v11}, Lcom/google/android/material/chip/Chip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iget-object v9, v6, Lcom/shabakaty/downloader/ia3;->a:Ljava/lang/String;

    iget-object v11, v13, Lcom/shabakaty/downloader/ia3;->a:Ljava/lang/String;

    .line 34
    invoke-static {v9, v11}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    const v11, 0x7f130281

    .line 35
    invoke-virtual {v7, v11}, Lcom/google/android/material/chip/Chip;->setTextAppearanceResource(I)V

    const v11, 0x7f06005b

    .line 36
    invoke-virtual {v7, v11}, Lcom/google/android/material/chip/Chip;->setChipBackgroundColorResource(I)V

    .line 37
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f06005d

    if-nez v11, :cond_10

    const/4 v11, 0x0

    goto :goto_c

    :cond_10
    invoke-static {v11, v12}, Lcom/shabakaty/downloader/wt2;->g(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v11

    :goto_c
    invoke-virtual {v7, v11}, Landroid/widget/CheckBox;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 38
    new-instance v11, Lcom/google/android/material/chip/ChipGroup$c;

    const/16 v14, 0x50

    invoke-static {v14}, Lcom/shabakaty/downloader/kf5;->e(I)I

    move-result v15

    invoke-static {v14}, Lcom/shabakaty/downloader/kf5;->e(I)I

    move-result v14

    invoke-direct {v11, v15, v14}, Lcom/google/android/material/chip/ChipGroup$c;-><init>(II)V

    invoke-virtual {v7, v11}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    invoke-virtual {v7}, Lcom/google/android/material/chip/Chip;->getShapeAppearanceModel()Lcom/shabakaty/downloader/t44;

    move-result-object v11

    const/16 v14, 0x8

    invoke-static {v14}, Lcom/shabakaty/downloader/kf5;->e(I)I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v11, v14}, Lcom/shabakaty/downloader/t44;->e(F)Lcom/shabakaty/downloader/t44;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/google/android/material/chip/Chip;->setShapeAppearanceModel(Lcom/shabakaty/downloader/t44;)V

    .line 40
    iget v11, v6, Lcom/shabakaty/downloader/ia3;->b:I

    .line 41
    invoke-static {v7, v11}, Lcom/shabakaty/downloader/he0;->m(Landroid/view/View;I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/shabakaty/downloader/nl6;->z(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v11, v6, Lcom/shabakaty/downloader/ia3;->a:Ljava/lang/String;

    .line 43
    invoke-virtual {v7, v11}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 44
    iget-object v11, v6, Lcom/shabakaty/downloader/ia3;->a:Ljava/lang/String;

    .line 45
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/widget/CheckBox;->setId(I)V

    .line 46
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v11

    if-nez v11, :cond_11

    goto :goto_d

    :cond_11
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    if-nez v11, :cond_12

    :goto_d
    const/4 v6, 0x0

    goto :goto_e

    .line 47
    :cond_12
    iget v6, v6, Lcom/shabakaty/downloader/ia3;->c:I

    .line 48
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v14

    invoke-virtual {v11, v6, v14}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :goto_e
    const/4 v11, 0x0

    .line 49
    invoke-virtual {v7, v11, v6, v11, v11}, Lcom/google/android/material/chip/Chip;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 50
    invoke-static {v7}, Lcom/shabakaty/downloader/s45;->c(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v6}, Lcom/shabakaty/downloader/bp;->q([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v6

    .line 51
    :goto_f
    move-object v11, v6

    check-cast v11, Lcom/shabakaty/downloader/q02;

    invoke-virtual {v11}, Lcom/shabakaty/downloader/q02;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_14

    invoke-virtual {v11}, Lcom/shabakaty/downloader/q02;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/drawable/Drawable;

    if-nez v11, :cond_13

    goto :goto_f

    .line 52
    :cond_13
    invoke-virtual {v7}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "context"

    invoke-static {v14, v15}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v12}, Lcom/shabakaty/downloader/wt2;->g(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_f

    .line 53
    :cond_14
    invoke-virtual {v7, v10}, Landroid/widget/CheckBox;->setTextAlignment(I)V

    const/4 v6, 0x1

    .line 54
    invoke-virtual {v7, v6}, Lcom/google/android/material/chip/Chip;->setCheckable(Z)V

    const/4 v6, 0x0

    .line 55
    invoke-virtual {v7, v6}, Lcom/google/android/material/chip/Chip;->setCheckedIconVisible(Z)V

    .line 56
    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz v9, :cond_f

    .line 57
    invoke-virtual {v4}, Lcom/google/android/material/chip/ChipGroup;->d()V

    .line 58
    invoke-virtual {v7}, Landroid/widget/CheckBox;->getId()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/google/android/material/chip/ChipGroup;->c(I)V

    goto/16 :goto_b

    .line 59
    :cond_15
    new-instance v5, Lcom/shabakaty/downloader/l91;

    invoke-direct {v5, v8}, Lcom/shabakaty/downloader/l91;-><init>(Lcom/shabakaty/downloader/ha3;)V

    invoke-virtual {v4, v5}, Lcom/google/android/material/chip/ChipGroup;->setOnCheckedChangeListener(Lcom/google/android/material/chip/ChipGroup$d;)V

    :cond_16
    const-wide/16 v4, 0x8

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_17

    .line 60
    iget-object v4, v1, Lcom/shabakaty/downloader/mj1;->M:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1201e6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 61
    iget-object v4, v1, Lcom/shabakaty/downloader/mj1;->N:Landroid/widget/TextView;

    invoke-static {v4, v6, v4}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 62
    iget-object v4, v1, Lcom/shabakaty/downloader/mj1;->O:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f12025a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 63
    iget-object v4, v1, Lcom/shabakaty/downloader/mj1;->P:Landroid/widget/TextView;

    invoke-static {v4, v6, v4}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 64
    iget-object v4, v1, Lcom/shabakaty/downloader/mj1;->Q:Landroid/widget/TextView;

    const v5, 0x7f1200bf

    invoke-static {v4, v5, v4}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    :cond_17
    const-wide/16 v4, 0xc

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_18

    .line 65
    iget-object v2, v1, Lcom/shabakaty/downloader/mj1;->O:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 66
    iget-object v2, v1, Lcom/shabakaty/downloader/mj1;->P:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_18
    return-void

    :catchall_0
    move-exception v0

    .line 67
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
    iget-wide v0, p0, Lcom/shabakaty/downloader/nj1;->V:J

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
    iput-wide v0, p0, Lcom/shabakaty/downloader/nj1;->V:J

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
    iget-wide p1, p0, Lcom/shabakaty/downloader/nj1;->V:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/shabakaty/downloader/nj1;->V:J

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
