.class public final Lcom/shabakaty/downloader/zp;
.super Ljava/lang/Object;
.source "CacheInterceptor.kt"

# interfaces
.implements Lcom/shabakaty/downloader/w22;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/zp$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/shabakaty/downloader/zp$a;


# instance fields
.field public final a:Lcom/shabakaty/downloader/op;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/zp$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/zp$a;-><init>(Lcom/shabakaty/downloader/nn0;)V

    sput-object v0, Lcom/shabakaty/downloader/zp;->b:Lcom/shabakaty/downloader/zp$a;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/op;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/zp;->a:Lcom/shabakaty/downloader/op;

    return-void
.end method


# virtual methods
.method public intercept(Lcom/shabakaty/downloader/w22$a;)Lcom/shabakaty/downloader/ws3;
    .locals 40

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "chain"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/w22$a;->call()Lcom/shabakaty/downloader/mq;

    move-result-object v2

    .line 2
    iget-object v3, v1, Lcom/shabakaty/downloader/zp;->a:Lcom/shabakaty/downloader/op;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_9

    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/w22$a;->d()Lcom/shabakaty/downloader/vr3;

    move-result-object v7

    const-string v8, "request"

    .line 3
    invoke-static {v7, v8}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v8, v7, Lcom/shabakaty/downloader/vr3;->b:Lcom/shabakaty/downloader/qw1;

    const-string v9, "url"

    .line 5
    invoke-static {v8, v9}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v9, Lcom/shabakaty/downloader/fp;->v:Lcom/shabakaty/downloader/fp$a;

    .line 7
    iget-object v8, v8, Lcom/shabakaty/downloader/qw1;->j:Ljava/lang/String;

    .line 8
    invoke-virtual {v9, v8}, Lcom/shabakaty/downloader/fp$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fp;

    move-result-object v8

    const-string v9, "MD5"

    .line 9
    invoke-virtual {v8, v9}, Lcom/shabakaty/downloader/fp;->h(Ljava/lang/String;)Lcom/shabakaty/downloader/fp;

    move-result-object v8

    .line 10
    invoke-virtual {v8}, Lcom/shabakaty/downloader/fp;->n()Ljava/lang/String;

    move-result-object v8

    .line 11
    :try_start_0
    iget-object v3, v3, Lcom/shabakaty/downloader/op;->r:Lcom/shabakaty/downloader/wt0;

    invoke-virtual {v3, v8}, Lcom/shabakaty/downloader/wt0;->d(Ljava/lang/String;)Lcom/shabakaty/downloader/wt0$e;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_9

    .line 12
    :try_start_1
    new-instance v8, Lcom/shabakaty/downloader/op$c;

    .line 13
    iget-object v9, v3, Lcom/shabakaty/downloader/wt0$e;->t:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/r94;

    .line 14
    invoke-direct {v8, v9}, Lcom/shabakaty/downloader/op$c;-><init>(Lcom/shabakaty/downloader/r94;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 15
    iget-object v9, v8, Lcom/shabakaty/downloader/op$c;->g:Lcom/shabakaty/downloader/ts1;

    const-string v10, "Content-Type"

    invoke-virtual {v9, v10}, Lcom/shabakaty/downloader/ts1;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 16
    iget-object v10, v8, Lcom/shabakaty/downloader/op$c;->g:Lcom/shabakaty/downloader/ts1;

    const-string v11, "Content-Length"

    invoke-virtual {v10, v11}, Lcom/shabakaty/downloader/ts1;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 17
    new-instance v11, Lcom/shabakaty/downloader/vr3$a;

    invoke-direct {v11}, Lcom/shabakaty/downloader/vr3$a;-><init>()V

    .line 18
    iget-object v12, v8, Lcom/shabakaty/downloader/op$c;->a:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/shabakaty/downloader/vr3$a;->k(Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;

    .line 19
    iget-object v12, v8, Lcom/shabakaty/downloader/op$c;->c:Ljava/lang/String;

    invoke-virtual {v11, v12, v6}, Lcom/shabakaty/downloader/vr3$a;->g(Ljava/lang/String;Lcom/shabakaty/downloader/yr3;)Lcom/shabakaty/downloader/vr3$a;

    .line 20
    iget-object v12, v8, Lcom/shabakaty/downloader/op$c;->b:Lcom/shabakaty/downloader/ts1;

    invoke-virtual {v11, v12}, Lcom/shabakaty/downloader/vr3$a;->f(Lcom/shabakaty/downloader/ts1;)Lcom/shabakaty/downloader/vr3$a;

    .line 21
    invoke-virtual {v11}, Lcom/shabakaty/downloader/vr3$a;->b()Lcom/shabakaty/downloader/vr3;

    move-result-object v11

    .line 22
    new-instance v12, Lcom/shabakaty/downloader/ws3$a;

    invoke-direct {v12}, Lcom/shabakaty/downloader/ws3$a;-><init>()V

    .line 23
    invoke-virtual {v12, v11}, Lcom/shabakaty/downloader/ws3$a;->h(Lcom/shabakaty/downloader/vr3;)Lcom/shabakaty/downloader/ws3$a;

    .line 24
    iget-object v11, v8, Lcom/shabakaty/downloader/op$c;->d:Lcom/shabakaty/downloader/mj3;

    invoke-virtual {v12, v11}, Lcom/shabakaty/downloader/ws3$a;->g(Lcom/shabakaty/downloader/mj3;)Lcom/shabakaty/downloader/ws3$a;

    .line 25
    iget v11, v8, Lcom/shabakaty/downloader/op$c;->e:I

    .line 26
    iput v11, v12, Lcom/shabakaty/downloader/ws3$a;->c:I

    .line 27
    iget-object v11, v8, Lcom/shabakaty/downloader/op$c;->f:Ljava/lang/String;

    invoke-virtual {v12, v11}, Lcom/shabakaty/downloader/ws3$a;->f(Ljava/lang/String;)Lcom/shabakaty/downloader/ws3$a;

    .line 28
    iget-object v11, v8, Lcom/shabakaty/downloader/op$c;->g:Lcom/shabakaty/downloader/ts1;

    invoke-virtual {v12, v11}, Lcom/shabakaty/downloader/ws3$a;->e(Lcom/shabakaty/downloader/ts1;)Lcom/shabakaty/downloader/ws3$a;

    .line 29
    new-instance v11, Lcom/shabakaty/downloader/op$a;

    invoke-direct {v11, v3, v9, v10}, Lcom/shabakaty/downloader/op$a;-><init>(Lcom/shabakaty/downloader/wt0$e;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iput-object v11, v12, Lcom/shabakaty/downloader/ws3$a;->g:Lcom/shabakaty/downloader/ys3;

    .line 31
    iget-object v3, v8, Lcom/shabakaty/downloader/op$c;->h:Lcom/shabakaty/downloader/is1;

    .line 32
    iput-object v3, v12, Lcom/shabakaty/downloader/ws3$a;->e:Lcom/shabakaty/downloader/is1;

    .line 33
    iget-wide v9, v8, Lcom/shabakaty/downloader/op$c;->i:J

    .line 34
    iput-wide v9, v12, Lcom/shabakaty/downloader/ws3$a;->k:J

    .line 35
    iget-wide v9, v8, Lcom/shabakaty/downloader/op$c;->j:J

    .line 36
    iput-wide v9, v12, Lcom/shabakaty/downloader/ws3$a;->l:J

    .line 37
    invoke-virtual {v12}, Lcom/shabakaty/downloader/ws3$a;->a()Lcom/shabakaty/downloader/ws3;

    move-result-object v3

    .line 38
    iget-object v9, v8, Lcom/shabakaty/downloader/op$c;->a:Ljava/lang/String;

    .line 39
    iget-object v10, v7, Lcom/shabakaty/downloader/vr3;->b:Lcom/shabakaty/downloader/qw1;

    .line 40
    iget-object v10, v10, Lcom/shabakaty/downloader/qw1;->j:Ljava/lang/String;

    .line 41
    invoke-static {v9, v10}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, v8, Lcom/shabakaty/downloader/op$c;->c:Ljava/lang/String;

    .line 42
    iget-object v10, v7, Lcom/shabakaty/downloader/vr3;->c:Ljava/lang/String;

    .line 43
    invoke-static {v9, v10}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 44
    iget-object v8, v8, Lcom/shabakaty/downloader/op$c;->b:Lcom/shabakaty/downloader/ts1;

    const-string v9, "cachedRequest"

    .line 45
    invoke-static {v8, v9}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v9, v3, Lcom/shabakaty/downloader/ws3;->x:Lcom/shabakaty/downloader/ts1;

    .line 47
    invoke-virtual {v9}, Lcom/shabakaty/downloader/ts1;->size()I

    move-result v10

    const/4 v11, 0x0

    move-object v12, v6

    :goto_0
    if-ge v11, v10, :cond_3

    .line 48
    invoke-virtual {v9, v11}, Lcom/shabakaty/downloader/ts1;->i(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "Vary"

    invoke-static {v14, v13, v5}, Lcom/shabakaty/downloader/ne4;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_0

    goto :goto_2

    .line 49
    :cond_0
    invoke-virtual {v9, v11}, Lcom/shabakaty/downloader/ts1;->n(I)Ljava/lang/String;

    move-result-object v13

    if-nez v12, :cond_1

    .line 50
    new-instance v12, Ljava/util/TreeSet;

    .line 51
    sget-object v14, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    const-string v15, "CASE_INSENSITIVE_ORDER"

    invoke-static {v14, v15}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {v12, v14}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    :cond_1
    new-array v14, v5, [C

    const/16 v15, 0x2c

    aput-char v15, v14, v4

    const/4 v15, 0x6

    .line 53
    invoke-static {v13, v14, v4, v4, v15}, Lcom/shabakaty/downloader/re4;->d0(Ljava/lang/CharSequence;[CZII)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-string v15, "null cannot be cast to non-null type kotlin.CharSequence"

    .line 54
    invoke-static {v14, v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v14}, Lcom/shabakaty/downloader/re4;->m0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_3
    if-eqz v12, :cond_4

    goto :goto_3

    .line 55
    :cond_4
    sget-object v12, Lcom/shabakaty/downloader/c31;->r:Lcom/shabakaty/downloader/c31;

    .line 56
    :goto_3
    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_4

    .line 57
    :cond_5
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 58
    invoke-virtual {v8, v9}, Lcom/shabakaty/downloader/ts1;->p(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 59
    iget-object v11, v7, Lcom/shabakaty/downloader/vr3;->d:Lcom/shabakaty/downloader/ts1;

    invoke-virtual {v11, v9}, Lcom/shabakaty/downloader/ts1;->p(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 60
    invoke-static {v10, v9}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    xor-int/2addr v9, v5

    if-eqz v9, :cond_6

    const/4 v4, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v4, 0x1

    :goto_5
    if-eqz v4, :cond_8

    const/4 v4, 0x1

    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    :goto_6
    if-nez v4, :cond_a

    .line 61
    iget-object v3, v3, Lcom/shabakaty/downloader/ws3;->y:Lcom/shabakaty/downloader/ys3;

    if-eqz v3, :cond_9

    .line 62
    invoke-static {v3}, Lcom/shabakaty/downloader/ry4;->d(Ljava/io/Closeable;)V

    goto :goto_7

    .line 63
    :catch_0
    invoke-static {v3}, Lcom/shabakaty/downloader/ry4;->d(Ljava/io/Closeable;)V

    :catch_1
    :cond_9
    :goto_7
    move-object v3, v6

    .line 64
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 65
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/w22$a;->d()Lcom/shabakaty/downloader/vr3;

    move-result-object v7

    const-string v8, "request"

    .line 66
    invoke-static {v7, v8}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_11

    .line 67
    iget-wide v8, v3, Lcom/shabakaty/downloader/ws3;->C:J

    .line 68
    iget-wide v10, v3, Lcom/shabakaty/downloader/ws3;->D:J

    .line 69
    iget-object v12, v3, Lcom/shabakaty/downloader/ws3;->x:Lcom/shabakaty/downloader/ts1;

    .line 70
    invoke-virtual {v12}, Lcom/shabakaty/downloader/ts1;->size()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, -0x1

    move-object v14, v6

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    const/4 v6, 0x0

    const/16 v20, -0x1

    :goto_8
    if-ge v6, v13, :cond_10

    move-wide/from16 v21, v8

    .line 71
    invoke-virtual {v12, v6}, Lcom/shabakaty/downloader/ts1;->i(I)Ljava/lang/String;

    move-result-object v8

    .line 72
    invoke-virtual {v12, v6}, Lcom/shabakaty/downloader/ts1;->n(I)Ljava/lang/String;

    move-result-object v9

    move-wide/from16 v23, v10

    const-string v10, "Date"

    const/4 v11, 0x1

    .line 73
    invoke-static {v8, v10, v11}, Lcom/shabakaty/downloader/ne4;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 74
    invoke-static {v9}, Lcom/shabakaty/downloader/hm0;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    move-object/from16 v19, v8

    move-object/from16 v18, v9

    goto :goto_9

    :cond_b
    const-string v10, "Expires"

    .line 75
    invoke-static {v8, v10, v11}, Lcom/shabakaty/downloader/ne4;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 76
    invoke-static {v9}, Lcom/shabakaty/downloader/hm0;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v14

    goto :goto_9

    :cond_c
    const-string v10, "Last-Modified"

    .line 77
    invoke-static {v8, v10, v11}, Lcom/shabakaty/downloader/ne4;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 78
    invoke-static {v9}, Lcom/shabakaty/downloader/hm0;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v15

    move-object/from16 v17, v9

    goto :goto_9

    :cond_d
    const-string v10, "ETag"

    .line 79
    invoke-static {v8, v10, v11}, Lcom/shabakaty/downloader/ne4;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_e

    move-object/from16 v16, v9

    goto :goto_9

    :cond_e
    const-string v10, "Age"

    .line 80
    invoke-static {v8, v10, v11}, Lcom/shabakaty/downloader/ne4;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_f

    const/4 v8, -0x1

    .line 81
    invoke-static {v9, v8}, Lcom/shabakaty/downloader/ry4;->z(Ljava/lang/String;I)I

    move-result v20

    :cond_f
    :goto_9
    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v8, v21

    move-wide/from16 v10, v23

    goto :goto_8

    :cond_10
    move-wide/from16 v21, v8

    move-wide/from16 v23, v10

    move-object/from16 v6, v19

    move/from16 v12, v20

    goto :goto_a

    :cond_11
    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v10, 0x0

    const/16 v20, -0x1

    const/4 v12, -0x1

    :goto_a
    if-nez v3, :cond_12

    .line 82
    new-instance v4, Lcom/shabakaty/downloader/fq;

    const/4 v5, 0x0

    invoke-direct {v4, v7, v5}, Lcom/shabakaty/downloader/fq;-><init>(Lcom/shabakaty/downloader/vr3;Lcom/shabakaty/downloader/ws3;)V

    goto :goto_b

    .line 83
    :cond_12
    iget-object v13, v7, Lcom/shabakaty/downloader/vr3;->b:Lcom/shabakaty/downloader/qw1;

    .line 84
    iget-boolean v13, v13, Lcom/shabakaty/downloader/qw1;->a:Z

    if-eqz v13, :cond_13

    .line 85
    iget-object v13, v3, Lcom/shabakaty/downloader/ws3;->w:Lcom/shabakaty/downloader/is1;

    if-nez v13, :cond_13

    .line 86
    new-instance v4, Lcom/shabakaty/downloader/fq;

    const/4 v13, 0x0

    invoke-direct {v4, v7, v13}, Lcom/shabakaty/downloader/fq;-><init>(Lcom/shabakaty/downloader/vr3;Lcom/shabakaty/downloader/ws3;)V

    goto :goto_b

    :cond_13
    const/4 v13, 0x0

    .line 87
    invoke-static {v3, v7}, Lcom/shabakaty/downloader/fq;->a(Lcom/shabakaty/downloader/ws3;Lcom/shabakaty/downloader/vr3;)Z

    move-result v19

    if-nez v19, :cond_14

    .line 88
    new-instance v4, Lcom/shabakaty/downloader/fq;

    invoke-direct {v4, v7, v13}, Lcom/shabakaty/downloader/fq;-><init>(Lcom/shabakaty/downloader/vr3;Lcom/shabakaty/downloader/ws3;)V

    :goto_b
    move-object/from16 v23, v2

    move-object v2, v7

    goto/16 :goto_1c

    .line 89
    :cond_14
    invoke-virtual {v7}, Lcom/shabakaty/downloader/vr3;->a()Lcom/shabakaty/downloader/qp;

    move-result-object v13

    .line 90
    iget-boolean v0, v13, Lcom/shabakaty/downloader/qp;->a:Z

    if-nez v0, :cond_37

    const-string v0, "If-Modified-Since"

    .line 91
    invoke-virtual {v7, v0}, Lcom/shabakaty/downloader/vr3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v20, v0

    const-string v0, "If-None-Match"

    if-nez v19, :cond_16

    invoke-virtual {v7, v0}, Lcom/shabakaty/downloader/vr3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_15

    goto :goto_c

    :cond_15
    const/16 v19, 0x0

    goto :goto_d

    :cond_16
    :goto_c
    const/16 v19, 0x1

    :goto_d
    if-eqz v19, :cond_17

    goto/16 :goto_1d

    :cond_17
    move-object/from16 v19, v0

    .line 92
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ws3;->a()Lcom/shabakaty/downloader/qp;

    move-result-object v0

    if-eqz v6, :cond_18

    .line 93
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v21

    move-object/from16 v23, v2

    sub-long v1, v10, v21

    move-object/from16 v22, v6

    move-object/from16 v21, v7

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    const/4 v6, -0x1

    goto :goto_e

    :cond_18
    move-object/from16 v23, v2

    move-object/from16 v22, v6

    move-object/from16 v21, v7

    const/4 v6, -0x1

    const-wide/16 v1, 0x0

    :goto_e
    if-eq v12, v6, :cond_19

    .line 94
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v7, v13

    int-to-long v12, v12

    invoke-virtual {v6, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    invoke-static {v1, v2, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_f

    :cond_19
    move-object v7, v13

    :goto_f
    sub-long v12, v10, v8

    sub-long/2addr v4, v10

    add-long/2addr v1, v12

    add-long/2addr v1, v4

    .line 95
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ws3;->a()Lcom/shabakaty/downloader/qp;

    move-result-object v4

    .line 96
    iget v4, v4, Lcom/shabakaty/downloader/qp;->c:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1a

    .line 97
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v8, v4

    invoke-virtual {v5, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    goto/16 :goto_12

    :cond_1a
    if-eqz v14, :cond_1c

    if-eqz v22, :cond_1b

    .line 98
    invoke-virtual/range {v22 .. v22}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    .line 99
    :cond_1b
    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v4, v10

    const-wide/16 v8, 0x0

    cmp-long v6, v4, v8

    if-lez v6, :cond_23

    goto/16 :goto_12

    :cond_1c
    if-eqz v15, :cond_23

    .line 100
    iget-object v4, v3, Lcom/shabakaty/downloader/ws3;->s:Lcom/shabakaty/downloader/vr3;

    .line 101
    iget-object v4, v4, Lcom/shabakaty/downloader/vr3;->b:Lcom/shabakaty/downloader/qw1;

    .line 102
    iget-object v5, v4, Lcom/shabakaty/downloader/qw1;->h:Ljava/util/List;

    if-nez v5, :cond_1d

    const/4 v4, 0x0

    goto :goto_11

    .line 103
    :cond_1d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    iget-object v4, v4, Lcom/shabakaty/downloader/qw1;->h:Ljava/util/List;

    const-string v6, "$this$toQueryString"

    .line 105
    invoke-static {v4, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v10, 0x0

    invoke-static {v10, v6}, Lcom/shabakaty/downloader/rm3;->z(II)Lcom/shabakaty/downloader/n22;

    move-result-object v6

    const/4 v10, 0x2

    invoke-static {v6, v10}, Lcom/shabakaty/downloader/rm3;->t(Lcom/shabakaty/downloader/l22;I)Lcom/shabakaty/downloader/l22;

    move-result-object v6

    .line 107
    iget v10, v6, Lcom/shabakaty/downloader/l22;->r:I

    .line 108
    iget v11, v6, Lcom/shabakaty/downloader/l22;->s:I

    .line 109
    iget v6, v6, Lcom/shabakaty/downloader/l22;->t:I

    if-ltz v6, :cond_1e

    if-gt v10, v11, :cond_21

    goto :goto_10

    :cond_1e
    if-lt v10, v11, :cond_21

    .line 110
    :goto_10
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    add-int/lit8 v13, v10, 0x1

    .line 111
    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v24, v4

    if-lez v10, :cond_1f

    const/16 v4, 0x26

    .line 112
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    :cond_1f
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v13, :cond_20

    const/16 v4, 0x3d

    .line 114
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    if-eq v10, v11, :cond_21

    add-int/2addr v10, v6

    move-object/from16 v4, v24

    goto :goto_10

    .line 116
    :cond_21
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_11
    if-nez v4, :cond_23

    if-eqz v22, :cond_22

    .line 117
    invoke-virtual/range {v22 .. v22}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    .line 118
    :cond_22
    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v8, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v8, v4

    if-lez v6, :cond_24

    const/16 v4, 0xa

    int-to-long v4, v4

    .line 119
    div-long v4, v8, v4

    goto :goto_12

    :cond_23
    const-wide/16 v4, 0x0

    .line 120
    :cond_24
    :goto_12
    iget v6, v7, Lcom/shabakaty/downloader/qp;->c:I

    const/4 v8, -0x1

    if-eq v6, v8, :cond_25

    .line 121
    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v10, v6

    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 122
    :cond_25
    iget v6, v7, Lcom/shabakaty/downloader/qp;->i:I

    if-eq v6, v8, :cond_26

    .line 123
    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v10, v6

    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    goto :goto_13

    :cond_26
    const-wide/16 v9, 0x0

    .line 124
    :goto_13
    iget-boolean v6, v0, Lcom/shabakaty/downloader/qp;->g:Z

    if-nez v6, :cond_27

    .line 125
    iget v6, v7, Lcom/shabakaty/downloader/qp;->h:I

    if-eq v6, v8, :cond_27

    .line 126
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v11, v6

    invoke-virtual {v7, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    goto :goto_14

    :cond_27
    const-wide/16 v6, 0x0

    .line 127
    :goto_14
    iget-boolean v0, v0, Lcom/shabakaty/downloader/qp;->a:Z

    if-nez v0, :cond_30

    add-long/2addr v9, v1

    add-long/2addr v6, v4

    cmp-long v0, v9, v6

    if-gez v0, :cond_30

    .line 128
    iget-object v0, v3, Lcom/shabakaty/downloader/ws3;->s:Lcom/shabakaty/downloader/vr3;

    .line 129
    iget-object v6, v3, Lcom/shabakaty/downloader/ws3;->t:Lcom/shabakaty/downloader/mj3;

    .line 130
    iget v7, v3, Lcom/shabakaty/downloader/ws3;->v:I

    .line 131
    iget-object v8, v3, Lcom/shabakaty/downloader/ws3;->u:Ljava/lang/String;

    .line 132
    iget-object v11, v3, Lcom/shabakaty/downloader/ws3;->w:Lcom/shabakaty/downloader/is1;

    .line 133
    iget-object v12, v3, Lcom/shabakaty/downloader/ws3;->x:Lcom/shabakaty/downloader/ts1;

    .line 134
    invoke-virtual {v12}, Lcom/shabakaty/downloader/ts1;->l()Lcom/shabakaty/downloader/ts1$a;

    move-result-object v12

    .line 135
    iget-object v13, v3, Lcom/shabakaty/downloader/ws3;->y:Lcom/shabakaty/downloader/ys3;

    .line 136
    iget-object v15, v3, Lcom/shabakaty/downloader/ws3;->z:Lcom/shabakaty/downloader/ws3;

    move-object/from16 v16, v15

    .line 137
    iget-object v15, v3, Lcom/shabakaty/downloader/ws3;->A:Lcom/shabakaty/downloader/ws3;

    move-object/from16 v17, v15

    .line 138
    iget-object v15, v3, Lcom/shabakaty/downloader/ws3;->B:Lcom/shabakaty/downloader/ws3;

    move-object/from16 v18, v6

    move/from16 v19, v7

    .line 139
    iget-wide v6, v3, Lcom/shabakaty/downloader/ws3;->C:J

    move-wide/from16 v35, v6

    .line 140
    iget-wide v6, v3, Lcom/shabakaty/downloader/ws3;->D:J

    move-wide/from16 v37, v6

    .line 141
    iget-object v6, v3, Lcom/shabakaty/downloader/ws3;->E:Lcom/shabakaty/downloader/e61;

    const-string v7, "Warning"

    cmp-long v20, v9, v4

    if-ltz v20, :cond_28

    const-string v4, "110 HttpURLConnection \"Response is stale\""

    .line 142
    invoke-virtual {v12, v7, v4}, Lcom/shabakaty/downloader/ts1$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/ts1$a;

    :cond_28
    const-wide/32 v4, 0x5265c00

    cmp-long v9, v1, v4

    if-lez v9, :cond_2a

    .line 143
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ws3;->a()Lcom/shabakaty/downloader/qp;

    move-result-object v1

    .line 144
    iget v1, v1, Lcom/shabakaty/downloader/qp;->c:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_29

    if-nez v14, :cond_29

    const/4 v1, 0x1

    goto :goto_15

    :cond_29
    const/4 v1, 0x0

    :goto_15
    if-eqz v1, :cond_2a

    const-string v1, "113 HttpURLConnection \"Heuristic expiration\""

    .line 145
    invoke-virtual {v12, v7, v1}, Lcom/shabakaty/downloader/ts1$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/ts1$a;

    .line 146
    :cond_2a
    new-instance v1, Lcom/shabakaty/downloader/fq;

    if-ltz v19, :cond_2b

    const/4 v2, 0x1

    goto :goto_16

    :cond_2b
    const/4 v2, 0x0

    :goto_16
    if-eqz v2, :cond_2f

    if-eqz v0, :cond_2e

    if-eqz v18, :cond_2d

    if-eqz v8, :cond_2c

    .line 147
    invoke-virtual {v12}, Lcom/shabakaty/downloader/ts1$a;->d()Lcom/shabakaty/downloader/ts1;

    move-result-object v30

    .line 148
    new-instance v2, Lcom/shabakaty/downloader/ws3;

    move-object/from16 v24, v2

    move-object/from16 v25, v0

    move-object/from16 v26, v18

    move-object/from16 v27, v8

    move/from16 v28, v19

    move-object/from16 v29, v11

    move-object/from16 v31, v13

    move-object/from16 v32, v16

    move-object/from16 v33, v17

    move-object/from16 v34, v15

    move-object/from16 v39, v6

    invoke-direct/range {v24 .. v39}, Lcom/shabakaty/downloader/ws3;-><init>(Lcom/shabakaty/downloader/vr3;Lcom/shabakaty/downloader/mj3;Ljava/lang/String;ILcom/shabakaty/downloader/is1;Lcom/shabakaty/downloader/ts1;Lcom/shabakaty/downloader/ys3;Lcom/shabakaty/downloader/ws3;Lcom/shabakaty/downloader/ws3;Lcom/shabakaty/downloader/ws3;JJLcom/shabakaty/downloader/e61;)V

    const/4 v0, 0x0

    .line 149
    invoke-direct {v1, v0, v2}, Lcom/shabakaty/downloader/fq;-><init>(Lcom/shabakaty/downloader/vr3;Lcom/shabakaty/downloader/ws3;)V

    move-object/from16 v2, v21

    goto/16 :goto_1e

    .line 150
    :cond_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    const-string v0, "code < 0: "

    move/from16 v1, v19

    .line 153
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/bl3;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_30
    if-eqz v16, :cond_31

    move-object/from16 v1, v16

    move-object/from16 v0, v19

    :goto_17
    move-object/from16 v2, v21

    goto :goto_19

    :cond_31
    if-eqz v15, :cond_32

    move-object/from16 v16, v17

    goto :goto_18

    :cond_32
    if-eqz v22, :cond_36

    move-object/from16 v16, v18

    :goto_18
    move-object/from16 v1, v16

    move-object/from16 v0, v20

    goto :goto_17

    .line 154
    :goto_19
    iget-object v4, v2, Lcom/shabakaty/downloader/vr3;->d:Lcom/shabakaty/downloader/ts1;

    .line 155
    invoke-virtual {v4}, Lcom/shabakaty/downloader/ts1;->l()Lcom/shabakaty/downloader/ts1$a;

    move-result-object v4

    .line 156
    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-virtual {v4, v0, v1}, Lcom/shabakaty/downloader/ts1$a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/ts1$a;

    .line 157
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 158
    iget-object v6, v2, Lcom/shabakaty/downloader/vr3;->b:Lcom/shabakaty/downloader/qw1;

    .line 159
    iget-object v7, v2, Lcom/shabakaty/downloader/vr3;->c:Ljava/lang/String;

    .line 160
    iget-object v9, v2, Lcom/shabakaty/downloader/vr3;->e:Lcom/shabakaty/downloader/yr3;

    .line 161
    iget-object v0, v2, Lcom/shabakaty/downloader/vr3;->f:Ljava/util/Map;

    .line 162
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 163
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_1a

    .line 164
    :cond_33
    iget-object v0, v2, Lcom/shabakaty/downloader/vr3;->f:Ljava/util/Map;

    const-string v1, "<this>"

    .line 165
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    move-object v0, v1

    .line 167
    :goto_1a
    iget-object v1, v2, Lcom/shabakaty/downloader/vr3;->d:Lcom/shabakaty/downloader/ts1;

    .line 168
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ts1;->l()Lcom/shabakaty/downloader/ts1$a;

    .line 169
    invoke-virtual {v4}, Lcom/shabakaty/downloader/ts1$a;->d()Lcom/shabakaty/downloader/ts1;

    move-result-object v1

    .line 170
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ts1;->l()Lcom/shabakaty/downloader/ts1$a;

    move-result-object v1

    if-eqz v6, :cond_35

    .line 171
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ts1$a;->d()Lcom/shabakaty/downloader/ts1;

    move-result-object v8

    .line 172
    sget-object v1, Lcom/shabakaty/downloader/ry4;->a:[B

    .line 173
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 174
    sget-object v0, Lcom/shabakaty/downloader/x21;->r:Lcom/shabakaty/downloader/x21;

    goto :goto_1b

    .line 175
    :cond_34
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "Collections.unmodifiableMap(LinkedHashMap(this))"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1b
    move-object v10, v0

    .line 176
    new-instance v0, Lcom/shabakaty/downloader/vr3;

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/shabakaty/downloader/vr3;-><init>(Lcom/shabakaty/downloader/qw1;Ljava/lang/String;Lcom/shabakaty/downloader/ts1;Lcom/shabakaty/downloader/yr3;Ljava/util/Map;)V

    .line 177
    new-instance v4, Lcom/shabakaty/downloader/fq;

    invoke-direct {v4, v0, v3}, Lcom/shabakaty/downloader/fq;-><init>(Lcom/shabakaty/downloader/vr3;Lcom/shabakaty/downloader/ws3;)V

    :goto_1c
    const/4 v0, 0x0

    move-object v1, v4

    goto :goto_1e

    .line 178
    :cond_35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    move-object/from16 v2, v21

    .line 179
    new-instance v1, Lcom/shabakaty/downloader/fq;

    const/4 v0, 0x0

    invoke-direct {v1, v2, v0}, Lcom/shabakaty/downloader/fq;-><init>(Lcom/shabakaty/downloader/vr3;Lcom/shabakaty/downloader/ws3;)V

    goto :goto_1e

    :cond_37
    :goto_1d
    move-object/from16 v23, v2

    move-object v2, v7

    const/4 v0, 0x0

    .line 180
    new-instance v1, Lcom/shabakaty/downloader/fq;

    invoke-direct {v1, v2, v0}, Lcom/shabakaty/downloader/fq;-><init>(Lcom/shabakaty/downloader/vr3;Lcom/shabakaty/downloader/ws3;)V

    .line 181
    :goto_1e
    iget-object v4, v1, Lcom/shabakaty/downloader/fq;->a:Lcom/shabakaty/downloader/vr3;

    if-eqz v4, :cond_38

    .line 182
    invoke-virtual {v2}, Lcom/shabakaty/downloader/vr3;->a()Lcom/shabakaty/downloader/qp;

    move-result-object v2

    .line 183
    iget-boolean v2, v2, Lcom/shabakaty/downloader/qp;->j:Z

    if-eqz v2, :cond_38

    .line 184
    new-instance v1, Lcom/shabakaty/downloader/fq;

    invoke-direct {v1, v0, v0}, Lcom/shabakaty/downloader/fq;-><init>(Lcom/shabakaty/downloader/vr3;Lcom/shabakaty/downloader/ws3;)V

    .line 185
    :cond_38
    iget-object v0, v1, Lcom/shabakaty/downloader/fq;->a:Lcom/shabakaty/downloader/vr3;

    .line 186
    iget-object v2, v1, Lcom/shabakaty/downloader/fq;->b:Lcom/shabakaty/downloader/ws3;

    move-object/from16 v4, p0

    .line 187
    iget-object v5, v4, Lcom/shabakaty/downloader/zp;->a:Lcom/shabakaty/downloader/op;

    if-eqz v5, :cond_3b

    .line 188
    monitor-enter v5

    .line 189
    :try_start_2
    iget v6, v5, Lcom/shabakaty/downloader/op;->w:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/shabakaty/downloader/op;->w:I

    .line 190
    iget-object v6, v1, Lcom/shabakaty/downloader/fq;->a:Lcom/shabakaty/downloader/vr3;

    if-eqz v6, :cond_39

    .line 191
    iget v1, v5, Lcom/shabakaty/downloader/op;->u:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v5, Lcom/shabakaty/downloader/op;->u:I

    goto :goto_1f

    .line 192
    :cond_39
    iget-object v1, v1, Lcom/shabakaty/downloader/fq;->b:Lcom/shabakaty/downloader/ws3;

    if-eqz v1, :cond_3a

    .line 193
    iget v1, v5, Lcom/shabakaty/downloader/op;->v:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v5, Lcom/shabakaty/downloader/op;->v:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    :cond_3a
    :goto_1f
    monitor-exit v5

    goto :goto_20

    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_3b
    :goto_20
    move-object/from16 v1, v23

    .line 195
    instance-of v5, v1, Lcom/shabakaty/downloader/pn3;

    if-nez v5, :cond_3c

    const/4 v5, 0x0

    goto :goto_21

    :cond_3c
    move-object v5, v1

    :goto_21
    check-cast v5, Lcom/shabakaty/downloader/pn3;

    if-eqz v3, :cond_3d

    if-nez v2, :cond_3d

    .line 196
    iget-object v5, v3, Lcom/shabakaty/downloader/ws3;->y:Lcom/shabakaty/downloader/ys3;

    if-eqz v5, :cond_3d

    .line 197
    invoke-static {v5}, Lcom/shabakaty/downloader/ry4;->d(Ljava/io/Closeable;)V

    :cond_3d
    const-wide/16 v5, -0x1

    if-nez v0, :cond_3e

    if-nez v2, :cond_3e

    .line 198
    new-instance v0, Lcom/shabakaty/downloader/ws3$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ws3$a;-><init>()V

    .line 199
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/w22$a;->d()Lcom/shabakaty/downloader/vr3;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/ws3$a;->h(Lcom/shabakaty/downloader/vr3;)Lcom/shabakaty/downloader/ws3$a;

    .line 200
    sget-object v2, Lcom/shabakaty/downloader/mj3;->t:Lcom/shabakaty/downloader/mj3;

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/ws3$a;->g(Lcom/shabakaty/downloader/mj3;)Lcom/shabakaty/downloader/ws3$a;

    const/16 v2, 0x1f8

    .line 201
    iput v2, v0, Lcom/shabakaty/downloader/ws3$a;->c:I

    const-string v2, "Unsatisfiable Request (only-if-cached)"

    .line 202
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/ws3$a;->f(Ljava/lang/String;)Lcom/shabakaty/downloader/ws3$a;

    .line 203
    sget-object v2, Lcom/shabakaty/downloader/ry4;->c:Lcom/shabakaty/downloader/ys3;

    .line 204
    iput-object v2, v0, Lcom/shabakaty/downloader/ws3$a;->g:Lcom/shabakaty/downloader/ys3;

    .line 205
    iput-wide v5, v0, Lcom/shabakaty/downloader/ws3$a;->k:J

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 207
    iput-wide v2, v0, Lcom/shabakaty/downloader/ws3$a;->l:J

    .line 208
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ws3$a;->a()Lcom/shabakaty/downloader/ws3;

    move-result-object v0

    const-string v2, "call"

    .line 209
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_3e
    if-nez v0, :cond_3f

    .line 210
    invoke-static {v2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 211
    new-instance v0, Lcom/shabakaty/downloader/ws3$a;

    invoke-direct {v0, v2}, Lcom/shabakaty/downloader/ws3$a;-><init>(Lcom/shabakaty/downloader/ws3;)V

    .line 212
    sget-object v3, Lcom/shabakaty/downloader/zp;->b:Lcom/shabakaty/downloader/zp$a;

    invoke-static {v3, v2}, Lcom/shabakaty/downloader/zp$a;->a(Lcom/shabakaty/downloader/zp$a;Lcom/shabakaty/downloader/ws3;)Lcom/shabakaty/downloader/ws3;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/ws3$a;->b(Lcom/shabakaty/downloader/ws3;)Lcom/shabakaty/downloader/ws3$a;

    .line 213
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ws3$a;->a()Lcom/shabakaty/downloader/ws3;

    move-result-object v0

    const-string v2, "call"

    .line 214
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_3f
    if-eqz v2, :cond_40

    const-string v7, "call"

    .line 215
    invoke-static {v1, v7}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_22

    .line 216
    :cond_40
    iget-object v7, v4, Lcom/shabakaty/downloader/zp;->a:Lcom/shabakaty/downloader/op;

    if-eqz v7, :cond_41

    const-string v7, "call"

    .line 217
    invoke-static {v1, v7}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_41
    :goto_22
    move-object/from16 v7, p1

    .line 218
    :try_start_3
    invoke-interface {v7, v0}, Lcom/shabakaty/downloader/w22$a;->a(Lcom/shabakaty/downloader/vr3;)Lcom/shabakaty/downloader/ws3;

    move-result-object v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v7, :cond_42

    if-eqz v3, :cond_42

    .line 219
    iget-object v3, v3, Lcom/shabakaty/downloader/ws3;->y:Lcom/shabakaty/downloader/ys3;

    if-eqz v3, :cond_42

    .line 220
    invoke-static {v3}, Lcom/shabakaty/downloader/ry4;->d(Ljava/io/Closeable;)V

    :cond_42
    if-eqz v2, :cond_4c

    if-eqz v7, :cond_4b

    .line 221
    iget v3, v7, Lcom/shabakaty/downloader/ws3;->v:I

    const/16 v8, 0x130

    if-ne v3, v8, :cond_4b

    .line 222
    new-instance v0, Lcom/shabakaty/downloader/ws3$a;

    invoke-direct {v0, v2}, Lcom/shabakaty/downloader/ws3$a;-><init>(Lcom/shabakaty/downloader/ws3;)V

    .line 223
    sget-object v3, Lcom/shabakaty/downloader/zp;->b:Lcom/shabakaty/downloader/zp$a;

    .line 224
    iget-object v5, v2, Lcom/shabakaty/downloader/ws3;->x:Lcom/shabakaty/downloader/ts1;

    iget-object v6, v7, Lcom/shabakaty/downloader/ws3;->x:Lcom/shabakaty/downloader/ts1;

    .line 225
    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0x14

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 226
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ts1;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_23
    const-string v11, "value"

    const-string v12, "name"

    if-ge v10, v9, :cond_47

    .line 227
    invoke-virtual {v5, v10}, Lcom/shabakaty/downloader/ts1;->i(I)Ljava/lang/String;

    move-result-object v13

    .line 228
    invoke-virtual {v5, v10}, Lcom/shabakaty/downloader/ts1;->n(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "Warning"

    move-object/from16 v16, v5

    const/4 v5, 0x1

    .line 229
    invoke-static {v15, v13, v5}, Lcom/shabakaty/downloader/ne4;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_43

    const-string v5, "1"

    const/4 v15, 0x0

    move/from16 p1, v9

    const/4 v9, 0x2

    invoke-static {v14, v5, v15, v9}, Lcom/shabakaty/downloader/ne4;->L(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v5

    if-eqz v5, :cond_44

    goto :goto_24

    :cond_43
    move/from16 p1, v9

    .line 230
    :cond_44
    invoke-virtual {v3, v13}, Lcom/shabakaty/downloader/zp$a;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_45

    .line 231
    invoke-virtual {v3, v13}, Lcom/shabakaty/downloader/zp$a;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 232
    invoke-virtual {v6, v13}, Lcom/shabakaty/downloader/ts1;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_46

    .line 233
    :cond_45
    invoke-static {v13, v12}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v11}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-static {v14}, Lcom/shabakaty/downloader/re4;->m0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_46
    :goto_24
    add-int/lit8 v10, v10, 0x1

    move/from16 v9, p1

    move-object/from16 v5, v16

    goto :goto_23

    .line 236
    :cond_47
    invoke-virtual {v6}, Lcom/shabakaty/downloader/ts1;->size()I

    move-result v5

    const/4 v9, 0x0

    :goto_25
    if-ge v9, v5, :cond_49

    .line 237
    invoke-virtual {v6, v9}, Lcom/shabakaty/downloader/ts1;->i(I)Ljava/lang/String;

    move-result-object v10

    .line 238
    invoke-virtual {v3, v10}, Lcom/shabakaty/downloader/zp$a;->b(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_48

    invoke-virtual {v3, v10}, Lcom/shabakaty/downloader/zp$a;->c(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_48

    .line 239
    invoke-virtual {v6, v9}, Lcom/shabakaty/downloader/ts1;->n(I)Ljava/lang/String;

    move-result-object v13

    .line 240
    invoke-static {v10, v12}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v11}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-static {v13}, Lcom/shabakaty/downloader/re4;->m0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_48
    add-int/lit8 v9, v9, 0x1

    goto :goto_25

    .line 243
    :cond_49
    new-instance v3, Lcom/shabakaty/downloader/ts1;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    .line 244
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 245
    invoke-direct {v3, v5, v6}, Lcom/shabakaty/downloader/ts1;-><init>([Ljava/lang/String;Lcom/shabakaty/downloader/nn0;)V

    .line 246
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/ws3$a;->e(Lcom/shabakaty/downloader/ts1;)Lcom/shabakaty/downloader/ws3$a;

    .line 247
    iget-wide v5, v7, Lcom/shabakaty/downloader/ws3;->C:J

    .line 248
    iput-wide v5, v0, Lcom/shabakaty/downloader/ws3$a;->k:J

    .line 249
    iget-wide v5, v7, Lcom/shabakaty/downloader/ws3;->D:J

    .line 250
    iput-wide v5, v0, Lcom/shabakaty/downloader/ws3$a;->l:J

    .line 251
    sget-object v3, Lcom/shabakaty/downloader/zp;->b:Lcom/shabakaty/downloader/zp$a;

    invoke-static {v3, v2}, Lcom/shabakaty/downloader/zp$a;->a(Lcom/shabakaty/downloader/zp$a;Lcom/shabakaty/downloader/ws3;)Lcom/shabakaty/downloader/ws3;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/ws3$a;->b(Lcom/shabakaty/downloader/ws3;)Lcom/shabakaty/downloader/ws3$a;

    .line 252
    invoke-static {v3, v7}, Lcom/shabakaty/downloader/zp$a;->a(Lcom/shabakaty/downloader/zp$a;Lcom/shabakaty/downloader/ws3;)Lcom/shabakaty/downloader/ws3;

    move-result-object v3

    const-string v5, "networkResponse"

    .line 253
    invoke-virtual {v0, v5, v3}, Lcom/shabakaty/downloader/ws3$a;->c(Ljava/lang/String;Lcom/shabakaty/downloader/ws3;)V

    .line 254
    iput-object v3, v0, Lcom/shabakaty/downloader/ws3$a;->h:Lcom/shabakaty/downloader/ws3;

    .line 255
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ws3$a;->a()Lcom/shabakaty/downloader/ws3;

    move-result-object v0

    .line 256
    iget-object v3, v7, Lcom/shabakaty/downloader/ws3;->y:Lcom/shabakaty/downloader/ys3;

    .line 257
    invoke-static {v3}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/shabakaty/downloader/ys3;->close()V

    .line 258
    iget-object v3, v4, Lcom/shabakaty/downloader/zp;->a:Lcom/shabakaty/downloader/op;

    invoke-static {v3}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 259
    monitor-enter v3

    .line 260
    :try_start_4
    iget v5, v3, Lcom/shabakaty/downloader/op;->v:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Lcom/shabakaty/downloader/op;->v:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 261
    monitor-exit v3

    .line 262
    iget-object v3, v4, Lcom/shabakaty/downloader/zp;->a:Lcom/shabakaty/downloader/op;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    new-instance v3, Lcom/shabakaty/downloader/op$c;

    invoke-direct {v3, v0}, Lcom/shabakaty/downloader/op$c;-><init>(Lcom/shabakaty/downloader/ws3;)V

    .line 264
    iget-object v2, v2, Lcom/shabakaty/downloader/ws3;->y:Lcom/shabakaty/downloader/ys3;

    const-string v5, "null cannot be cast to non-null type okhttp3.Cache.CacheResponseBody"

    .line 265
    invoke-static {v2, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/op$a;

    .line 266
    iget-object v2, v2, Lcom/shabakaty/downloader/op$a;->u:Lcom/shabakaty/downloader/wt0$e;

    .line 267
    :try_start_5
    iget-object v5, v2, Lcom/shabakaty/downloader/wt0$e;->u:Lcom/shabakaty/downloader/wt0;

    iget-object v6, v2, Lcom/shabakaty/downloader/wt0$e;->r:Ljava/lang/String;

    iget-wide v7, v2, Lcom/shabakaty/downloader/wt0$e;->s:J

    invoke-virtual {v5, v6, v7, v8}, Lcom/shabakaty/downloader/wt0;->c(Ljava/lang/String;J)Lcom/shabakaty/downloader/wt0$a;

    move-result-object v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    if-eqz v2, :cond_4a

    .line 268
    :try_start_6
    invoke-virtual {v3, v2}, Lcom/shabakaty/downloader/op$c;->c(Lcom/shabakaty/downloader/wt0$a;)V

    .line 269
    invoke-virtual {v2}, Lcom/shabakaty/downloader/wt0$a;->b()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_27

    :catch_2
    nop

    goto :goto_26

    :catch_3
    const/4 v2, 0x0

    :goto_26
    if-eqz v2, :cond_4a

    .line 270
    :try_start_7
    invoke-virtual {v2}, Lcom/shabakaty/downloader/wt0$a;->a()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :catch_4
    :cond_4a
    :goto_27
    const-string v2, "call"

    .line 271
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :catchall_1
    move-exception v0

    .line 272
    monitor-exit v3

    throw v0

    .line 273
    :cond_4b
    iget-object v3, v2, Lcom/shabakaty/downloader/ws3;->y:Lcom/shabakaty/downloader/ys3;

    if-eqz v3, :cond_4c

    .line 274
    invoke-static {v3}, Lcom/shabakaty/downloader/ry4;->d(Ljava/io/Closeable;)V

    .line 275
    :cond_4c
    invoke-static {v7}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 276
    new-instance v3, Lcom/shabakaty/downloader/ws3$a;

    invoke-direct {v3, v7}, Lcom/shabakaty/downloader/ws3$a;-><init>(Lcom/shabakaty/downloader/ws3;)V

    .line 277
    sget-object v8, Lcom/shabakaty/downloader/zp;->b:Lcom/shabakaty/downloader/zp$a;

    invoke-static {v8, v2}, Lcom/shabakaty/downloader/zp$a;->a(Lcom/shabakaty/downloader/zp$a;Lcom/shabakaty/downloader/ws3;)Lcom/shabakaty/downloader/ws3;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/shabakaty/downloader/ws3$a;->b(Lcom/shabakaty/downloader/ws3;)Lcom/shabakaty/downloader/ws3$a;

    .line 278
    invoke-static {v8, v7}, Lcom/shabakaty/downloader/zp$a;->a(Lcom/shabakaty/downloader/zp$a;Lcom/shabakaty/downloader/ws3;)Lcom/shabakaty/downloader/ws3;

    move-result-object v7

    const-string v8, "networkResponse"

    .line 279
    invoke-virtual {v3, v8, v7}, Lcom/shabakaty/downloader/ws3$a;->c(Ljava/lang/String;Lcom/shabakaty/downloader/ws3;)V

    .line 280
    iput-object v7, v3, Lcom/shabakaty/downloader/ws3$a;->h:Lcom/shabakaty/downloader/ws3;

    .line 281
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ws3$a;->a()Lcom/shabakaty/downloader/ws3;

    move-result-object v3

    .line 282
    iget-object v7, v4, Lcom/shabakaty/downloader/zp;->a:Lcom/shabakaty/downloader/op;

    if-eqz v7, :cond_5e

    .line 283
    invoke-static {v3}, Lcom/shabakaty/downloader/jw1;->a(Lcom/shabakaty/downloader/ws3;)Z

    move-result v7

    if-eqz v7, :cond_5a

    invoke-static {v3, v0}, Lcom/shabakaty/downloader/fq;->a(Lcom/shabakaty/downloader/ws3;Lcom/shabakaty/downloader/vr3;)Z

    move-result v7

    if-eqz v7, :cond_5a

    .line 284
    iget-object v0, v4, Lcom/shabakaty/downloader/zp;->a:Lcom/shabakaty/downloader/op;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    iget-object v7, v3, Lcom/shabakaty/downloader/ws3;->s:Lcom/shabakaty/downloader/vr3;

    .line 286
    iget-object v7, v7, Lcom/shabakaty/downloader/vr3;->c:Ljava/lang/String;

    const-string v8, "method"

    .line 287
    invoke-static {v7, v8}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "POST"

    .line 288
    invoke-static {v7, v8}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4e

    const-string v8, "PATCH"

    invoke-static {v7, v8}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4e

    const-string v8, "PUT"

    invoke-static {v7, v8}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4e

    const-string v8, "DELETE"

    invoke-static {v7, v8}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4e

    const-string v8, "MOVE"

    invoke-static {v7, v8}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4d

    goto :goto_28

    :cond_4d
    const/4 v8, 0x0

    goto :goto_29

    :cond_4e
    :goto_28
    const/4 v8, 0x1

    :goto_29
    if-eqz v8, :cond_4f

    .line 289
    :try_start_8
    iget-object v5, v3, Lcom/shabakaty/downloader/ws3;->s:Lcom/shabakaty/downloader/vr3;

    .line 290
    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/op;->c(Lcom/shabakaty/downloader/vr3;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_2b

    :cond_4f
    const-string v8, "GET"

    .line 291
    invoke-static {v7, v8}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_50

    goto :goto_2b

    .line 292
    :cond_50
    iget-object v7, v3, Lcom/shabakaty/downloader/ws3;->x:Lcom/shabakaty/downloader/ts1;

    .line 293
    invoke-static {v7}, Lcom/shabakaty/downloader/op;->d(Lcom/shabakaty/downloader/ts1;)Ljava/util/Set;

    move-result-object v7

    const-string v8, "*"

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_51

    goto :goto_2b

    .line 294
    :cond_51
    new-instance v7, Lcom/shabakaty/downloader/op$c;

    invoke-direct {v7, v3}, Lcom/shabakaty/downloader/op$c;-><init>(Lcom/shabakaty/downloader/ws3;)V

    .line 295
    :try_start_9
    iget-object v8, v0, Lcom/shabakaty/downloader/op;->r:Lcom/shabakaty/downloader/wt0;

    .line 296
    iget-object v9, v3, Lcom/shabakaty/downloader/ws3;->s:Lcom/shabakaty/downloader/vr3;

    .line 297
    iget-object v9, v9, Lcom/shabakaty/downloader/vr3;->b:Lcom/shabakaty/downloader/qw1;

    .line 298
    invoke-static {v9}, Lcom/shabakaty/downloader/op;->b(Lcom/shabakaty/downloader/qw1;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/shabakaty/downloader/wt0;->M:Lcom/shabakaty/downloader/mq3;

    .line 299
    invoke-virtual {v8, v9, v5, v6}, Lcom/shabakaty/downloader/wt0;->c(Ljava/lang/String;J)Lcom/shabakaty/downloader/wt0$a;

    move-result-object v5
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    if-eqz v5, :cond_52

    .line 300
    :try_start_a
    invoke-virtual {v7, v5}, Lcom/shabakaty/downloader/op$c;->c(Lcom/shabakaty/downloader/wt0$a;)V

    .line 301
    new-instance v6, Lcom/shabakaty/downloader/op$b;

    invoke-direct {v6, v0, v5}, Lcom/shabakaty/downloader/op$b;-><init>(Lcom/shabakaty/downloader/op;Lcom/shabakaty/downloader/wt0$a;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_2c

    :catch_5
    nop

    goto :goto_2a

    :catch_6
    const/4 v5, 0x0

    :goto_2a
    if-eqz v5, :cond_52

    .line 302
    :try_start_b
    invoke-virtual {v5}, Lcom/shabakaty/downloader/wt0$a;->a()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    :catch_7
    :cond_52
    :goto_2b
    const/4 v6, 0x0

    :goto_2c
    if-nez v6, :cond_53

    move-object/from16 v25, v1

    move-object/from16 v24, v2

    goto/16 :goto_2e

    .line 303
    :cond_53
    iget-object v0, v6, Lcom/shabakaty/downloader/op$b;->b:Lcom/shabakaty/downloader/l84;

    .line 304
    iget-object v5, v3, Lcom/shabakaty/downloader/ws3;->y:Lcom/shabakaty/downloader/ys3;

    .line 305
    invoke-static {v5}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/shabakaty/downloader/ys3;->f()Lcom/shabakaty/downloader/eo;

    move-result-object v5

    .line 306
    invoke-static {v0}, Lcom/shabakaty/downloader/md0;->c(Lcom/shabakaty/downloader/l84;)Lcom/shabakaty/downloader/do;

    move-result-object v0

    .line 307
    new-instance v7, Lcom/shabakaty/downloader/yp;

    invoke-direct {v7, v5, v6, v0}, Lcom/shabakaty/downloader/yp;-><init>(Lcom/shabakaty/downloader/eo;Lcom/shabakaty/downloader/dq;Lcom/shabakaty/downloader/do;)V

    const-string v0, "Content-Type"

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 308
    invoke-static {v3, v0, v6, v5}, Lcom/shabakaty/downloader/ws3;->b(Lcom/shabakaty/downloader/ws3;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 309
    iget-object v5, v3, Lcom/shabakaty/downloader/ws3;->y:Lcom/shabakaty/downloader/ys3;

    .line 310
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ys3;->c()J

    move-result-wide v5

    .line 311
    iget-object v9, v3, Lcom/shabakaty/downloader/ws3;->s:Lcom/shabakaty/downloader/vr3;

    .line 312
    iget-object v10, v3, Lcom/shabakaty/downloader/ws3;->t:Lcom/shabakaty/downloader/mj3;

    .line 313
    iget v12, v3, Lcom/shabakaty/downloader/ws3;->v:I

    .line 314
    iget-object v11, v3, Lcom/shabakaty/downloader/ws3;->u:Ljava/lang/String;

    .line 315
    iget-object v13, v3, Lcom/shabakaty/downloader/ws3;->w:Lcom/shabakaty/downloader/is1;

    .line 316
    iget-object v8, v3, Lcom/shabakaty/downloader/ws3;->x:Lcom/shabakaty/downloader/ts1;

    .line 317
    invoke-virtual {v8}, Lcom/shabakaty/downloader/ts1;->l()Lcom/shabakaty/downloader/ts1$a;

    move-result-object v8

    .line 318
    iget-object v15, v3, Lcom/shabakaty/downloader/ws3;->z:Lcom/shabakaty/downloader/ws3;

    .line 319
    iget-object v14, v3, Lcom/shabakaty/downloader/ws3;->A:Lcom/shabakaty/downloader/ws3;

    .line 320
    iget-object v4, v3, Lcom/shabakaty/downloader/ws3;->B:Lcom/shabakaty/downloader/ws3;

    move-object/from16 v25, v1

    move-object/from16 v24, v2

    .line 321
    iget-wide v1, v3, Lcom/shabakaty/downloader/ws3;->C:J

    move-wide/from16 v19, v1

    .line 322
    iget-wide v1, v3, Lcom/shabakaty/downloader/ws3;->D:J

    .line 323
    iget-object v3, v3, Lcom/shabakaty/downloader/ws3;->E:Lcom/shabakaty/downloader/e61;

    move-object/from16 v16, v15

    .line 324
    new-instance v15, Lcom/shabakaty/downloader/wn3;

    invoke-static {v7}, Lcom/shabakaty/downloader/md0;->d(Lcom/shabakaty/downloader/r94;)Lcom/shabakaty/downloader/eo;

    move-result-object v7

    invoke-direct {v15, v0, v5, v6, v7}, Lcom/shabakaty/downloader/wn3;-><init>(Ljava/lang/String;JLcom/shabakaty/downloader/eo;)V

    if-ltz v12, :cond_54

    const/4 v0, 0x1

    goto :goto_2d

    :cond_54
    const/4 v0, 0x0

    :goto_2d
    if-eqz v0, :cond_59

    if-eqz v9, :cond_58

    if-eqz v10, :cond_57

    if-eqz v11, :cond_56

    .line 325
    invoke-virtual {v8}, Lcom/shabakaty/downloader/ts1$a;->d()Lcom/shabakaty/downloader/ts1;

    move-result-object v0

    .line 326
    new-instance v5, Lcom/shabakaty/downloader/ws3;

    move-object v8, v5

    move-object v6, v14

    move-object v14, v0

    move-object/from16 v0, v16

    move-object/from16 v17, v6

    move-object/from16 v18, v4

    move-wide/from16 v21, v1

    move-object/from16 v23, v3

    invoke-direct/range {v8 .. v23}, Lcom/shabakaty/downloader/ws3;-><init>(Lcom/shabakaty/downloader/vr3;Lcom/shabakaty/downloader/mj3;Ljava/lang/String;ILcom/shabakaty/downloader/is1;Lcom/shabakaty/downloader/ts1;Lcom/shabakaty/downloader/ys3;Lcom/shabakaty/downloader/ws3;Lcom/shabakaty/downloader/ws3;Lcom/shabakaty/downloader/ws3;JJLcom/shabakaty/downloader/e61;)V

    move-object v3, v5

    :goto_2e
    if-eqz v24, :cond_55

    const-string v0, "call"

    move-object/from16 v1, v25

    .line 327
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_55
    return-object v3

    .line 328
    :cond_56
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_57
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_58
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_59
    const-string v0, "code < 0: "

    .line 331
    invoke-static {v0, v12}, Lcom/shabakaty/downloader/bl3;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 332
    :cond_5a
    iget-object v1, v0, Lcom/shabakaty/downloader/vr3;->c:Ljava/lang/String;

    const-string v2, "method"

    .line 333
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "POST"

    .line 334
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5c

    const-string v2, "PATCH"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5c

    const-string v2, "PUT"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5c

    const-string v2, "DELETE"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5c

    const-string v2, "MOVE"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    goto :goto_2f

    :cond_5b
    const/4 v1, 0x0

    goto :goto_30

    :cond_5c
    :goto_2f
    const/4 v1, 0x1

    :goto_30
    if-eqz v1, :cond_5d

    move-object/from16 v1, p0

    .line 335
    :try_start_c
    iget-object v2, v1, Lcom/shabakaty/downloader/zp;->a:Lcom/shabakaty/downloader/op;

    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/op;->c(Lcom/shabakaty/downloader/vr3;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_31

    :cond_5d
    move-object/from16 v1, p0

    goto :goto_31

    :cond_5e
    move-object v1, v4

    :catch_8
    :goto_31
    return-object v3

    :catchall_2
    move-exception v0

    move-object v1, v4

    move-object v2, v0

    if-eqz v3, :cond_5f

    .line 336
    iget-object v0, v3, Lcom/shabakaty/downloader/ws3;->y:Lcom/shabakaty/downloader/ys3;

    if-eqz v0, :cond_5f

    .line 337
    invoke-static {v0}, Lcom/shabakaty/downloader/ry4;->d(Ljava/io/Closeable;)V

    :cond_5f
    throw v2
.end method
