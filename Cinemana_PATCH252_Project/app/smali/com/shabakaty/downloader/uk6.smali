.class public final Lcom/shabakaty/downloader/uk6;
.super Lcom/shabakaty/downloader/tl2;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/tl2<",
        "Ljava/util/List<",
        "Lcom/shabakaty/downloader/ri;",
        ">;",
        "Lcom/shabakaty/downloader/k12;",
        ">;"
    }
.end annotation


# static fields
.field public static final i:Lcom/shabakaty/downloader/tz1;

.field public static j:Z = true


# instance fields
.field public final d:Lcom/shabakaty/downloader/ti;

.field public final e:Lcom/shabakaty/downloader/po6;

.field public final f:Lcom/shabakaty/downloader/l07;

.field public final g:Lcom/shabakaty/downloader/km;

.field public h:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/tz1;->a:Lcom/shabakaty/downloader/tz1;

    .line 2
    sput-object v0, Lcom/shabakaty/downloader/uk6;->i:Lcom/shabakaty/downloader/tz1;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/zt2;Lcom/shabakaty/downloader/ti;Lcom/shabakaty/downloader/po6;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/wd5;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/g17;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/l07;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/shabakaty/downloader/tl2;-><init>()V

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/km;

    invoke-direct {v1}, Lcom/shabakaty/downloader/km;-><init>()V

    iput-object v1, p0, Lcom/shabakaty/downloader/uk6;->g:Lcom/shabakaty/downloader/km;

    const-string v1, "MlKitContext can not be null"

    .line 4
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "BarcodeScannerOptions can not be null"

    .line 5
    invoke-static {p2, p1}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/uk6;->d:Lcom/shabakaty/downloader/ti;

    iput-object p3, p0, Lcom/shabakaty/downloader/uk6;->e:Lcom/shabakaty/downloader/po6;

    iput-object v0, p0, Lcom/shabakaty/downloader/uk6;->f:Lcom/shabakaty/downloader/l07;

    return-void
.end method


# virtual methods
.method public final b(Lcom/shabakaty/downloader/fr6;JLcom/shabakaty/downloader/k12;Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/fr6;",
            "J",
            "Lcom/shabakaty/downloader/k12;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ri;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    new-instance v3, Lcom/shabakaty/downloader/ps5;

    .line 1
    invoke-direct {v3}, Lcom/shabakaty/downloader/ps5;-><init>()V

    new-instance v4, Lcom/shabakaty/downloader/ps5;

    .line 2
    invoke-direct {v4}, Lcom/shabakaty/downloader/ps5;-><init>()V

    if-eqz p5, :cond_4

    .line 3
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/ri;

    .line 4
    iget-object v7, v6, Lcom/shabakaty/downloader/ri;->a:Lcom/shabakaty/downloader/nr6;

    .line 5
    invoke-interface {v7}, Lcom/shabakaty/downloader/nr6;->o()I

    move-result v7

    const/16 v8, 0x1000

    const/4 v9, -0x1

    if-gt v7, v8, :cond_0

    if-nez v7, :cond_1

    goto :goto_1

    :cond_0
    const/4 v7, -0x1

    :cond_1
    move v9, v7

    .line 6
    :goto_1
    sget-object v7, Lcom/shabakaty/downloader/wd5;->a:Landroid/util/SparseArray;

    .line 7
    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/vs6;

    if-nez v7, :cond_2

    .line 8
    sget-object v7, Lcom/shabakaty/downloader/vs6;->s:Lcom/shabakaty/downloader/vs6;

    .line 9
    :cond_2
    invoke-virtual {v3, v7}, Lcom/shabakaty/downloader/ps5;->d(Ljava/lang/Object;)Lcom/shabakaty/downloader/ps5;

    .line 10
    iget-object v6, v6, Lcom/shabakaty/downloader/ri;->a:Lcom/shabakaty/downloader/nr6;

    .line 11
    invoke-interface {v6}, Lcom/shabakaty/downloader/nr6;->i()I

    move-result v6

    .line 12
    sget-object v7, Lcom/shabakaty/downloader/wd5;->b:Landroid/util/SparseArray;

    .line 13
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/ys6;

    if-nez v6, :cond_3

    .line 14
    sget-object v6, Lcom/shabakaty/downloader/ys6;->s:Lcom/shabakaty/downloader/ys6;

    .line 15
    :cond_3
    invoke-virtual {v4, v6}, Lcom/shabakaty/downloader/ps5;->d(Ljava/lang/Object;)Lcom/shabakaty/downloader/ps5;

    goto :goto_0

    .line 16
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v5, v5, p2

    .line 17
    iget-object v7, v0, Lcom/shabakaty/downloader/uk6;->f:Lcom/shabakaty/downloader/l07;

    .line 18
    sget-object v8, Lcom/shabakaty/downloader/hr6;->s:Lcom/shabakaty/downloader/hr6;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 20
    invoke-virtual {v7, v8, v9, v10}, Lcom/shabakaty/downloader/l07;->c(Lcom/shabakaty/downloader/hr6;J)Z

    move-result v11

    const/4 v12, 0x1

    const-wide v13, 0x7fffffffffffffffL

    const/4 v15, 0x2

    if-nez v11, :cond_5

    goto :goto_2

    :cond_5
    iget-object v11, v7, Lcom/shabakaty/downloader/l07;->h:Ljava/util/Map;

    .line 21
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v11, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v9, Lcom/shabakaty/downloader/ty6;

    const/4 v10, 0x3

    invoke-direct {v9, v10}, Lcom/shabakaty/downloader/ty6;-><init>(I)V

    new-instance v10, Lcom/shabakaty/downloader/ty6;

    invoke-direct {v10, v12}, Lcom/shabakaty/downloader/ty6;-><init>(I)V

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 23
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    and-long v16, v16, v13

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iput-object v11, v10, Lcom/shabakaty/downloader/ty6;->a:Ljava/lang/Object;

    .line 24
    iput-object v1, v10, Lcom/shabakaty/downloader/ty6;->d:Ljava/lang/Object;

    .line 25
    sget-boolean v11, Lcom/shabakaty/downloader/uk6;->j:Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 26
    iput-object v11, v10, Lcom/shabakaty/downloader/ty6;->b:Ljava/lang/Object;

    .line 27
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 28
    iput-object v11, v10, Lcom/shabakaty/downloader/ty6;->c:Ljava/lang/Object;

    .line 29
    iput-object v11, v10, Lcom/shabakaty/downloader/ty6;->e:Ljava/lang/Object;

    .line 30
    new-instance v11, Lcom/shabakaty/downloader/tq6;

    .line 31
    invoke-direct {v11, v10}, Lcom/shabakaty/downloader/tq6;-><init>(Lcom/shabakaty/downloader/ty6;)V

    .line 32
    iput-object v11, v9, Lcom/shabakaty/downloader/ty6;->a:Ljava/lang/Object;

    .line 33
    iget-object v10, v0, Lcom/shabakaty/downloader/uk6;->d:Lcom/shabakaty/downloader/ti;

    invoke-static {v10}, Lcom/shabakaty/downloader/wd5;->a(Lcom/shabakaty/downloader/ti;)Lcom/shabakaty/downloader/oy6;

    move-result-object v10

    .line 34
    iput-object v10, v9, Lcom/shabakaty/downloader/ty6;->b:Ljava/lang/Object;

    .line 35
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ps5;->g()Lcom/shabakaty/downloader/iu5;

    move-result-object v10

    .line 36
    iput-object v10, v9, Lcom/shabakaty/downloader/ty6;->c:Ljava/lang/Object;

    .line 37
    invoke-virtual {v4}, Lcom/shabakaty/downloader/ps5;->g()Lcom/shabakaty/downloader/iu5;

    move-result-object v10

    .line 38
    iput-object v10, v9, Lcom/shabakaty/downloader/ty6;->d:Ljava/lang/Object;

    .line 39
    iget v10, v2, Lcom/shabakaty/downloader/k12;->f:I

    .line 40
    sget-object v11, Lcom/shabakaty/downloader/uk6;->i:Lcom/shabakaty/downloader/tz1;

    invoke-virtual {v11, v2}, Lcom/shabakaty/downloader/tz1;->a(Lcom/shabakaty/downloader/k12;)I

    move-result v11

    invoke-static {v10, v11}, Lcom/shabakaty/downloader/oj5;->a(II)Lcom/shabakaty/downloader/pq6;

    move-result-object v10

    .line 41
    iput-object v10, v9, Lcom/shabakaty/downloader/ty6;->e:Ljava/lang/Object;

    .line 42
    new-instance v10, Lcom/shabakaty/downloader/ty6;

    invoke-direct {v10, v15}, Lcom/shabakaty/downloader/ty6;-><init>(I)V

    iget-boolean v11, v0, Lcom/shabakaty/downloader/uk6;->h:Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 43
    iput-object v11, v10, Lcom/shabakaty/downloader/ty6;->b:Ljava/lang/Object;

    .line 44
    new-instance v11, Lcom/shabakaty/downloader/et6;

    .line 45
    invoke-direct {v11, v9}, Lcom/shabakaty/downloader/et6;-><init>(Lcom/shabakaty/downloader/ty6;)V

    .line 46
    iput-object v11, v10, Lcom/shabakaty/downloader/ty6;->d:Ljava/lang/Object;

    .line 47
    new-instance v9, Lcom/shabakaty/downloader/qz2;

    .line 48
    invoke-direct {v9, v10}, Lcom/shabakaty/downloader/qz2;-><init>(Lcom/shabakaty/downloader/ty6;)V

    .line 49
    invoke-virtual {v7, v9, v8}, Lcom/shabakaty/downloader/l07;->b(Lcom/shabakaty/downloader/qz2;Lcom/shabakaty/downloader/hr6;)V

    .line 50
    :goto_2
    new-instance v7, Lcom/shabakaty/downloader/m46;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/shabakaty/downloader/m46;-><init>(I)V

    .line 51
    iput-object v1, v7, Lcom/shabakaty/downloader/m46;->a:Ljava/lang/Object;

    .line 52
    sget-boolean v1, Lcom/shabakaty/downloader/uk6;->j:Z

    .line 53
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 54
    iput-object v1, v7, Lcom/shabakaty/downloader/m46;->b:Ljava/lang/Object;

    .line 55
    sget-object v1, Lcom/shabakaty/downloader/uk6;->i:Lcom/shabakaty/downloader/tz1;

    .line 56
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget v8, v2, Lcom/shabakaty/downloader/k12;->f:I

    .line 58
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/tz1;->a(Lcom/shabakaty/downloader/k12;)I

    move-result v1

    .line 59
    invoke-static {v8, v1}, Lcom/shabakaty/downloader/oj5;->a(II)Lcom/shabakaty/downloader/pq6;

    move-result-object v1

    .line 60
    iput-object v1, v7, Lcom/shabakaty/downloader/m46;->c:Ljava/lang/Object;

    .line 61
    iget-object v1, v0, Lcom/shabakaty/downloader/uk6;->d:Lcom/shabakaty/downloader/ti;

    .line 62
    invoke-static {v1}, Lcom/shabakaty/downloader/wd5;->a(Lcom/shabakaty/downloader/ti;)Lcom/shabakaty/downloader/oy6;

    move-result-object v1

    .line 63
    iput-object v1, v7, Lcom/shabakaty/downloader/m46;->d:Ljava/lang/Object;

    .line 64
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ps5;->g()Lcom/shabakaty/downloader/iu5;

    move-result-object v1

    .line 65
    iput-object v1, v7, Lcom/shabakaty/downloader/m46;->e:Ljava/lang/Object;

    .line 66
    invoke-virtual {v4}, Lcom/shabakaty/downloader/ps5;->g()Lcom/shabakaty/downloader/iu5;

    move-result-object v1

    .line 67
    iput-object v1, v7, Lcom/shabakaty/downloader/m46;->f:Ljava/lang/Object;

    .line 68
    new-instance v1, Lcom/shabakaty/downloader/q56;

    .line 69
    invoke-direct {v1, v7}, Lcom/shabakaty/downloader/q56;-><init>(Lcom/shabakaty/downloader/m46;)V

    .line 70
    new-instance v2, Lcom/shabakaty/downloader/fq1;

    .line 71
    invoke-direct {v2, v0}, Lcom/shabakaty/downloader/fq1;-><init>(Lcom/shabakaty/downloader/uk6;)V

    iget-object v3, v0, Lcom/shabakaty/downloader/uk6;->f:Lcom/shabakaty/downloader/l07;

    sget-object v4, Lcom/shabakaty/downloader/hr6;->u:Lcom/shabakaty/downloader/hr6;

    .line 72
    iget-object v7, v3, Lcom/shabakaty/downloader/l07;->i:Ljava/util/Map;

    .line 73
    invoke-interface {v7, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, v3, Lcom/shabakaty/downloader/l07;->i:Ljava/util/Map;

    .line 74
    new-instance v8, Lcom/shabakaty/downloader/uo5;

    .line 75
    invoke-direct {v8}, Lcom/shabakaty/downloader/uo5;-><init>()V

    .line 76
    invoke-interface {v7, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v7, v3, Lcom/shabakaty/downloader/l07;->i:Ljava/util/Map;

    .line 77
    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/gv5;

    .line 78
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v7, v1, v5}, Lcom/shabakaty/downloader/yw5;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 80
    invoke-virtual {v3, v4, v5, v6}, Lcom/shabakaty/downloader/l07;->c(Lcom/shabakaty/downloader/hr6;J)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_5

    :cond_7
    iget-object v1, v3, Lcom/shabakaty/downloader/l07;->h:Ljava/util/Map;

    .line 81
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-interface {v7}, Lcom/shabakaty/downloader/yw5;->g()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 83
    invoke-interface {v7, v5}, Lcom/shabakaty/downloader/gv5;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 84
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v8, Lcom/shabakaty/downloader/m46;

    invoke-direct {v8, v12}, Lcom/shabakaty/downloader/m46;-><init>(I)V

    .line 85
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const-wide/16 v10, 0x0

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    add-long v10, v16, v10

    goto :goto_4

    .line 86
    :cond_8
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    int-to-long v12, v9

    div-long/2addr v10, v12

    .line 87
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 88
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide v11, 0x7fffffffffffffffL

    and-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v8, Lcom/shabakaty/downloader/m46;->c:Ljava/lang/Object;

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    .line 89
    invoke-static {v6, v9, v10}, Lcom/shabakaty/downloader/l07;->a(Ljava/util/List;D)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 90
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    and-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v8, Lcom/shabakaty/downloader/m46;->a:Ljava/lang/Object;

    const-wide v9, 0x4052c00000000000L    # 75.0

    .line 91
    invoke-static {v6, v9, v10}, Lcom/shabakaty/downloader/l07;->a(Ljava/util/List;D)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 92
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    and-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v8, Lcom/shabakaty/downloader/m46;->f:Ljava/lang/Object;

    const-wide/high16 v9, 0x4049000000000000L    # 50.0

    .line 93
    invoke-static {v6, v9, v10}, Lcom/shabakaty/downloader/l07;->a(Ljava/util/List;D)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 94
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    and-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v8, Lcom/shabakaty/downloader/m46;->e:Ljava/lang/Object;

    const-wide/high16 v9, 0x4039000000000000L    # 25.0

    .line 95
    invoke-static {v6, v9, v10}, Lcom/shabakaty/downloader/l07;->a(Ljava/util/List;D)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 96
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    and-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v8, Lcom/shabakaty/downloader/m46;->d:Ljava/lang/Object;

    const-wide/16 v9, 0x0

    .line 97
    invoke-static {v6, v9, v10}, Lcom/shabakaty/downloader/l07;->a(Ljava/util/List;D)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 98
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    and-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v8, Lcom/shabakaty/downloader/m46;->b:Ljava/lang/Object;

    .line 99
    new-instance v6, Lcom/shabakaty/downloader/dq6;

    .line 100
    invoke-direct {v6, v8}, Lcom/shabakaty/downloader/dq6;-><init>(Lcom/shabakaty/downloader/m46;)V

    .line 101
    invoke-interface {v7, v5}, Lcom/shabakaty/downloader/gv5;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    .line 102
    iget-object v9, v2, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast v9, Lcom/shabakaty/downloader/uk6;

    check-cast v5, Lcom/shabakaty/downloader/q56;

    .line 103
    new-instance v10, Lcom/shabakaty/downloader/ty6;

    invoke-direct {v10, v15}, Lcom/shabakaty/downloader/ty6;-><init>(I)V

    iget-boolean v9, v9, Lcom/shabakaty/downloader/uk6;->h:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 104
    iput-object v9, v10, Lcom/shabakaty/downloader/ty6;->b:Ljava/lang/Object;

    .line 105
    new-instance v9, Lcom/shabakaty/downloader/tk1;

    const/16 v13, 0x9

    invoke-direct {v9, v13}, Lcom/shabakaty/downloader/tk1;-><init>(I)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 106
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const v13, 0x7fffffff

    and-int/2addr v8, v13

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v9, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    .line 107
    iput-object v5, v9, Lcom/shabakaty/downloader/tk1;->s:Ljava/lang/Object;

    .line 108
    iput-object v6, v9, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    .line 109
    new-instance v5, Lcom/shabakaty/downloader/t56;

    .line 110
    invoke-direct {v5, v9}, Lcom/shabakaty/downloader/t56;-><init>(Lcom/shabakaty/downloader/tk1;)V

    .line 111
    iput-object v5, v10, Lcom/shabakaty/downloader/ty6;->e:Ljava/lang/Object;

    .line 112
    new-instance v5, Lcom/shabakaty/downloader/qz2;

    .line 113
    invoke-direct {v5, v10}, Lcom/shabakaty/downloader/qz2;-><init>(Lcom/shabakaty/downloader/ty6;)V

    .line 114
    invoke-virtual {v3, v5, v4}, Lcom/shabakaty/downloader/l07;->b(Lcom/shabakaty/downloader/qz2;Lcom/shabakaty/downloader/hr6;)V

    move-wide v13, v11

    const/4 v12, 0x1

    goto/16 :goto_3

    :cond_9
    iget-object v1, v3, Lcom/shabakaty/downloader/l07;->i:Ljava/util/Map;

    .line 115
    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    return-void
.end method
