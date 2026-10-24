.class public final synthetic Lcom/shabakaty/downloader/r15;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/xc0;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/u15;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/u15;I)V
    .locals 0

    iput p2, p0, Lcom/shabakaty/downloader/r15;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/r15;->s:Lcom/shabakaty/downloader/u15;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 13

    iget v0, p0, Lcom/shabakaty/downloader/r15;->r:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "this$0"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/r15;->s:Lcom/shabakaty/downloader/u15;

    check-cast p1, Lcom/shabakaty/downloader/tj;

    .line 1
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v4, p1, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 3
    check-cast v4, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez v4, :cond_0

    move-object v4, v3

    goto :goto_0

    .line 4
    :cond_0
    iget-object v4, v4, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->kind:Ljava/lang/String;

    :goto_0
    const-string v5, "2"

    .line 5
    invoke-static {v4, v5}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 6
    iget-object v4, p1, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 7
    check-cast v4, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    invoke-virtual {v0, v4}, Lcom/shabakaty/downloader/u15;->s(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V

    .line 8
    iget-object v4, p1, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 9
    check-cast v4, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 10
    iget-object v6, v0, Lcom/shabakaty/downloader/u15;->j:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {v6}, Lcom/shabakaty/usermanagement/UserManagement;->isLoggedIn()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 11
    iget-object v6, v0, Lcom/shabakaty/downloader/u15;->h:Lcom/shabakaty/downloader/q15;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v4, :cond_1

    move-object v7, v3

    goto :goto_1

    .line 12
    :cond_1
    iget-object v7, v4, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->kind:Ljava/lang/String;

    .line 13
    :goto_1
    invoke-static {v7, v5}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 14
    iget-object v4, v4, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->rootSeries:Ljava/lang/String;

    goto :goto_2

    :cond_2
    if-nez v4, :cond_3

    move-object v4, v3

    goto :goto_2

    .line 15
    :cond_3
    iget-object v4, v4, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 16
    :goto_2
    iget-object v5, v6, Lcom/shabakaty/downloader/q15;->e:Lcom/shabakaty/downloader/ox4;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/ox4;->b()Lcom/shabakaty/downloader/f74;

    move-result-object v5

    invoke-virtual {v5}, Lcom/shabakaty/downloader/f74;->n()Lcom/shabakaty/downloader/qf1;

    move-result-object v5

    sget-object v6, Lcom/shabakaty/downloader/mu1;->t:Lcom/shabakaty/downloader/mu1;

    .line 17
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget v7, Lcom/shabakaty/downloader/qf1;->r:I

    const-string v8, "bufferSize"

    .line 19
    invoke-static {v7, v8}, Lcom/shabakaty/downloader/n43;->a(ILjava/lang/String;)I

    .line 20
    new-instance v8, Lcom/shabakaty/downloader/dg1;

    invoke-direct {v8, v5, v6, v7}, Lcom/shabakaty/downloader/dg1;-><init>(Lcom/shabakaty/downloader/qf1;Lcom/shabakaty/downloader/in1;I)V

    .line 21
    new-instance v5, Lcom/shabakaty/downloader/gw3;

    const/4 v6, 0x2

    invoke-direct {v5, v4, v6}, Lcom/shabakaty/downloader/gw3;-><init>(Ljava/lang/String;I)V

    .line 22
    new-instance v4, Lcom/shabakaty/downloader/sf1;

    invoke-direct {v4, v8, v5}, Lcom/shabakaty/downloader/sf1;-><init>(Lcom/shabakaty/downloader/qf1;Lcom/shabakaty/downloader/ye3;)V

    .line 23
    sget-object v5, Lcom/shabakaty/downloader/p15;->s:Lcom/shabakaty/downloader/p15;

    .line 24
    new-instance v6, Lcom/shabakaty/downloader/v74;

    invoke-direct {v6, v4, v5}, Lcom/shabakaty/downloader/v74;-><init>(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/in1;)V

    .line 25
    iget-object v4, v0, Lcom/shabakaty/downloader/u15;->y:Lcom/shabakaty/downloader/mj;

    invoke-virtual {v0, v6, v4}, Lcom/shabakaty/downloader/xk;->c(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/xv2;)Lcom/shabakaty/downloader/mu0;

    .line 26
    :cond_4
    iget-object p1, p1, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 27
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 28
    iget-object v4, v0, Lcom/shabakaty/downloader/u15;->u:Lcom/shabakaty/downloader/mj;

    const-string v5, "<this>"

    .line 29
    invoke-static {v4, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/tj;

    if-nez v4, :cond_5

    goto :goto_3

    .line 31
    :cond_5
    iget-object v3, v4, Lcom/shabakaty/downloader/tj;->a:Lcom/shabakaty/downloader/tj$a;

    .line 32
    :goto_3
    sget-object v4, Lcom/shabakaty/downloader/tj$a;->r:Lcom/shabakaty/downloader/tj$a;

    if-ne v3, v4, :cond_6

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    if-nez v1, :cond_b

    .line 33
    iget-object v1, v0, Lcom/shabakaty/downloader/u15;->h:Lcom/shabakaty/downloader/q15;

    const-string v3, ""

    if-nez p1, :cond_7

    goto :goto_5

    .line 34
    :cond_7
    iget-object v4, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    if-nez v4, :cond_8

    :goto_5
    move-object v4, v3

    :cond_8
    if-nez p1, :cond_9

    goto :goto_6

    .line 35
    :cond_9
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->enTitle:Ljava/lang/String;

    if-nez p1, :cond_a

    goto :goto_6

    :cond_a
    move-object v3, p1

    .line 36
    :goto_6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance p1, Lcom/shabakaty/cinemana/domain/models/remote/RecommendationsRequest;

    const/4 v5, 0x4

    invoke-direct {p1, v4, v3, v2, v5}, Lcom/shabakaty/cinemana/domain/models/remote/RecommendationsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 38
    iget-object v2, v1, Lcom/shabakaty/downloader/q15;->a:Lcom/shabakaty/downloader/k9;

    const-string v3, "https://recommend.shabakaty.cc/api/recommendation/recommend/"

    const-string v4, "cacheable-for-authorized, max-age=300"

    .line 39
    invoke-interface {v2, p1, v3, v4}, Lcom/shabakaty/downloader/k9;->o(Lcom/shabakaty/cinemana/domain/models/remote/RecommendationsRequest;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    .line 40
    iget-object v1, v1, Lcom/shabakaty/downloader/q15;->d:Lcom/shabakaty/downloader/qm2;

    new-instance v2, Lcom/shabakaty/downloader/hx;

    const/16 v3, 0x1c

    invoke-direct {v2, v1, v3}, Lcom/shabakaty/downloader/hx;-><init>(Lcom/shabakaty/downloader/qm2;I)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v1, Lcom/shabakaty/downloader/v74;

    invoke-direct {v1, p1, v2}, Lcom/shabakaty/downloader/v74;-><init>(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/in1;)V

    .line 42
    invoke-static {v1}, Lcom/shabakaty/downloader/uv3;->f(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    sget-object v1, Lcom/shabakaty/downloader/g00;->t:Lcom/shabakaty/downloader/g00;

    .line 43
    new-instance v2, Lcom/shabakaty/downloader/n74;

    invoke-direct {v2, p1, v1}, Lcom/shabakaty/downloader/n74;-><init>(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/xc0;)V

    .line 44
    iget-object p1, v0, Lcom/shabakaty/downloader/u15;->u:Lcom/shabakaty/downloader/mj;

    invoke-virtual {v0, v2, p1}, Lcom/shabakaty/downloader/xk;->c(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/xv2;)Lcom/shabakaty/downloader/mu0;

    :cond_b
    return-void

    .line 45
    :goto_7
    iget-object v0, p0, Lcom/shabakaty/downloader/r15;->s:Lcom/shabakaty/downloader/u15;

    check-cast p1, Lcom/shabakaty/downloader/tj;

    .line 46
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v4, p1, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 48
    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_c

    goto/16 :goto_22

    .line 49
    :cond_c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    .line 50
    :cond_d
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 51
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    .line 52
    check-cast v5, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 53
    iget-object v6, v5, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->status:Lcom/shabakaty/downloader/q25;

    if-nez v6, :cond_e

    goto :goto_8

    .line 54
    :cond_e
    iget-boolean v7, v6, Lcom/shabakaty/downloader/q25;->s:Z

    if-ne v7, v1, :cond_f

    const/4 v7, 0x1

    goto :goto_9

    :cond_f
    :goto_8
    const/4 v7, 0x0

    :goto_9
    const/4 v8, -0x1

    if-nez v7, :cond_15

    if-nez v6, :cond_10

    goto :goto_b

    .line 55
    :cond_10
    iget-wide v9, v6, Lcom/shabakaty/downloader/q25;->x:J

    const-wide/16 v11, 0x0

    cmp-long v7, v9, v11

    if-gez v7, :cond_11

    const/4 v7, -0x1

    goto :goto_a

    :cond_11
    if-nez v7, :cond_12

    const/4 v7, 0x0

    goto :goto_a

    :cond_12
    const/4 v7, 0x1

    :goto_a
    if-ne v7, v1, :cond_13

    const/4 v7, 0x1

    goto :goto_c

    :cond_13
    :goto_b
    const/4 v7, 0x0

    :goto_c
    if-eqz v7, :cond_14

    goto :goto_d

    :cond_14
    const/4 v7, 0x0

    goto :goto_e

    :cond_15
    :goto_d
    const/4 v7, 0x1

    :goto_e
    if-eqz v7, :cond_d

    .line 56
    iget-object p1, p1, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 57
    check-cast p1, Ljava/util/List;

    if-nez v6, :cond_16

    goto :goto_f

    .line 58
    :cond_16
    iget-boolean v4, v6, Lcom/shabakaty/downloader/q25;->s:Z

    if-ne v4, v1, :cond_17

    const/4 v4, 0x1

    goto :goto_10

    :cond_17
    :goto_f
    const/4 v4, 0x0

    :goto_10
    if-nez v4, :cond_1a

    if-nez v6, :cond_18

    goto :goto_11

    .line 59
    :cond_18
    iget-wide v6, v6, Lcom/shabakaty/downloader/q25;->x:J

    long-to-float v4, v6

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v4, v6

    .line 60
    iget-object v6, v5, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->duration:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    div-float/2addr v4, v6

    const v6, 0x3f733333    # 0.95f

    invoke-static {v4, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-ne v4, v8, :cond_19

    const/4 v4, 0x1

    goto :goto_12

    :cond_19
    :goto_11
    const/4 v4, 0x0

    :goto_12
    if-eqz v4, :cond_1a

    goto/16 :goto_21

    :cond_1a
    if-nez p1, :cond_1b

    move-object v4, v3

    goto :goto_14

    .line 61
    :cond_1b
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1c
    :goto_13
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 63
    iget-object v8, v8, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->season:Ljava/lang/String;

    iget-object v9, v5, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->season:Ljava/lang/String;

    .line 64
    invoke-static {v8, v9}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_1d
    :goto_14
    if-nez p1, :cond_1e

    move-object v6, v3

    goto :goto_16

    .line 65
    :cond_1e
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1f
    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 67
    iget-object v8, v8, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->season:Ljava/lang/String;

    iget-object v9, v5, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->season:Ljava/lang/String;

    .line 68
    invoke-static {v9}, Lcom/shabakaty/downloader/vd5;->B(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v9, v1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_20
    :goto_16
    if-nez v4, :cond_21

    goto :goto_17

    .line 69
    :cond_21
    invoke-static {v4}, Lcom/shabakaty/downloader/m50;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez p1, :cond_22

    :goto_17
    move-object p1, v3

    goto :goto_18

    :cond_22
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    :goto_18
    iget-object v7, v5, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    invoke-static {p1, v7}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    if-eqz v6, :cond_24

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_23

    goto :goto_19

    :cond_23
    const/4 p1, 0x0

    goto :goto_1a

    :cond_24
    :goto_19
    const/4 p1, 0x1

    :goto_1a
    if-nez p1, :cond_26

    if-nez v6, :cond_25

    goto :goto_20

    .line 70
    :cond_25
    invoke-static {v6}, Lcom/shabakaty/downloader/m50;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    goto :goto_20

    :cond_26
    if-nez v4, :cond_27

    goto :goto_1d

    .line 71
    :cond_27
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x0

    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_29

    add-int/lit8 v6, v3, 0x1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 72
    check-cast v7, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 73
    iget-object v7, v7, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    iget-object v8, v5, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 74
    invoke-static {v7, v8}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_28

    move v2, v3

    goto :goto_1c

    :cond_28
    move v3, v6

    goto :goto_1b

    .line 75
    :cond_29
    :goto_1c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_1d
    if-nez v4, :cond_2a

    goto :goto_1f

    :cond_2a
    if-nez v3, :cond_2b

    goto :goto_1e

    .line 76
    :cond_2b
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr v1, p1

    :goto_1e
    invoke-static {v4, v1}, Lcom/shabakaty/downloader/m50;->c0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez v3, :cond_2c

    :goto_1f
    move-object v3, v5

    :cond_2c
    :goto_20
    if-nez v3, :cond_2d

    goto :goto_21

    :cond_2d
    move-object v5, v3

    .line 77
    :goto_21
    iget-object p1, v5, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    const-string v1, "<set-?>"

    .line 78
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iput-object p1, v0, Lcom/shabakaty/downloader/u15;->B:Ljava/lang/String;

    .line 80
    iget-object p1, v0, Lcom/shabakaty/downloader/u15;->t:Lcom/shabakaty/downloader/mj;

    .line 81
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/tj;

    if-nez p1, :cond_2e

    goto :goto_22

    .line 82
    :cond_2e
    iput-object v5, p1, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 83
    :goto_22
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u15;->p()V

    return-void

    .line 84
    :cond_2f
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "List contains no element matching the predicate."

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
