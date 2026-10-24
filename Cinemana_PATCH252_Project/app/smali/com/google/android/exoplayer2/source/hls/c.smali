.class public final Lcom/google/android/exoplayer2/source/hls/c;
.super Ljava/lang/Object;
.source "HlsMediaPeriod.java"

# interfaces
.implements Lcom/shabakaty/downloader/kp2;
.implements Lcom/google/android/exoplayer2/source/hls/d$b;
.implements Lcom/shabakaty/downloader/ot1$b;


# instance fields
.field public final A:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/shabakaty/downloader/dx3;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final B:Lcom/shabakaty/downloader/rn4;

.field public final C:Lcom/shabakaty/downloader/kd;

.field public final D:Z

.field public final E:I

.field public final F:Z

.field public G:Lcom/shabakaty/downloader/kp2$a;

.field public H:I

.field public I:Lcom/shabakaty/downloader/cp4;

.field public J:[Lcom/google/android/exoplayer2/source/hls/d;

.field public K:[Lcom/google/android/exoplayer2/source/hls/d;

.field public L:I

.field public M:Lcom/shabakaty/downloader/o04;

.field public final r:Lcom/shabakaty/downloader/ht1;

.field public final s:Lcom/shabakaty/downloader/ot1;

.field public final t:Lcom/shabakaty/downloader/gt1;

.field public final u:Lcom/shabakaty/downloader/sp4;

.field public final v:Lcom/shabakaty/downloader/u01;

.field public final w:Lcom/shabakaty/downloader/s01$a;

.field public final x:Lcom/shabakaty/downloader/gj2;

.field public final y:Lcom/shabakaty/downloader/yq2$a;

.field public final z:Lcom/shabakaty/downloader/fn0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ht1;Lcom/shabakaty/downloader/ot1;Lcom/shabakaty/downloader/gt1;Lcom/shabakaty/downloader/sp4;Lcom/shabakaty/downloader/u01;Lcom/shabakaty/downloader/s01$a;Lcom/shabakaty/downloader/gj2;Lcom/shabakaty/downloader/yq2$a;Lcom/shabakaty/downloader/fn0;Lcom/shabakaty/downloader/kd;ZIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/c;->r:Lcom/shabakaty/downloader/ht1;

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/c;->s:Lcom/shabakaty/downloader/ot1;

    .line 4
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/c;->t:Lcom/shabakaty/downloader/gt1;

    .line 5
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/hls/c;->u:Lcom/shabakaty/downloader/sp4;

    .line 6
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/hls/c;->v:Lcom/shabakaty/downloader/u01;

    .line 7
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/hls/c;->w:Lcom/shabakaty/downloader/s01$a;

    .line 8
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/hls/c;->x:Lcom/shabakaty/downloader/gj2;

    .line 9
    iput-object p8, p0, Lcom/google/android/exoplayer2/source/hls/c;->y:Lcom/shabakaty/downloader/yq2$a;

    .line 10
    iput-object p9, p0, Lcom/google/android/exoplayer2/source/hls/c;->z:Lcom/shabakaty/downloader/fn0;

    .line 11
    iput-object p10, p0, Lcom/google/android/exoplayer2/source/hls/c;->C:Lcom/shabakaty/downloader/kd;

    .line 12
    iput-boolean p11, p0, Lcom/google/android/exoplayer2/source/hls/c;->D:Z

    .line 13
    iput p12, p0, Lcom/google/android/exoplayer2/source/hls/c;->E:I

    .line 14
    iput-boolean p13, p0, Lcom/google/android/exoplayer2/source/hls/c;->F:Z

    const/4 p1, 0x0

    new-array p2, p1, [Lcom/shabakaty/downloader/o04;

    .line 15
    invoke-static {p10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance p3, Lcom/shabakaty/downloader/fq1;

    invoke-direct {p3, p2}, Lcom/shabakaty/downloader/fq1;-><init>([Lcom/shabakaty/downloader/o04;)V

    .line 17
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/c;->M:Lcom/shabakaty/downloader/o04;

    .line 18
    new-instance p2, Ljava/util/IdentityHashMap;

    invoke-direct {p2}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/c;->A:Ljava/util/IdentityHashMap;

    .line 19
    new-instance p2, Lcom/shabakaty/downloader/rn4;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/rn4;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/c;->B:Lcom/shabakaty/downloader/rn4;

    new-array p2, p1, [Lcom/google/android/exoplayer2/source/hls/d;

    .line 20
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/c;->J:[Lcom/google/android/exoplayer2/source/hls/d;

    new-array p1, p1, [Lcom/google/android/exoplayer2/source/hls/d;

    .line 21
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/c;->K:[Lcom/google/android/exoplayer2/source/hls/d;

    return-void
.end method

.method public static h(Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/wh1;Z)Lcom/shabakaty/downloader/wh1;
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/wh1;->z:Ljava/lang/String;

    .line 2
    iget-object v1, p1, Lcom/shabakaty/downloader/wh1;->A:Lcom/shabakaty/downloader/ps2;

    .line 3
    iget v3, p1, Lcom/shabakaty/downloader/wh1;->P:I

    .line 4
    iget v4, p1, Lcom/shabakaty/downloader/wh1;->u:I

    .line 5
    iget v5, p1, Lcom/shabakaty/downloader/wh1;->v:I

    .line 6
    iget-object v6, p1, Lcom/shabakaty/downloader/wh1;->t:Ljava/lang/String;

    .line 7
    iget-object p1, p1, Lcom/shabakaty/downloader/wh1;->s:Ljava/lang/String;

    move-object v10, v6

    move v6, v3

    move v3, v5

    move-object v5, v10

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/wh1;->z:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {p1, v3}, Lcom/shabakaty/downloader/sy4;->s(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 9
    iget-object v3, p0, Lcom/shabakaty/downloader/wh1;->A:Lcom/shabakaty/downloader/ps2;

    if-eqz p2, :cond_1

    .line 10
    iget v0, p0, Lcom/shabakaty/downloader/wh1;->P:I

    .line 11
    iget v1, p0, Lcom/shabakaty/downloader/wh1;->u:I

    .line 12
    iget v4, p0, Lcom/shabakaty/downloader/wh1;->v:I

    .line 13
    iget-object v5, p0, Lcom/shabakaty/downloader/wh1;->t:Ljava/lang/String;

    .line 14
    iget-object v6, p0, Lcom/shabakaty/downloader/wh1;->s:Ljava/lang/String;

    move v10, v0

    move-object v0, p1

    move-object p1, v6

    move v6, v10

    move v11, v4

    move v4, v1

    move-object v1, v3

    move v3, v11

    goto :goto_0

    :cond_1
    move-object v5, v0

    move-object v1, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, -0x1

    move-object v0, p1

    move-object p1, v5

    .line 15
    :goto_0
    invoke-static {v0}, Lcom/shabakaty/downloader/nt2;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz p2, :cond_2

    .line 16
    iget v8, p0, Lcom/shabakaty/downloader/wh1;->w:I

    goto :goto_1

    :cond_2
    const/4 v8, -0x1

    :goto_1
    if-eqz p2, :cond_3

    .line 17
    iget v2, p0, Lcom/shabakaty/downloader/wh1;->x:I

    .line 18
    :cond_3
    new-instance p2, Lcom/shabakaty/downloader/wh1$b;

    invoke-direct {p2}, Lcom/shabakaty/downloader/wh1$b;-><init>()V

    iget-object v9, p0, Lcom/shabakaty/downloader/wh1;->r:Ljava/lang/String;

    .line 19
    iput-object v9, p2, Lcom/shabakaty/downloader/wh1$b;->a:Ljava/lang/String;

    .line 20
    iput-object p1, p2, Lcom/shabakaty/downloader/wh1$b;->b:Ljava/lang/String;

    .line 21
    iget-object p0, p0, Lcom/shabakaty/downloader/wh1;->B:Ljava/lang/String;

    .line 22
    iput-object p0, p2, Lcom/shabakaty/downloader/wh1$b;->j:Ljava/lang/String;

    .line 23
    iput-object v7, p2, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    .line 24
    iput-object v0, p2, Lcom/shabakaty/downloader/wh1$b;->h:Ljava/lang/String;

    .line 25
    iput-object v1, p2, Lcom/shabakaty/downloader/wh1$b;->i:Lcom/shabakaty/downloader/ps2;

    .line 26
    iput v8, p2, Lcom/shabakaty/downloader/wh1$b;->f:I

    .line 27
    iput v2, p2, Lcom/shabakaty/downloader/wh1$b;->g:I

    .line 28
    iput v6, p2, Lcom/shabakaty/downloader/wh1$b;->x:I

    .line 29
    iput v4, p2, Lcom/shabakaty/downloader/wh1$b;->d:I

    .line 30
    iput v3, p2, Lcom/shabakaty/downloader/wh1$b;->e:I

    .line 31
    iput-object v5, p2, Lcom/shabakaty/downloader/wh1$b;->c:Ljava/lang/String;

    .line 32
    invoke-virtual {p2}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public B0(Lcom/shabakaty/downloader/kp2$a;J)V
    .locals 22

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    .line 1
    iput-object v0, v9, Lcom/google/android/exoplayer2/source/hls/c;->G:Lcom/shabakaty/downloader/kp2$a;

    .line 2
    iget-object v0, v9, Lcom/google/android/exoplayer2/source/hls/c;->s:Lcom/shabakaty/downloader/ot1;

    invoke-interface {v0, v9}, Lcom/shabakaty/downloader/ot1;->k(Lcom/shabakaty/downloader/ot1$b;)V

    .line 3
    iget-object v0, v9, Lcom/google/android/exoplayer2/source/hls/c;->s:Lcom/shabakaty/downloader/ot1;

    invoke-interface {v0}, Lcom/shabakaty/downloader/ot1;->i()Lcom/shabakaty/downloader/it1;

    move-result-object v10

    .line 4
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-boolean v0, v9, Lcom/google/android/exoplayer2/source/hls/c;->F:Z

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v0, :cond_5

    .line 6
    iget-object v0, v10, Lcom/shabakaty/downloader/it1;->m:Ljava/util/List;

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    .line 9
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 10
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/o01;

    .line 11
    iget-object v5, v4, Lcom/shabakaty/downloader/o01;->t:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    move v6, v3

    .line 12
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 13
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/o01;

    .line 14
    iget-object v8, v7, Lcom/shabakaty/downloader/o01;->t:Ljava/lang/String;

    invoke-static {v8, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 15
    iget-object v8, v4, Lcom/shabakaty/downloader/o01;->t:Ljava/lang/String;

    if-eqz v8, :cond_1

    iget-object v13, v7, Lcom/shabakaty/downloader/o01;->t:Ljava/lang/String;

    if-eqz v13, :cond_1

    .line 16
    invoke-static {v8, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_2

    :cond_0
    const/4 v8, 0x0

    goto :goto_3

    :cond_1
    :goto_2
    const/4 v8, 0x1

    .line 17
    :goto_3
    invoke-static {v8}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 18
    iget-object v8, v4, Lcom/shabakaty/downloader/o01;->t:Ljava/lang/String;

    if-eqz v8, :cond_2

    goto :goto_4

    :cond_2
    iget-object v8, v7, Lcom/shabakaty/downloader/o01;->t:Ljava/lang/String;

    .line 19
    :goto_4
    iget-object v4, v4, Lcom/shabakaty/downloader/o01;->r:[Lcom/shabakaty/downloader/o01$b;

    iget-object v7, v7, Lcom/shabakaty/downloader/o01;->r:[Lcom/shabakaty/downloader/o01$b;

    .line 20
    sget v13, Lcom/shabakaty/downloader/sy4;->a:I

    .line 21
    array-length v13, v4

    array-length v14, v7

    add-int/2addr v13, v14

    invoke-static {v4, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v13

    .line 22
    array-length v4, v4

    array-length v14, v7

    invoke-static {v7, v11, v13, v4, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    check-cast v13, [Lcom/shabakaty/downloader/o01$b;

    .line 24
    new-instance v4, Lcom/shabakaty/downloader/o01;

    .line 25
    invoke-direct {v4, v8, v12, v13}, Lcom/shabakaty/downloader/o01;-><init>(Ljava/lang/String;Z[Lcom/shabakaty/downloader/o01$b;)V

    .line 26
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 27
    :cond_4
    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 28
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    :cond_6
    move-object v13, v2

    .line 29
    iget-object v0, v10, Lcom/shabakaty/downloader/it1;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v12

    .line 30
    iget-object v14, v10, Lcom/shabakaty/downloader/it1;->g:Ljava/util/List;

    .line 31
    iget-object v15, v10, Lcom/shabakaty/downloader/it1;->h:Ljava/util/List;

    .line 32
    iput v11, v9, Lcom/google/android/exoplayer2/source/hls/c;->H:I

    .line 33
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 34
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_19

    .line 35
    iget-object v0, v10, Lcom/shabakaty/downloader/it1;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 36
    :goto_5
    iget-object v5, v10, Lcom/shabakaty/downloader/it1;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ge v2, v5, :cond_a

    .line 37
    iget-object v5, v10, Lcom/shabakaty/downloader/it1;->e:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/it1$b;

    .line 38
    iget-object v5, v5, Lcom/shabakaty/downloader/it1$b;->b:Lcom/shabakaty/downloader/wh1;

    .line 39
    iget v11, v5, Lcom/shabakaty/downloader/wh1;->I:I

    if-gtz v11, :cond_9

    iget-object v11, v5, Lcom/shabakaty/downloader/wh1;->z:Ljava/lang/String;

    invoke-static {v11, v6}, Lcom/shabakaty/downloader/sy4;->s(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_7

    goto :goto_6

    .line 40
    :cond_7
    iget-object v5, v5, Lcom/shabakaty/downloader/wh1;->z:Ljava/lang/String;

    invoke-static {v5, v12}, Lcom/shabakaty/downloader/sy4;->s(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 41
    aput v12, v1, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_8
    const/4 v5, -0x1

    .line 42
    aput v5, v1, v2

    goto :goto_7

    .line 43
    :cond_9
    :goto_6
    aput v6, v1, v2

    add-int/lit8 v3, v3, 0x1

    :goto_7
    add-int/lit8 v2, v2, 0x1

    const/4 v11, 0x0

    goto :goto_5

    :cond_a
    if-lez v3, :cond_b

    const/4 v0, 0x1

    goto :goto_8

    :cond_b
    if-ge v4, v0, :cond_c

    sub-int/2addr v0, v4

    move v11, v0

    const/4 v0, 0x0

    const/4 v2, 0x1

    goto :goto_9

    :cond_c
    move v3, v0

    const/4 v0, 0x0

    :goto_8
    move v11, v3

    const/4 v2, 0x0

    .line 44
    :goto_9
    new-array v3, v11, [Landroid/net/Uri;

    .line 45
    new-array v5, v11, [Lcom/shabakaty/downloader/wh1;

    .line 46
    new-array v4, v11, [I

    const/4 v12, 0x0

    const/16 v16, 0x0

    .line 47
    :goto_a
    iget-object v6, v10, Lcom/shabakaty/downloader/it1;->e:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v12, v6, :cond_10

    if-eqz v0, :cond_d

    .line 48
    aget v6, v1, v12

    move-object/from16 v18, v7

    const/4 v7, 0x2

    if-ne v6, v7, :cond_f

    goto :goto_b

    :cond_d
    move-object/from16 v18, v7

    :goto_b
    if-eqz v2, :cond_e

    aget v6, v1, v12

    const/4 v7, 0x1

    if-eq v6, v7, :cond_f

    .line 49
    :cond_e
    iget-object v6, v10, Lcom/shabakaty/downloader/it1;->e:Ljava/util/List;

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/it1$b;

    .line 50
    iget-object v7, v6, Lcom/shabakaty/downloader/it1$b;->a:Landroid/net/Uri;

    aput-object v7, v3, v16

    .line 51
    iget-object v6, v6, Lcom/shabakaty/downloader/it1$b;->b:Lcom/shabakaty/downloader/wh1;

    aput-object v6, v5, v16

    add-int/lit8 v6, v16, 0x1

    .line 52
    aput v12, v4, v16

    move/from16 v16, v6

    :cond_f
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v7, v18

    goto :goto_a

    :cond_10
    move-object/from16 v18, v7

    const/4 v6, 0x0

    .line 53
    aget-object v1, v5, v6

    iget-object v1, v1, Lcom/shabakaty/downloader/wh1;->z:Ljava/lang/String;

    const/4 v6, 0x2

    .line 54
    invoke-static {v1, v6}, Lcom/shabakaty/downloader/sy4;->r(Ljava/lang/String;I)I

    move-result v12

    const/4 v2, 0x1

    .line 55
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/sy4;->r(Ljava/lang/String;I)I

    move-result v7

    if-gt v7, v2, :cond_11

    if-gt v12, v2, :cond_11

    add-int v1, v7, v12

    if-lez v1, :cond_11

    const/16 v16, 0x1

    goto :goto_c

    :cond_11
    const/16 v16, 0x0

    :goto_c
    if-nez v0, :cond_12

    if-lez v7, :cond_12

    const/4 v1, 0x1

    goto :goto_d

    :cond_12
    const/4 v1, 0x0

    .line 56
    :goto_d
    iget-object v2, v10, Lcom/shabakaty/downloader/it1;->j:Lcom/shabakaty/downloader/wh1;

    iget-object v0, v10, Lcom/shabakaty/downloader/it1;->k:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v19, v2

    move-object v2, v3

    move-object v3, v5

    move-object/from16 v20, v15

    move-object v15, v4

    move-object/from16 v4, v19

    move-object/from16 v19, v5

    move-object/from16 v5, v17

    move-object/from16 v17, v14

    const/4 v14, 0x2

    move-object v6, v13

    move/from16 v21, v7

    move-object/from16 v14, v18

    move-object/from16 v18, v13

    move-object v13, v8

    move-wide/from16 v7, p2

    .line 57
    invoke-virtual/range {v0 .. v8}, Lcom/google/android/exoplayer2/source/hls/c;->g(I[Landroid/net/Uri;[Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/wh1;Ljava/util/List;Ljava/util/Map;J)Lcom/google/android/exoplayer2/source/hls/d;

    move-result-object v0

    .line 58
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-boolean v1, v9, Lcom/google/android/exoplayer2/source/hls/c;->D:Z

    if-eqz v1, :cond_1a

    if-eqz v16, :cond_1a

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-lez v12, :cond_17

    .line 62
    new-array v2, v11, [Lcom/shabakaty/downloader/wh1;

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v11, :cond_13

    .line 63
    aget-object v4, v19, v3

    .line 64
    iget-object v5, v4, Lcom/shabakaty/downloader/wh1;->z:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/shabakaty/downloader/sy4;->s(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 65
    invoke-static {v5}, Lcom/shabakaty/downloader/nt2;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 66
    new-instance v8, Lcom/shabakaty/downloader/wh1$b;

    invoke-direct {v8}, Lcom/shabakaty/downloader/wh1$b;-><init>()V

    iget-object v12, v4, Lcom/shabakaty/downloader/wh1;->r:Ljava/lang/String;

    .line 67
    iput-object v12, v8, Lcom/shabakaty/downloader/wh1$b;->a:Ljava/lang/String;

    .line 68
    iget-object v12, v4, Lcom/shabakaty/downloader/wh1;->s:Ljava/lang/String;

    .line 69
    iput-object v12, v8, Lcom/shabakaty/downloader/wh1$b;->b:Ljava/lang/String;

    .line 70
    iget-object v12, v4, Lcom/shabakaty/downloader/wh1;->B:Ljava/lang/String;

    .line 71
    iput-object v12, v8, Lcom/shabakaty/downloader/wh1$b;->j:Ljava/lang/String;

    .line 72
    iput-object v7, v8, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    .line 73
    iput-object v5, v8, Lcom/shabakaty/downloader/wh1$b;->h:Ljava/lang/String;

    .line 74
    iget-object v5, v4, Lcom/shabakaty/downloader/wh1;->A:Lcom/shabakaty/downloader/ps2;

    .line 75
    iput-object v5, v8, Lcom/shabakaty/downloader/wh1$b;->i:Lcom/shabakaty/downloader/ps2;

    .line 76
    iget v5, v4, Lcom/shabakaty/downloader/wh1;->w:I

    .line 77
    iput v5, v8, Lcom/shabakaty/downloader/wh1$b;->f:I

    .line 78
    iget v5, v4, Lcom/shabakaty/downloader/wh1;->x:I

    .line 79
    iput v5, v8, Lcom/shabakaty/downloader/wh1$b;->g:I

    .line 80
    iget v5, v4, Lcom/shabakaty/downloader/wh1;->H:I

    .line 81
    iput v5, v8, Lcom/shabakaty/downloader/wh1$b;->p:I

    .line 82
    iget v5, v4, Lcom/shabakaty/downloader/wh1;->I:I

    .line 83
    iput v5, v8, Lcom/shabakaty/downloader/wh1$b;->q:I

    .line 84
    iget v5, v4, Lcom/shabakaty/downloader/wh1;->J:F

    .line 85
    iput v5, v8, Lcom/shabakaty/downloader/wh1$b;->r:F

    .line 86
    iget v5, v4, Lcom/shabakaty/downloader/wh1;->u:I

    .line 87
    iput v5, v8, Lcom/shabakaty/downloader/wh1$b;->d:I

    .line 88
    iget v4, v4, Lcom/shabakaty/downloader/wh1;->v:I

    .line 89
    iput v4, v8, Lcom/shabakaty/downloader/wh1$b;->e:I

    .line 90
    invoke-virtual {v8}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object v4

    .line 91
    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 92
    :cond_13
    new-instance v3, Lcom/shabakaty/downloader/bp4;

    invoke-direct {v3, v2}, Lcom/shabakaty/downloader/bp4;-><init>([Lcom/shabakaty/downloader/wh1;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-lez v21, :cond_15

    .line 93
    iget-object v2, v10, Lcom/shabakaty/downloader/it1;->j:Lcom/shabakaty/downloader/wh1;

    if-nez v2, :cond_14

    iget-object v2, v10, Lcom/shabakaty/downloader/it1;->g:Ljava/util/List;

    .line 94
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 95
    :cond_14
    new-instance v2, Lcom/shabakaty/downloader/bp4;

    const/4 v3, 0x1

    new-array v4, v3, [Lcom/shabakaty/downloader/wh1;

    const/4 v3, 0x0

    aget-object v5, v19, v3

    iget-object v6, v10, Lcom/shabakaty/downloader/it1;->j:Lcom/shabakaty/downloader/wh1;

    .line 96
    invoke-static {v5, v6, v3}, Lcom/google/android/exoplayer2/source/hls/c;->h(Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/wh1;Z)Lcom/shabakaty/downloader/wh1;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-direct {v2, v4}, Lcom/shabakaty/downloader/bp4;-><init>([Lcom/shabakaty/downloader/wh1;)V

    .line 97
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_15
    iget-object v2, v10, Lcom/shabakaty/downloader/it1;->k:Ljava/util/List;

    if-eqz v2, :cond_16

    const/4 v3, 0x0

    .line 99
    :goto_f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_16

    .line 100
    new-instance v4, Lcom/shabakaty/downloader/bp4;

    const/4 v5, 0x1

    new-array v6, v5, [Lcom/shabakaty/downloader/wh1;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/wh1;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-direct {v4, v6}, Lcom/shabakaty/downloader/bp4;-><init>([Lcom/shabakaty/downloader/wh1;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_16
    const/4 v6, 0x1

    goto :goto_11

    .line 101
    :cond_17
    new-array v2, v11, [Lcom/shabakaty/downloader/wh1;

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v11, :cond_18

    .line 102
    aget-object v4, v19, v3

    iget-object v5, v10, Lcom/shabakaty/downloader/it1;->j:Lcom/shabakaty/downloader/wh1;

    const/4 v6, 0x1

    .line 103
    invoke-static {v4, v5, v6}, Lcom/google/android/exoplayer2/source/hls/c;->h(Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/wh1;Z)Lcom/shabakaty/downloader/wh1;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_18
    const/4 v6, 0x1

    .line 104
    new-instance v3, Lcom/shabakaty/downloader/bp4;

    invoke-direct {v3, v2}, Lcom/shabakaty/downloader/bp4;-><init>([Lcom/shabakaty/downloader/wh1;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :goto_11
    new-instance v2, Lcom/shabakaty/downloader/bp4;

    new-array v3, v6, [Lcom/shabakaty/downloader/wh1;

    new-instance v4, Lcom/shabakaty/downloader/wh1$b;

    invoke-direct {v4}, Lcom/shabakaty/downloader/wh1$b;-><init>()V

    const-string v5, "ID3"

    .line 106
    iput-object v5, v4, Lcom/shabakaty/downloader/wh1$b;->a:Ljava/lang/String;

    const-string v5, "application/id3"

    .line 107
    iput-object v5, v4, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    .line 108
    invoke-virtual {v4}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/bp4;-><init>([Lcom/shabakaty/downloader/wh1;)V

    .line 109
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v3, v5, [Lcom/shabakaty/downloader/bp4;

    .line 110
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/shabakaty/downloader/bp4;

    const/4 v4, 0x1

    new-array v6, v4, [I

    .line 111
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    aput v1, v6, v5

    .line 112
    invoke-virtual {v0, v3, v5, v6}, Lcom/google/android/exoplayer2/source/hls/d;->y([Lcom/shabakaty/downloader/bp4;I[I)V

    goto :goto_12

    :cond_19
    move-object/from16 v18, v13

    move-object/from16 v17, v14

    move-object/from16 v20, v15

    move-object v14, v7

    move-object v13, v8

    .line 113
    :cond_1a
    :goto_12
    new-instance v10, Ljava/util/ArrayList;

    .line 114
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 115
    new-instance v11, Ljava/util/ArrayList;

    .line 116
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 117
    new-instance v12, Ljava/util/ArrayList;

    .line 118
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 119
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    const/4 v7, 0x0

    .line 120
    :goto_13
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_20

    move-object/from16 v8, v17

    .line 121
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/it1$a;

    iget-object v0, v0, Lcom/shabakaty/downloader/it1$a;->c:Ljava/lang/String;

    .line 122
    invoke-virtual {v15, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    move/from16 v19, v7

    move-object/from16 v17, v8

    goto/16 :goto_16

    .line 123
    :cond_1b
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 124
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 125
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    const/16 v16, 0x1

    .line 126
    :goto_14
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 127
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/it1$a;

    iget-object v2, v2, Lcom/shabakaty/downloader/it1$a;->c:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 128
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/it1$a;

    .line 129
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v3, v2, Lcom/shabakaty/downloader/it1$a;->a:Landroid/net/Uri;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v3, v2, Lcom/shabakaty/downloader/it1$a;->b:Lcom/shabakaty/downloader/wh1;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v2, v2, Lcom/shabakaty/downloader/it1$a;->b:Lcom/shabakaty/downloader/wh1;

    iget-object v2, v2, Lcom/shabakaty/downloader/wh1;->z:Ljava/lang/String;

    const/4 v3, 0x1

    .line 133
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/sy4;->r(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1c

    const/4 v2, 0x1

    goto :goto_15

    :cond_1c
    const/4 v2, 0x0

    :goto_15
    and-int v2, v16, v2

    move/from16 v16, v2

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_1e
    const/4 v1, 0x1

    const/4 v0, 0x0

    new-array v2, v0, [Landroid/net/Uri;

    .line 134
    sget v3, Lcom/shabakaty/downloader/sy4;->a:I

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/Uri;

    new-array v3, v0, [Lcom/shabakaty/downloader/wh1;

    .line 135
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Lcom/shabakaty/downloader/wh1;

    const/4 v4, 0x0

    .line 136
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v6, v18

    move/from16 v19, v7

    move-object/from16 v17, v8

    move-wide/from16 v7, p2

    .line 137
    invoke-virtual/range {v0 .. v8}, Lcom/google/android/exoplayer2/source/hls/c;->g(I[Landroid/net/Uri;[Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/wh1;Ljava/util/List;Ljava/util/Map;J)Lcom/google/android/exoplayer2/source/hls/d;

    move-result-object v0

    .line 138
    invoke-static {v12}, Lcom/shabakaty/downloader/k32;->b(Ljava/util/Collection;)[I

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    iget-boolean v1, v9, Lcom/google/android/exoplayer2/source/hls/c;->D:Z

    if-eqz v1, :cond_1f

    if-eqz v16, :cond_1f

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/shabakaty/downloader/wh1;

    .line 141
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/shabakaty/downloader/wh1;

    const/4 v3, 0x1

    new-array v4, v3, [Lcom/shabakaty/downloader/bp4;

    .line 142
    new-instance v3, Lcom/shabakaty/downloader/bp4;

    invoke-direct {v3, v2}, Lcom/shabakaty/downloader/bp4;-><init>([Lcom/shabakaty/downloader/wh1;)V

    aput-object v3, v4, v1

    new-array v2, v1, [I

    invoke-virtual {v0, v4, v1, v2}, Lcom/google/android/exoplayer2/source/hls/d;->y([Lcom/shabakaty/downloader/bp4;I[I)V

    :cond_1f
    :goto_16
    add-int/lit8 v7, v19, 0x1

    goto/16 :goto_13

    .line 143
    :cond_20
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v9, Lcom/google/android/exoplayer2/source/hls/c;->L:I

    const/4 v10, 0x0

    .line 144
    :goto_17
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_21

    move-object/from16 v11, v20

    .line 145
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/shabakaty/downloader/it1$a;

    const/4 v1, 0x3

    const/4 v0, 0x1

    new-array v2, v0, [Landroid/net/Uri;

    .line 146
    iget-object v3, v12, Lcom/shabakaty/downloader/it1$a;->a:Landroid/net/Uri;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v0, [Lcom/shabakaty/downloader/wh1;

    iget-object v0, v12, Lcom/shabakaty/downloader/it1$a;->b:Lcom/shabakaty/downloader/wh1;

    aput-object v0, v3, v4

    const/4 v4, 0x0

    .line 147
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v6, v18

    move-wide/from16 v7, p2

    .line 148
    invoke-virtual/range {v0 .. v8}, Lcom/google/android/exoplayer2/source/hls/c;->g(I[Landroid/net/Uri;[Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/wh1;Ljava/util/List;Ljava/util/Map;J)Lcom/google/android/exoplayer2/source/hls/d;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v10, v2, v3

    .line 149
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v2, v1, [Lcom/shabakaty/downloader/bp4;

    .line 151
    new-instance v4, Lcom/shabakaty/downloader/bp4;

    new-array v5, v1, [Lcom/shabakaty/downloader/wh1;

    iget-object v1, v12, Lcom/shabakaty/downloader/it1$a;->b:Lcom/shabakaty/downloader/wh1;

    aput-object v1, v5, v3

    invoke-direct {v4, v5}, Lcom/shabakaty/downloader/bp4;-><init>([Lcom/shabakaty/downloader/wh1;)V

    aput-object v4, v2, v3

    new-array v1, v3, [I

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/exoplayer2/source/hls/d;->y([Lcom/shabakaty/downloader/bp4;I[I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_17

    :cond_21
    const/4 v3, 0x0

    new-array v0, v3, [Lcom/google/android/exoplayer2/source/hls/d;

    .line 152
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/source/hls/d;

    iput-object v0, v9, Lcom/google/android/exoplayer2/source/hls/c;->J:[Lcom/google/android/exoplayer2/source/hls/d;

    new-array v0, v3, [[I

    .line 153
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 154
    iget-object v0, v9, Lcom/google/android/exoplayer2/source/hls/c;->J:[Lcom/google/android/exoplayer2/source/hls/d;

    array-length v1, v0

    iput v1, v9, Lcom/google/android/exoplayer2/source/hls/c;->H:I

    .line 155
    aget-object v1, v0, v3

    .line 156
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/hls/d;->t:Lcom/google/android/exoplayer2/source/hls/a;

    const/4 v2, 0x1

    .line 157
    iput-boolean v2, v1, Lcom/google/android/exoplayer2/source/hls/a;->k:Z

    .line 158
    array-length v1, v0

    const/4 v11, 0x0

    :goto_18
    if-ge v11, v1, :cond_23

    aget-object v2, v0, v11

    .line 159
    iget-boolean v3, v2, Lcom/google/android/exoplayer2/source/hls/d;->T:Z

    if-nez v3, :cond_22

    .line 160
    iget-wide v3, v2, Lcom/google/android/exoplayer2/source/hls/d;->f0:J

    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/source/hls/d;->e(J)Z

    :cond_22
    add-int/lit8 v11, v11, 0x1

    goto :goto_18

    .line 161
    :cond_23
    iget-object v0, v9, Lcom/google/android/exoplayer2/source/hls/c;->J:[Lcom/google/android/exoplayer2/source/hls/d;

    iput-object v0, v9, Lcom/google/android/exoplayer2/source/hls/c;->K:[Lcom/google/android/exoplayer2/source/hls/d;

    return-void
.end method

.method public C0([Lcom/shabakaty/downloader/f81;[Z[Lcom/shabakaty/downloader/dx3;[ZJ)J
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-wide/from16 v12, p5

    .line 1
    array-length v3, v1

    new-array v14, v3, [I

    .line 2
    array-length v3, v1

    new-array v15, v3, [I

    const/4 v3, 0x0

    .line 3
    :goto_0
    array-length v4, v1

    const/4 v10, -0x1

    if-ge v3, v4, :cond_3

    .line 4
    aget-object v4, v2, v3

    if-nez v4, :cond_0

    const/4 v4, -0x1

    goto :goto_1

    :cond_0
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/c;->A:Ljava/util/IdentityHashMap;

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_1
    aput v4, v14, v3

    .line 5
    aput v10, v15, v3

    .line 6
    aget-object v4, v1, v3

    if-eqz v4, :cond_2

    .line 7
    aget-object v4, v1, v3

    invoke-interface {v4}, Lcom/shabakaty/downloader/hp4;->b()Lcom/shabakaty/downloader/bp4;

    move-result-object v4

    const/4 v5, 0x0

    .line 8
    :goto_2
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/c;->J:[Lcom/google/android/exoplayer2/source/hls/d;

    array-length v7, v6

    if-ge v5, v7, :cond_2

    .line 9
    aget-object v6, v6, v5

    .line 10
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/hls/d;->m()V

    .line 11
    iget-object v6, v6, Lcom/google/android/exoplayer2/source/hls/d;->Y:Lcom/shabakaty/downloader/cp4;

    .line 12
    invoke-virtual {v6, v4}, Lcom/shabakaty/downloader/cp4;->a(Lcom/shabakaty/downloader/bp4;)I

    move-result v6

    if-eq v6, v10, :cond_1

    .line 13
    aput v5, v15, v3

    goto :goto_3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14
    :cond_3
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/c;->A:Ljava/util/IdentityHashMap;

    invoke-virtual {v3}, Ljava/util/IdentityHashMap;->clear()V

    .line 15
    array-length v8, v1

    new-array v9, v8, [Lcom/shabakaty/downloader/dx3;

    .line 16
    array-length v6, v1

    new-array v7, v6, [Lcom/shabakaty/downloader/dx3;

    .line 17
    array-length v4, v1

    new-array v5, v4, [Lcom/shabakaty/downloader/f81;

    .line 18
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/c;->J:[Lcom/google/android/exoplayer2/source/hls/d;

    array-length v3, v3

    new-array v3, v3, [Lcom/google/android/exoplayer2/source/hls/d;

    move/from16 v16, v8

    const/4 v8, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 19
    :goto_4
    iget-object v11, v0, Lcom/google/android/exoplayer2/source/hls/c;->J:[Lcom/google/android/exoplayer2/source/hls/d;

    array-length v11, v11

    if-ge v8, v11, :cond_28

    const/4 v11, 0x0

    .line 20
    :goto_5
    array-length v10, v1

    move-object/from16 v21, v3

    if-ge v11, v10, :cond_6

    .line 21
    aget v10, v14, v11

    if-ne v10, v8, :cond_4

    aget-object v10, v2, v11

    goto :goto_6

    :cond_4
    const/4 v10, 0x0

    :goto_6
    aput-object v10, v7, v11

    .line 22
    aget v10, v15, v11

    if-ne v10, v8, :cond_5

    aget-object v3, v1, v11

    goto :goto_7

    :cond_5
    const/4 v3, 0x0

    :goto_7
    aput-object v3, v5, v11

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, v21

    goto :goto_5

    .line 23
    :cond_6
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/hls/c;->J:[Lcom/google/android/exoplayer2/source/hls/d;

    aget-object v11, v10, v8

    .line 24
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/source/hls/d;->m()V

    .line 25
    iget v10, v11, Lcom/google/android/exoplayer2/source/hls/d;->U:I

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v4, :cond_a

    .line 26
    aget-object v23, v7, v3

    move/from16 v24, v6

    move-object/from16 v6, v23

    check-cast v6, Lcom/shabakaty/downloader/pt1;

    if-eqz v6, :cond_9

    .line 27
    aget-object v23, v5, v3

    if-eqz v23, :cond_7

    aget-boolean v23, p2, v3

    if-nez v23, :cond_9

    :cond_7
    move/from16 v23, v8

    .line 28
    iget v8, v11, Lcom/google/android/exoplayer2/source/hls/d;->U:I

    move-object/from16 v25, v9

    const/4 v9, -0x1

    add-int/2addr v8, v9

    iput v8, v11, Lcom/google/android/exoplayer2/source/hls/d;->U:I

    .line 29
    iget v8, v6, Lcom/shabakaty/downloader/pt1;->t:I

    if-eq v8, v9, :cond_8

    .line 30
    iget-object v8, v6, Lcom/shabakaty/downloader/pt1;->s:Lcom/google/android/exoplayer2/source/hls/d;

    iget v9, v6, Lcom/shabakaty/downloader/pt1;->r:I

    .line 31
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/source/hls/d;->m()V

    .line 32
    iget-object v2, v8, Lcom/google/android/exoplayer2/source/hls/d;->a0:[I

    .line 33
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v2, v8, Lcom/google/android/exoplayer2/source/hls/d;->a0:[I

    aget v2, v2, v9

    .line 35
    iget-object v9, v8, Lcom/google/android/exoplayer2/source/hls/d;->d0:[Z

    aget-boolean v9, v9, v2

    invoke-static {v9}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 36
    iget-object v8, v8, Lcom/google/android/exoplayer2/source/hls/d;->d0:[Z

    const/16 v19, 0x0

    aput-boolean v19, v8, v2

    const/4 v2, -0x1

    .line 37
    iput v2, v6, Lcom/shabakaty/downloader/pt1;->t:I

    goto :goto_9

    :cond_8
    const/4 v2, -0x1

    const/16 v19, 0x0

    :goto_9
    const/4 v6, 0x0

    .line 38
    aput-object v6, v7, v3

    goto :goto_a

    :cond_9
    move/from16 v23, v8

    move-object/from16 v25, v9

    const/4 v2, -0x1

    const/16 v19, 0x0

    :goto_a
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, p3

    move/from16 v8, v23

    move/from16 v6, v24

    move-object/from16 v9, v25

    goto :goto_8

    :cond_a
    move/from16 v24, v6

    move/from16 v23, v8

    move-object/from16 v25, v9

    const/4 v2, -0x1

    const/16 v19, 0x0

    if-nez v18, :cond_d

    .line 39
    iget-boolean v3, v11, Lcom/google/android/exoplayer2/source/hls/d;->i0:Z

    if-eqz v3, :cond_b

    if-nez v10, :cond_c

    goto :goto_b

    :cond_b
    iget-wide v9, v11, Lcom/google/android/exoplayer2/source/hls/d;->f0:J

    cmp-long v3, v12, v9

    if-eqz v3, :cond_c

    goto :goto_b

    :cond_c
    const/4 v3, 0x0

    goto :goto_c

    :cond_d
    :goto_b
    const/4 v3, 0x1

    .line 40
    :goto_c
    iget-object v6, v11, Lcom/google/android/exoplayer2/source/hls/d;->t:Lcom/google/android/exoplayer2/source/hls/a;

    .line 41
    iget-object v6, v6, Lcom/google/android/exoplayer2/source/hls/a;->p:Lcom/shabakaty/downloader/f81;

    move/from16 v20, v3

    move-object v10, v6

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v4, :cond_12

    .line 42
    aget-object v9, v5, v3

    if-nez v9, :cond_e

    goto :goto_f

    .line 43
    :cond_e
    iget-object v2, v11, Lcom/google/android/exoplayer2/source/hls/d;->Y:Lcom/shabakaty/downloader/cp4;

    invoke-interface {v9}, Lcom/shabakaty/downloader/hp4;->b()Lcom/shabakaty/downloader/bp4;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/shabakaty/downloader/cp4;->a(Lcom/shabakaty/downloader/bp4;)I

    move-result v2

    .line 44
    iget v8, v11, Lcom/google/android/exoplayer2/source/hls/d;->b0:I

    if-ne v2, v8, :cond_f

    .line 45
    iget-object v8, v11, Lcom/google/android/exoplayer2/source/hls/d;->t:Lcom/google/android/exoplayer2/source/hls/a;

    .line 46
    iput-object v9, v8, Lcom/google/android/exoplayer2/source/hls/a;->p:Lcom/shabakaty/downloader/f81;

    move-object v10, v9

    .line 47
    :cond_f
    aget-object v8, v7, v3

    if-nez v8, :cond_11

    .line 48
    iget v8, v11, Lcom/google/android/exoplayer2/source/hls/d;->U:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v11, Lcom/google/android/exoplayer2/source/hls/d;->U:I

    .line 49
    new-instance v8, Lcom/shabakaty/downloader/pt1;

    invoke-direct {v8, v11, v2}, Lcom/shabakaty/downloader/pt1;-><init>(Lcom/google/android/exoplayer2/source/hls/d;I)V

    aput-object v8, v7, v3

    .line 50
    aput-boolean v9, p4, v3

    .line 51
    iget-object v8, v11, Lcom/google/android/exoplayer2/source/hls/d;->a0:[I

    if-eqz v8, :cond_11

    .line 52
    aget-object v8, v7, v3

    check-cast v8, Lcom/shabakaty/downloader/pt1;

    invoke-virtual {v8}, Lcom/shabakaty/downloader/pt1;->a()V

    if-nez v20, :cond_11

    .line 53
    iget-object v8, v11, Lcom/google/android/exoplayer2/source/hls/d;->L:[Lcom/google/android/exoplayer2/source/hls/d$d;

    iget-object v9, v11, Lcom/google/android/exoplayer2/source/hls/d;->a0:[I

    aget v2, v9, v2

    aget-object v2, v8, v2

    const/4 v8, 0x1

    .line 54
    invoke-virtual {v2, v12, v13, v8}, Lcom/shabakaty/downloader/bx3;->G(JZ)Z

    move-result v9

    if-nez v9, :cond_10

    .line 55
    invoke-virtual {v2}, Lcom/shabakaty/downloader/bx3;->q()I

    move-result v2

    if-eqz v2, :cond_10

    const/4 v9, 0x1

    goto :goto_e

    :cond_10
    const/4 v9, 0x0

    :goto_e
    move/from16 v20, v9

    :cond_11
    :goto_f
    add-int/lit8 v3, v3, 0x1

    const/4 v2, -0x1

    goto :goto_d

    .line 56
    :cond_12
    iget v2, v11, Lcom/google/android/exoplayer2/source/hls/d;->U:I

    if-nez v2, :cond_15

    .line 57
    iget-object v2, v11, Lcom/google/android/exoplayer2/source/hls/d;->t:Lcom/google/android/exoplayer2/source/hls/a;

    const/4 v3, 0x0

    .line 58
    iput-object v3, v2, Lcom/google/android/exoplayer2/source/hls/a;->m:Ljava/io/IOException;

    .line 59
    iput-object v3, v11, Lcom/google/android/exoplayer2/source/hls/d;->W:Lcom/shabakaty/downloader/wh1;

    const/4 v2, 0x1

    .line 60
    iput-boolean v2, v11, Lcom/google/android/exoplayer2/source/hls/d;->h0:Z

    .line 61
    iget-object v3, v11, Lcom/google/android/exoplayer2/source/hls/d;->D:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 62
    iget-object v3, v11, Lcom/google/android/exoplayer2/source/hls/d;->z:Lcom/shabakaty/downloader/ij2;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/ij2;->e()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 63
    iget-boolean v3, v11, Lcom/google/android/exoplayer2/source/hls/d;->S:Z

    if-eqz v3, :cond_13

    .line 64
    iget-object v3, v11, Lcom/google/android/exoplayer2/source/hls/d;->L:[Lcom/google/android/exoplayer2/source/hls/d$d;

    array-length v6, v3

    const/4 v8, 0x0

    :goto_10
    if-ge v8, v6, :cond_13

    aget-object v9, v3, v8

    .line 65
    invoke-virtual {v9}, Lcom/shabakaty/downloader/bx3;->j()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    .line 66
    :cond_13
    iget-object v3, v11, Lcom/google/android/exoplayer2/source/hls/d;->z:Lcom/shabakaty/downloader/ij2;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/ij2;->a()V

    goto :goto_11

    .line 67
    :cond_14
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/source/hls/d;->z()V

    :goto_11
    move/from16 v28, v4

    move-object/from16 v29, v5

    move-object v0, v11

    move-object/from16 v31, v14

    move/from16 v32, v16

    move-object/from16 v30, v21

    move/from16 v34, v23

    move/from16 v2, v24

    move-object/from16 v33, v25

    const/16 v23, -0x1

    move-object/from16 v24, v7

    goto/16 :goto_16

    :cond_15
    const/4 v2, 0x1

    .line 68
    iget-object v3, v11, Lcom/google/android/exoplayer2/source/hls/d;->D:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_19

    .line 69
    invoke-static {v10, v6}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 70
    iget-boolean v3, v11, Lcom/google/android/exoplayer2/source/hls/d;->i0:Z

    if-nez v3, :cond_18

    const-wide/16 v8, 0x0

    cmp-long v3, v12, v8

    if-gez v3, :cond_16

    neg-long v8, v12

    .line 71
    :cond_16
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/source/hls/d;->s()Lcom/google/android/exoplayer2/source/hls/b;

    move-result-object v6

    .line 72
    iget-object v3, v11, Lcom/google/android/exoplayer2/source/hls/d;->t:Lcom/google/android/exoplayer2/source/hls/a;

    .line 73
    invoke-virtual {v3, v6, v12, v13}, Lcom/google/android/exoplayer2/source/hls/a;->a(Lcom/google/android/exoplayer2/source/hls/b;J)[Lcom/shabakaty/downloader/mo2;

    move-result-object v22

    const-wide v26, -0x7fffffffffffffffL    # -4.9E-324

    .line 74
    iget-object v3, v11, Lcom/google/android/exoplayer2/source/hls/d;->E:Ljava/util/List;

    move-object/from16 v2, v21

    move-object/from16 v21, v3

    move-object v3, v10

    move/from16 v28, v4

    move-object/from16 v29, v5

    move-wide/from16 v4, p5

    move-object/from16 v30, v2

    move-object/from16 v31, v14

    move/from16 v2, v24

    move-object v14, v6

    move-object/from16 v24, v7

    move-wide v6, v8

    move/from16 v32, v16

    move/from16 v34, v23

    move-object/from16 v33, v25

    const/4 v0, 0x1

    move-wide/from16 v8, v26

    move-object/from16 v16, v10

    const/16 v23, -0x1

    move-object/from16 v10, v21

    move-object v0, v11

    move-object/from16 v11, v22

    invoke-interface/range {v3 .. v11}, Lcom/shabakaty/downloader/f81;->h(JJJLjava/util/List;[Lcom/shabakaty/downloader/mo2;)V

    .line 75
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/d;->t:Lcom/google/android/exoplayer2/source/hls/a;

    .line 76
    iget-object v3, v3, Lcom/google/android/exoplayer2/source/hls/a;->h:Lcom/shabakaty/downloader/bp4;

    .line 77
    iget-object v4, v14, Lcom/shabakaty/downloader/zz;->d:Lcom/shabakaty/downloader/wh1;

    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/bp4;->a(Lcom/shabakaty/downloader/wh1;)I

    move-result v3

    .line 78
    invoke-interface/range {v16 .. v16}, Lcom/shabakaty/downloader/f81;->o()I

    move-result v4

    if-eq v4, v3, :cond_17

    goto :goto_12

    :cond_17
    const/4 v11, 0x0

    goto :goto_13

    :cond_18
    move/from16 v28, v4

    move-object/from16 v29, v5

    move-object v0, v11

    move-object/from16 v31, v14

    move/from16 v32, v16

    move-object/from16 v30, v21

    move/from16 v34, v23

    move/from16 v2, v24

    move-object/from16 v33, v25

    const/16 v23, -0x1

    move-object/from16 v24, v7

    :goto_12
    const/4 v11, 0x1

    :goto_13
    if-eqz v11, :cond_1a

    const/4 v3, 0x1

    .line 79
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/source/hls/d;->h0:Z

    const/4 v3, 0x1

    const/4 v8, 0x1

    goto :goto_14

    :cond_19
    move/from16 v28, v4

    move-object/from16 v29, v5

    move-object v0, v11

    move-object/from16 v31, v14

    move/from16 v32, v16

    move-object/from16 v30, v21

    move/from16 v34, v23

    move/from16 v2, v24

    move-object/from16 v33, v25

    const/16 v23, -0x1

    move-object/from16 v24, v7

    :cond_1a
    move/from16 v3, v18

    move/from16 v8, v20

    :goto_14
    if-eqz v8, :cond_1c

    .line 80
    invoke-virtual {v0, v12, v13, v3}, Lcom/google/android/exoplayer2/source/hls/d;->A(JZ)Z

    const/4 v11, 0x0

    :goto_15
    if-ge v11, v2, :cond_1c

    .line 81
    aget-object v3, v24, v11

    if-eqz v3, :cond_1b

    const/4 v3, 0x1

    .line 82
    aput-boolean v3, p4, v11

    :cond_1b
    add-int/lit8 v11, v11, 0x1

    goto :goto_15

    :cond_1c
    move/from16 v20, v8

    .line 83
    :goto_16
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/d;->I:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v11, 0x0

    :goto_17
    if-ge v11, v2, :cond_1e

    .line 84
    aget-object v3, v24, v11

    if-eqz v3, :cond_1d

    .line 85
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/d;->I:Ljava/util/ArrayList;

    check-cast v3, Lcom/shabakaty/downloader/pt1;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    add-int/lit8 v11, v11, 0x1

    goto :goto_17

    :cond_1e
    const/4 v3, 0x1

    .line 86
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/source/hls/d;->i0:Z

    const/4 v4, 0x0

    const/4 v11, 0x0

    .line 87
    :goto_18
    array-length v5, v1

    if-ge v11, v5, :cond_22

    .line 88
    aget-object v5, v24, v11

    .line 89
    aget v6, v15, v11

    move/from16 v7, v34

    if-ne v6, v7, :cond_1f

    .line 90
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v33

    .line 91
    aput-object v5, v6, v11

    const/4 v8, 0x1

    move-object/from16 v3, p0

    .line 92
    iget-object v4, v3, Lcom/google/android/exoplayer2/source/hls/c;->A:Ljava/util/IdentityHashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v5, v9}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    goto :goto_1a

    :cond_1f
    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v6, v33

    .line 93
    aget v9, v31, v11

    if-ne v9, v7, :cond_21

    if-nez v5, :cond_20

    const/4 v5, 0x1

    goto :goto_19

    :cond_20
    const/4 v5, 0x0

    .line 94
    :goto_19
    invoke-static {v5}, Lcom/shabakaty/downloader/md;->e(Z)V

    :cond_21
    :goto_1a
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v33, v6

    move/from16 v34, v7

    const/4 v3, 0x1

    goto :goto_18

    :cond_22
    move-object/from16 v3, p0

    move-object/from16 v6, v33

    move/from16 v7, v34

    const/4 v8, 0x1

    if-eqz v4, :cond_26

    move/from16 v11, v17

    .line 95
    aput-object v0, v30, v11

    add-int/lit8 v17, v11, 0x1

    if-nez v11, :cond_24

    .line 96
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/d;->t:Lcom/google/android/exoplayer2/source/hls/a;

    .line 97
    iput-boolean v8, v4, Lcom/google/android/exoplayer2/source/hls/a;->k:Z

    if-nez v20, :cond_23

    .line 98
    iget-object v4, v3, Lcom/google/android/exoplayer2/source/hls/c;->K:[Lcom/google/android/exoplayer2/source/hls/d;

    array-length v5, v4

    if-eqz v5, :cond_23

    const/4 v5, 0x0

    aget-object v4, v4, v5

    if-eq v0, v4, :cond_27

    goto :goto_1b

    :cond_23
    const/4 v5, 0x0

    .line 99
    :goto_1b
    iget-object v0, v3, Lcom/google/android/exoplayer2/source/hls/c;->B:Lcom/shabakaty/downloader/rn4;

    .line 100
    iget-object v0, v0, Lcom/shabakaty/downloader/rn4;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/16 v18, 0x1

    goto :goto_1d

    :cond_24
    const/4 v5, 0x0

    .line 101
    iget v4, v3, Lcom/google/android/exoplayer2/source/hls/c;->L:I

    if-ge v7, v4, :cond_25

    const/4 v11, 0x1

    goto :goto_1c

    :cond_25
    const/4 v11, 0x0

    .line 102
    :goto_1c
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/hls/d;->t:Lcom/google/android/exoplayer2/source/hls/a;

    .line 103
    iput-boolean v11, v0, Lcom/google/android/exoplayer2/source/hls/a;->k:Z

    goto :goto_1d

    :cond_26
    move/from16 v11, v17

    const/4 v5, 0x0

    :cond_27
    :goto_1d
    add-int/lit8 v8, v7, 0x1

    move-object v0, v3

    move-object v9, v6

    move-object/from16 v7, v24

    move/from16 v4, v28

    move-object/from16 v5, v29

    move-object/from16 v3, v30

    move-object/from16 v14, v31

    move/from16 v16, v32

    const/4 v10, -0x1

    move v6, v2

    move-object/from16 v2, p3

    goto/16 :goto_4

    :cond_28
    move-object/from16 v30, v3

    move-object v6, v9

    move/from16 v4, v16

    move/from16 v11, v17

    const/4 v5, 0x0

    move-object v3, v0

    move-object v0, v2

    .line 104
    invoke-static {v6, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v30

    .line 105
    invoke-static {v0, v11}, Lcom/shabakaty/downloader/sy4;->J([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/source/hls/d;

    iput-object v0, v3, Lcom/google/android/exoplayer2/source/hls/c;->K:[Lcom/google/android/exoplayer2/source/hls/d;

    .line 106
    iget-object v1, v3, Lcom/google/android/exoplayer2/source/hls/c;->C:Lcom/shabakaty/downloader/kd;

    .line 107
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v1, Lcom/shabakaty/downloader/fq1;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/fq1;-><init>([Lcom/shabakaty/downloader/o04;)V

    .line 109
    iput-object v1, v3, Lcom/google/android/exoplayer2/source/hls/c;->M:Lcom/shabakaty/downloader/o04;

    return-wide v12
.end method

.method public D0()Lcom/shabakaty/downloader/cp4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/c;->I:Lcom/shabakaty/downloader/cp4;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public M0(JZ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/c;->K:[Lcom/google/android/exoplayer2/source/hls/d;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 2
    iget-boolean v5, v4, Lcom/google/android/exoplayer2/source/hls/d;->S:Z

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/hls/d;->v()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-object v5, v4, Lcom/google/android/exoplayer2/source/hls/d;->L:[Lcom/google/android/exoplayer2/source/hls/d$d;

    array-length v5, v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    .line 4
    iget-object v7, v4, Lcom/google/android/exoplayer2/source/hls/d;->L:[Lcom/google/android/exoplayer2/source/hls/d$d;

    aget-object v7, v7, v6

    iget-object v8, v4, Lcom/google/android/exoplayer2/source/hls/d;->d0:[Z

    aget-boolean v8, v8, v6

    invoke-virtual {v7, p1, p2, p3, v8}, Lcom/shabakaty/downloader/bx3;->i(JZZ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/c;->J:[Lcom/google/android/exoplayer2/source/hls/d;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 2
    iget-object v4, v3, Lcom/google/android/exoplayer2/source/hls/d;->D:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v4, v3, Lcom/google/android/exoplayer2/source/hls/d;->D:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/google/common/collect/u;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/hls/b;

    .line 4
    iget-object v5, v3, Lcom/google/android/exoplayer2/source/hls/d;->t:Lcom/google/android/exoplayer2/source/hls/a;

    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/source/hls/a;->b(Lcom/google/android/exoplayer2/source/hls/b;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 5
    iput-boolean v6, v4, Lcom/google/android/exoplayer2/source/hls/b;->K:Z

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    if-ne v5, v4, :cond_2

    .line 6
    iget-boolean v4, v3, Lcom/google/android/exoplayer2/source/hls/d;->j0:Z

    if-nez v4, :cond_2

    iget-object v4, v3, Lcom/google/android/exoplayer2/source/hls/d;->z:Lcom/shabakaty/downloader/ij2;

    .line 7
    invoke-virtual {v4}, Lcom/shabakaty/downloader/ij2;->e()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8
    iget-object v3, v3, Lcom/google/android/exoplayer2/source/hls/d;->z:Lcom/shabakaty/downloader/ij2;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/ij2;->a()V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/c;->G:Lcom/shabakaty/downloader/kp2$a;

    invoke-interface {v0, p0}, Lcom/shabakaty/downloader/o04$a;->b(Lcom/shabakaty/downloader/o04;)V

    return-void
.end method

.method public b(Lcom/shabakaty/downloader/o04;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/source/hls/d;

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/c;->G:Lcom/shabakaty/downloader/kp2$a;

    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/o04$a;->b(Lcom/shabakaty/downloader/o04;)V

    return-void
.end method

.method public c()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/c;->M:Lcom/shabakaty/downloader/o04;

    invoke-interface {v0}, Lcom/shabakaty/downloader/o04;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public d(Landroid/net/Uri;Lcom/shabakaty/downloader/gj2$c;Z)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/c;->J:[Lcom/google/android/exoplayer2/source/hls/d;

    array-length v3, v2

    const/4 v6, 0x0

    const/4 v7, 0x1

    :goto_0
    if-ge v6, v3, :cond_a

    aget-object v8, v2, v6

    .line 2
    iget-object v9, v8, Lcom/google/android/exoplayer2/source/hls/d;->t:Lcom/google/android/exoplayer2/source/hls/a;

    .line 3
    iget-object v9, v9, Lcom/google/android/exoplayer2/source/hls/a;->e:[Landroid/net/Uri;

    invoke-static {v9, v1}, Lcom/shabakaty/downloader/sy4;->k([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    move-object/from16 v13, p2

    goto/16 :goto_6

    :cond_0
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    if-nez p3, :cond_1

    .line 4
    iget-object v11, v8, Lcom/google/android/exoplayer2/source/hls/d;->y:Lcom/shabakaty/downloader/gj2;

    iget-object v12, v8, Lcom/google/android/exoplayer2/source/hls/d;->t:Lcom/google/android/exoplayer2/source/hls/a;

    .line 5
    iget-object v12, v12, Lcom/google/android/exoplayer2/source/hls/a;->p:Lcom/shabakaty/downloader/f81;

    .line 6
    invoke-static {v12}, Lcom/shabakaty/downloader/kp4;->a(Lcom/shabakaty/downloader/f81;)Lcom/shabakaty/downloader/gj2$a;

    move-result-object v12

    .line 7
    check-cast v11, Lcom/shabakaty/downloader/po0;

    move-object/from16 v13, p2

    invoke-virtual {v11, v12, v13}, Lcom/shabakaty/downloader/po0;->a(Lcom/shabakaty/downloader/gj2$a;Lcom/shabakaty/downloader/gj2$c;)Lcom/shabakaty/downloader/gj2$b;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 8
    iget v12, v11, Lcom/shabakaty/downloader/gj2$b;->a:I

    const/4 v14, 0x2

    if-ne v12, v14, :cond_2

    .line 9
    iget-wide v11, v11, Lcom/shabakaty/downloader/gj2$b;->b:J

    goto :goto_1

    :cond_1
    move-object/from16 v13, p2

    :cond_2
    move-wide v11, v9

    .line 10
    :goto_1
    iget-object v8, v8, Lcom/google/android/exoplayer2/source/hls/d;->t:Lcom/google/android/exoplayer2/source/hls/a;

    const/4 v14, 0x0

    .line 11
    :goto_2
    iget-object v15, v8, Lcom/google/android/exoplayer2/source/hls/a;->e:[Landroid/net/Uri;

    array-length v4, v15

    const/4 v5, -0x1

    if-ge v14, v4, :cond_4

    .line 12
    aget-object v4, v15, v14

    invoke-virtual {v4, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_4
    const/4 v14, -0x1

    :goto_3
    if-ne v14, v5, :cond_5

    goto :goto_4

    .line 13
    :cond_5
    iget-object v4, v8, Lcom/google/android/exoplayer2/source/hls/a;->p:Lcom/shabakaty/downloader/f81;

    invoke-interface {v4, v14}, Lcom/shabakaty/downloader/hp4;->e(I)I

    move-result v4

    if-ne v4, v5, :cond_6

    goto :goto_4

    .line 14
    :cond_6
    iget-boolean v5, v8, Lcom/google/android/exoplayer2/source/hls/a;->r:Z

    iget-object v14, v8, Lcom/google/android/exoplayer2/source/hls/a;->n:Landroid/net/Uri;

    invoke-virtual {v1, v14}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v5, v14

    iput-boolean v5, v8, Lcom/google/android/exoplayer2/source/hls/a;->r:Z

    cmp-long v5, v11, v9

    if-eqz v5, :cond_8

    .line 15
    iget-object v5, v8, Lcom/google/android/exoplayer2/source/hls/a;->p:Lcom/shabakaty/downloader/f81;

    .line 16
    invoke-interface {v5, v4, v11, v12}, Lcom/shabakaty/downloader/f81;->j(IJ)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v8, Lcom/google/android/exoplayer2/source/hls/a;->g:Lcom/shabakaty/downloader/ot1;

    .line 17
    invoke-interface {v4, v1, v11, v12}, Lcom/shabakaty/downloader/ot1;->h(Landroid/net/Uri;J)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v4, 0x1

    :goto_5
    if-eqz v4, :cond_9

    cmp-long v4, v11, v9

    if-eqz v4, :cond_9

    :goto_6
    const/4 v4, 0x1

    goto :goto_7

    :cond_9
    const/4 v4, 0x0

    :goto_7
    and-int/2addr v7, v4

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 18
    :cond_a
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/c;->G:Lcom/shabakaty/downloader/kp2$a;

    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/o04$a;->b(Lcom/shabakaty/downloader/o04;)V

    return v7
.end method

.method public d0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/c;->J:[Lcom/google/android/exoplayer2/source/hls/d;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/hls/d;->x()V

    .line 3
    iget-boolean v4, v3, Lcom/google/android/exoplayer2/source/hls/d;->j0:Z

    if-eqz v4, :cond_1

    iget-boolean v3, v3, Lcom/google/android/exoplayer2/source/hls/d;->T:Z

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const-string v1, "Loading finished before preparation is complete."

    .line 4
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v0

    throw v0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public e(J)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/c;->I:Lcom/shabakaty/downloader/cp4;

    if-nez v0, :cond_2

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/c;->J:[Lcom/google/android/exoplayer2/source/hls/d;

    array-length p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v2, p1, v1

    .line 3
    iget-boolean v3, v2, Lcom/google/android/exoplayer2/source/hls/d;->T:Z

    if-nez v3, :cond_0

    .line 4
    iget-wide v3, v2, Lcom/google/android/exoplayer2/source/hls/d;->f0:J

    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/source/hls/d;->e(J)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/c;->M:Lcom/shabakaty/downloader/o04;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/o04;->e(J)Z

    move-result p1

    return p1
.end method

.method public final g(I[Landroid/net/Uri;[Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/wh1;Ljava/util/List;Ljava/util/Map;J)Lcom/google/android/exoplayer2/source/hls/d;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Landroid/net/Uri;",
            "[",
            "Lcom/google/android/exoplayer2/Format;",
            "Lcom/shabakaty/downloader/wh1;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/wh1;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/o01;",
            ">;J)",
            "Lcom/google/android/exoplayer2/source/hls/d;"
        }
    .end annotation

    move-object/from16 v14, p0

    .line 1
    new-instance v9, Lcom/google/android/exoplayer2/source/hls/a;

    iget-object v1, v14, Lcom/google/android/exoplayer2/source/hls/c;->r:Lcom/shabakaty/downloader/ht1;

    iget-object v2, v14, Lcom/google/android/exoplayer2/source/hls/c;->s:Lcom/shabakaty/downloader/ot1;

    iget-object v5, v14, Lcom/google/android/exoplayer2/source/hls/c;->t:Lcom/shabakaty/downloader/gt1;

    iget-object v6, v14, Lcom/google/android/exoplayer2/source/hls/c;->u:Lcom/shabakaty/downloader/sp4;

    iget-object v7, v14, Lcom/google/android/exoplayer2/source/hls/c;->B:Lcom/shabakaty/downloader/rn4;

    move-object v0, v9

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/source/hls/a;-><init>(Lcom/shabakaty/downloader/ht1;Lcom/shabakaty/downloader/ot1;[Landroid/net/Uri;[Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/gt1;Lcom/shabakaty/downloader/sp4;Lcom/shabakaty/downloader/rn4;Ljava/util/List;)V

    .line 2
    new-instance v15, Lcom/google/android/exoplayer2/source/hls/d;

    iget-object v5, v14, Lcom/google/android/exoplayer2/source/hls/c;->z:Lcom/shabakaty/downloader/fn0;

    iget-object v10, v14, Lcom/google/android/exoplayer2/source/hls/c;->v:Lcom/shabakaty/downloader/u01;

    iget-object v11, v14, Lcom/google/android/exoplayer2/source/hls/c;->w:Lcom/shabakaty/downloader/s01$a;

    iget-object v12, v14, Lcom/google/android/exoplayer2/source/hls/c;->x:Lcom/shabakaty/downloader/gj2;

    iget-object v13, v14, Lcom/google/android/exoplayer2/source/hls/c;->y:Lcom/shabakaty/downloader/yq2$a;

    iget v8, v14, Lcom/google/android/exoplayer2/source/hls/c;->E:I

    move-object v0, v15

    move/from16 v1, p1

    move-object/from16 v2, p0

    move-object v3, v9

    move-object/from16 v4, p6

    move-wide/from16 v6, p7

    move/from16 v16, v8

    move-object/from16 v8, p4

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move/from16 v13, v16

    invoke-direct/range {v0 .. v13}, Lcom/google/android/exoplayer2/source/hls/d;-><init>(ILcom/google/android/exoplayer2/source/hls/d$b;Lcom/google/android/exoplayer2/source/hls/a;Ljava/util/Map;Lcom/shabakaty/downloader/fn0;JLcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/u01;Lcom/shabakaty/downloader/s01$a;Lcom/shabakaty/downloader/gj2;Lcom/shabakaty/downloader/yq2$a;I)V

    return-object v15
.end method

.method public i()V
    .locals 11

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/c;->H:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/source/hls/c;->H:I

    if-lez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/c;->J:[Lcom/google/android/exoplayer2/source/hls/d;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    .line 3
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/hls/d;->m()V

    .line 4
    iget-object v5, v5, Lcom/google/android/exoplayer2/source/hls/d;->Y:Lcom/shabakaty/downloader/cp4;

    .line 5
    iget v5, v5, Lcom/shabakaty/downloader/cp4;->r:I

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_1
    new-array v0, v4, [Lcom/shabakaty/downloader/bp4;

    .line 7
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/c;->J:[Lcom/google/android/exoplayer2/source/hls/d;

    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v6, v1, v4

    .line 8
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/hls/d;->m()V

    .line 9
    iget-object v7, v6, Lcom/google/android/exoplayer2/source/hls/d;->Y:Lcom/shabakaty/downloader/cp4;

    .line 10
    iget v7, v7, Lcom/shabakaty/downloader/cp4;->r:I

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_2

    add-int/lit8 v9, v5, 0x1

    .line 11
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/hls/d;->m()V

    .line 12
    iget-object v10, v6, Lcom/google/android/exoplayer2/source/hls/d;->Y:Lcom/shabakaty/downloader/cp4;

    .line 13
    iget-object v10, v10, Lcom/shabakaty/downloader/cp4;->s:[Lcom/shabakaty/downloader/bp4;

    aget-object v10, v10, v8

    .line 14
    aput-object v10, v0, v5

    add-int/lit8 v8, v8, 0x1

    move v5, v9

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 15
    :cond_3
    new-instance v1, Lcom/shabakaty/downloader/cp4;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/cp4;-><init>([Lcom/shabakaty/downloader/bp4;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/hls/c;->I:Lcom/shabakaty/downloader/cp4;

    .line 16
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/c;->G:Lcom/shabakaty/downloader/kp2$a;

    invoke-interface {v0, p0}, Lcom/shabakaty/downloader/kp2$a;->f(Lcom/shabakaty/downloader/kp2;)V

    return-void
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/c;->M:Lcom/shabakaty/downloader/o04;

    invoke-interface {v0}, Lcom/shabakaty/downloader/o04;->j()Z

    move-result v0

    return v0
.end method

.method public k(JLcom/shabakaty/downloader/wz3;)J
    .locals 0

    return-wide p1
.end method

.method public o()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/c;->M:Lcom/shabakaty/downloader/o04;

    invoke-interface {v0}, Lcom/shabakaty/downloader/o04;->o()J

    move-result-wide v0

    return-wide v0
.end method

.method public p0(J)J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/c;->K:[Lcom/google/android/exoplayer2/source/hls/d;

    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 2
    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/source/hls/d;->A(JZ)Z

    move-result v0

    const/4 v1, 0x1

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/c;->K:[Lcom/google/android/exoplayer2/source/hls/d;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 4
    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2, v0}, Lcom/google/android/exoplayer2/source/hls/d;->A(JZ)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/c;->B:Lcom/shabakaty/downloader/rn4;

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/rn4;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_1
    return-wide p1
.end method

.method public t(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/c;->M:Lcom/shabakaty/downloader/o04;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/o04;->t(J)V

    return-void
.end method

.method public x0()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method
