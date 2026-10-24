.class public final synthetic Lcom/shabakaty/downloader/l91;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/wl;
.implements Landroidx/core/widget/NestedScrollView$b;
.implements Lcom/google/android/material/chip/ChipGroup$d;
.implements Lcom/google/android/material/tabs/c$b;
.implements Lcom/shabakaty/downloader/wa3;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lcom/shabakaty/downloader/l91;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/l91;->s:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lcom/shabakaty/downloader/l91;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/l91;->s:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/d15;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/l91;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/l91;->s:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/df2;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lcom/shabakaty/downloader/l91;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/l91;->s:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/ha3;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/shabakaty/downloader/l91;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/l91;->s:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/m91;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/l91;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/l91;->s:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/nm4;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/shabakaty/downloader/l91;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/l91;->s:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/so1;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/shabakaty/downloader/l91;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/l91;->s:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/u15;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/shabakaty/downloader/l91;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/l91;->s:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Landroidx/core/widget/NestedScrollView;IIII)V
    .locals 0

    iget-object p1, p0, Lcom/shabakaty/downloader/l91;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/d15;

    sget-boolean p2, Lcom/shabakaty/downloader/d15;->A:Z

    const-string p2, "this$0"

    .line 1
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1, p1}, Lcom/shabakaty/downloader/hj;->b2(Landroidx/fragment/app/Fragment;)Z

    move-result p2

    if-eqz p2, :cond_1

    if-le p5, p3, :cond_0

    int-to-float p2, p3

    .line 3
    iget-object p3, p1, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p3}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 4
    check-cast p3, Lcom/shabakaty/downloader/jl1;

    iget-object p3, p3, Lcom/shabakaty/downloader/jl1;->g0:Lcom/shabakaty/downloader/k15;

    iget-object p3, p3, Lcom/shabakaty/downloader/k15;->M:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p3}, Landroid/widget/HorizontalScrollView;->getY()F

    move-result p3

    const/16 p4, 0x12c

    int-to-float p4, p4

    add-float/2addr p3, p4

    cmpl-float p2, p2, p3

    if-lez p2, :cond_0

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 6
    check-cast p1, Lcom/shabakaty/downloader/jl1;

    iget-object p1, p1, Lcom/shabakaty/downloader/jl1;->P:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->p()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p1, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 8
    check-cast p1, Lcom/shabakaty/downloader/jl1;

    iget-object p1, p1, Lcom/shabakaty/downloader/jl1;->P:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i()V

    :cond_1
    :goto_0
    return-void
.end method

.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/shabakaty/downloader/l91;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/m91;

    check-cast p1, Lcom/shabakaty/downloader/tj;

    check-cast p2, Lcom/shabakaty/downloader/tj;

    const-string v1, "this$0"

    .line 1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "videoModel"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "transcodeFiles"

    invoke-static {p2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p1, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 3
    check-cast v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v2, "srt"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/shabakaty/downloader/m91;->l(Ljava/lang/String;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->g(Ljava/lang/String;)V

    .line 5
    iget-object v2, p1, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 6
    check-cast v2, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    const-string v3, "vtt"

    invoke-virtual {v0, v3, v2}, Lcom/shabakaty/downloader/m91;->l(Ljava/lang/String;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->i(Ljava/lang/String;)V

    .line 7
    iget-object p2, p2, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 8
    check-cast p2, Ljava/util/List;

    const/4 v2, 0x0

    if-nez p2, :cond_1

    move-object p2, v2

    goto :goto_1

    .line 9
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {p2, v4}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 11
    check-cast v4, Lcom/shabakaty/cinemana/domain/models/local/TranscodeFile;

    .line 12
    new-instance v5, Lcom/shabakaty/cinemana/domain/models/local/Quality;

    .line 13
    iget-object v6, v4, Lcom/shabakaty/cinemana/domain/models/local/TranscodeFile;->resolution:Ljava/lang/String;

    .line 14
    iget-object v7, v4, Lcom/shabakaty/cinemana/domain/models/local/TranscodeFile;->name:Ljava/lang/String;

    .line 15
    iget-object v4, v4, Lcom/shabakaty/cinemana/domain/models/local/TranscodeFile;->videoUrl:Ljava/lang/String;

    .line 16
    invoke-direct {v5, v6, v7, v4}, Lcom/shabakaty/cinemana/domain/models/local/Quality;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_2
    invoke-static {v3}, Lcom/shabakaty/downloader/m50;->z0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    :goto_1
    if-nez p2, :cond_3

    .line 18
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 19
    :cond_3
    invoke-virtual {v1, p2}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->m(Ljava/util/List;)V

    .line 20
    iget-object p2, v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->actorsInfo:Ljava/util/List;

    .line 21
    invoke-static {p2}, Lcom/shabakaty/downloader/m50;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/ob4;

    if-nez p2, :cond_4

    goto :goto_2

    .line 22
    :cond_4
    iget-object v2, p2, Lcom/shabakaty/downloader/ob4;->s:Ljava/lang/String;

    :goto_2
    const-string p2, "nostaff"

    .line 23
    invoke-static {v2, p2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 24
    sget-object p2, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    invoke-virtual {v1, p2}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->f(Ljava/util/List;)V

    .line 25
    :cond_5
    :goto_3
    iget-object v4, p1, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 26
    new-instance p1, Lcom/shabakaty/downloader/tj;

    .line 27
    sget-object v3, Lcom/shabakaty/downloader/tj$a;->r:Lcom/shabakaty/downloader/tj$a;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    move-object v2, p1

    .line 28
    invoke-direct/range {v2 .. v7}, Lcom/shabakaty/downloader/tj;-><init>(Lcom/shabakaty/downloader/tj$a;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;I)V

    .line 29
    iget-object p2, p1, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 30
    check-cast p2, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 31
    iput-object p2, v0, Lcom/shabakaty/downloader/m91;->i:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    return-object p1
.end method

.method public b(Lcom/google/android/material/chip/ChipGroup;I)V
    .locals 10

    iget v0, p0, Lcom/shabakaty/downloader/l91;->r:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/l91;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ha3;

    if-eq p2, v2, :cond_4

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/chip/Chip;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    if-nez p1, :cond_1

    move-object p1, v1

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_2

    check-cast p1, Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object p1, v1

    :goto_1
    if-nez p1, :cond_3

    const-string p1, "0"

    :cond_3
    check-cast v0, Lcom/shabakaty/downloader/nj1$a;

    .line 3
    iget-object p2, v0, Lcom/shabakaty/downloader/nj1$a;->a:Lcom/shabakaty/downloader/kb1;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/hb1;

    invoke-direct {v0, p2, p1, v1}, Lcom/shabakaty/downloader/hb1;-><init>(Lcom/shabakaty/downloader/kb1;Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)V

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/xk;->h(Lcom/shabakaty/downloader/hn1;)Lcom/shabakaty/downloader/e92;

    :cond_4
    :goto_2
    return-void

    .line 5
    :pswitch_1
    iget-object p1, p0, Lcom/shabakaty/downloader/l91;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/so1;

    if-eq p2, v2, :cond_7

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    const v0, 0x7f0a01eb

    if-ne p2, v0, :cond_6

    const-string p2, "MALE"

    goto :goto_3

    :cond_6
    const-string p2, "FEMALE"

    .line 6
    :goto_3
    check-cast p1, Lcom/shabakaty/downloader/jj1$a;

    .line 7
    iget-object p1, p1, Lcom/shabakaty/downloader/jj1$a;->a:Lcom/shabakaty/downloader/g21;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p1, p1, Lcom/shabakaty/downloader/g21;->n:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    :cond_7
    :goto_4
    return-void

    .line 9
    :pswitch_2
    iget-object p1, p0, Lcom/shabakaty/downloader/l91;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/nm4;

    if-eq p2, v2, :cond_a

    const v0, 0x7f0a04b6

    if-ne p2, v0, :cond_8

    .line 10
    sget-object p2, Lcom/shabakaty/downloader/ky4$a;->b:Lcom/shabakaty/downloader/ky4$a;

    goto :goto_5

    .line 11
    :cond_8
    sget-object p2, Lcom/shabakaty/downloader/ky4$b;->b:Lcom/shabakaty/downloader/ky4$b;

    :goto_5
    if-nez p1, :cond_9

    goto :goto_6

    .line 12
    :cond_9
    check-cast p1, Lcom/shabakaty/downloader/li1$b;

    .line 13
    iget-object p1, p1, Lcom/shabakaty/downloader/li1$b;->a:Lcom/shabakaty/downloader/rb;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v0, Lcom/shabakaty/downloader/pb;

    invoke-direct {v0, p2, p1, v1}, Lcom/shabakaty/downloader/pb;-><init>(Lcom/shabakaty/downloader/ky4;Lcom/shabakaty/downloader/rb;Lcom/shabakaty/downloader/ud0;)V

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/xk;->h(Lcom/shabakaty/downloader/hn1;)Lcom/shabakaty/downloader/e92;

    :cond_a
    :goto_6
    return-void

    .line 15
    :goto_7
    iget-object p1, p0, Lcom/shabakaty/downloader/l91;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/df2;

    if-eq p2, v2, :cond_f

    const v0, 0x7f0a0251

    if-ne p2, v0, :cond_b

    .line 16
    sget-object p2, Lcom/shabakaty/downloader/tx4$a;->b:Lcom/shabakaty/downloader/tx4$a;

    goto :goto_8

    .line 17
    :cond_b
    sget-object p2, Lcom/shabakaty/downloader/tx4$b;->b:Lcom/shabakaty/downloader/tx4$b;

    :goto_8
    if-nez p1, :cond_c

    goto :goto_a

    .line 18
    :cond_c
    check-cast p1, Lcom/shabakaty/downloader/li1$a;

    .line 19
    iget-object p1, p1, Lcom/shabakaty/downloader/li1$a;->a:Lcom/shabakaty/downloader/rb;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p2, Lcom/shabakaty/downloader/tx4;->a:Ljava/lang/String;

    .line 21
    iget-object v2, p1, Lcom/shabakaty/downloader/rb;->f:Lcom/shabakaty/downloader/n24;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/n24;->c()Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;

    move-result-object v2

    .line 22
    iget-object v2, v2, Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;->language:Lcom/shabakaty/downloader/tx4;

    .line 23
    iget-object v2, v2, Lcom/shabakaty/downloader/tx4;->a:Ljava/lang/String;

    .line 24
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 25
    iget-object v0, p1, Lcom/shabakaty/downloader/rb;->f:Lcom/shabakaty/downloader/n24;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v2, v0, Lcom/shabakaty/downloader/n24;->c:Lcom/shabakaty/downloader/ff3;

    .line 27
    iget-object v3, p2, Lcom/shabakaty/downloader/tx4;->a:Ljava/lang/String;

    .line 28
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "language"

    .line 29
    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v4, v2, Lcom/shabakaty/downloader/ff3;->a:Landroid/content/SharedPreferences;

    const-string v5, "ar"

    const-string v6, "key_app_language"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    goto :goto_9

    :cond_d
    move-object v5, v4

    .line 31
    :goto_9
    invoke-static {v5, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 32
    iget-object v2, v2, Lcom/shabakaty/downloader/ff3;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 33
    :cond_e
    sget-object v2, Lcom/shabakaty/downloader/uj2;->c:Lcom/shabakaty/downloader/uj2$b;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/uj2$b;->a()Lcom/shabakaty/downloader/uj2;

    move-result-object v2

    .line 34
    iget-object v3, p2, Lcom/shabakaty/downloader/tx4;->a:Ljava/lang/String;

    .line 35
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/uj2;->b(Ljava/lang/String;)Landroid/content/Context;

    .line 36
    sget-object v4, Lcom/shabakaty/downloader/iq1;->r:Lcom/shabakaty/downloader/iq1;

    new-instance v7, Lcom/shabakaty/downloader/p24;

    invoke-direct {v7, v0, p2, v1}, Lcom/shabakaty/downloader/p24;-><init>(Lcom/shabakaty/downloader/n24;Lcom/shabakaty/downloader/tx4;Lcom/shabakaty/downloader/ud0;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    .line 37
    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/nb;

    invoke-interface {p1}, Lcom/shabakaty/downloader/nb;->w0()V

    :cond_f
    :goto_a
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(Lcom/google/android/material/tabs/TabLayout$f;I)V
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/downloader/l91;->s:Ljava/lang/Object;

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    const-string v1, "$this_setSeasonsFragments"

    .line 1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const v2, 0x7f1202af

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout$f;->b(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$f;

    return-void
.end method

.method public create(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/shabakaty/downloader/l91;->s:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    const-string v1, "$context"

    .line 1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    const-string v0, "md5"

    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v2, "getInstance(\"md5\")"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v2, Lcom/shabakaty/downloader/hz;->b:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v2, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 5
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    const-string v0, "digest.digest()"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v5, v4, 0x1

    const-string v6, "%02X"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    .line 8
    aget-byte v4, p1, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v8, v3

    invoke-static {v8, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "java.lang.String.format(format, *args)"

    invoke-static {v4, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le v5, v2, :cond_0

    goto :goto_1

    :cond_0
    move v4, v5

    goto :goto_0

    .line 9
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sb.toString()"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "ENGLISH"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 11
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    .line 12
    :goto_2
    invoke-static {p1}, Lcom/shabakaty/downloader/dt3;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 13
    instance-of v0, p1, Lcom/shabakaty/downloader/dt3$a;

    if-eqz v0, :cond_3

    const-string p1, ""

    .line 14
    :cond_3
    check-cast p1, Ljava/lang/String;

    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
