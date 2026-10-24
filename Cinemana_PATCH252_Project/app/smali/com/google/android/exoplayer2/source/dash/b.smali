.class public final Lcom/google/android/exoplayer2/source/dash/b;
.super Ljava/lang/Object;
.source "DashMediaPeriod.java"

# interfaces
.implements Lcom/shabakaty/downloader/kp2;
.implements Lcom/shabakaty/downloader/o04$a;
.implements Lcom/shabakaty/downloader/d00$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/kp2;",
        "Lcom/shabakaty/downloader/o04$a<",
        "Lcom/shabakaty/downloader/d00<",
        "Lcom/google/android/exoplayer2/source/dash/a;",
        ">;>;",
        "Lcom/shabakaty/downloader/d00$b<",
        "Lcom/google/android/exoplayer2/source/dash/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final O:Ljava/util/regex/Pattern;

.field public static final P:Ljava/util/regex/Pattern;


# instance fields
.field public final A:Lcom/shabakaty/downloader/cp4;

.field public final B:[Lcom/google/android/exoplayer2/source/dash/b$a;

.field public final C:Lcom/shabakaty/downloader/kd;

.field public final D:Lcom/google/android/exoplayer2/source/dash/d;

.field public final E:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/shabakaty/downloader/d00<",
            "Lcom/google/android/exoplayer2/source/dash/a;",
            ">;",
            "Lcom/google/android/exoplayer2/source/dash/d$c;",
            ">;"
        }
    .end annotation
.end field

.field public final F:Lcom/shabakaty/downloader/yq2$a;

.field public final G:Lcom/shabakaty/downloader/s01$a;

.field public H:Lcom/shabakaty/downloader/kp2$a;

.field public I:[Lcom/shabakaty/downloader/d00;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "Lcom/google/android/exoplayer2/source/dash/a;",
            ">;"
        }
    .end annotation
.end field

.field public J:[Lcom/shabakaty/downloader/w51;

.field public K:Lcom/shabakaty/downloader/o04;

.field public L:Lcom/shabakaty/downloader/zk0;

.field public M:I

.field public N:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/c61;",
            ">;"
        }
    .end annotation
.end field

.field public final r:I

.field public final s:Lcom/google/android/exoplayer2/source/dash/a$a;

.field public final t:Lcom/shabakaty/downloader/sp4;

.field public final u:Lcom/shabakaty/downloader/u01;

.field public final v:Lcom/shabakaty/downloader/gj2;

.field public final w:Lcom/shabakaty/downloader/ok;

.field public final x:J

.field public final y:Lcom/shabakaty/downloader/kj2;

.field public final z:Lcom/shabakaty/downloader/fn0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "CC([1-4])=(.+)"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/dash/b;->O:Ljava/util/regex/Pattern;

    const-string v0, "([1-4])=lang:(\\w+)(,.+)?"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/dash/b;->P:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(ILcom/shabakaty/downloader/zk0;Lcom/shabakaty/downloader/ok;ILcom/google/android/exoplayer2/source/dash/a$a;Lcom/shabakaty/downloader/sp4;Lcom/shabakaty/downloader/u01;Lcom/shabakaty/downloader/s01$a;Lcom/shabakaty/downloader/gj2;Lcom/shabakaty/downloader/yq2$a;JLcom/shabakaty/downloader/kj2;Lcom/shabakaty/downloader/fn0;Lcom/shabakaty/downloader/kd;Lcom/google/android/exoplayer2/source/dash/d$b;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    move-object/from16 v3, p7

    move-object/from16 v4, p14

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move/from16 v5, p1

    .line 2
    iput v5, v0, Lcom/google/android/exoplayer2/source/dash/b;->r:I

    .line 3
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/b;->L:Lcom/shabakaty/downloader/zk0;

    move-object/from16 v5, p3

    .line 4
    iput-object v5, v0, Lcom/google/android/exoplayer2/source/dash/b;->w:Lcom/shabakaty/downloader/ok;

    .line 5
    iput v2, v0, Lcom/google/android/exoplayer2/source/dash/b;->M:I

    move-object/from16 v5, p5

    .line 6
    iput-object v5, v0, Lcom/google/android/exoplayer2/source/dash/b;->s:Lcom/google/android/exoplayer2/source/dash/a$a;

    move-object/from16 v5, p6

    .line 7
    iput-object v5, v0, Lcom/google/android/exoplayer2/source/dash/b;->t:Lcom/shabakaty/downloader/sp4;

    .line 8
    iput-object v3, v0, Lcom/google/android/exoplayer2/source/dash/b;->u:Lcom/shabakaty/downloader/u01;

    move-object/from16 v5, p8

    .line 9
    iput-object v5, v0, Lcom/google/android/exoplayer2/source/dash/b;->G:Lcom/shabakaty/downloader/s01$a;

    move-object/from16 v5, p9

    .line 10
    iput-object v5, v0, Lcom/google/android/exoplayer2/source/dash/b;->v:Lcom/shabakaty/downloader/gj2;

    move-object/from16 v5, p10

    .line 11
    iput-object v5, v0, Lcom/google/android/exoplayer2/source/dash/b;->F:Lcom/shabakaty/downloader/yq2$a;

    move-wide/from16 v5, p11

    .line 12
    iput-wide v5, v0, Lcom/google/android/exoplayer2/source/dash/b;->x:J

    move-object/from16 v5, p13

    .line 13
    iput-object v5, v0, Lcom/google/android/exoplayer2/source/dash/b;->y:Lcom/shabakaty/downloader/kj2;

    .line 14
    iput-object v4, v0, Lcom/google/android/exoplayer2/source/dash/b;->z:Lcom/shabakaty/downloader/fn0;

    move-object/from16 v5, p15

    .line 15
    iput-object v5, v0, Lcom/google/android/exoplayer2/source/dash/b;->C:Lcom/shabakaty/downloader/kd;

    .line 16
    new-instance v6, Lcom/google/android/exoplayer2/source/dash/d;

    move-object/from16 v7, p16

    invoke-direct {v6, v1, v7, v4}, Lcom/google/android/exoplayer2/source/dash/d;-><init>(Lcom/shabakaty/downloader/zk0;Lcom/google/android/exoplayer2/source/dash/d$b;Lcom/shabakaty/downloader/fn0;)V

    iput-object v6, v0, Lcom/google/android/exoplayer2/source/dash/b;->D:Lcom/google/android/exoplayer2/source/dash/d;

    const/4 v4, 0x0

    new-array v6, v4, [Lcom/shabakaty/downloader/d00;

    .line 17
    iput-object v6, v0, Lcom/google/android/exoplayer2/source/dash/b;->I:[Lcom/shabakaty/downloader/d00;

    new-array v6, v4, [Lcom/shabakaty/downloader/w51;

    .line 18
    iput-object v6, v0, Lcom/google/android/exoplayer2/source/dash/b;->J:[Lcom/shabakaty/downloader/w51;

    .line 19
    new-instance v6, Ljava/util/IdentityHashMap;

    invoke-direct {v6}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v6, v0, Lcom/google/android/exoplayer2/source/dash/b;->E:Ljava/util/IdentityHashMap;

    .line 20
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/b;->I:[Lcom/shabakaty/downloader/d00;

    .line 21
    invoke-static/range {p15 .. p15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v5, Lcom/shabakaty/downloader/fq1;

    invoke-direct {v5, v6}, Lcom/shabakaty/downloader/fq1;-><init>([Lcom/shabakaty/downloader/o04;)V

    .line 23
    iput-object v5, v0, Lcom/google/android/exoplayer2/source/dash/b;->K:Lcom/shabakaty/downloader/o04;

    .line 24
    iget-object v1, v1, Lcom/shabakaty/downloader/zk0;->m:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/vb3;

    .line 25
    iget-object v2, v1, Lcom/shabakaty/downloader/vb3;->d:Ljava/util/List;

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/dash/b;->N:Ljava/util/List;

    .line 26
    iget-object v1, v1, Lcom/shabakaty/downloader/vb3;->c:Ljava/util/List;

    .line 27
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    .line 28
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6, v5}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 29
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8, v5}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v5, :cond_0

    .line 31
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shabakaty/downloader/l4;

    iget v10, v10, Lcom/shabakaty/downloader/l4;->a:I

    invoke-virtual {v6, v10, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 32
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 33
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-virtual {v8, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_1
    const/4 v10, -0x1

    if-ge v9, v5, :cond_6

    .line 36
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shabakaty/downloader/l4;

    .line 37
    iget-object v12, v11, Lcom/shabakaty/downloader/l4;->e:Ljava/util/List;

    const-string v13, "http://dashif.org/guidelines/trickmode"

    .line 38
    invoke-static {v12, v13}, Lcom/google/android/exoplayer2/source/dash/b;->a(Ljava/util/List;Ljava/lang/String;)Lcom/shabakaty/downloader/oq0;

    move-result-object v12

    if-nez v12, :cond_1

    .line 39
    iget-object v12, v11, Lcom/shabakaty/downloader/l4;->f:Ljava/util/List;

    .line 40
    invoke-static {v12, v13}, Lcom/google/android/exoplayer2/source/dash/b;->a(Ljava/util/List;Ljava/lang/String;)Lcom/shabakaty/downloader/oq0;

    move-result-object v12

    :cond_1
    if-eqz v12, :cond_2

    .line 41
    iget-object v12, v12, Lcom/shabakaty/downloader/oq0;->b:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 42
    invoke-virtual {v6, v12, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    if-eq v12, v10, :cond_2

    goto :goto_2

    :cond_2
    move v12, v9

    :goto_2
    if-ne v12, v9, :cond_4

    .line 43
    iget-object v11, v11, Lcom/shabakaty/downloader/l4;->f:Ljava/util/List;

    const-string v13, "urn:mpeg:dash:adaptation-set-switching:2016"

    .line 44
    invoke-static {v11, v13}, Lcom/google/android/exoplayer2/source/dash/b;->a(Ljava/util/List;Ljava/lang/String;)Lcom/shabakaty/downloader/oq0;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 45
    iget-object v11, v11, Lcom/shabakaty/downloader/oq0;->b:Ljava/lang/String;

    const-string v13, ","

    invoke-static {v11, v13}, Lcom/shabakaty/downloader/sy4;->P(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 46
    array-length v13, v11

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v13, :cond_4

    aget-object v15, v11, v14

    .line 47
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 48
    invoke-virtual {v6, v15, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v15

    if-eq v15, v10, :cond_3

    .line 49
    invoke-static {v12, v15}, Ljava/lang/Math;->min(II)I

    move-result v12

    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_4
    if-eq v12, v9, :cond_5

    .line 50
    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 51
    invoke-virtual {v8, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 52
    invoke-interface {v11, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 53
    invoke-virtual {v8, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 55
    :cond_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v6, v5, [[I

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v5, :cond_7

    .line 56
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    invoke-static {v9}, Lcom/shabakaty/downloader/k32;->b(Ljava/util/Collection;)[I

    move-result-object v9

    aput-object v9, v6, v8

    .line 57
    aget-object v9, v6, v8

    invoke-static {v9}, Ljava/util/Arrays;->sort([I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 58
    :cond_7
    new-array v7, v5, [Z

    .line 59
    new-array v8, v5, [[Lcom/shabakaty/downloader/wh1;

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_5
    if-ge v9, v5, :cond_11

    .line 60
    aget-object v13, v6, v9

    .line 61
    array-length v14, v13

    const/4 v15, 0x0

    :goto_6
    if-ge v15, v14, :cond_a

    aget v10, v13, v15

    .line 62
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shabakaty/downloader/l4;

    iget-object v10, v10, Lcom/shabakaty/downloader/l4;->c:Ljava/util/List;

    .line 63
    :goto_7
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_9

    .line 64
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/shabakaty/downloader/ur3;

    .line 65
    iget-object v12, v12, Lcom/shabakaty/downloader/ur3;->u:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_8

    const/4 v4, 0x1

    goto :goto_8

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_9
    add-int/lit8 v15, v15, 0x1

    const/4 v4, 0x0

    const/4 v10, -0x1

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    :goto_8
    if-eqz v4, :cond_b

    const/4 v4, 0x1

    .line 66
    aput-boolean v4, v7, v9

    add-int/lit8 v11, v11, 0x1

    .line 67
    :cond_b
    aget-object v4, v6, v9

    .line 68
    array-length v10, v4

    const/4 v12, 0x0

    :goto_9
    if-ge v12, v10, :cond_f

    aget v13, v4, v12

    .line 69
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/shabakaty/downloader/l4;

    .line 70
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/shabakaty/downloader/l4;

    iget-object v13, v13, Lcom/shabakaty/downloader/l4;->d:Ljava/util/List;

    move-object/from16 p2, v4

    const/4 v15, 0x0

    .line 71
    :goto_a
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    if-ge v15, v4, :cond_e

    .line 72
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/oq0;

    move/from16 p4, v10

    .line 73
    iget-object v10, v4, Lcom/shabakaty/downloader/oq0;->a:Ljava/lang/String;

    move-object/from16 p5, v13

    const-string v13, "urn:scte:dash:cc:cea-608:2015"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/16 v13, 0x12

    if-eqz v10, :cond_c

    .line 74
    new-instance v10, Lcom/shabakaty/downloader/wh1$b;

    invoke-direct {v10}, Lcom/shabakaty/downloader/wh1$b;-><init>()V

    const-string v12, "application/cea-608"

    .line 75
    iput-object v12, v10, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    .line 76
    iget v12, v14, Lcom/shabakaty/downloader/l4;->a:I

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ":cea608"

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 77
    iput-object v12, v10, Lcom/shabakaty/downloader/wh1$b;->a:Ljava/lang/String;

    .line 78
    invoke-virtual {v10}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object v10

    .line 79
    sget-object v12, Lcom/google/android/exoplayer2/source/dash/b;->O:Ljava/util/regex/Pattern;

    invoke-static {v4, v12, v10}, Lcom/google/android/exoplayer2/source/dash/b;->g(Lcom/shabakaty/downloader/oq0;Ljava/util/regex/Pattern;Lcom/shabakaty/downloader/wh1;)[Lcom/shabakaty/downloader/wh1;

    move-result-object v4

    goto :goto_b

    .line 80
    :cond_c
    iget-object v10, v4, Lcom/shabakaty/downloader/oq0;->a:Ljava/lang/String;

    const-string v13, "urn:scte:dash:cc:cea-708:2015"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 81
    new-instance v10, Lcom/shabakaty/downloader/wh1$b;

    invoke-direct {v10}, Lcom/shabakaty/downloader/wh1$b;-><init>()V

    const-string v12, "application/cea-708"

    .line 82
    iput-object v12, v10, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    .line 83
    iget v12, v14, Lcom/shabakaty/downloader/l4;->a:I

    new-instance v13, Ljava/lang/StringBuilder;

    const/16 v14, 0x12

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ":cea708"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 84
    iput-object v12, v10, Lcom/shabakaty/downloader/wh1$b;->a:Ljava/lang/String;

    .line 85
    invoke-virtual {v10}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object v10

    .line 86
    sget-object v12, Lcom/google/android/exoplayer2/source/dash/b;->P:Ljava/util/regex/Pattern;

    invoke-static {v4, v12, v10}, Lcom/google/android/exoplayer2/source/dash/b;->g(Lcom/shabakaty/downloader/oq0;Ljava/util/regex/Pattern;Lcom/shabakaty/downloader/wh1;)[Lcom/shabakaty/downloader/wh1;

    move-result-object v4

    goto :goto_b

    :cond_d
    add-int/lit8 v15, v15, 0x1

    move/from16 v10, p4

    move-object/from16 v13, p5

    goto/16 :goto_a

    :cond_e
    move/from16 p4, v10

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v4, p2

    goto/16 :goto_9

    :cond_f
    const/4 v4, 0x0

    new-array v10, v4, [Lcom/shabakaty/downloader/wh1;

    move-object v4, v10

    .line 87
    :goto_b
    aput-object v4, v8, v9

    .line 88
    aget-object v4, v8, v9

    array-length v4, v4

    if-eqz v4, :cond_10

    add-int/lit8 v11, v11, 0x1

    :cond_10
    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x0

    const/4 v10, -0x1

    goto/16 :goto_5

    :cond_11
    add-int/2addr v11, v5

    .line 89
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v11

    .line 90
    new-array v9, v4, [Lcom/shabakaty/downloader/bp4;

    .line 91
    new-array v4, v4, [Lcom/google/android/exoplayer2/source/dash/b$a;

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_c
    const-string v12, "application/x-emsg"

    if-ge v10, v5, :cond_18

    .line 92
    aget-object v13, v6, v10

    .line 93
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 94
    array-length v15, v13

    move/from16 p4, v5

    const/4 v5, 0x0

    :goto_d
    if-ge v5, v15, :cond_12

    move-object/from16 p5, v6

    aget v6, v13, v5

    .line 95
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/l4;

    iget-object v6, v6, Lcom/shabakaty/downloader/l4;->c:Ljava/util/List;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v6, p5

    goto :goto_d

    :cond_12
    move-object/from16 p5, v6

    .line 96
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v6, v5, [Lcom/shabakaty/downloader/wh1;

    const/4 v15, 0x0

    :goto_e
    if-ge v15, v5, :cond_13

    .line 97
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 p6, v5

    move-object/from16 v5, v16

    check-cast v5, Lcom/shabakaty/downloader/ur3;

    iget-object v5, v5, Lcom/shabakaty/downloader/ur3;->r:Lcom/shabakaty/downloader/wh1;

    move-object/from16 p8, v14

    .line 98
    invoke-interface {v3, v5}, Lcom/shabakaty/downloader/u01;->d(Lcom/shabakaty/downloader/wh1;)Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v5, v14}, Lcom/shabakaty/downloader/wh1;->b(Ljava/lang/Class;)Lcom/shabakaty/downloader/wh1;

    move-result-object v5

    aput-object v5, v6, v15

    add-int/lit8 v15, v15, 0x1

    move/from16 v5, p6

    move-object/from16 v14, p8

    goto :goto_e

    :cond_13
    const/4 v5, 0x0

    .line 99
    aget v14, v13, v5

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/l4;

    add-int/lit8 v14, v11, 0x1

    .line 100
    aget-boolean v15, v7, v10

    if-eqz v15, :cond_14

    add-int/lit8 v15, v14, 0x1

    move-object/from16 v16, v1

    goto :goto_f

    :cond_14
    move-object/from16 v16, v1

    move v15, v14

    const/4 v14, -0x1

    .line 101
    :goto_f
    aget-object v1, v8, v10

    array-length v1, v1

    if-eqz v1, :cond_15

    add-int/lit8 v1, v15, 0x1

    move/from16 v19, v15

    move v15, v1

    move/from16 v1, v19

    goto :goto_10

    :cond_15
    const/4 v1, -0x1

    .line 102
    :goto_10
    new-instance v3, Lcom/shabakaty/downloader/bp4;

    invoke-direct {v3, v6}, Lcom/shabakaty/downloader/bp4;-><init>([Lcom/shabakaty/downloader/wh1;)V

    aput-object v3, v9, v11

    .line 103
    iget v3, v5, Lcom/shabakaty/downloader/l4;->b:I

    .line 104
    new-instance v6, Lcom/google/android/exoplayer2/source/dash/b$a;

    const/16 v17, 0x0

    const/16 v18, -0x1

    move-object/from16 p8, v6

    move/from16 p9, v3

    move/from16 p10, v17

    move-object/from16 p11, v13

    move/from16 p12, v11

    move/from16 p13, v14

    move/from16 p14, v1

    move/from16 p15, v18

    invoke-direct/range {p8 .. p15}, Lcom/google/android/exoplayer2/source/dash/b$a;-><init>(II[IIIII)V

    .line 105
    aput-object v6, v4, v11

    const/4 v3, -0x1

    if-eq v14, v3, :cond_16

    .line 106
    new-instance v3, Lcom/shabakaty/downloader/wh1$b;

    invoke-direct {v3}, Lcom/shabakaty/downloader/wh1$b;-><init>()V

    iget v5, v5, Lcom/shabakaty/downloader/l4;->a:I

    const/16 v6, 0x10

    move-object/from16 v17, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":emsg"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 107
    iput-object v5, v3, Lcom/shabakaty/downloader/wh1$b;->a:Ljava/lang/String;

    .line 108
    iput-object v12, v3, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    .line 109
    invoke-virtual {v3}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object v3

    .line 110
    new-instance v5, Lcom/shabakaty/downloader/bp4;

    const/4 v6, 0x1

    new-array v7, v6, [Lcom/shabakaty/downloader/wh1;

    const/4 v6, 0x0

    aput-object v3, v7, v6

    invoke-direct {v5, v7}, Lcom/shabakaty/downloader/bp4;-><init>([Lcom/shabakaty/downloader/wh1;)V

    aput-object v5, v9, v14

    .line 111
    new-instance v3, Lcom/google/android/exoplayer2/source/dash/b$a;

    const/4 v5, 0x5

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v12, -0x1

    const/16 v18, -0x1

    move-object/from16 p8, v3

    move/from16 p9, v5

    move/from16 p10, v6

    move-object/from16 p11, v13

    move/from16 p12, v11

    move/from16 p13, v7

    move/from16 p14, v12

    move/from16 p15, v18

    invoke-direct/range {p8 .. p15}, Lcom/google/android/exoplayer2/source/dash/b$a;-><init>(II[IIIII)V

    .line 112
    aput-object v3, v4, v14

    const/4 v3, -0x1

    goto :goto_11

    :cond_16
    move-object/from16 v17, v7

    :goto_11
    if-eq v1, v3, :cond_17

    .line 113
    new-instance v5, Lcom/shabakaty/downloader/bp4;

    aget-object v6, v8, v10

    invoke-direct {v5, v6}, Lcom/shabakaty/downloader/bp4;-><init>([Lcom/shabakaty/downloader/wh1;)V

    aput-object v5, v9, v1

    .line 114
    new-instance v5, Lcom/google/android/exoplayer2/source/dash/b$a;

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v12, -0x1

    const/4 v14, -0x1

    const/16 v18, -0x1

    move-object/from16 p8, v5

    move/from16 p9, v6

    move/from16 p10, v7

    move-object/from16 p11, v13

    move/from16 p12, v11

    move/from16 p13, v12

    move/from16 p14, v14

    move/from16 p15, v18

    invoke-direct/range {p8 .. p15}, Lcom/google/android/exoplayer2/source/dash/b$a;-><init>(II[IIIII)V

    .line 115
    aput-object v5, v4, v1

    :cond_17
    add-int/lit8 v10, v10, 0x1

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v3, p7

    move v11, v15

    move-object/from16 v1, v16

    move-object/from16 v7, v17

    goto/16 :goto_c

    :cond_18
    const/4 v1, 0x0

    .line 116
    :goto_12
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_19

    .line 117
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/c61;

    .line 118
    new-instance v5, Lcom/shabakaty/downloader/wh1$b;

    invoke-direct {v5}, Lcom/shabakaty/downloader/wh1$b;-><init>()V

    .line 119
    invoke-virtual {v3}, Lcom/shabakaty/downloader/c61;->a()Ljava/lang/String;

    move-result-object v3

    .line 120
    iput-object v3, v5, Lcom/shabakaty/downloader/wh1$b;->a:Ljava/lang/String;

    .line 121
    iput-object v12, v5, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    .line 122
    invoke-virtual {v5}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object v3

    .line 123
    new-instance v5, Lcom/shabakaty/downloader/bp4;

    const/4 v6, 0x1

    new-array v7, v6, [Lcom/shabakaty/downloader/wh1;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-direct {v5, v7}, Lcom/shabakaty/downloader/bp4;-><init>([Lcom/shabakaty/downloader/wh1;)V

    aput-object v5, v9, v11

    add-int/lit8 v3, v11, 0x1

    .line 124
    new-instance v5, Lcom/google/android/exoplayer2/source/dash/b$a;

    new-array v7, v8, [I

    const/4 v10, 0x5

    const/4 v13, 0x2

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    move-object/from16 p6, v5

    move/from16 p7, v10

    move/from16 p8, v13

    move-object/from16 p9, v7

    move/from16 p10, v14

    move/from16 p11, v15

    move/from16 p12, v16

    move/from16 p13, v1

    invoke-direct/range {p6 .. p13}, Lcom/google/android/exoplayer2/source/dash/b$a;-><init>(II[IIIII)V

    .line 125
    aput-object v5, v4, v11

    add-int/lit8 v1, v1, 0x1

    move v11, v3

    goto :goto_12

    .line 126
    :cond_19
    new-instance v1, Lcom/shabakaty/downloader/cp4;

    invoke-direct {v1, v9}, Lcom/shabakaty/downloader/cp4;-><init>([Lcom/shabakaty/downloader/bp4;)V

    invoke-static {v1, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 127
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/cp4;

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/dash/b;->A:Lcom/shabakaty/downloader/cp4;

    .line 128
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Lcom/google/android/exoplayer2/source/dash/b$a;

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/b;->B:[Lcom/google/android/exoplayer2/source/dash/b$a;

    return-void
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;)Lcom/shabakaty/downloader/oq0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/oq0;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/oq0;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/oq0;

    .line 3
    iget-object v2, v1, Lcom/shabakaty/downloader/oq0;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static g(Lcom/shabakaty/downloader/oq0;Ljava/util/regex/Pattern;Lcom/shabakaty/downloader/wh1;)[Lcom/shabakaty/downloader/wh1;
    .locals 10

    .line 1
    iget-object p0, p0, Lcom/shabakaty/downloader/oq0;->b:Ljava/lang/String;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [Lcom/shabakaty/downloader/wh1;

    aput-object p2, p0, v1

    return-object p0

    .line 2
    :cond_0
    sget v2, Lcom/shabakaty/downloader/sy4;->a:I

    const/4 v2, -0x1

    const-string v3, ";"

    .line 3
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 4
    array-length v2, p0

    new-array v2, v2, [Lcom/shabakaty/downloader/wh1;

    const/4 v3, 0x0

    .line 5
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_2

    .line 6
    aget-object v4, p0, v3

    invoke-virtual {p1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 7
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_1

    new-array p0, v0, [Lcom/shabakaty/downloader/wh1;

    aput-object p2, p0, v1

    return-object p0

    .line 8
    :cond_1
    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 9
    invoke-virtual {p2}, Lcom/shabakaty/downloader/wh1;->a()Lcom/shabakaty/downloader/wh1$b;

    move-result-object v6

    iget-object v7, p2, Lcom/shabakaty/downloader/wh1;->r:Ljava/lang/String;

    const/16 v8, 0xc

    invoke-static {v7, v8}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 10
    iput-object v7, v6, Lcom/shabakaty/downloader/wh1$b;->a:Ljava/lang/String;

    .line 11
    iput v5, v6, Lcom/shabakaty/downloader/wh1$b;->C:I

    const/4 v5, 0x2

    .line 12
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 13
    iput-object v4, v6, Lcom/shabakaty/downloader/wh1$b;->c:Ljava/lang/String;

    .line 14
    invoke-virtual {v6}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method


# virtual methods
.method public B0(Lcom/shabakaty/downloader/kp2$a;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/b;->H:Lcom/shabakaty/downloader/kp2$a;

    .line 2
    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/kp2$a;->f(Lcom/shabakaty/downloader/kp2;)V

    return-void
.end method

.method public C0([Lcom/shabakaty/downloader/f81;[Z[Lcom/shabakaty/downloader/dx3;[ZJ)J
    .locals 36

    move-object/from16 v14, p0

    move-object/from16 v0, p1

    move-wide/from16 v12, p5

    .line 1
    array-length v1, v0

    new-array v15, v1, [I

    const/16 v16, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, v0

    const/4 v11, -0x1

    if-ge v1, v2, :cond_1

    .line 3
    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, v14, Lcom/google/android/exoplayer2/source/dash/b;->A:Lcom/shabakaty/downloader/cp4;

    aget-object v3, v0, v1

    invoke-interface {v3}, Lcom/shabakaty/downloader/hp4;->b()Lcom/shabakaty/downloader/bp4;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/cp4;->a(Lcom/shabakaty/downloader/bp4;)I

    move-result v2

    aput v2, v15, v1

    goto :goto_1

    .line 5
    :cond_0
    aput v11, v15, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 6
    :goto_2
    array-length v2, v0

    const/16 v17, 0x0

    if-ge v1, v2, :cond_6

    .line 7
    aget-object v2, v0, v1

    if-eqz v2, :cond_2

    aget-boolean v2, p2, v1

    if-nez v2, :cond_5

    .line 8
    :cond_2
    aget-object v2, p3, v1

    instance-of v2, v2, Lcom/shabakaty/downloader/d00;

    if-eqz v2, :cond_3

    .line 9
    aget-object v2, p3, v1

    check-cast v2, Lcom/shabakaty/downloader/d00;

    .line 10
    invoke-virtual {v2, v14}, Lcom/shabakaty/downloader/d00;->u(Lcom/shabakaty/downloader/d00$b;)V

    goto :goto_3

    .line 11
    :cond_3
    aget-object v2, p3, v1

    instance-of v2, v2, Lcom/shabakaty/downloader/d00$a;

    if-eqz v2, :cond_4

    .line 12
    aget-object v2, p3, v1

    check-cast v2, Lcom/shabakaty/downloader/d00$a;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/d00$a;->c()V

    .line 13
    :cond_4
    :goto_3
    aput-object v17, p3, v1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    .line 14
    :goto_4
    array-length v2, v0

    const/4 v10, 0x1

    if-ge v1, v2, :cond_c

    .line 15
    aget-object v2, p3, v1

    instance-of v2, v2, Lcom/shabakaty/downloader/a31;

    if-nez v2, :cond_7

    aget-object v2, p3, v1

    instance-of v2, v2, Lcom/shabakaty/downloader/d00$a;

    if-eqz v2, :cond_b

    .line 16
    :cond_7
    invoke-virtual {v14, v1, v15}, Lcom/google/android/exoplayer2/source/dash/b;->d(I[I)I

    move-result v2

    if-ne v2, v11, :cond_8

    .line 17
    aget-object v2, p3, v1

    instance-of v10, v2, Lcom/shabakaty/downloader/a31;

    goto :goto_5

    .line 18
    :cond_8
    aget-object v3, p3, v1

    instance-of v3, v3, Lcom/shabakaty/downloader/d00$a;

    if-eqz v3, :cond_9

    aget-object v3, p3, v1

    check-cast v3, Lcom/shabakaty/downloader/d00$a;

    iget-object v3, v3, Lcom/shabakaty/downloader/d00$a;->r:Lcom/shabakaty/downloader/d00;

    aget-object v2, p3, v2

    if-ne v3, v2, :cond_9

    goto :goto_5

    :cond_9
    const/4 v10, 0x0

    :goto_5
    if-nez v10, :cond_b

    .line 19
    aget-object v2, p3, v1

    instance-of v2, v2, Lcom/shabakaty/downloader/d00$a;

    if-eqz v2, :cond_a

    .line 20
    aget-object v2, p3, v1

    check-cast v2, Lcom/shabakaty/downloader/d00$a;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/d00$a;->c()V

    .line 21
    :cond_a
    aput-object v17, p3, v1

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_c
    move-object/from16 v1, p3

    const/4 v8, 0x0

    .line 22
    :goto_6
    array-length v2, v0

    if-ge v8, v2, :cond_18

    .line 23
    aget-object v2, v0, v8

    if-nez v2, :cond_d

    move/from16 v18, v8

    move-object/from16 v35, v15

    goto/16 :goto_e

    .line 24
    :cond_d
    aget-object v3, v1, v8

    if-nez v3, :cond_16

    .line 25
    aput-boolean v10, p4, v8

    .line 26
    aget v3, v15, v8

    .line 27
    iget-object v4, v14, Lcom/google/android/exoplayer2/source/dash/b;->B:[Lcom/google/android/exoplayer2/source/dash/b$a;

    aget-object v3, v4, v3

    .line 28
    iget v4, v3, Lcom/google/android/exoplayer2/source/dash/b$a;->c:I

    if-nez v4, :cond_15

    .line 29
    iget v1, v3, Lcom/google/android/exoplayer2/source/dash/b$a;->f:I

    if-eq v1, v11, :cond_e

    const/16 v28, 0x1

    goto :goto_7

    :cond_e
    const/16 v28, 0x0

    :goto_7
    if-eqz v28, :cond_f

    .line 30
    iget-object v4, v14, Lcom/google/android/exoplayer2/source/dash/b;->A:Lcom/shabakaty/downloader/cp4;

    .line 31
    iget-object v4, v4, Lcom/shabakaty/downloader/cp4;->s:[Lcom/shabakaty/downloader/bp4;

    aget-object v1, v4, v1

    const/4 v4, 0x1

    goto :goto_8

    :cond_f
    move-object/from16 v1, v17

    const/4 v4, 0x0

    .line 32
    :goto_8
    iget v5, v3, Lcom/google/android/exoplayer2/source/dash/b$a;->g:I

    if-eq v5, v11, :cond_10

    const/4 v6, 0x1

    goto :goto_9

    :cond_10
    const/4 v6, 0x0

    :goto_9
    if-eqz v6, :cond_11

    .line 33
    iget-object v7, v14, Lcom/google/android/exoplayer2/source/dash/b;->A:Lcom/shabakaty/downloader/cp4;

    .line 34
    iget-object v7, v7, Lcom/shabakaty/downloader/cp4;->s:[Lcom/shabakaty/downloader/bp4;

    aget-object v5, v7, v5

    .line 35
    iget v7, v5, Lcom/shabakaty/downloader/bp4;->r:I

    add-int/2addr v4, v7

    goto :goto_a

    :cond_11
    move-object/from16 v5, v17

    .line 36
    :goto_a
    new-array v7, v4, [Lcom/shabakaty/downloader/wh1;

    .line 37
    new-array v4, v4, [I

    if-eqz v28, :cond_12

    .line 38
    iget-object v1, v1, Lcom/shabakaty/downloader/bp4;->s:[Lcom/shabakaty/downloader/wh1;

    aget-object v1, v1, v16

    .line 39
    aput-object v1, v7, v16

    const/4 v1, 0x5

    .line 40
    aput v1, v4, v16

    const/4 v1, 0x1

    goto :goto_b

    :cond_12
    const/4 v1, 0x0

    .line 41
    :goto_b
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-eqz v6, :cond_13

    const/4 v6, 0x0

    .line 42
    :goto_c
    iget v11, v5, Lcom/shabakaty/downloader/bp4;->r:I

    if-ge v6, v11, :cond_13

    .line 43
    iget-object v11, v5, Lcom/shabakaty/downloader/bp4;->s:[Lcom/shabakaty/downloader/wh1;

    aget-object v11, v11, v6

    .line 44
    aput-object v11, v7, v1

    const/4 v11, 0x3

    .line 45
    aput v11, v4, v1

    .line 46
    aget-object v11, v7, v1

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 47
    :cond_13
    iget-object v1, v14, Lcom/google/android/exoplayer2/source/dash/b;->L:Lcom/shabakaty/downloader/zk0;

    iget-boolean v1, v1, Lcom/shabakaty/downloader/zk0;->d:Z

    if-eqz v1, :cond_14

    if-eqz v28, :cond_14

    .line 48
    iget-object v1, v14, Lcom/google/android/exoplayer2/source/dash/b;->D:Lcom/google/android/exoplayer2/source/dash/d;

    .line 49
    new-instance v5, Lcom/google/android/exoplayer2/source/dash/d$c;

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/dash/d;->r:Lcom/shabakaty/downloader/fn0;

    invoke-direct {v5, v1, v6}, Lcom/google/android/exoplayer2/source/dash/d$c;-><init>(Lcom/google/android/exoplayer2/source/dash/d;Lcom/shabakaty/downloader/fn0;)V

    move-object v11, v5

    goto :goto_d

    :cond_14
    move-object/from16 v11, v17

    .line 50
    :goto_d
    iget-object v1, v14, Lcom/google/android/exoplayer2/source/dash/b;->s:Lcom/google/android/exoplayer2/source/dash/a$a;

    iget-object v5, v14, Lcom/google/android/exoplayer2/source/dash/b;->y:Lcom/shabakaty/downloader/kj2;

    iget-object v6, v14, Lcom/google/android/exoplayer2/source/dash/b;->L:Lcom/shabakaty/downloader/zk0;

    iget-object v10, v14, Lcom/google/android/exoplayer2/source/dash/b;->w:Lcom/shabakaty/downloader/ok;

    move/from16 v32, v8

    iget v8, v14, Lcom/google/android/exoplayer2/source/dash/b;->M:I

    iget-object v12, v3, Lcom/google/android/exoplayer2/source/dash/b$a;->a:[I

    iget v13, v3, Lcom/google/android/exoplayer2/source/dash/b$a;->b:I

    move-object/from16 v33, v3

    move-object/from16 v34, v4

    iget-wide v3, v14, Lcom/google/android/exoplayer2/source/dash/b;->x:J

    move-object/from16 v35, v15

    iget-object v15, v14, Lcom/google/android/exoplayer2/source/dash/b;->t:Lcom/shabakaty/downloader/sp4;

    move-object/from16 v18, v1

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v10

    move/from16 v22, v8

    move-object/from16 v23, v12

    move-object/from16 v24, v2

    move/from16 v25, v13

    move-wide/from16 v26, v3

    move-object/from16 v29, v9

    move-object/from16 v30, v11

    move-object/from16 v31, v15

    .line 51
    invoke-interface/range {v18 .. v31}, Lcom/google/android/exoplayer2/source/dash/a$a;->a(Lcom/shabakaty/downloader/kj2;Lcom/shabakaty/downloader/zk0;Lcom/shabakaty/downloader/ok;I[ILcom/shabakaty/downloader/f81;IJZLjava/util/List;Lcom/google/android/exoplayer2/source/dash/d$c;Lcom/shabakaty/downloader/sp4;)Lcom/google/android/exoplayer2/source/dash/a;

    move-result-object v5

    .line 52
    new-instance v15, Lcom/shabakaty/downloader/d00;

    move-object/from16 v3, v33

    iget v2, v3, Lcom/google/android/exoplayer2/source/dash/b$a;->b:I

    iget-object v8, v14, Lcom/google/android/exoplayer2/source/dash/b;->z:Lcom/shabakaty/downloader/fn0;

    iget-object v10, v14, Lcom/google/android/exoplayer2/source/dash/b;->u:Lcom/shabakaty/downloader/u01;

    iget-object v12, v14, Lcom/google/android/exoplayer2/source/dash/b;->G:Lcom/shabakaty/downloader/s01$a;

    iget-object v13, v14, Lcom/google/android/exoplayer2/source/dash/b;->v:Lcom/shabakaty/downloader/gj2;

    iget-object v9, v14, Lcom/google/android/exoplayer2/source/dash/b;->F:Lcom/shabakaty/downloader/yq2$a;

    move-object v1, v15

    move-object/from16 v3, v34

    move-object v4, v7

    move-object/from16 v6, p0

    move-object v7, v8

    move-object/from16 v19, v9

    move/from16 v18, v32

    move-wide/from16 v8, p5

    move-object v0, v11

    move-object v11, v12

    move-object v12, v13

    move-object/from16 v13, v19

    invoke-direct/range {v1 .. v13}, Lcom/shabakaty/downloader/d00;-><init>(I[I[Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/e00;Lcom/shabakaty/downloader/o04$a;Lcom/shabakaty/downloader/fn0;JLcom/shabakaty/downloader/u01;Lcom/shabakaty/downloader/s01$a;Lcom/shabakaty/downloader/gj2;Lcom/shabakaty/downloader/yq2$a;)V

    .line 53
    monitor-enter p0

    .line 54
    :try_start_0
    iget-object v1, v14, Lcom/google/android/exoplayer2/source/dash/b;->E:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, v15, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    aput-object v15, p3, v18

    move-object/from16 v1, p3

    goto :goto_e

    :catchall_0
    move-exception v0

    .line 57
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_15
    move/from16 v18, v8

    move-object/from16 v35, v15

    const/4 v0, 0x2

    if-ne v4, v0, :cond_17

    .line 58
    iget-object v0, v14, Lcom/google/android/exoplayer2/source/dash/b;->N:Ljava/util/List;

    iget v3, v3, Lcom/google/android/exoplayer2/source/dash/b$a;->d:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/c61;

    .line 59
    invoke-interface {v2}, Lcom/shabakaty/downloader/hp4;->b()Lcom/shabakaty/downloader/bp4;

    move-result-object v2

    .line 60
    iget-object v2, v2, Lcom/shabakaty/downloader/bp4;->s:[Lcom/shabakaty/downloader/wh1;

    aget-object v2, v2, v16

    .line 61
    new-instance v3, Lcom/shabakaty/downloader/w51;

    iget-object v4, v14, Lcom/google/android/exoplayer2/source/dash/b;->L:Lcom/shabakaty/downloader/zk0;

    iget-boolean v4, v4, Lcom/shabakaty/downloader/zk0;->d:Z

    invoke-direct {v3, v0, v2, v4}, Lcom/shabakaty/downloader/w51;-><init>(Lcom/shabakaty/downloader/c61;Lcom/shabakaty/downloader/wh1;Z)V

    aput-object v3, v1, v18

    goto :goto_e

    :cond_16
    move/from16 v18, v8

    move-object/from16 v35, v15

    .line 62
    aget-object v0, v1, v18

    instance-of v0, v0, Lcom/shabakaty/downloader/d00;

    if-eqz v0, :cond_17

    .line 63
    aget-object v0, v1, v18

    check-cast v0, Lcom/shabakaty/downloader/d00;

    .line 64
    iget-object v0, v0, Lcom/shabakaty/downloader/d00;->v:Lcom/shabakaty/downloader/e00;

    .line 65
    check-cast v0, Lcom/google/android/exoplayer2/source/dash/a;

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/source/dash/a;->c(Lcom/shabakaty/downloader/f81;)V

    :cond_17
    :goto_e
    add-int/lit8 v8, v18, 0x1

    move-object/from16 v0, p1

    move-wide/from16 v12, p5

    move-object/from16 v15, v35

    const/4 v10, 0x1

    const/4 v11, -0x1

    goto/16 :goto_6

    :cond_18
    move-object/from16 v35, v15

    move-object/from16 v0, p1

    const/4 v2, 0x0

    .line 66
    :goto_f
    array-length v3, v0

    if-ge v2, v3, :cond_1e

    .line 67
    aget-object v3, v1, v2

    if-nez v3, :cond_1d

    aget-object v3, v0, v2

    if-eqz v3, :cond_1d

    .line 68
    aget v3, v35, v2

    .line 69
    iget-object v4, v14, Lcom/google/android/exoplayer2/source/dash/b;->B:[Lcom/google/android/exoplayer2/source/dash/b$a;

    aget-object v3, v4, v3

    .line 70
    iget v4, v3, Lcom/google/android/exoplayer2/source/dash/b$a;->c:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1c

    move-object/from16 v4, v35

    .line 71
    invoke-virtual {v14, v2, v4}, Lcom/google/android/exoplayer2/source/dash/b;->d(I[I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_19

    .line 72
    new-instance v3, Lcom/shabakaty/downloader/a31;

    invoke-direct {v3}, Lcom/shabakaty/downloader/a31;-><init>()V

    aput-object v3, v1, v2

    move-wide/from16 v9, p5

    goto :goto_12

    .line 73
    :cond_19
    aget-object v6, v1, v6

    check-cast v6, Lcom/shabakaty/downloader/d00;

    iget v3, v3, Lcom/google/android/exoplayer2/source/dash/b$a;->b:I

    const/4 v8, 0x0

    .line 74
    :goto_10
    iget-object v9, v6, Lcom/shabakaty/downloader/d00;->E:[Lcom/shabakaty/downloader/bx3;

    array-length v9, v9

    if-ge v8, v9, :cond_1b

    .line 75
    iget-object v9, v6, Lcom/shabakaty/downloader/d00;->s:[I

    aget v9, v9, v8

    if-ne v9, v3, :cond_1a

    .line 76
    iget-object v3, v6, Lcom/shabakaty/downloader/d00;->u:[Z

    aget-boolean v3, v3, v8

    xor-int/2addr v3, v5

    invoke-static {v3}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 77
    iget-object v3, v6, Lcom/shabakaty/downloader/d00;->u:[Z

    aput-boolean v5, v3, v8

    .line 78
    iget-object v3, v6, Lcom/shabakaty/downloader/d00;->E:[Lcom/shabakaty/downloader/bx3;

    aget-object v3, v3, v8

    move-wide/from16 v9, p5

    invoke-virtual {v3, v9, v10, v5}, Lcom/shabakaty/downloader/bx3;->G(JZ)Z

    .line 79
    new-instance v3, Lcom/shabakaty/downloader/d00$a;

    iget-object v11, v6, Lcom/shabakaty/downloader/d00;->E:[Lcom/shabakaty/downloader/bx3;

    aget-object v11, v11, v8

    invoke-direct {v3, v6, v6, v11, v8}, Lcom/shabakaty/downloader/d00$a;-><init>(Lcom/shabakaty/downloader/d00;Lcom/shabakaty/downloader/d00;Lcom/shabakaty/downloader/bx3;I)V

    .line 80
    aput-object v3, v1, v2

    goto :goto_12

    :cond_1a
    move-wide/from16 v9, p5

    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    .line 81
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1c
    move-wide/from16 v9, p5

    move-object/from16 v4, v35

    goto :goto_11

    :cond_1d
    move-wide/from16 v9, p5

    move-object/from16 v4, v35

    const/4 v5, 0x1

    :goto_11
    const/4 v7, -0x1

    :goto_12
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v35, v4

    goto :goto_f

    :cond_1e
    move-wide/from16 v9, p5

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 84
    array-length v3, v1

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v3, :cond_21

    aget-object v5, v1, v4

    .line 85
    instance-of v6, v5, Lcom/shabakaty/downloader/d00;

    if-eqz v6, :cond_1f

    .line 86
    check-cast v5, Lcom/shabakaty/downloader/d00;

    .line 87
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 88
    :cond_1f
    instance-of v6, v5, Lcom/shabakaty/downloader/w51;

    if-eqz v6, :cond_20

    .line 89
    check-cast v5, Lcom/shabakaty/downloader/w51;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    :goto_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 90
    :cond_21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 91
    new-array v1, v1, [Lcom/shabakaty/downloader/d00;

    .line 92
    iput-object v1, v14, Lcom/google/android/exoplayer2/source/dash/b;->I:[Lcom/shabakaty/downloader/d00;

    .line 93
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 94
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/shabakaty/downloader/w51;

    iput-object v0, v14, Lcom/google/android/exoplayer2/source/dash/b;->J:[Lcom/shabakaty/downloader/w51;

    .line 95
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 96
    iget-object v0, v14, Lcom/google/android/exoplayer2/source/dash/b;->C:Lcom/shabakaty/downloader/kd;

    iget-object v1, v14, Lcom/google/android/exoplayer2/source/dash/b;->I:[Lcom/shabakaty/downloader/d00;

    .line 97
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v0, Lcom/shabakaty/downloader/fq1;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/fq1;-><init>([Lcom/shabakaty/downloader/o04;)V

    .line 99
    iput-object v0, v14, Lcom/google/android/exoplayer2/source/dash/b;->K:Lcom/shabakaty/downloader/o04;

    return-wide v9
.end method

.method public D0()Lcom/shabakaty/downloader/cp4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->A:Lcom/shabakaty/downloader/cp4;

    return-object v0
.end method

.method public M0(JZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->I:[Lcom/shabakaty/downloader/d00;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3, p1, p2, p3}, Lcom/shabakaty/downloader/d00;->M0(JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Lcom/shabakaty/downloader/o04;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/b;->H:Lcom/shabakaty/downloader/kp2$a;

    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/o04$a;->b(Lcom/shabakaty/downloader/o04;)V

    return-void
.end method

.method public c()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->K:Lcom/shabakaty/downloader/o04;

    invoke-interface {v0}, Lcom/shabakaty/downloader/o04;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(I[I)I
    .locals 4

    .line 1
    aget p1, p2, p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/b;->B:[Lcom/google/android/exoplayer2/source/dash/b$a;

    aget-object p1, v1, p1

    iget p1, p1, Lcom/google/android/exoplayer2/source/dash/b$a;->e:I

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    .line 4
    aget v2, p2, v1

    if-ne v2, p1, :cond_1

    .line 5
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/b;->B:[Lcom/google/android/exoplayer2/source/dash/b$a;

    aget-object v2, v3, v2

    iget v2, v2, Lcom/google/android/exoplayer2/source/dash/b$a;->c:I

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public d0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->y:Lcom/shabakaty/downloader/kj2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kj2;->b()V

    return-void
.end method

.method public e(J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->K:Lcom/shabakaty/downloader/o04;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/o04;->e(J)Z

    move-result p1

    return p1
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->K:Lcom/shabakaty/downloader/o04;

    invoke-interface {v0}, Lcom/shabakaty/downloader/o04;->j()Z

    move-result v0

    return v0
.end method

.method public k(JLcom/shabakaty/downloader/wz3;)J
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->I:[Lcom/shabakaty/downloader/d00;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget v4, v3, Lcom/shabakaty/downloader/d00;->r:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 3
    iget-object v0, v3, Lcom/shabakaty/downloader/d00;->v:Lcom/shabakaty/downloader/e00;

    invoke-interface {v0, p1, p2, p3}, Lcom/shabakaty/downloader/e00;->k(JLcom/shabakaty/downloader/wz3;)J

    move-result-wide p1

    return-wide p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide p1
.end method

.method public o()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->K:Lcom/shabakaty/downloader/o04;

    invoke-interface {v0}, Lcom/shabakaty/downloader/o04;->o()J

    move-result-wide v0

    return-wide v0
.end method

.method public p0(J)J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->I:[Lcom/shabakaty/downloader/d00;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 2
    invoke-virtual {v4, p1, p2}, Lcom/shabakaty/downloader/d00;->w(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->J:[Lcom/shabakaty/downloader/w51;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3, p1, p2}, Lcom/shabakaty/downloader/w51;->a(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-wide p1
.end method

.method public t(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->K:Lcom/shabakaty/downloader/o04;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/o04;->t(J)V

    return-void
.end method

.method public x0()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method
