.class public final Lcom/shabakaty/cinemana/helpers/casting/ExpandedControlsActivity;
.super Lcom/shabakaty/downloader/i81;
.source "ExpandedControlsActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/shabakaty/cinemana/helpers/casting/ExpandedControlsActivity;",
        "Lcom/shabakaty/downloader/i81;",
        "<init>",
        "()V",
        "app_productionBetaRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic o0:I


# instance fields
.field public g0:Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;

.field public h0:I

.field public i0:J

.field public j0:Z

.field public k0:[J

.field public l0:[J

.field public m0:Ljava/lang/String;

.field public n0:Lcom/shabakaty/downloader/n24;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/i81;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [J

    .line 2
    iput-object v1, p0, Lcom/shabakaty/cinemana/helpers/casting/ExpandedControlsActivity;->k0:[J

    new-array v0, v0, [J

    .line 3
    iput-object v0, p0, Lcom/shabakaty/cinemana/helpers/casting/ExpandedControlsActivity;->l0:[J

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/shabakaty/cinemana/helpers/casting/ExpandedControlsActivity;->m0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    const-string v0, "menu"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/r9;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0e0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/sw;->a:Ljava/util/List;

    const-string v0, "Must be called from the main thread."

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    const v0, 0x7f0a029c

    .line 5
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 6
    :try_start_0
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/sw;->a(Landroid/content/Context;Landroid/view/MenuItem;)V

    .line 7
    sget-object v3, Lcom/shabakaty/downloader/sw;->a:Ljava/util/List;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 8
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "menu item with ID %d doesn\'t have a MediaRouteActionProvider."

    .line 10
    invoke-static {v3, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "menu doesn\'t contain a menu item whose ID is %d."

    .line 13
    invoke-static {v3, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onStart()V
    .locals 8

    .line 1
    invoke-super {p0}, Lcom/shabakaty/downloader/r9;->onStart()V

    .line 2
    invoke-static {p0}, Lcom/shabakaty/downloader/vd5;->p(Landroid/app/Activity;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/cinemana/helpers/casting/ExpandedControlsActivity;->n0:Lcom/shabakaty/downloader/n24;

    const/4 v1, 0x0

    const-string v2, "settings"

    if-eqz v0, :cond_12

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/n24;->f()Z

    move-result v0

    const-string v3, "yes"

    if-eqz v0, :cond_0

    move-object v0, v3

    goto :goto_0

    :cond_0
    const-string v0, "no"

    :goto_0
    iput-object v0, p0, Lcom/shabakaty/cinemana/helpers/casting/ExpandedControlsActivity;->m0:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "parental"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    instance-of v4, v0, Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;

    if-eqz v4, :cond_1

    check-cast v0, Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/shabakaty/cinemana/helpers/casting/ExpandedControlsActivity;->g0:Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "VideoModelArg"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    instance-of v4, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-eqz v4, :cond_2

    check-cast v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "trans"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    iget-object v0, p0, Lcom/shabakaty/cinemana/helpers/casting/ExpandedControlsActivity;->g0:Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;

    if-nez v0, :cond_3

    new-instance v0, Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;

    const/4 v4, 0x3

    invoke-direct {v0, v1, v1, v4}, Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;-><init>(Ljava/util/List;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/shabakaty/cinemana/helpers/casting/ExpandedControlsActivity;->g0:Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/shabakaty/cinemana/helpers/casting/ExpandedControlsActivity;->n0:Lcom/shabakaty/downloader/n24;

    if-eqz v0, :cond_11

    .line 10
    invoke-virtual {v0}, Lcom/shabakaty/downloader/n24;->f()Z

    move-result v0

    .line 11
    iget-object v2, p0, Lcom/shabakaty/cinemana/helpers/casting/ExpandedControlsActivity;->g0:Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;

    const/4 v4, 0x0

    if-nez v2, :cond_4

    goto :goto_2

    .line 12
    :cond_4
    iget-object v2, v2, Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;->start:Ljava/util/List;

    if-nez v2, :cond_5

    :goto_2
    const/4 v2, 0x0

    goto :goto_3

    .line 13
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_3
    if-lez v2, :cond_e

    if-eqz v0, :cond_e

    .line 14
    iget-object v0, p0, Lcom/shabakaty/cinemana/helpers/casting/ExpandedControlsActivity;->g0:Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;

    const/16 v2, 0xa

    if-nez v0, :cond_6

    goto :goto_4

    .line 15
    :cond_6
    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;->start:Ljava/util/List;

    if-nez v0, :cond_7

    :goto_4
    move-object v5, v1

    goto :goto_6

    .line 16
    :cond_7
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 18
    check-cast v6, Ljava/lang/String;

    .line 19
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    :goto_6
    if-nez v5, :cond_9

    sget-object v5, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    :cond_9
    invoke-virtual {p0, v5}, Lcom/shabakaty/cinemana/helpers/casting/ExpandedControlsActivity;->q0(Ljava/util/List;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/cinemana/helpers/casting/ExpandedControlsActivity;->k0:[J

    .line 20
    iget-object v0, p0, Lcom/shabakaty/cinemana/helpers/casting/ExpandedControlsActivity;->g0:Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;

    if-nez v0, :cond_a

    goto :goto_8

    .line 21
    :cond_a
    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;->end:Ljava/util/List;

    if-nez v0, :cond_b

    goto :goto_8

    .line 22
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/String;

    .line 25
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    :goto_8
    if-nez v1, :cond_d

    sget-object v1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    :cond_d
    invoke-virtual {p0, v1}, Lcom/shabakaty/cinemana/helpers/casting/ExpandedControlsActivity;->q0(Ljava/util/List;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/cinemana/helpers/casting/ExpandedControlsActivity;->l0:[J

    .line 26
    :cond_e
    invoke-static {p0}, Lcom/shabakaty/downloader/tw;->d(Landroid/content/Context;)Lcom/shabakaty/downloader/tw;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/shabakaty/downloader/tw;->c()Lcom/shabakaty/downloader/y14;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/y14;->c()Lcom/shabakaty/downloader/xw;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [J

    const-wide/16 v5, 0x1

    aput-wide v5, v2, v4

    if-eqz v0, :cond_10

    .line 28
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xw;->k()Lcom/shabakaty/downloader/br3;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 29
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/br3;->u([J)Lcom/shabakaty/downloader/nb3;

    .line 30
    iget-object v2, p0, Lcom/shabakaty/cinemana/helpers/casting/ExpandedControlsActivity;->k0:[J

    array-length v2, v2

    if-nez v2, :cond_f

    const/4 v4, 0x1

    :cond_f
    xor-int/2addr v1, v4

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/shabakaty/cinemana/helpers/casting/ExpandedControlsActivity;->m0:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 31
    new-instance v1, Lcom/shabakaty/downloader/j81;

    invoke-direct {v1, p0, v0}, Lcom/shabakaty/downloader/j81;-><init>(Lcom/shabakaty/cinemana/helpers/casting/ExpandedControlsActivity;Lcom/shabakaty/downloader/br3;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/shabakaty/downloader/br3;->a(Lcom/shabakaty/downloader/br3$d;J)Z

    :cond_10
    return-void

    .line 32
    :cond_11
    invoke-static {v2}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v1

    .line 33
    :cond_12
    invoke-static {v2}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public final q0(Ljava/util/List;)[J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)[J"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v2, 0x1

    .line 3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    long-to-double v6, v6

    mul-double v4, v4, v6

    double-to-long v4, v4

    aput-wide v4, v0, v2

    if-le v3, v1, :cond_0

    goto :goto_1

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method
