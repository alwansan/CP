.class public Lcom/shabakaty/downloader/li1;
.super Lcom/shabakaty/downloader/ki1;
.source "FragmentAppSettingsBindingImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/i63$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/li1$a;,
        Lcom/shabakaty/downloader/li1$b;
    }
.end annotation


# instance fields
.field public final a0:Lcom/google/android/material/button/MaterialButton;

.field public final b0:Landroid/view/View$OnClickListener;

.field public final c0:Landroid/view/View$OnClickListener;

.field public d0:Lcom/shabakaty/downloader/li1$b;

.field public e0:Lcom/shabakaty/downloader/li1$a;

.field public f0:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/gl0;Landroid/view/View;)V
    .locals 21

    move-object/from16 v15, p0

    move-object/from16 v14, p2

    const/16 v0, 0xe

    const/4 v13, 0x0

    move-object/from16 v1, p1

    .line 1
    invoke-static {v1, v14, v0, v13, v13}, Landroidx/databinding/ViewDataBinding;->s(Lcom/shabakaty/downloader/gl0;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v16

    const/4 v12, 0x1

    .line 2
    aget-object v0, v16, v12

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    const/4 v0, 0x4

    aget-object v0, v16, v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/material/chip/ChipGroup;

    const/4 v0, 0x5

    aget-object v0, v16, v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/material/chip/Chip;

    const/4 v0, 0x6

    aget-object v0, v16, v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/material/chip/Chip;

    const/16 v0, 0xb

    aget-object v0, v16, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    const/4 v0, 0x3

    aget-object v0, v16, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    const/16 v0, 0xd

    aget-object v0, v16, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    const/16 v0, 0xc

    aget-object v0, v16, v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    const/4 v0, 0x7

    aget-object v0, v16, v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/widget/TextView;

    const/16 v0, 0x9

    aget-object v0, v16, v0

    move-object/from16 v18, v0

    check-cast v18, Lcom/google/android/material/chip/Chip;

    const/16 v0, 0x8

    aget-object v0, v16, v0

    move-object/from16 v19, v0

    check-cast v19, Lcom/google/android/material/chip/ChipGroup;

    const/16 v0, 0xa

    aget-object v0, v16, v0

    move-object/from16 v20, v0

    check-cast v20, Lcom/google/android/material/chip/Chip;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    move-object/from16 v14, v19

    move-object/from16 v15, v20

    invoke-direct/range {v0 .. v15}, Lcom/shabakaty/downloader/ki1;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Lcom/google/android/material/chip/ChipGroup;Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/ChipGroup;Lcom/google/android/material/chip/Chip;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 3
    iput-wide v0, v2, Lcom/shabakaty/downloader/li1;->f0:J

    .line 4
    iget-object v0, v2, Lcom/shabakaty/downloader/ki1;->M:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v2, Lcom/shabakaty/downloader/ki1;->N:Lcom/google/android/material/chip/ChipGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v2, Lcom/shabakaty/downloader/ki1;->O:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v2, Lcom/shabakaty/downloader/ki1;->P:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 8
    aget-object v0, v16, v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 10
    aget-object v3, v16, v0

    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    iput-object v3, v2, Lcom/shabakaty/downloader/li1;->a0:Lcom/google/android/material/button/MaterialButton;

    .line 11
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 12
    iget-object v3, v2, Lcom/shabakaty/downloader/ki1;->Q:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object v3, v2, Lcom/shabakaty/downloader/ki1;->R:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 14
    iget-object v3, v2, Lcom/shabakaty/downloader/ki1;->S:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 15
    iget-object v3, v2, Lcom/shabakaty/downloader/ki1;->T:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 16
    iget-object v3, v2, Lcom/shabakaty/downloader/ki1;->U:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 17
    iget-object v3, v2, Lcom/shabakaty/downloader/ki1;->V:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 18
    iget-object v3, v2, Lcom/shabakaty/downloader/ki1;->W:Lcom/google/android/material/chip/ChipGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 19
    iget-object v3, v2, Lcom/shabakaty/downloader/ki1;->X:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    const v1, 0x7f0a0128

    move-object/from16 v3, p2

    .line 20
    invoke-virtual {v3, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 21
    new-instance v1, Lcom/shabakaty/downloader/i63;

    invoke-direct {v1, v2, v0}, Lcom/shabakaty/downloader/i63;-><init>(Lcom/shabakaty/downloader/i63$a;I)V

    iput-object v1, v2, Lcom/shabakaty/downloader/li1;->b0:Landroid/view/View$OnClickListener;

    .line 22
    new-instance v0, Lcom/shabakaty/downloader/i63;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/i63;-><init>(Lcom/shabakaty/downloader/i63$a;I)V

    iput-object v0, v2, Lcom/shabakaty/downloader/li1;->c0:Landroid/view/View$OnClickListener;

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/li1;->p()V

    return-void
.end method


# virtual methods
.method public D(ILjava/lang/Object;)Z
    .locals 3

    const/16 v0, 0x10

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/nb;

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/ki1;->Y:Lcom/shabakaty/downloader/nb;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/li1;->f0:J

    const-wide/16 v1, 0x2

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/li1;->f0:J

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
    check-cast p2, Lcom/shabakaty/downloader/rb;

    .line 10
    iput-object p2, p0, Lcom/shabakaty/downloader/ki1;->Z:Lcom/shabakaty/downloader/rb;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_2
    iget-wide p1, p0, Lcom/shabakaty/downloader/li1;->f0:J

    const-wide/16 v1, 0x4

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/li1;->f0:J

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
    .locals 2

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/ki1;->Y:Lcom/shabakaty/downloader/nb;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    if-eqz p2, :cond_4

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/nb;->Z()V

    goto :goto_0

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/ki1;->Y:Lcom/shabakaty/downloader/nb;

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    :cond_3
    if-eqz p2, :cond_4

    .line 4
    invoke-interface {p1}, Lcom/shabakaty/downloader/nb;->j()V

    :cond_4
    :goto_0
    return-void
.end method

.method public i()V
    .locals 18

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/shabakaty/downloader/li1;->f0:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/shabakaty/downloader/li1;->f0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/shabakaty/downloader/ki1;->Z:Lcom/shabakaty/downloader/rb;

    const-wide/16 v6, 0xd

    and-long/2addr v6, v2

    const-wide/16 v8, 0xc

    const/4 v10, 0x0

    const/4 v11, 0x0

    cmp-long v12, v6, v4

    if-eqz v12, :cond_7

    and-long v6, v2, v8

    cmp-long v8, v6, v4

    if-eqz v8, :cond_2

    if-eqz v0, :cond_2

    .line 6
    iget-object v4, v1, Lcom/shabakaty/downloader/li1;->d0:Lcom/shabakaty/downloader/li1$b;

    if-nez v4, :cond_0

    new-instance v4, Lcom/shabakaty/downloader/li1$b;

    invoke-direct {v4}, Lcom/shabakaty/downloader/li1$b;-><init>()V

    iput-object v4, v1, Lcom/shabakaty/downloader/li1;->d0:Lcom/shabakaty/downloader/li1$b;

    .line 7
    :cond_0
    iput-object v0, v4, Lcom/shabakaty/downloader/li1$b;->a:Lcom/shabakaty/downloader/rb;

    .line 8
    iget-object v5, v1, Lcom/shabakaty/downloader/li1;->e0:Lcom/shabakaty/downloader/li1$a;

    if-nez v5, :cond_1

    new-instance v5, Lcom/shabakaty/downloader/li1$a;

    invoke-direct {v5}, Lcom/shabakaty/downloader/li1$a;-><init>()V

    iput-object v5, v1, Lcom/shabakaty/downloader/li1;->e0:Lcom/shabakaty/downloader/li1$a;

    .line 9
    :cond_1
    iput-object v0, v5, Lcom/shabakaty/downloader/li1$a;->a:Lcom/shabakaty/downloader/rb;

    goto :goto_0

    :cond_2
    move-object v4, v10

    move-object v5, v4

    :goto_0
    if-eqz v0, :cond_3

    .line 10
    iget-object v0, v0, Lcom/shabakaty/downloader/rb;->g:Lcom/shabakaty/downloader/gc4;

    goto :goto_1

    :cond_3
    move-object v0, v10

    .line 11
    :goto_1
    invoke-static {v1, v11, v0}, Lcom/shabakaty/downloader/h35;->a(Landroidx/databinding/ViewDataBinding;ILcom/shabakaty/downloader/te1;)Z

    if-eqz v0, :cond_4

    .line 12
    invoke-interface {v0}, Lcom/shabakaty/downloader/gc4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;

    goto :goto_2

    :cond_4
    move-object v0, v10

    :goto_2
    if-eqz v0, :cond_5

    .line 13
    iget-object v0, v0, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;->appSettings:Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;

    goto :goto_3

    :cond_5
    move-object v0, v10

    :goto_3
    if-eqz v0, :cond_6

    .line 14
    iget-object v10, v0, Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;->theme:Lcom/shabakaty/downloader/ky4;

    .line 15
    iget v6, v0, Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;->seekPeriod:I

    .line 16
    iget-object v0, v0, Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;->language:Lcom/shabakaty/downloader/tx4;

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    move-object v0, v10

    .line 17
    :goto_4
    instance-of v7, v10, Lcom/shabakaty/downloader/ky4$b;

    .line 18
    instance-of v8, v10, Lcom/shabakaty/downloader/ky4$a;

    .line 19
    iget-object v9, v1, Lcom/shabakaty/downloader/ki1;->S:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/4 v10, 0x1

    new-array v13, v10, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v11

    const v14, 0x7f100005

    invoke-virtual {v9, v14, v6, v13}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    iget-object v9, v1, Lcom/shabakaty/downloader/ki1;->S:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v10, v11

    invoke-virtual {v9, v14, v6, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 21
    instance-of v11, v0, Lcom/shabakaty/downloader/tx4$a;

    .line 22
    instance-of v0, v0, Lcom/shabakaty/downloader/tx4$b;

    move-object/from16 v17, v10

    move-object v10, v5

    move-object/from16 v5, v17

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    move-object v4, v10

    move-object v5, v4

    :goto_5
    const-wide/16 v13, 0x8

    and-long/2addr v13, v2

    const-wide/16 v15, 0x0

    cmp-long v6, v13, v15

    if-eqz v6, :cond_8

    .line 23
    iget-object v6, v1, Lcom/shabakaty/downloader/ki1;->M:Landroid/widget/TextView;

    const v9, 0x7f120290

    invoke-static {v6, v9, v6}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 24
    iget-object v6, v1, Lcom/shabakaty/downloader/ki1;->O:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f120032

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 25
    iget-object v6, v1, Lcom/shabakaty/downloader/ki1;->P:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f1200e6

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 26
    iget-object v6, v1, Lcom/shabakaty/downloader/li1;->a0:Lcom/google/android/material/button/MaterialButton;

    iget-object v13, v1, Lcom/shabakaty/downloader/li1;->c0:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object v6, v1, Lcom/shabakaty/downloader/li1;->a0:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v6}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/shabakaty/downloader/nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 28
    iget-object v6, v1, Lcom/shabakaty/downloader/li1;->a0:Lcom/google/android/material/button/MaterialButton;

    const v9, 0x7f12028f

    invoke-static {v6, v9, v6}, Lcom/shabakaty/downloader/e3;->a(Lcom/google/android/material/button/MaterialButton;ILcom/google/android/material/button/MaterialButton;)V

    .line 29
    iget-object v6, v1, Lcom/shabakaty/downloader/ki1;->Q:Landroid/widget/TextView;

    const v9, 0x7f1201fa

    invoke-static {v6, v9, v6}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 30
    iget-object v6, v1, Lcom/shabakaty/downloader/ki1;->R:Landroid/widget/TextView;

    const v9, 0x7f1202a1

    invoke-static {v6, v9, v6}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 31
    iget-object v6, v1, Lcom/shabakaty/downloader/ki1;->S:Landroid/widget/TextView;

    iget-object v9, v1, Lcom/shabakaty/downloader/li1;->b0:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v6, v1, Lcom/shabakaty/downloader/ki1;->T:Landroid/widget/TextView;

    const v9, 0x7f12024d

    invoke-static {v6, v9, v6}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 33
    iget-object v6, v1, Lcom/shabakaty/downloader/ki1;->U:Landroid/widget/TextView;

    const v9, 0x7f1202b7

    invoke-static {v6, v9, v6}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 34
    iget-object v6, v1, Lcom/shabakaty/downloader/ki1;->V:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v13, 0x7f120292

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 35
    iget-object v6, v1, Lcom/shabakaty/downloader/ki1;->X:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v13, 0x7f1202a2

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_8
    const-wide/16 v13, 0xc

    and-long/2addr v2, v13

    const-wide/16 v13, 0x0

    cmp-long v6, v2, v13

    if-eqz v6, :cond_9

    .line 36
    iget-object v2, v1, Lcom/shabakaty/downloader/ki1;->N:Lcom/google/android/material/chip/ChipGroup;

    const-string v3, "<this>"

    .line 37
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v3, Lcom/shabakaty/downloader/l91;

    invoke-direct {v3, v10}, Lcom/shabakaty/downloader/l91;-><init>(Lcom/shabakaty/downloader/df2;)V

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipGroup;->setOnCheckedChangeListener(Lcom/google/android/material/chip/ChipGroup$d;)V

    .line 39
    iget-object v2, v1, Lcom/shabakaty/downloader/ki1;->W:Lcom/google/android/material/chip/ChipGroup;

    const-string v3, "<this>"

    .line 40
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v3, Lcom/shabakaty/downloader/l91;

    invoke-direct {v3, v4}, Lcom/shabakaty/downloader/l91;-><init>(Lcom/shabakaty/downloader/nm4;)V

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipGroup;->setOnCheckedChangeListener(Lcom/google/android/material/chip/ChipGroup$d;)V

    :cond_9
    if-eqz v12, :cond_a

    .line 42
    iget-object v2, v1, Lcom/shabakaty/downloader/ki1;->O:Lcom/google/android/material/chip/Chip;

    invoke-static {v2, v11}, Lcom/shabakaty/downloader/i90;->a(Landroid/widget/CompoundButton;Z)V

    .line 43
    iget-object v2, v1, Lcom/shabakaty/downloader/ki1;->P:Lcom/google/android/material/chip/Chip;

    invoke-static {v2, v0}, Lcom/shabakaty/downloader/i90;->a(Landroid/widget/CompoundButton;Z)V

    .line 44
    iget-object v0, v1, Lcom/shabakaty/downloader/ki1;->S:Landroid/widget/TextView;

    invoke-static {v0, v5}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 45
    iget-object v0, v1, Lcom/shabakaty/downloader/ki1;->V:Lcom/google/android/material/chip/Chip;

    invoke-static {v0, v8}, Lcom/shabakaty/downloader/i90;->a(Landroid/widget/CompoundButton;Z)V

    .line 46
    iget-object v0, v1, Lcom/shabakaty/downloader/ki1;->X:Lcom/google/android/material/chip/Chip;

    invoke-static {v0, v7}, Lcom/shabakaty/downloader/i90;->a(Landroid/widget/CompoundButton;Z)V

    :cond_a
    return-void

    :catchall_0
    move-exception v0

    .line 47
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
    iget-wide v0, p0, Lcom/shabakaty/downloader/li1;->f0:J

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
    iput-wide v0, p0, Lcom/shabakaty/downloader/li1;->f0:J

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
    iget-wide p1, p0, Lcom/shabakaty/downloader/li1;->f0:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/shabakaty/downloader/li1;->f0:J

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
