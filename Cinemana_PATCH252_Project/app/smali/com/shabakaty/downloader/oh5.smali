.class public final Lcom/shabakaty/downloader/oh5;
.super Lcom/shabakaty/downloader/l56;
.source "com.google.android.gms:play-services-cast@@19.0.0"


# static fields
.field public static final w:Ljava/lang/String;


# instance fields
.field public e:J

.field public f:Lcom/shabakaty/downloader/dr2;

.field public g:Ljava/lang/Long;

.field public h:Lcom/shabakaty/downloader/ei5;

.field public final i:Lcom/shabakaty/downloader/ej5;

.field public final j:Lcom/shabakaty/downloader/ej5;

.field public final k:Lcom/shabakaty/downloader/ej5;

.field public final l:Lcom/shabakaty/downloader/ej5;

.field public final m:Lcom/shabakaty/downloader/ej5;

.field public final n:Lcom/shabakaty/downloader/ej5;

.field public final o:Lcom/shabakaty/downloader/ej5;

.field public final p:Lcom/shabakaty/downloader/ej5;

.field public final q:Lcom/shabakaty/downloader/ej5;

.field public final r:Lcom/shabakaty/downloader/ej5;

.field public final s:Lcom/shabakaty/downloader/ej5;

.field public final t:Lcom/shabakaty/downloader/ej5;

.field public final u:Lcom/shabakaty/downloader/ej5;

.field public final v:Lcom/shabakaty/downloader/ej5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "com.google.cast.media"

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/yw;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/oh5;->w:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lcom/shabakaty/downloader/oh5;->w:Ljava/lang/String;

    const-string v2, "MediaControlChannel"

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/l56;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/ej5;

    const-wide/32 v2, 0x5265c00

    invoke-direct {v1, v2, v3}, Lcom/shabakaty/downloader/ej5;-><init>(J)V

    iput-object v1, v0, Lcom/shabakaty/downloader/oh5;->i:Lcom/shabakaty/downloader/ej5;

    .line 3
    new-instance v4, Lcom/shabakaty/downloader/ej5;

    invoke-direct {v4, v2, v3}, Lcom/shabakaty/downloader/ej5;-><init>(J)V

    iput-object v4, v0, Lcom/shabakaty/downloader/oh5;->j:Lcom/shabakaty/downloader/ej5;

    .line 4
    new-instance v5, Lcom/shabakaty/downloader/ej5;

    invoke-direct {v5, v2, v3}, Lcom/shabakaty/downloader/ej5;-><init>(J)V

    iput-object v5, v0, Lcom/shabakaty/downloader/oh5;->k:Lcom/shabakaty/downloader/ej5;

    .line 5
    new-instance v6, Lcom/shabakaty/downloader/ej5;

    invoke-direct {v6, v2, v3}, Lcom/shabakaty/downloader/ej5;-><init>(J)V

    iput-object v6, v0, Lcom/shabakaty/downloader/oh5;->l:Lcom/shabakaty/downloader/ej5;

    .line 6
    new-instance v7, Lcom/shabakaty/downloader/ej5;

    const-wide/16 v8, 0x2710

    invoke-direct {v7, v8, v9}, Lcom/shabakaty/downloader/ej5;-><init>(J)V

    iput-object v7, v0, Lcom/shabakaty/downloader/oh5;->m:Lcom/shabakaty/downloader/ej5;

    .line 7
    new-instance v8, Lcom/shabakaty/downloader/ej5;

    invoke-direct {v8, v2, v3}, Lcom/shabakaty/downloader/ej5;-><init>(J)V

    iput-object v8, v0, Lcom/shabakaty/downloader/oh5;->n:Lcom/shabakaty/downloader/ej5;

    .line 8
    new-instance v9, Lcom/shabakaty/downloader/ej5;

    invoke-direct {v9, v2, v3}, Lcom/shabakaty/downloader/ej5;-><init>(J)V

    iput-object v9, v0, Lcom/shabakaty/downloader/oh5;->o:Lcom/shabakaty/downloader/ej5;

    .line 9
    new-instance v10, Lcom/shabakaty/downloader/ej5;

    invoke-direct {v10, v2, v3}, Lcom/shabakaty/downloader/ej5;-><init>(J)V

    iput-object v10, v0, Lcom/shabakaty/downloader/oh5;->p:Lcom/shabakaty/downloader/ej5;

    .line 10
    new-instance v11, Lcom/shabakaty/downloader/ej5;

    invoke-direct {v11, v2, v3}, Lcom/shabakaty/downloader/ej5;-><init>(J)V

    iput-object v11, v0, Lcom/shabakaty/downloader/oh5;->q:Lcom/shabakaty/downloader/ej5;

    .line 11
    new-instance v12, Lcom/shabakaty/downloader/ej5;

    invoke-direct {v12, v2, v3}, Lcom/shabakaty/downloader/ej5;-><init>(J)V

    .line 12
    new-instance v13, Lcom/shabakaty/downloader/ej5;

    invoke-direct {v13, v2, v3}, Lcom/shabakaty/downloader/ej5;-><init>(J)V

    .line 13
    new-instance v14, Lcom/shabakaty/downloader/ej5;

    invoke-direct {v14, v2, v3}, Lcom/shabakaty/downloader/ej5;-><init>(J)V

    iput-object v14, v0, Lcom/shabakaty/downloader/oh5;->r:Lcom/shabakaty/downloader/ej5;

    .line 14
    new-instance v15, Lcom/shabakaty/downloader/ej5;

    invoke-direct {v15, v2, v3}, Lcom/shabakaty/downloader/ej5;-><init>(J)V

    move-object/from16 v16, v15

    .line 15
    new-instance v15, Lcom/shabakaty/downloader/ej5;

    invoke-direct {v15, v2, v3}, Lcom/shabakaty/downloader/ej5;-><init>(J)V

    move-object/from16 v17, v15

    .line 16
    new-instance v15, Lcom/shabakaty/downloader/ej5;

    invoke-direct {v15, v2, v3}, Lcom/shabakaty/downloader/ej5;-><init>(J)V

    iput-object v15, v0, Lcom/shabakaty/downloader/oh5;->s:Lcom/shabakaty/downloader/ej5;

    move-object/from16 v18, v15

    .line 17
    new-instance v15, Lcom/shabakaty/downloader/ej5;

    invoke-direct {v15, v2, v3}, Lcom/shabakaty/downloader/ej5;-><init>(J)V

    iput-object v15, v0, Lcom/shabakaty/downloader/oh5;->u:Lcom/shabakaty/downloader/ej5;

    move-object/from16 v19, v15

    .line 18
    new-instance v15, Lcom/shabakaty/downloader/ej5;

    invoke-direct {v15, v2, v3}, Lcom/shabakaty/downloader/ej5;-><init>(J)V

    iput-object v15, v0, Lcom/shabakaty/downloader/oh5;->t:Lcom/shabakaty/downloader/ej5;

    .line 19
    new-instance v15, Lcom/shabakaty/downloader/ej5;

    invoke-direct {v15, v2, v3}, Lcom/shabakaty/downloader/ej5;-><init>(J)V

    move-object/from16 v20, v15

    .line 20
    new-instance v15, Lcom/shabakaty/downloader/ej5;

    invoke-direct {v15, v2, v3}, Lcom/shabakaty/downloader/ej5;-><init>(J)V

    iput-object v15, v0, Lcom/shabakaty/downloader/oh5;->v:Lcom/shabakaty/downloader/ej5;

    .line 21
    iget-object v2, v0, Lcom/shabakaty/downloader/l56;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v1, v0, Lcom/shabakaty/downloader/l56;->d:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v1, v0, Lcom/shabakaty/downloader/l56;->d:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v1, v0, Lcom/shabakaty/downloader/l56;->d:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v1, v0, Lcom/shabakaty/downloader/l56;->d:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v1, v0, Lcom/shabakaty/downloader/l56;->d:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v1, v0, Lcom/shabakaty/downloader/l56;->d:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v1, v0, Lcom/shabakaty/downloader/l56;->d:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v1, v0, Lcom/shabakaty/downloader/l56;->d:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v1, v0, Lcom/shabakaty/downloader/l56;->d:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v1, v0, Lcom/shabakaty/downloader/l56;->d:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v1, v0, Lcom/shabakaty/downloader/l56;->d:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v1, v0, Lcom/shabakaty/downloader/l56;->d:Ljava/util/List;

    move-object/from16 v2, v16

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v1, v0, Lcom/shabakaty/downloader/l56;->d:Ljava/util/List;

    move-object/from16 v2, v17

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v1, v0, Lcom/shabakaty/downloader/l56;->d:Ljava/util/List;

    move-object/from16 v2, v18

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v1, v0, Lcom/shabakaty/downloader/l56;->d:Ljava/util/List;

    move-object/from16 v2, v19

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v1, v0, Lcom/shabakaty/downloader/l56;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v1, v0, Lcom/shabakaty/downloader/l56;->d:Ljava/util/List;

    move-object/from16 v2, v20

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v1, v0, Lcom/shabakaty/downloader/l56;->d:Ljava/util/List;

    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/oh5;->s()V

    return-void
.end method

.method public static q(Lorg/json/JSONArray;)[I
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static t(Lorg/json/JSONObject;)Lcom/shabakaty/downloader/cj5;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/cast/MediaError;->W0(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/MediaError;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/cj5;

    invoke-direct {v1}, Lcom/shabakaty/downloader/cj5;-><init>()V

    const-string v2, "customData"

    .line 3
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    iput-object p0, v1, Lcom/shabakaty/downloader/cj5;->a:Lorg/json/JSONObject;

    .line 4
    iput-object v0, v1, Lcom/shabakaty/downloader/cj5;->b:Lcom/google/android/gms/cast/MediaError;

    return-object v1
.end method


# virtual methods
.method public final c()J
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/oh5;->f:Lcom/shabakaty/downloader/dr2;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/shabakaty/downloader/dr2;->L:Lcom/shabakaty/downloader/ep2;

    if-nez v0, :cond_1

    return-wide v1

    .line 3
    :cond_1
    iget-wide v6, v0, Lcom/shabakaty/downloader/ep2;->s:J

    .line 4
    iget-boolean v0, v0, Lcom/shabakaty/downloader/ep2;->u:Z

    if-nez v0, :cond_2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v8, -0x1

    move-object v3, p0

    .line 5
    invoke-virtual/range {v3 .. v9}, Lcom/shabakaty/downloader/oh5;->h(DJJ)J

    move-result-wide v6

    :cond_2
    return-wide v6
.end method

.method public final d()J
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oh5;->e()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 2
    :cond_0
    iget-object v3, p0, Lcom/shabakaty/downloader/oh5;->g:Ljava/lang/Long;

    if-eqz v3, :cond_3

    const-wide v4, 0x3e800000000L

    .line 3
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/oh5;->f:Lcom/shabakaty/downloader/dr2;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/dr2;->L:Lcom/shabakaty/downloader/ep2;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/oh5;->c()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oh5;->f()J

    move-result-wide v4

    cmp-long v0, v4, v1

    if-ltz v0, :cond_2

    .line 8
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/oh5;->f()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    .line 9
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 10
    :cond_3
    iget-wide v3, p0, Lcom/shabakaty/downloader/oh5;->e:J

    cmp-long v5, v3, v1

    if-nez v5, :cond_4

    return-wide v1

    .line 11
    :cond_4
    iget-object v1, p0, Lcom/shabakaty/downloader/oh5;->f:Lcom/shabakaty/downloader/dr2;

    .line 12
    iget-wide v3, v1, Lcom/shabakaty/downloader/dr2;->u:D

    .line 13
    iget-wide v5, v1, Lcom/shabakaty/downloader/dr2;->x:J

    .line 14
    iget v1, v1, Lcom/shabakaty/downloader/dr2;->v:I

    const-wide/16 v7, 0x0

    cmpl-double v2, v3, v7

    if-eqz v2, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    goto :goto_0

    .line 15
    :cond_5
    iget-wide v7, v0, Lcom/google/android/gms/cast/MediaInfo;->v:J

    move-object v2, p0

    .line 16
    invoke-virtual/range {v2 .. v8}, Lcom/shabakaty/downloader/oh5;->h(DJJ)J

    move-result-wide v0

    return-wide v0

    :cond_6
    :goto_0
    return-wide v5
.end method

.method public final e()Lcom/google/android/gms/cast/MediaInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/oh5;->f:Lcom/shabakaty/downloader/dr2;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/shabakaty/downloader/dr2;->r:Lcom/google/android/gms/cast/MediaInfo;

    return-object v0
.end method

.method public final f()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oh5;->e()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, v0, Lcom/google/android/gms/cast/MediaInfo;->v:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/oh5;->h:Lcom/shabakaty/downloader/ei5;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/shabakaty/downloader/ei5;->onStatusUpdated()V

    :cond_0
    return-void
.end method

.method public final h(DJJ)J
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/shabakaty/downloader/oh5;->e:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    :cond_0
    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    return-wide p3

    :cond_1
    long-to-double v0, v0

    mul-double v0, v0, p1

    double-to-long p1, v0

    add-long/2addr p3, p1

    cmp-long p1, p5, v2

    if-lez p1, :cond_2

    cmp-long p1, p3, p5

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    cmp-long p1, p3, v2

    if-gez p1, :cond_3

    move-wide p5, v2

    goto :goto_0

    :cond_3
    move-wide p5, p3

    :goto_0
    return-wide p5
.end method

.method public final i(Lcom/shabakaty/downloader/pj5;IJ[Lcom/shabakaty/downloader/sp2;ILjava/lang/Integer;Lorg/json/JSONObject;)J
    .locals 6

    const-wide/16 v0, -0x1

    cmp-long p5, p3, v0

    if-eqz p5, :cond_1

    const-wide/16 v0, 0x0

    cmp-long p7, p3, v0

    if-ltz p7, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/16 p2, 0x35

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "playPosition cannot be negative: "

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    :goto_0
    new-instance p7, Lorg/json/JSONObject;

    invoke-direct {p7}, Lorg/json/JSONObject;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/l56;->b()J

    move-result-wide v0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "requestId"

    .line 4
    invoke-virtual {p7, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "QUEUE_UPDATE"

    .line 5
    invoke-virtual {p7, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mediaSessionId"

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oh5;->u()J

    move-result-wide v4

    invoke-virtual {p7, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_2

    const-string v3, "currentItemId"

    .line 7
    invoke-virtual {p7, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    if-eqz p6, :cond_3

    const-string p2, "jump"

    .line 8
    invoke-virtual {p7, p2, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 9
    :cond_3
    invoke-static {v2}, Lcom/shabakaty/downloader/cl3;->p(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    const-string p6, "repeatMode"

    .line 10
    invoke-virtual {p7, p6, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    if-eqz p5, :cond_5

    const-string p2, "currentTime"

    .line 11
    invoke-static {p3, p4}, Lcom/shabakaty/downloader/yw;->b(J)D

    move-result-wide p3

    invoke-virtual {p7, p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_5
    if-eqz p8, :cond_6

    const-string p2, "customData"

    .line 12
    invoke-virtual {p7, p2, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :catch_0
    :cond_6
    invoke-virtual {p7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/shabakaty/downloader/l56;->a(Ljava/lang/String;JLjava/lang/String;)V

    .line 14
    iget-object p2, p0, Lcom/shabakaty/downloader/oh5;->r:Lcom/shabakaty/downloader/ej5;

    invoke-virtual {p2, v0, v1, p1}, Lcom/shabakaty/downloader/ej5;->c(JLcom/shabakaty/downloader/pj5;)V

    return-wide v0
.end method

.method public final j(Lcom/shabakaty/downloader/pj5;Lcom/shabakaty/downloader/gp2;)J
    .locals 9

    const-string v0, "requestId"

    .line 1
    iget-object v1, p2, Lcom/shabakaty/downloader/gp2;->r:Lcom/google/android/gms/cast/MediaInfo;

    if-nez v1, :cond_1

    .line 2
    iget-object v1, p2, Lcom/shabakaty/downloader/gp2;->s:Lcom/shabakaty/downloader/rp2;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "MediaInfo and MediaQueueData should not be both null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5
    :try_start_0
    iget-object v4, p2, Lcom/shabakaty/downloader/gp2;->r:Lcom/google/android/gms/cast/MediaInfo;

    if-eqz v4, :cond_2

    const-string v5, "media"

    .line 6
    invoke-virtual {v4}, Lcom/google/android/gms/cast/MediaInfo;->W0()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    :cond_2
    iget-object v4, p2, Lcom/shabakaty/downloader/gp2;->s:Lcom/shabakaty/downloader/rp2;

    if-eqz v4, :cond_3

    const-string v5, "queueData"

    .line 8
    invoke-virtual {v4}, Lcom/shabakaty/downloader/rp2;->W0()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const-string v4, "autoplay"

    .line 9
    iget-object v5, p2, Lcom/shabakaty/downloader/gp2;->t:Ljava/lang/Boolean;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    iget-wide v4, p2, Lcom/shabakaty/downloader/gp2;->u:J

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_4

    const-string v6, "currentTime"

    .line 11
    invoke-static {v4, v5}, Lcom/shabakaty/downloader/yw;->b(J)D

    move-result-wide v4

    invoke-virtual {v1, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_4
    const-string v4, "playbackRate"

    .line 12
    iget-wide v5, p2, Lcom/shabakaty/downloader/gp2;->v:D

    invoke-virtual {v1, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v4, "credentials"

    .line 13
    iget-object v5, p2, Lcom/shabakaty/downloader/gp2;->z:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "credentialsType"

    .line 14
    iget-object v5, p2, Lcom/shabakaty/downloader/gp2;->A:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "atvCredentials"

    .line 15
    iget-object v5, p2, Lcom/shabakaty/downloader/gp2;->B:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "atvCredentialsType"

    .line 16
    iget-object v5, p2, Lcom/shabakaty/downloader/gp2;->C:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    iget-object v4, p2, Lcom/shabakaty/downloader/gp2;->w:[J

    if-eqz v4, :cond_6

    .line 18
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v5, 0x0

    .line 19
    :goto_1
    iget-object v6, p2, Lcom/shabakaty/downloader/gp2;->w:[J

    array-length v7, v6

    if-ge v5, v7, :cond_5

    .line 20
    aget-wide v7, v6, v5

    invoke-virtual {v4, v5, v7, v8}, Lorg/json/JSONArray;->put(IJ)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    const-string v5, "activeTrackIds"

    .line 21
    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    const-string v4, "customData"

    .line 22
    iget-object v5, p2, Lcom/shabakaty/downloader/gp2;->y:Lorg/json/JSONObject;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    iget-wide v4, p2, Lcom/shabakaty/downloader/gp2;->D:J

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 24
    sget-object v1, Lcom/shabakaty/downloader/gp2;->E:Lcom/shabakaty/downloader/pk2;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v3

    .line 25
    iget-object p2, v1, Lcom/shabakaty/downloader/pk2;->a:Ljava/lang/String;

    const-string v3, "Error transforming MediaLoadRequestData into JSONObject"

    invoke-virtual {v1, v3, v4}, Lcom/shabakaty/downloader/pk2;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_7

    .line 26
    invoke-virtual {p0}, Lcom/shabakaty/downloader/l56;->b()J

    move-result-wide v3

    .line 27
    :try_start_1
    invoke-virtual {v1, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p2, "type"

    const-string v0, "LOAD"

    .line 28
    invoke-virtual {v1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 29
    :catch_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, v3, v4, v2}, Lcom/shabakaty/downloader/l56;->a(Ljava/lang/String;JLjava/lang/String;)V

    .line 30
    iget-object p2, p0, Lcom/shabakaty/downloader/oh5;->i:Lcom/shabakaty/downloader/ej5;

    invoke-virtual {p2, v3, v4, p1}, Lcom/shabakaty/downloader/ej5;->c(JLcom/shabakaty/downloader/pj5;)V

    return-wide v3

    .line 31
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed to jsonify the load request due to malformed request"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final k(Lcom/shabakaty/downloader/pj5;Lcom/shabakaty/downloader/pq2;)J
    .locals 8

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/l56;->b()J

    move-result-wide v1

    .line 3
    iget-boolean v3, p2, Lcom/shabakaty/downloader/pq2;->c:Z

    if-eqz v3, :cond_0

    const-wide v3, 0x3e800000000L

    goto :goto_0

    .line 4
    :cond_0
    iget-wide v3, p2, Lcom/shabakaty/downloader/pq2;->a:J

    :goto_0
    :try_start_0
    const-string v5, "requestId"

    .line 5
    invoke-virtual {v0, v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "type"

    const-string v6, "SEEK"

    .line 6
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "mediaSessionId"

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oh5;->u()J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "currentTime"

    .line 8
    invoke-static {v3, v4}, Lcom/shabakaty/downloader/yw;->b(J)D

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 9
    iget v5, p2, Lcom/shabakaty/downloader/pq2;->b:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x1

    const-string v7, "resumeState"

    if-ne v5, v6, :cond_1

    :try_start_1
    const-string v5, "PLAYBACK_START"

    .line 10
    invoke-virtual {v0, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_1
    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    const-string v5, "PLAYBACK_PAUSE"

    .line 11
    invoke-virtual {v0, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    :cond_2
    :goto_1
    iget-object p2, p2, Lcom/shabakaty/downloader/pq2;->d:Lorg/json/JSONObject;

    if-eqz p2, :cond_3

    const-string v5, "customData"

    .line 13
    invoke-virtual {v0, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 14
    :catch_0
    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v1, v2, v0}, Lcom/shabakaty/downloader/l56;->a(Ljava/lang/String;JLjava/lang/String;)V

    .line 15
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/oh5;->g:Ljava/lang/Long;

    .line 16
    iget-object p2, p0, Lcom/shabakaty/downloader/oh5;->m:Lcom/shabakaty/downloader/ej5;

    new-instance v0, Lcom/shabakaty/downloader/ag6;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/ag6;-><init>(Lcom/shabakaty/downloader/oh5;Lcom/shabakaty/downloader/pj5;)V

    invoke-virtual {p2, v1, v2, v0}, Lcom/shabakaty/downloader/ej5;->c(JLcom/shabakaty/downloader/pj5;)V

    return-wide v1
.end method

.method public final l(Lcom/shabakaty/downloader/pj5;Lorg/json/JSONObject;)J
    .locals 6

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/l56;->b()J

    move-result-wide v1

    :try_start_0
    const-string v3, "requestId"

    .line 3
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "PAUSE"

    .line 4
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mediaSessionId"

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oh5;->u()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string v3, "customData"

    .line 6
    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v1, v2, v0}, Lcom/shabakaty/downloader/l56;->a(Ljava/lang/String;JLjava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/shabakaty/downloader/oh5;->j:Lcom/shabakaty/downloader/ej5;

    invoke-virtual {p2, v1, v2, p1}, Lcom/shabakaty/downloader/ej5;->c(JLcom/shabakaty/downloader/pj5;)V

    return-wide v1
.end method

.method public final m(Lcom/shabakaty/downloader/pj5;[J)J
    .locals 7

    if-eqz p2, :cond_1

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/l56;->b()J

    move-result-wide v1

    :try_start_0
    const-string v3, "requestId"

    .line 3
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "EDIT_TRACKS_INFO"

    .line 4
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mediaSessionId"

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oh5;->u()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 6
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v4, 0x0

    .line 7
    :goto_0
    array-length v5, p2

    if-ge v4, v5, :cond_0

    .line 8
    aget-wide v5, p2, v4

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONArray;->put(IJ)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string p2, "activeTrackIds"

    .line 9
    invoke-virtual {v0, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v1, v2, v0}, Lcom/shabakaty/downloader/l56;->a(Ljava/lang/String;JLjava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/shabakaty/downloader/oh5;->q:Lcom/shabakaty/downloader/ej5;

    invoke-virtual {p2, v1, v2, p1}, Lcom/shabakaty/downloader/ej5;->c(JLcom/shabakaty/downloader/pj5;)V

    return-wide v1

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "trackIds cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final n(Lcom/shabakaty/downloader/pj5;)J
    .locals 7

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/l56;->b()J

    move-result-wide v1

    :try_start_0
    const-string v3, "requestId"

    .line 3
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "GET_STATUS"

    .line 4
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    iget-object v3, p0, Lcom/shabakaty/downloader/oh5;->f:Lcom/shabakaty/downloader/dr2;

    if-eqz v3, :cond_0

    const-string v4, "mediaSessionId"

    .line 6
    iget-wide v5, v3, Lcom/shabakaty/downloader/dr2;->s:J

    .line 7
    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/shabakaty/downloader/l56;->a(Ljava/lang/String;JLjava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/oh5;->p:Lcom/shabakaty/downloader/ej5;

    invoke-virtual {v0, v1, v2, p1}, Lcom/shabakaty/downloader/ej5;->c(JLcom/shabakaty/downloader/pj5;)V

    return-wide v1
.end method

.method public final o(JI)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/l56;->d:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/ej5;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/shabakaty/downloader/ej5;->e(JILjava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final p(Lcom/shabakaty/downloader/pj5;Lorg/json/JSONObject;)J
    .locals 6

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/l56;->b()J

    move-result-wide v1

    :try_start_0
    const-string v3, "requestId"

    .line 3
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "PLAY"

    .line 4
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mediaSessionId"

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oh5;->u()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string v3, "customData"

    .line 6
    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v1, v2, v0}, Lcom/shabakaty/downloader/l56;->a(Ljava/lang/String;JLjava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/shabakaty/downloader/oh5;->k:Lcom/shabakaty/downloader/ej5;

    invoke-virtual {p2, v1, v2, p1}, Lcom/shabakaty/downloader/ej5;->c(JLcom/shabakaty/downloader/pj5;)V

    return-wide v1
.end method

.method public final r()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/l56;->d:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/l56;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/ej5;

    const/16 v3, 0x7d2

    .line 3
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/ej5;->d(I)Z

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oh5;->s()V

    return-void

    :catchall_0
    move-exception v1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final s()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/shabakaty/downloader/oh5;->e:J

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/oh5;->f:Lcom/shabakaty/downloader/dr2;

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/l56;->d:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/ej5;

    const/16 v2, 0x7d2

    .line 5
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/ej5;->d(I)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final u()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/oh5;->f:Lcom/shabakaty/downloader/dr2;

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, v0, Lcom/shabakaty/downloader/dr2;->s:J

    return-wide v0

    .line 3
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/xh5;

    invoke-direct {v0}, Lcom/shabakaty/downloader/xh5;-><init>()V

    throw v0
.end method

.method public final v(Ljava/lang/String;)V
    .locals 42

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    iget-object v0, v1, Lcom/shabakaty/downloader/l56;->a:Lcom/shabakaty/downloader/pk2;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v6, "message received: %s"

    invoke-virtual {v0, v6, v4}, Lcom/shabakaty/downloader/pk2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x2

    .line 2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "type"

    .line 3
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "requestId"

    const-wide/16 v8, -0x1

    .line 4
    invoke-virtual {v0, v7, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 5
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/4 v10, -0x1

    const/4 v11, 0x4

    const/4 v12, 0x3

    sparse-switch v9, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v9, "QUEUE_ITEM_IDS"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x6

    goto :goto_1

    :sswitch_1
    const-string v9, "MEDIA_STATUS"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    :sswitch_2
    const-string v9, "INVALID_PLAYER_STATE"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :sswitch_3
    const-string v9, "QUEUE_CHANGE"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x7

    goto :goto_1

    :sswitch_4
    const-string v9, "ERROR"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x5

    goto :goto_1

    :sswitch_5
    const-string v9, "LOAD_FAILED"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x2

    goto :goto_1

    :sswitch_6
    const-string v9, "INVALID_REQUEST"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_1

    :sswitch_7
    const-string v9, "QUEUE_ITEMS"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x8

    goto :goto_1

    :sswitch_8
    const-string v9, "LOAD_CANCELLED"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_0

    const/4 v6, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v6, -0x1

    :goto_1
    const-string v9, "itemIds"

    const/16 v13, 0x834

    const/4 v14, 0x0

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_e

    .line 6
    :pswitch_0
    :try_start_1
    iget-object v6, v1, Lcom/shabakaty/downloader/oh5;->t:Lcom/shabakaty/downloader/ej5;

    .line 7
    invoke-virtual {v6, v7, v8, v5, v14}, Lcom/shabakaty/downloader/ej5;->e(JILjava/lang/Object;)Z

    .line 8
    iget-object v6, v1, Lcom/shabakaty/downloader/oh5;->h:Lcom/shabakaty/downloader/ei5;

    if-eqz v6, :cond_22

    const-string v6, "items"

    .line 9
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v6, v6, [Lcom/shabakaty/downloader/sp2;

    const/4 v7, 0x0

    .line 11
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_6

    .line 12
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 13
    new-instance v9, Lcom/shabakaty/downloader/sp2;

    invoke-direct {v9, v8}, Lcom/shabakaty/downloader/sp2;-><init>(Lorg/json/JSONObject;)V

    .line 14
    iget-object v8, v9, Lcom/shabakaty/downloader/sp2;->r:Lcom/google/android/gms/cast/MediaInfo;

    if-eqz v8, :cond_5

    .line 15
    iget-wide v10, v9, Lcom/shabakaty/downloader/sp2;->u:D

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    const-wide/16 v10, 0x0

    if-nez v8, :cond_2

    iget-wide v12, v9, Lcom/shabakaty/downloader/sp2;->u:D

    cmpg-double v8, v12, v10

    if-ltz v8, :cond_1

    goto :goto_3

    .line 16
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v6, "startTime cannot be negative or NaN."

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_2
    :goto_3
    iget-wide v12, v9, Lcom/shabakaty/downloader/sp2;->v:D

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_4

    .line 18
    iget-wide v12, v9, Lcom/shabakaty/downloader/sp2;->w:D

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_3

    iget-wide v12, v9, Lcom/shabakaty/downloader/sp2;->w:D

    cmpg-double v8, v12, v10

    if-ltz v8, :cond_3

    .line 19
    aput-object v9, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 20
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v6, "preloadTime cannot be negative or Nan."

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v6, "playbackDuration cannot be NaN."

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v6, "media cannot be null."

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_6
    iget-object v0, v1, Lcom/shabakaty/downloader/oh5;->h:Lcom/shabakaty/downloader/ei5;

    invoke-interface {v0, v6}, Lcom/shabakaty/downloader/ei5;->l0([Lcom/shabakaty/downloader/sp2;)V

    goto/16 :goto_e

    .line 24
    :pswitch_1
    iget-object v6, v1, Lcom/shabakaty/downloader/oh5;->u:Lcom/shabakaty/downloader/ej5;

    .line 25
    invoke-virtual {v6, v7, v8, v5, v14}, Lcom/shabakaty/downloader/ej5;->e(JILjava/lang/Object;)Z

    .line 26
    iget-object v6, v1, Lcom/shabakaty/downloader/oh5;->h:Lcom/shabakaty/downloader/ei5;

    if-eqz v6, :cond_c

    const-string v6, "changeType"

    .line 27
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 28
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/shabakaty/downloader/oh5;->q(Lorg/json/JSONArray;)[I

    move-result-object v7

    const-string v8, "insertBefore"

    .line 29
    invoke-virtual {v0, v8, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v7, :cond_c

    .line 30
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_1

    goto :goto_4

    :sswitch_9
    const-string v8, "NO_CHANGE"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v10, 0x4

    goto :goto_4

    :sswitch_a
    const-string v8, "ITEMS_CHANGE"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v10, 0x1

    goto :goto_4

    :sswitch_b
    const-string v8, "UPDATE"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v10, 0x3

    goto :goto_4

    :sswitch_c
    const-string v8, "REMOVE"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v10, 0x2

    goto :goto_4

    :sswitch_d
    const-string v8, "INSERT"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v10, 0x0

    :cond_7
    :goto_4
    if-eqz v10, :cond_b

    if-eq v10, v3, :cond_a

    if-eq v10, v4, :cond_9

    if-eq v10, v12, :cond_8

    goto :goto_5

    .line 31
    :cond_8
    iget-object v0, v1, Lcom/shabakaty/downloader/oh5;->h:Lcom/shabakaty/downloader/ei5;

    invoke-interface {v0, v7}, Lcom/shabakaty/downloader/ei5;->c0([I)V

    return-void

    .line 32
    :cond_9
    iget-object v0, v1, Lcom/shabakaty/downloader/oh5;->h:Lcom/shabakaty/downloader/ei5;

    invoke-interface {v0, v7}, Lcom/shabakaty/downloader/ei5;->B([I)V

    return-void

    .line 33
    :cond_a
    iget-object v0, v1, Lcom/shabakaty/downloader/oh5;->h:Lcom/shabakaty/downloader/ei5;

    invoke-interface {v0, v7}, Lcom/shabakaty/downloader/ei5;->q0([I)V

    return-void

    .line 34
    :cond_b
    iget-object v6, v1, Lcom/shabakaty/downloader/oh5;->h:Lcom/shabakaty/downloader/ei5;

    invoke-interface {v6, v7, v0}, Lcom/shabakaty/downloader/ei5;->w([II)V

    :cond_c
    :goto_5
    return-void

    .line 35
    :pswitch_2
    iget-object v6, v1, Lcom/shabakaty/downloader/oh5;->s:Lcom/shabakaty/downloader/ej5;

    .line 36
    invoke-virtual {v6, v7, v8, v5, v14}, Lcom/shabakaty/downloader/ej5;->e(JILjava/lang/Object;)Z

    .line 37
    iget-object v6, v1, Lcom/shabakaty/downloader/oh5;->h:Lcom/shabakaty/downloader/ei5;

    if-eqz v6, :cond_d

    .line 38
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/oh5;->q(Lorg/json/JSONArray;)[I

    move-result-object v0

    if-eqz v0, :cond_d

    .line 39
    iget-object v6, v1, Lcom/shabakaty/downloader/oh5;->h:Lcom/shabakaty/downloader/ei5;

    invoke-interface {v6, v0}, Lcom/shabakaty/downloader/ei5;->c0([I)V

    :cond_d
    return-void

    .line 40
    :pswitch_3
    iget-object v6, v1, Lcom/shabakaty/downloader/l56;->d:Ljava/util/List;

    .line 41
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/ej5;

    .line 42
    invoke-static {v0}, Lcom/shabakaty/downloader/oh5;->t(Lorg/json/JSONObject;)Lcom/shabakaty/downloader/cj5;

    move-result-object v10

    invoke-virtual {v9, v7, v8, v13, v10}, Lcom/shabakaty/downloader/ej5;->e(JILjava/lang/Object;)Z

    goto :goto_6

    .line 43
    :cond_e
    iget-object v6, v1, Lcom/shabakaty/downloader/oh5;->h:Lcom/shabakaty/downloader/ei5;

    if-eqz v6, :cond_f

    .line 44
    invoke-static {v0}, Lcom/google/android/gms/cast/MediaError;->W0(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/MediaError;

    move-result-object v0

    .line 45
    iget-object v6, v1, Lcom/shabakaty/downloader/oh5;->h:Lcom/shabakaty/downloader/ei5;

    invoke-interface {v6, v0}, Lcom/shabakaty/downloader/ei5;->v0(Lcom/google/android/gms/cast/MediaError;)V

    :cond_f
    return-void

    .line 46
    :pswitch_4
    iget-object v6, v1, Lcom/shabakaty/downloader/l56;->a:Lcom/shabakaty/downloader/pk2;

    const-string v9, "received unexpected error: Invalid Request."

    new-array v10, v5, [Ljava/lang/Object;

    .line 47
    iget-object v11, v6, Lcom/shabakaty/downloader/pk2;->a:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Lcom/shabakaty/downloader/pk2;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v6, v1, Lcom/shabakaty/downloader/l56;->d:Ljava/util/List;

    .line 49
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/ej5;

    .line 50
    invoke-static {v0}, Lcom/shabakaty/downloader/oh5;->t(Lorg/json/JSONObject;)Lcom/shabakaty/downloader/cj5;

    move-result-object v10

    invoke-virtual {v9, v7, v8, v13, v10}, Lcom/shabakaty/downloader/ej5;->e(JILjava/lang/Object;)Z

    goto :goto_7

    :cond_10
    return-void

    .line 51
    :pswitch_5
    iget-object v6, v1, Lcom/shabakaty/downloader/oh5;->i:Lcom/shabakaty/downloader/ej5;

    const/16 v9, 0x835

    invoke-static {v0}, Lcom/shabakaty/downloader/oh5;->t(Lorg/json/JSONObject;)Lcom/shabakaty/downloader/cj5;

    move-result-object v0

    invoke-virtual {v6, v7, v8, v9, v0}, Lcom/shabakaty/downloader/ej5;->e(JILjava/lang/Object;)Z

    return-void

    .line 52
    :pswitch_6
    iget-object v6, v1, Lcom/shabakaty/downloader/oh5;->i:Lcom/shabakaty/downloader/ej5;

    .line 53
    invoke-static {v0}, Lcom/shabakaty/downloader/oh5;->t(Lorg/json/JSONObject;)Lcom/shabakaty/downloader/cj5;

    move-result-object v0

    .line 54
    invoke-virtual {v6, v7, v8, v13, v0}, Lcom/shabakaty/downloader/ej5;->e(JILjava/lang/Object;)Z

    return-void

    .line 55
    :pswitch_7
    iget-object v6, v1, Lcom/shabakaty/downloader/l56;->a:Lcom/shabakaty/downloader/pk2;

    const-string v9, "received unexpected error: Invalid Player State."

    new-array v10, v5, [Ljava/lang/Object;

    .line 56
    iget-object v11, v6, Lcom/shabakaty/downloader/pk2;->a:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Lcom/shabakaty/downloader/pk2;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v6, v1, Lcom/shabakaty/downloader/l56;->d:Ljava/util/List;

    .line 58
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/ej5;

    .line 59
    invoke-static {v0}, Lcom/shabakaty/downloader/oh5;->t(Lorg/json/JSONObject;)Lcom/shabakaty/downloader/cj5;

    move-result-object v10

    invoke-virtual {v9, v7, v8, v13, v10}, Lcom/shabakaty/downloader/ej5;->e(JILjava/lang/Object;)Z

    goto :goto_8

    :cond_11
    return-void

    :pswitch_8
    const-string v6, "status"

    .line 60
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_1e

    .line 62
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 63
    iget-object v6, v1, Lcom/shabakaty/downloader/oh5;->i:Lcom/shabakaty/downloader/ej5;

    invoke-virtual {v6, v7, v8}, Lcom/shabakaty/downloader/ej5;->a(J)Z

    move-result v6

    .line 64
    iget-object v9, v1, Lcom/shabakaty/downloader/oh5;->n:Lcom/shabakaty/downloader/ej5;

    .line 65
    invoke-virtual {v9}, Lcom/shabakaty/downloader/ej5;->f()Z

    move-result v9

    if-eqz v9, :cond_12

    iget-object v9, v1, Lcom/shabakaty/downloader/oh5;->n:Lcom/shabakaty/downloader/ej5;

    invoke-virtual {v9, v7, v8}, Lcom/shabakaty/downloader/ej5;->a(J)Z

    move-result v9

    if-eqz v9, :cond_13

    :cond_12
    iget-object v9, v1, Lcom/shabakaty/downloader/oh5;->o:Lcom/shabakaty/downloader/ej5;

    .line 66
    invoke-virtual {v9}, Lcom/shabakaty/downloader/ej5;->f()Z

    move-result v9

    if-eqz v9, :cond_14

    iget-object v9, v1, Lcom/shabakaty/downloader/oh5;->o:Lcom/shabakaty/downloader/ej5;

    invoke-virtual {v9, v7, v8}, Lcom/shabakaty/downloader/ej5;->a(J)Z

    move-result v9

    if-nez v9, :cond_14

    :cond_13
    const/4 v9, 0x1

    goto :goto_9

    :cond_14
    const/4 v9, 0x0

    :goto_9
    if-nez v6, :cond_16

    .line 67
    iget-object v6, v1, Lcom/shabakaty/downloader/oh5;->f:Lcom/shabakaty/downloader/dr2;

    if-nez v6, :cond_15

    goto :goto_a

    .line 68
    :cond_15
    invoke-virtual {v6, v0, v9}, Lcom/shabakaty/downloader/dr2;->F1(Lorg/json/JSONObject;I)I

    move-result v0

    goto :goto_b

    .line 69
    :cond_16
    :goto_a
    new-instance v6, Lcom/shabakaty/downloader/dr2;

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object v15, v6

    .line 70
    invoke-direct/range {v15 .. v41}, Lcom/shabakaty/downloader/dr2;-><init>(Lcom/google/android/gms/cast/MediaInfo;JIDIIJJDZ[JIILjava/lang/String;ILjava/util/List;ZLcom/shabakaty/downloader/j4;Lcom/shabakaty/downloader/r05;Lcom/shabakaty/downloader/ep2;Lcom/shabakaty/downloader/rp2;)V

    .line 71
    invoke-virtual {v6, v0, v5}, Lcom/shabakaty/downloader/dr2;->F1(Lorg/json/JSONObject;I)I

    .line 72
    iput-object v6, v1, Lcom/shabakaty/downloader/oh5;->f:Lcom/shabakaty/downloader/dr2;

    .line 73
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iput-wide v9, v1, Lcom/shabakaty/downloader/oh5;->e:J

    const/16 v0, 0x7f

    :goto_b
    and-int/lit8 v6, v0, 0x1

    if-eqz v6, :cond_17

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iput-wide v9, v1, Lcom/shabakaty/downloader/oh5;->e:J

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/oh5;->g()V

    :cond_17
    and-int/lit8 v6, v0, 0x2

    if-eqz v6, :cond_18

    .line 76
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iput-wide v9, v1, Lcom/shabakaty/downloader/oh5;->e:J

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/oh5;->g()V

    :cond_18
    and-int/lit16 v6, v0, 0x80

    if-eqz v6, :cond_19

    .line 78
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iput-wide v9, v1, Lcom/shabakaty/downloader/oh5;->e:J

    :cond_19
    and-int/lit8 v6, v0, 0x4

    if-eqz v6, :cond_1a

    .line 79
    iget-object v6, v1, Lcom/shabakaty/downloader/oh5;->h:Lcom/shabakaty/downloader/ei5;

    if-eqz v6, :cond_1a

    .line 80
    invoke-interface {v6}, Lcom/shabakaty/downloader/ei5;->onMetadataUpdated()V

    :cond_1a
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_1b

    .line 81
    iget-object v6, v1, Lcom/shabakaty/downloader/oh5;->h:Lcom/shabakaty/downloader/ei5;

    if-eqz v6, :cond_1b

    .line 82
    invoke-interface {v6}, Lcom/shabakaty/downloader/ei5;->b()V

    :cond_1b
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_1c

    .line 83
    iget-object v6, v1, Lcom/shabakaty/downloader/oh5;->h:Lcom/shabakaty/downloader/ei5;

    if-eqz v6, :cond_1c

    .line 84
    invoke-interface {v6}, Lcom/shabakaty/downloader/ei5;->f()V

    :cond_1c
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_1d

    .line 85
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iput-wide v9, v1, Lcom/shabakaty/downloader/oh5;->e:J

    .line 86
    iget-object v6, v1, Lcom/shabakaty/downloader/oh5;->h:Lcom/shabakaty/downloader/ei5;

    if-eqz v6, :cond_1d

    .line 87
    invoke-interface {v6}, Lcom/shabakaty/downloader/ei5;->p()V

    :cond_1d
    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_21

    .line 88
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iput-wide v9, v1, Lcom/shabakaty/downloader/oh5;->e:J

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/oh5;->g()V

    goto :goto_c

    .line 90
    :cond_1e
    iput-object v14, v1, Lcom/shabakaty/downloader/oh5;->f:Lcom/shabakaty/downloader/dr2;

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/oh5;->g()V

    .line 92
    iget-object v0, v1, Lcom/shabakaty/downloader/oh5;->h:Lcom/shabakaty/downloader/ei5;

    if-eqz v0, :cond_1f

    .line 93
    invoke-interface {v0}, Lcom/shabakaty/downloader/ei5;->onMetadataUpdated()V

    .line 94
    :cond_1f
    iget-object v0, v1, Lcom/shabakaty/downloader/oh5;->h:Lcom/shabakaty/downloader/ei5;

    if-eqz v0, :cond_20

    .line 95
    invoke-interface {v0}, Lcom/shabakaty/downloader/ei5;->b()V

    .line 96
    :cond_20
    iget-object v0, v1, Lcom/shabakaty/downloader/oh5;->h:Lcom/shabakaty/downloader/ei5;

    if-eqz v0, :cond_21

    .line 97
    invoke-interface {v0}, Lcom/shabakaty/downloader/ei5;->f()V

    .line 98
    :cond_21
    :goto_c
    iget-object v0, v1, Lcom/shabakaty/downloader/l56;->d:Ljava/util/List;

    .line 99
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/ej5;

    .line 100
    invoke-virtual {v6, v7, v8, v5, v14}, Lcom/shabakaty/downloader/ej5;->e(JILjava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_d

    :cond_22
    :goto_e
    return-void

    :catch_0
    move-exception v0

    .line 101
    iget-object v6, v1, Lcom/shabakaty/downloader/l56;->a:Lcom/shabakaty/downloader/pk2;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    aput-object v2, v4, v3

    .line 102
    iget-object v0, v6, Lcom/shabakaty/downloader/pk2;->a:Ljava/lang/String;

    const-string v2, "Message is malformed (%s); ignoring: %s"

    invoke-virtual {v6, v2, v4}, Lcom/shabakaty/downloader/pk2;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6d1d76e8 -> :sswitch_8
        -0x6ab4c52e -> :sswitch_7
        -0x430e23f9 -> :sswitch_6
        -0xfa7664a -> :sswitch_5
        0x3f2d9e8 -> :sswitch_4
        0x93422be -> :sswitch_3
        0x19b9b2fb -> :sswitch_2
        0x3115c4cd -> :sswitch_1
        0x7d988afa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7efc4947 -> :sswitch_d
        -0x7022137c -> :sswitch_c
        -0x6a6cd337 -> :sswitch_b
        0x42ef412f -> :sswitch_a
        0x5330afee -> :sswitch_9
    .end sparse-switch
.end method
