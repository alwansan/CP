.class public Lcom/shabakaty/downloader/pi1;
.super Lcom/shabakaty/downloader/oi1;
.source "FragmentCategoryDetailsBindingImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/pi1$a;
    }
.end annotation


# static fields
.field public static final W:Landroid/util/SparseIntArray;


# instance fields
.field public U:Lcom/shabakaty/downloader/pi1$a;

.field public V:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/pi1;->W:Landroid/util/SparseIntArray;

    const v1, 0x7f0a00db

    const/4 v2, 0x5

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0486

    const/4 v2, 0x6

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/gl0;Landroid/view/View;)V
    .locals 13

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/pi1;->W:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Landroidx/databinding/ViewDataBinding;->s(Lcom/shabakaty/downloader/gl0;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    aget-object v1, v0, v1

    move-object v7, v1

    check-cast v7, Lcom/skydoves/powerspinner/PowerSpinnerView;

    const/4 v1, 0x3

    aget-object v1, v0, v1

    move-object v8, v1

    check-cast v8, Lcom/skydoves/powerspinner/PowerSpinnerView;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    move-object v9, v1

    check-cast v9, Lcom/skydoves/powerspinner/PowerSpinnerView;

    const/4 v1, 0x5

    aget-object v1, v0, v1

    move-object v10, v1

    check-cast v10, Landroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x4

    aget-object v1, v0, v1

    move-object v11, v1

    check-cast v11, Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x6

    aget-object v1, v0, v1

    move-object v12, v1

    check-cast v12, Lcom/google/android/material/tabs/TabLayout;

    const/4 v6, 0x3

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v12}, Lcom/shabakaty/downloader/oi1;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/skydoves/powerspinner/PowerSpinnerView;Lcom/skydoves/powerspinner/PowerSpinnerView;Lcom/skydoves/powerspinner/PowerSpinnerView;Landroidx/appcompat/widget/Toolbar;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayout;)V

    const-wide/16 v3, -0x1

    .line 3
    iput-wide v3, p0, Lcom/shabakaty/downloader/pi1;->V:J

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/oi1;->M:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/oi1;->N:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/oi1;->O:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 7
    aget-object p1, v0, p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 8
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcom/shabakaty/downloader/oi1;->Q:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const p1, 0x7f0a0128

    .line 10
    invoke-virtual {p2, p1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pi1;->p()V

    return-void
.end method


# virtual methods
.method public D(ILjava/lang/Object;)Z
    .locals 3

    const/16 v0, 0x10

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/vx;

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/oi1;->T:Lcom/shabakaty/downloader/vx;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/pi1;->V:J

    const-wide/16 v1, 0x8

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/pi1;->V:J

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
    check-cast p2, Lcom/shabakaty/downloader/rx;

    .line 10
    iput-object p2, p0, Lcom/shabakaty/downloader/oi1;->S:Lcom/shabakaty/downloader/rx;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_2
    iget-wide p1, p0, Lcom/shabakaty/downloader/pi1;->V:J

    const-wide/16 v1, 0x10

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/pi1;->V:J

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

.method public i()V
    .locals 21

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/shabakaty/downloader/pi1;->V:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/shabakaty/downloader/pi1;->V:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/shabakaty/downloader/oi1;->T:Lcom/shabakaty/downloader/vx;

    .line 6
    iget-object v6, v1, Lcom/shabakaty/downloader/oi1;->S:Lcom/shabakaty/downloader/rx;

    const-wide/16 v7, 0x3f

    and-long/2addr v7, v2

    const-wide/16 v9, 0x31

    const-wide/16 v11, 0x39

    const-wide/16 v15, 0x3a

    const/4 v13, 0x1

    const/4 v14, 0x0

    cmp-long v17, v7, v4

    if-eqz v17, :cond_13

    if-eqz v0, :cond_1

    .line 7
    iget-object v7, v1, Lcom/shabakaty/downloader/pi1;->U:Lcom/shabakaty/downloader/pi1$a;

    if-nez v7, :cond_0

    new-instance v7, Lcom/shabakaty/downloader/pi1$a;

    invoke-direct {v7}, Lcom/shabakaty/downloader/pi1$a;-><init>()V

    iput-object v7, v1, Lcom/shabakaty/downloader/pi1;->U:Lcom/shabakaty/downloader/pi1$a;

    .line 8
    :cond_0
    iput-object v0, v7, Lcom/shabakaty/downloader/pi1$a;->a:Lcom/shabakaty/downloader/vx;

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    and-long/2addr v11, v2

    const v0, 0x7f120260

    cmp-long v8, v11, v4

    if-eqz v8, :cond_6

    if-eqz v6, :cond_2

    .line 9
    iget-object v8, v6, Lcom/shabakaty/downloader/rx;->q:Lcom/shabakaty/downloader/xv2;

    .line 10
    iget v11, v6, Lcom/shabakaty/downloader/rx;->n:I

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 11
    :goto_1
    invoke-virtual {v1, v14, v8}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v8, :cond_3

    .line 12
    invoke-virtual {v8}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    :goto_2
    and-long/2addr v9, v2

    cmp-long v12, v9, v4

    if-eqz v12, :cond_7

    if-eqz v8, :cond_4

    .line 13
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem$NewLanguageItem;

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_5

    .line 14
    iget-object v10, v9, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem$NewLanguageItem;->langArTitle:Ljava/lang/String;

    .line 15
    iget-object v9, v9, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem$NewLanguageItem;->langEnTitle:Ljava/lang/String;

    goto :goto_4

    :cond_5
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 16
    :goto_4
    invoke-static {v10}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, v1, Lcom/shabakaty/downloader/oi1;->M:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 17
    invoke-static {v9}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v12, v1, Lcom/shabakaty/downloader/oi1;->M:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    :cond_6
    const/4 v8, 0x0

    const/4 v11, 0x0

    :cond_7
    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_5
    and-long v17, v2, v15

    cmp-long v12, v17, v4

    if-eqz v12, :cond_c

    if-eqz v6, :cond_8

    .line 18
    iget-object v12, v6, Lcom/shabakaty/downloader/rx;->p:Lcom/shabakaty/downloader/xv2;

    .line 19
    iget v14, v6, Lcom/shabakaty/downloader/rx;->v:I

    goto :goto_6

    :cond_8
    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 20
    :goto_6
    invoke-virtual {v1, v13, v12}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v12, :cond_9

    .line 21
    invoke-virtual {v12}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    goto :goto_7

    :cond_9
    const/4 v12, 0x0

    :goto_7
    const-wide/16 v17, 0x32

    and-long v17, v2, v17

    cmp-long v13, v17, v4

    if-eqz v13, :cond_d

    if-eqz v12, :cond_a

    .line 22
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/shabakaty/cinemana/ui/categories_fragment/SortingAscendingDescending;

    goto :goto_8

    :cond_a
    const/4 v13, 0x0

    :goto_8
    if-eqz v13, :cond_b

    .line 23
    iget-object v13, v13, Lcom/shabakaty/cinemana/ui/categories_fragment/SortingAscendingDescending;->name:Ljava/lang/String;

    goto :goto_9

    :cond_b
    const/4 v13, 0x0

    .line 24
    :goto_9
    invoke-static {v13}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v15, v1, Lcom/shabakaty/downloader/oi1;->N:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_c
    const/4 v12, 0x0

    const/4 v14, 0x0

    :cond_d
    const/4 v0, 0x0

    :goto_a
    const-wide/16 v15, 0x3c

    and-long/2addr v15, v2

    cmp-long v13, v15, v4

    if-eqz v13, :cond_14

    if-eqz v6, :cond_e

    .line 25
    iget v13, v6, Lcom/shabakaty/downloader/rx;->t:I

    .line 26
    iget-object v6, v6, Lcom/shabakaty/downloader/rx;->o:Lcom/shabakaty/downloader/xv2;

    goto :goto_b

    :cond_e
    const/4 v6, 0x0

    const/4 v13, 0x0

    :goto_b
    const/4 v15, 0x2

    .line 27
    invoke-virtual {v1, v15, v6}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v6, :cond_f

    .line 28
    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    goto :goto_c

    :cond_f
    const/4 v6, 0x0

    :goto_c
    const-wide/16 v15, 0x34

    and-long v19, v2, v15

    cmp-long v15, v19, v4

    if-eqz v15, :cond_12

    if-eqz v6, :cond_10

    .line 29
    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/cinemana/ui/categories_fragment/SortingName;

    goto :goto_d

    :cond_10
    const/4 v4, 0x0

    :goto_d
    if-eqz v4, :cond_11

    .line 30
    iget-object v4, v4, Lcom/shabakaty/cinemana/ui/categories_fragment/SortingName;->name:Ljava/lang/String;

    goto :goto_e

    :cond_11
    const/4 v4, 0x0

    .line 31
    :goto_e
    invoke-static {v4}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/shabakaty/downloader/oi1;->O:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v15, 0x7f120260

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_f

    :cond_12
    const/4 v4, 0x0

    :goto_f
    const-wide/16 v15, 0x39

    goto :goto_10

    :cond_13
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v0, 0x0

    :cond_14
    const/4 v6, 0x0

    const/4 v4, 0x0

    const-wide/16 v15, 0x39

    const/4 v13, 0x0

    :goto_10
    and-long/2addr v15, v2

    const-wide/16 v19, 0x0

    cmp-long v5, v15, v19

    if-eqz v5, :cond_15

    .line 32
    iget-object v5, v1, Lcom/shabakaty/downloader/oi1;->M:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v5, v8, v11, v7}, Lcom/shabakaty/downloader/st2;->h(Lcom/skydoves/powerspinner/PowerSpinnerView;Ljava/util/List;Ljava/lang/Integer;Lcom/shabakaty/downloader/w63;)V

    :cond_15
    const-wide/16 v15, 0x31

    and-long/2addr v15, v2

    cmp-long v5, v15, v19

    if-eqz v5, :cond_16

    .line 33
    iget-object v5, v1, Lcom/shabakaty/downloader/oi1;->M:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-static {v5, v9, v10}, Lcom/shabakaty/downloader/nl6;->p(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    const-wide/16 v8, 0x32

    and-long/2addr v8, v2

    cmp-long v5, v8, v19

    if-eqz v5, :cond_17

    .line 34
    iget-object v5, v1, Lcom/shabakaty/downloader/oi1;->N:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-static {v5, v0}, Lcom/shabakaty/downloader/nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_17
    const-wide/16 v8, 0x3a

    and-long/2addr v8, v2

    cmp-long v0, v8, v19

    if-eqz v0, :cond_18

    .line 35
    iget-object v0, v1, Lcom/shabakaty/downloader/oi1;->N:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0, v12, v5, v7}, Lcom/shabakaty/downloader/st2;->h(Lcom/skydoves/powerspinner/PowerSpinnerView;Ljava/util/List;Ljava/lang/Integer;Lcom/shabakaty/downloader/w63;)V

    :cond_18
    const-wide/16 v8, 0x34

    and-long/2addr v8, v2

    cmp-long v0, v8, v19

    if-eqz v0, :cond_19

    .line 36
    iget-object v0, v1, Lcom/shabakaty/downloader/oi1;->O:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_19
    const-wide/16 v4, 0x3c

    and-long/2addr v4, v2

    cmp-long v0, v4, v19

    if-eqz v0, :cond_1a

    .line 37
    iget-object v0, v1, Lcom/shabakaty/downloader/oi1;->O:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v6, v4, v7}, Lcom/shabakaty/downloader/st2;->h(Lcom/skydoves/powerspinner/PowerSpinnerView;Ljava/util/List;Ljava/lang/Integer;Lcom/shabakaty/downloader/w63;)V

    :cond_1a
    const-wide/16 v4, 0x20

    and-long/2addr v2, v4

    cmp-long v0, v2, v19

    if-eqz v0, :cond_1e

    .line 38
    iget-object v0, v1, Lcom/shabakaty/downloader/oi1;->Q:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v2, v1, Lcom/shabakaty/downloader/oi1;->R:Lcom/google/android/material/tabs/TabLayout;

    const-string v3, "<this>"

    .line 39
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const v4, 0x7f1202a4

    .line 41
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const v4, 0x7f1202b8

    .line 42
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 43
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$e;

    move-result-object v4

    if-nez v4, :cond_1e

    .line 44
    invoke-static {v0}, Lcom/shabakaty/downloader/jl3;->b(Landroid/view/View;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    .line 45
    instance-of v5, v4, Lcom/shabakaty/downloader/ox;

    if-eqz v5, :cond_1b

    goto :goto_11

    :cond_1b
    const/4 v4, 0x0

    :goto_11
    if-nez v4, :cond_1c

    goto :goto_12

    .line 46
    :cond_1c
    check-cast v4, Lcom/shabakaty/downloader/ox;

    .line 47
    new-instance v5, Lcom/shabakaty/downloader/tx;

    invoke-direct {v5, v4}, Lcom/shabakaty/downloader/tx;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 48
    invoke-virtual {v0, v5}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    if-nez v2, :cond_1d

    goto :goto_12

    .line 49
    :cond_1d
    new-instance v4, Lcom/google/android/material/tabs/c;

    .line 50
    new-instance v5, Lcom/shabakaty/downloader/y35;

    const/4 v6, 0x1

    invoke-direct {v5, v0, v3, v6}, Lcom/shabakaty/downloader/y35;-><init>(Landroidx/viewpager2/widget/ViewPager2;Ljava/util/List;I)V

    .line 51
    invoke-direct {v4, v2, v0, v5}, Lcom/google/android/material/tabs/c;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/c$b;)V

    .line 52
    invoke-virtual {v4}, Lcom/google/android/material/tabs/c;->a()V

    :cond_1e
    :goto_12
    return-void

    :catchall_0
    move-exception v0

    .line 53
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
    iget-wide v0, p0, Lcom/shabakaty/downloader/pi1;->V:J

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

    const-wide/16 v0, 0x20

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/shabakaty/downloader/pi1;->V:J

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
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    return v0

    .line 1
    :cond_0
    check-cast p2, Lcom/shabakaty/downloader/xv2;

    if-nez p3, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/pi1;->V:J

    const-wide/16 v2, 0x4

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/pi1;->V:J

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

    .line 5
    :cond_2
    check-cast p2, Lcom/shabakaty/downloader/xv2;

    if-nez p3, :cond_3

    .line 6
    monitor-enter p0

    .line 7
    :try_start_1
    iget-wide p1, p0, Lcom/shabakaty/downloader/pi1;->V:J

    const-wide/16 v2, 0x2

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/pi1;->V:J

    .line 8
    monitor-exit p0

    const/4 v0, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_3
    :goto_1
    return v0

    .line 9
    :cond_4
    check-cast p2, Lcom/shabakaty/downloader/xv2;

    if-nez p3, :cond_5

    .line 10
    monitor-enter p0

    .line 11
    :try_start_2
    iget-wide p1, p0, Lcom/shabakaty/downloader/pi1;->V:J

    const-wide/16 v2, 0x1

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/pi1;->V:J

    .line 12
    monitor-exit p0

    const/4 v0, 0x1

    goto :goto_2

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :cond_5
    :goto_2
    return v0
.end method
