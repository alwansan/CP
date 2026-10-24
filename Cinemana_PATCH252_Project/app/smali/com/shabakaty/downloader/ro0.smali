.class public final Lcom/shabakaty/downloader/ro0;
.super Ljava/lang/Object;
.source "DefaultMediaSourceFactory.java"

# interfaces
.implements Lcom/shabakaty/downloader/zq2;


# instance fields
.field public final a:Lcom/shabakaty/downloader/vl0$a;

.field public final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/shabakaty/downloader/zq2;",
            ">;"
        }
    .end annotation
.end field

.field public final c:[I

.field public d:J

.field public e:J

.field public f:J

.field public g:F

.field public h:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/shabakaty/downloader/s91;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/rn0;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/rn0;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/ro0;->a:Lcom/shabakaty/downloader/vl0$a;

    .line 4
    const-class p1, Lcom/shabakaty/downloader/vl0$a;

    const-class v1, Lcom/shabakaty/downloader/zq2;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 5
    :try_start_0
    const-class v5, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    .line 6
    invoke-virtual {v5, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Class;

    aput-object p1, v6, v3

    .line 7
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v0, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/zq2;

    .line 8
    invoke-virtual {v2, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :catch_0
    :try_start_1
    const-class v5, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;

    .line 10
    invoke-virtual {v5, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Class;

    aput-object p1, v6, v3

    .line 11
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v0, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/zq2;

    .line 12
    invoke-virtual {v2, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 13
    :catch_1
    :try_start_2
    const-class v5, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    .line 14
    invoke-virtual {v5, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v4, [Ljava/lang/Class;

    aput-object p1, v7, v3

    .line 15
    invoke-virtual {v5, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    invoke-virtual {p1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/zq2;

    .line 16
    invoke-virtual {v2, v6, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 17
    :catch_2
    :try_start_3
    const-class p1, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$Factory;

    .line 18
    invoke-virtual {p1, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    const/4 v1, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    .line 19
    invoke-virtual {p1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/zq2;

    invoke-virtual {v2, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 p1, 0x4

    .line 20
    new-instance v1, Lcom/shabakaty/downloader/rh3$b;

    invoke-direct {v1, v0, p2}, Lcom/shabakaty/downloader/rh3$b;-><init>(Lcom/shabakaty/downloader/vl0$a;Lcom/shabakaty/downloader/s91;)V

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    iput-object v2, p0, Lcom/shabakaty/downloader/ro0;->b:Landroid/util/SparseArray;

    .line 22
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/shabakaty/downloader/ro0;->c:[I

    .line 23
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/ro0;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v3, p1, :cond_0

    .line 24
    iget-object p1, p0, Lcom/shabakaty/downloader/ro0;->c:[I

    iget-object p2, p0, Lcom/shabakaty/downloader/ro0;->b:Landroid/util/SparseArray;

    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p2

    aput p2, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 25
    iput-wide p1, p0, Lcom/shabakaty/downloader/ro0;->d:J

    .line 26
    iput-wide p1, p0, Lcom/shabakaty/downloader/ro0;->e:J

    .line 27
    iput-wide p1, p0, Lcom/shabakaty/downloader/ro0;->f:J

    const p1, -0x800001

    .line 28
    iput p1, p0, Lcom/shabakaty/downloader/ro0;->g:F

    .line 29
    iput p1, p0, Lcom/shabakaty/downloader/ro0;->h:F

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/dp2;)Lcom/shabakaty/downloader/uq2;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v1, Lcom/shabakaty/downloader/dp2;->b:Lcom/shabakaty/downloader/dp2$g;

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v2, v1, Lcom/shabakaty/downloader/dp2;->b:Lcom/shabakaty/downloader/dp2$g;

    iget-object v3, v2, Lcom/shabakaty/downloader/dp2$g;->a:Landroid/net/Uri;

    iget-object v2, v2, Lcom/shabakaty/downloader/dp2$g;->b:Ljava/lang/String;

    .line 4
    sget v4, Lcom/shabakaty/downloader/sy4;->a:I

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-nez v2, :cond_5

    .line 5
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v7, "rtsp"

    .line 6
    invoke-static {v7, v2}, Lcom/shabakaty/downloader/j96;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 7
    :cond_0
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_4

    .line 8
    :cond_1
    invoke-static {v2}, Lcom/shabakaty/downloader/j96;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".mpd"

    .line 9
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_2

    :cond_2
    const-string v3, ".m3u8"

    .line 10
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_3

    .line 11
    :cond_3
    sget-object v3, Lcom/shabakaty/downloader/sy4;->j:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 12
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 13
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    const-string v3, "format=mpd-time-csf"

    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    const-string v3, "format=m3u8-aapl"

    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_3

    .line 16
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v5, "application/x-rtsp"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_1
    const-string v5, "application/dash+xml"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_2
    const-string v5, "application/vnd.ms-sstr+xml"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_8
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_3
    const-string v5, "application/x-mpegURL"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_0

    :cond_9
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_4

    :goto_1
    :pswitch_0
    const/4 v4, 0x3

    goto :goto_4

    :goto_2
    :pswitch_1
    const/4 v4, 0x0

    goto :goto_4

    :cond_a
    :pswitch_2
    const/4 v4, 0x1

    goto :goto_4

    :goto_3
    :pswitch_3
    const/4 v4, 0x2

    .line 17
    :cond_b
    :goto_4
    iget-object v2, v0, Lcom/shabakaty/downloader/ro0;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/zq2;

    const/16 v3, 0x44

    .line 18
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "No suitable media source factory found for content type: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 19
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    iget-object v3, v1, Lcom/shabakaty/downloader/dp2;->c:Lcom/shabakaty/downloader/dp2$f;

    iget-wide v4, v3, Lcom/shabakaty/downloader/dp2$f;->a:J

    const v7, -0x800001

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v10, v4, v8

    if-nez v10, :cond_c

    iget-wide v4, v0, Lcom/shabakaty/downloader/ro0;->d:J

    cmp-long v10, v4, v8

    if-nez v10, :cond_10

    :cond_c
    iget v4, v3, Lcom/shabakaty/downloader/dp2$f;->d:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_d

    iget v4, v0, Lcom/shabakaty/downloader/ro0;->g:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_10

    :cond_d
    iget v4, v3, Lcom/shabakaty/downloader/dp2$f;->e:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_e

    iget v4, v0, Lcom/shabakaty/downloader/ro0;->h:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_10

    :cond_e
    iget-wide v4, v3, Lcom/shabakaty/downloader/dp2$f;->b:J

    cmp-long v10, v4, v8

    if-nez v10, :cond_f

    iget-wide v4, v0, Lcom/shabakaty/downloader/ro0;->e:J

    cmp-long v10, v4, v8

    if-nez v10, :cond_10

    :cond_f
    iget-wide v3, v3, Lcom/shabakaty/downloader/dp2$f;->c:J

    cmp-long v5, v3, v8

    if-nez v5, :cond_16

    iget-wide v3, v0, Lcom/shabakaty/downloader/ro0;->f:J

    cmp-long v5, v3, v8

    if-eqz v5, :cond_16

    .line 21
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/dp2;->a()Lcom/shabakaty/downloader/dp2$c;

    move-result-object v3

    .line 22
    iget-object v1, v1, Lcom/shabakaty/downloader/dp2;->c:Lcom/shabakaty/downloader/dp2$f;

    iget-wide v4, v1, Lcom/shabakaty/downloader/dp2$f;->a:J

    cmp-long v10, v4, v8

    if-nez v10, :cond_11

    .line 23
    iget-wide v4, v0, Lcom/shabakaty/downloader/ro0;->d:J

    .line 24
    :cond_11
    iput-wide v4, v3, Lcom/shabakaty/downloader/dp2$c;->w:J

    .line 25
    iget v4, v1, Lcom/shabakaty/downloader/dp2$f;->d:F

    cmpl-float v5, v4, v7

    if-nez v5, :cond_12

    .line 26
    iget v4, v0, Lcom/shabakaty/downloader/ro0;->g:F

    .line 27
    :cond_12
    iput v4, v3, Lcom/shabakaty/downloader/dp2$c;->z:F

    .line 28
    iget v4, v1, Lcom/shabakaty/downloader/dp2$f;->e:F

    cmpl-float v5, v4, v7

    if-nez v5, :cond_13

    .line 29
    iget v4, v0, Lcom/shabakaty/downloader/ro0;->h:F

    .line 30
    :cond_13
    iput v4, v3, Lcom/shabakaty/downloader/dp2$c;->A:F

    .line 31
    iget-wide v4, v1, Lcom/shabakaty/downloader/dp2$f;->b:J

    cmp-long v7, v4, v8

    if-nez v7, :cond_14

    .line 32
    iget-wide v4, v0, Lcom/shabakaty/downloader/ro0;->e:J

    .line 33
    :cond_14
    iput-wide v4, v3, Lcom/shabakaty/downloader/dp2$c;->x:J

    .line 34
    iget-wide v4, v1, Lcom/shabakaty/downloader/dp2$f;->c:J

    cmp-long v1, v4, v8

    if-nez v1, :cond_15

    .line 35
    iget-wide v4, v0, Lcom/shabakaty/downloader/ro0;->f:J

    .line 36
    :cond_15
    iput-wide v4, v3, Lcom/shabakaty/downloader/dp2$c;->y:J

    .line 37
    invoke-virtual {v3}, Lcom/shabakaty/downloader/dp2$c;->a()Lcom/shabakaty/downloader/dp2;

    move-result-object v1

    .line 38
    :cond_16
    invoke-interface {v2, v1}, Lcom/shabakaty/downloader/zq2;->a(Lcom/shabakaty/downloader/dp2;)Lcom/shabakaty/downloader/uq2;

    move-result-object v2

    .line 39
    iget-object v3, v1, Lcom/shabakaty/downloader/dp2;->b:Lcom/shabakaty/downloader/dp2$g;

    iget-object v3, v3, Lcom/shabakaty/downloader/dp2$g;->g:Ljava/util/List;

    .line 40
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_18

    .line 41
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [Lcom/shabakaty/downloader/uq2;

    .line 42
    aput-object v2, v4, v6

    .line 43
    iget-object v2, v0, Lcom/shabakaty/downloader/ro0;->a:Lcom/shabakaty/downloader/vl0$a;

    .line 44
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    .line 45
    new-instance v17, Lcom/shabakaty/downloader/po0;

    invoke-direct/range {v17 .. v17}, Lcom/shabakaty/downloader/po0;-><init>()V

    .line 46
    :goto_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_17

    add-int/lit8 v18, v6, 0x1

    .line 47
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Lcom/shabakaty/downloader/dp2$h;

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 48
    new-instance v6, Lcom/shabakaty/downloader/f84;

    const/4 v8, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v7, v6

    move-object v10, v2

    move-object/from16 v13, v17

    move v14, v5

    invoke-direct/range {v7 .. v16}, Lcom/shabakaty/downloader/f84;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/dp2$h;Lcom/shabakaty/downloader/vl0$a;JLcom/shabakaty/downloader/gj2;ZLjava/lang/Object;Lcom/shabakaty/downloader/f84$a;)V

    .line 49
    aput-object v6, v4, v18

    move/from16 v6, v18

    goto :goto_5

    .line 50
    :cond_17
    new-instance v2, Lcom/shabakaty/downloader/as2;

    invoke-direct {v2, v4}, Lcom/shabakaty/downloader/as2;-><init>([Lcom/shabakaty/downloader/uq2;)V

    :cond_18
    move-object v6, v2

    .line 51
    iget-object v2, v1, Lcom/shabakaty/downloader/dp2;->e:Lcom/shabakaty/downloader/dp2$d;

    iget-wide v3, v2, Lcom/shabakaty/downloader/dp2$d;->a:J

    const-wide/16 v7, 0x0

    cmp-long v5, v3, v7

    if-nez v5, :cond_19

    iget-wide v7, v2, Lcom/shabakaty/downloader/dp2$d;->b:J

    const-wide/high16 v9, -0x8000000000000000L

    cmp-long v5, v7, v9

    if-nez v5, :cond_19

    iget-boolean v2, v2, Lcom/shabakaty/downloader/dp2$d;->d:Z

    if-nez v2, :cond_19

    goto :goto_6

    .line 52
    :cond_19
    new-instance v2, Lcom/shabakaty/downloader/v30;

    .line 53
    invoke-static {v3, v4}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v7

    iget-object v3, v1, Lcom/shabakaty/downloader/dp2;->e:Lcom/shabakaty/downloader/dp2$d;

    iget-wide v3, v3, Lcom/shabakaty/downloader/dp2$d;->b:J

    .line 54
    invoke-static {v3, v4}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v9

    iget-object v3, v1, Lcom/shabakaty/downloader/dp2;->e:Lcom/shabakaty/downloader/dp2$d;

    iget-boolean v4, v3, Lcom/shabakaty/downloader/dp2$d;->e:Z

    xor-int/lit8 v11, v4, 0x1

    iget-boolean v12, v3, Lcom/shabakaty/downloader/dp2$d;->c:Z

    iget-boolean v13, v3, Lcom/shabakaty/downloader/dp2$d;->d:Z

    move-object v5, v2

    invoke-direct/range {v5 .. v13}, Lcom/shabakaty/downloader/v30;-><init>(Lcom/shabakaty/downloader/uq2;JJZZZ)V

    move-object v6, v2

    .line 55
    :goto_6
    iget-object v2, v1, Lcom/shabakaty/downloader/dp2;->b:Lcom/shabakaty/downloader/dp2$g;

    .line 56
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v1, v1, Lcom/shabakaty/downloader/dp2;->b:Lcom/shabakaty/downloader/dp2$g;

    iget-object v1, v1, Lcom/shabakaty/downloader/dp2$g;->d:Lcom/shabakaty/downloader/dp2$b;

    if-nez v1, :cond_1a

    goto :goto_7

    :cond_1a
    const-string v1, "DefaultMediaSourceFactory"

    const-string v2, "Playing media without ads. Configure ad support by calling setAdsLoaderProvider and setAdViewProvider."

    .line 58
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    return-object v6

    :sswitch_data_0
    .sparse-switch
        -0x3a5c4caa -> :sswitch_3
        -0x957ced0 -> :sswitch_2
        0x3d3887d -> :sswitch_1
        0x44d481f3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
