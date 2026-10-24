.class public final Lcom/google/android/exoplayer2/source/dash/DashMediaSource$e;
.super Ljava/lang/Object;
.source "DashMediaSource.java"

# interfaces
.implements Lcom/shabakaty/downloader/ij2$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/ij2$b<",
        "Lcom/shabakaty/downloader/ra3<",
        "Lcom/shabakaty/downloader/zk0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;Lcom/google/android/exoplayer2/source/dash/DashMediaSource$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$e;->r:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public f(Lcom/shabakaty/downloader/ij2$e;JJLjava/io/IOException;I)Lcom/shabakaty/downloader/ij2$c;
    .locals 17

    move-object/from16 v0, p6

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lcom/shabakaty/downloader/ra3;

    move-object/from16 v2, p0

    .line 2
    iget-object v3, v2, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$e;->r:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v14, Lcom/shabakaty/downloader/hj2;

    iget-wide v5, v1, Lcom/shabakaty/downloader/ra3;->a:J

    iget-object v7, v1, Lcom/shabakaty/downloader/ra3;->b:Lcom/shabakaty/downloader/yl0;

    .line 4
    iget-object v4, v1, Lcom/shabakaty/downloader/ra3;->d:Lcom/shabakaty/downloader/uc4;

    .line 5
    iget-object v8, v4, Lcom/shabakaty/downloader/uc4;->c:Landroid/net/Uri;

    .line 6
    iget-object v9, v4, Lcom/shabakaty/downloader/uc4;->d:Ljava/util/Map;

    .line 7
    iget-wide v12, v4, Lcom/shabakaty/downloader/uc4;->b:J

    move-object v4, v14

    move-wide/from16 v10, p2

    move-wide v15, v12

    move-wide/from16 v12, p4

    move-object v2, v14

    move-wide v14, v15

    .line 8
    invoke-direct/range {v4 .. v15}, Lcom/shabakaty/downloader/hj2;-><init>(JLcom/shabakaty/downloader/yl0;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 9
    iget-object v4, v3, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Lcom/shabakaty/downloader/gj2;

    check-cast v4, Lcom/shabakaty/downloader/po0;

    .line 10
    instance-of v4, v0, Lcom/shabakaty/downloader/pa3;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v4, :cond_1

    instance-of v4, v0, Ljava/io/FileNotFoundException;

    if-nez v4, :cond_1

    instance-of v4, v0, Lcom/shabakaty/downloader/fw1$a;

    if-nez v4, :cond_1

    instance-of v4, v0, Lcom/shabakaty/downloader/ij2$h;

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v4, p7, -0x1

    mul-int/lit16 v4, v4, 0x3e8

    const/16 v7, 0x1388

    .line 11
    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-long v7, v4

    goto :goto_1

    :cond_1
    :goto_0
    move-wide v7, v5

    :goto_1
    cmp-long v4, v7, v5

    if-nez v4, :cond_2

    .line 12
    sget-object v4, Lcom/shabakaty/downloader/ij2;->f:Lcom/shabakaty/downloader/ij2$c;

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 13
    invoke-static {v4, v7, v8}, Lcom/shabakaty/downloader/ij2;->c(ZJ)Lcom/shabakaty/downloader/ij2$c;

    move-result-object v4

    .line 14
    :goto_2
    invoke-virtual {v4}, Lcom/shabakaty/downloader/ij2$c;->a()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 15
    iget-object v6, v3, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->G:Lcom/shabakaty/downloader/yq2$a;

    iget v1, v1, Lcom/shabakaty/downloader/ra3;->c:I

    invoke-virtual {v6, v2, v1, v0, v5}, Lcom/shabakaty/downloader/yq2$a;->k(Lcom/shabakaty/downloader/hj2;ILjava/io/IOException;Z)V

    if-eqz v5, :cond_3

    .line 16
    iget-object v0, v3, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Lcom/shabakaty/downloader/gj2;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v4
.end method

.method public g(Lcom/shabakaty/downloader/ij2$e;JJ)V
    .locals 18

    move-wide/from16 v13, p2

    .line 1
    move-object/from16 v0, p1

    check-cast v0, Lcom/shabakaty/downloader/ra3;

    move-object/from16 v15, p0

    .line 2
    iget-object v11, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$e;->r:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v12, Lcom/shabakaty/downloader/hj2;

    iget-wide v2, v0, Lcom/shabakaty/downloader/ra3;->a:J

    iget-object v4, v0, Lcom/shabakaty/downloader/ra3;->b:Lcom/shabakaty/downloader/yl0;

    .line 4
    iget-object v1, v0, Lcom/shabakaty/downloader/ra3;->d:Lcom/shabakaty/downloader/uc4;

    .line 5
    iget-object v5, v1, Lcom/shabakaty/downloader/uc4;->c:Landroid/net/Uri;

    .line 6
    iget-object v6, v1, Lcom/shabakaty/downloader/uc4;->d:Ljava/util/Map;

    .line 7
    iget-wide v9, v1, Lcom/shabakaty/downloader/uc4;->b:J

    move-object v1, v12

    move-wide/from16 v7, p2

    move-wide/from16 v16, v9

    move-wide/from16 v9, p4

    move-object v15, v11

    move-object v13, v12

    move-wide/from16 v11, v16

    .line 8
    invoke-direct/range {v1 .. v12}, Lcom/shabakaty/downloader/hj2;-><init>(JLcom/shabakaty/downloader/yl0;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 9
    iget-object v1, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Lcom/shabakaty/downloader/gj2;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v1, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->G:Lcom/shabakaty/downloader/yq2$a;

    iget v2, v0, Lcom/shabakaty/downloader/ra3;->c:I

    invoke-virtual {v1, v13, v2}, Lcom/shabakaty/downloader/yq2$a;->g(Lcom/shabakaty/downloader/hj2;I)V

    .line 11
    iget-object v1, v0, Lcom/shabakaty/downloader/ra3;->f:Ljava/lang/Object;

    .line 12
    check-cast v1, Lcom/shabakaty/downloader/zk0;

    .line 13
    iget-object v2, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->X:Lcom/shabakaty/downloader/zk0;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/shabakaty/downloader/zk0;->c()I

    move-result v2

    .line 14
    :goto_0
    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/zk0;->b(I)Lcom/shabakaty/downloader/vb3;

    move-result-object v4

    iget-wide v4, v4, Lcom/shabakaty/downloader/vb3;->b:J

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_1

    .line 15
    iget-object v7, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->X:Lcom/shabakaty/downloader/zk0;

    .line 16
    invoke-virtual {v7, v6}, Lcom/shabakaty/downloader/zk0;->b(I)Lcom/shabakaty/downloader/vb3;

    move-result-object v7

    iget-wide v7, v7, Lcom/shabakaty/downloader/vb3;->b:J

    cmp-long v9, v7, v4

    if-gez v9, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 17
    :cond_1
    iget-boolean v4, v1, Lcom/shabakaty/downloader/zk0;->d:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_6

    sub-int v4, v2, v6

    .line 18
    invoke-virtual {v1}, Lcom/shabakaty/downloader/zk0;->c()I

    move-result v7

    if-le v4, v7, :cond_2

    const-string v4, "DashMediaSource"

    const-string v7, "Loaded out of sync manifest"

    .line 19
    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 20
    :cond_2
    iget-wide v7, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->d0:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v7, v9

    if-eqz v4, :cond_3

    iget-wide v9, v1, Lcom/shabakaty/downloader/zk0;->h:J

    const-wide/16 v11, 0x3e8

    mul-long v11, v11, v9

    cmp-long v4, v11, v7

    if-gtz v4, :cond_3

    const-string v4, "DashMediaSource"

    const/16 v11, 0x49

    const-string v12, "Loaded stale dynamic manifest: "

    const-string v13, ", "

    .line 21
    invoke-static {v11, v12, v9, v10, v13}, Lcom/shabakaty/downloader/af;->a(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 22
    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_5

    .line 23
    iget v1, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->c0:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->c0:I

    iget-object v2, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Lcom/shabakaty/downloader/gj2;

    iget v0, v0, Lcom/shabakaty/downloader/ra3;->c:I

    .line 24
    check-cast v2, Lcom/shabakaty/downloader/po0;

    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/po0;->b(I)I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 25
    iget v0, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->c0:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit16 v0, v0, 0x3e8

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    .line 26
    iget-object v2, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->T:Landroid/os/Handler;

    iget-object v3, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->L:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_9

    .line 27
    :cond_4
    new-instance v0, Lcom/shabakaty/downloader/bl0;

    invoke-direct {v0}, Lcom/shabakaty/downloader/bl0;-><init>()V

    iput-object v0, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->S:Ljava/io/IOException;

    goto/16 :goto_9

    .line 28
    :cond_5
    iput v3, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->c0:I

    .line 29
    :cond_6
    iput-object v1, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->X:Lcom/shabakaty/downloader/zk0;

    .line 30
    iget-boolean v4, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->Y:Z

    iget-boolean v1, v1, Lcom/shabakaty/downloader/zk0;->d:Z

    and-int/2addr v1, v4

    iput-boolean v1, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->Y:Z

    move-wide/from16 v7, p2

    sub-long v9, v7, p4

    .line 31
    iput-wide v9, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->Z:J

    .line 32
    iput-wide v7, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->a0:J

    .line 33
    iget-object v1, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->J:Ljava/lang/Object;

    monitor-enter v1

    .line 34
    :try_start_0
    iget-object v4, v0, Lcom/shabakaty/downloader/ra3;->b:Lcom/shabakaty/downloader/yl0;

    iget-object v4, v4, Lcom/shabakaty/downloader/yl0;->a:Landroid/net/Uri;

    iget-object v7, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->V:Landroid/net/Uri;

    if-ne v4, v7, :cond_7

    const/4 v3, 0x1

    :cond_7
    if-eqz v3, :cond_9

    .line 35
    iget-object v3, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->X:Lcom/shabakaty/downloader/zk0;

    iget-object v3, v3, Lcom/shabakaty/downloader/zk0;->k:Landroid/net/Uri;

    if-eqz v3, :cond_8

    goto :goto_4

    .line 36
    :cond_8
    iget-object v0, v0, Lcom/shabakaty/downloader/ra3;->d:Lcom/shabakaty/downloader/uc4;

    .line 37
    iget-object v3, v0, Lcom/shabakaty/downloader/uc4;->c:Landroid/net/Uri;

    .line 38
    :goto_4
    iput-object v3, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->V:Landroid/net/Uri;

    .line 39
    :cond_9
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_14

    .line 40
    iget-object v0, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->X:Lcom/shabakaty/downloader/zk0;

    iget-boolean v1, v0, Lcom/shabakaty/downloader/zk0;->d:Z

    if-eqz v1, :cond_13

    .line 41
    iget-object v0, v0, Lcom/shabakaty/downloader/zk0;->i:Lcom/shabakaty/downloader/qz2;

    if-eqz v0, :cond_12

    .line 42
    iget-object v1, v0, Lcom/shabakaty/downloader/qz2;->s:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "urn:mpeg:dash:utc:direct:2014"

    .line 43
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "urn:mpeg:dash:utc:direct:2012"

    .line 44
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_8

    :cond_a
    const-string v2, "urn:mpeg:dash:utc:http-iso:2014"

    .line 45
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "urn:mpeg:dash:utc:http-iso:2012"

    .line 46
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_7

    :cond_b
    const-string v2, "urn:mpeg:dash:utc:http-xsdate:2014"

    .line 47
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "urn:mpeg:dash:utc:http-xsdate:2012"

    .line 48
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_6

    :cond_c
    const-string v0, "urn:mpeg:dash:utc:ntp:2014"

    .line 49
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "urn:mpeg:dash:utc:ntp:2012"

    .line 50
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_5

    .line 51
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsupported UTC timing scheme"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->B(Ljava/io/IOException;)V

    goto :goto_9

    .line 52
    :cond_e
    :goto_5
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->z()V

    goto :goto_9

    .line 53
    :cond_f
    :goto_6
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$h;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$h;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource$a;)V

    invoke-virtual {v15, v0, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->E(Lcom/shabakaty/downloader/qz2;Lcom/shabakaty/downloader/ra3$a;)V

    goto :goto_9

    .line 54
    :cond_10
    :goto_7
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$d;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$d;-><init>()V

    invoke-virtual {v15, v0, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->E(Lcom/shabakaty/downloader/qz2;Lcom/shabakaty/downloader/ra3$a;)V

    goto :goto_9

    .line 55
    :cond_11
    :goto_8
    :try_start_1
    iget-object v0, v0, Lcom/shabakaty/downloader/qz2;->t:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/shabakaty/downloader/sy4;->K(Ljava/lang/String;)J

    move-result-wide v0

    .line 56
    iget-wide v2, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->a0:J

    sub-long/2addr v0, v2

    invoke-virtual {v15, v0, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->C(J)V
    :try_end_1
    .catch Lcom/shabakaty/downloader/pa3; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    .line 57
    invoke-virtual {v15, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->B(Ljava/io/IOException;)V

    goto :goto_9

    .line 58
    :cond_12
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->z()V

    goto :goto_9

    .line 59
    :cond_13
    invoke-virtual {v15, v5}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D(Z)V

    goto :goto_9

    .line 60
    :cond_14
    iget v0, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->e0:I

    add-int/2addr v0, v6

    iput v0, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->e0:I

    .line 61
    invoke-virtual {v15, v5}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D(Z)V

    :goto_9
    return-void

    :catchall_0
    move-exception v0

    .line 62
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public l(Lcom/shabakaty/downloader/ij2$e;JJZ)V
    .locals 6

    .line 1
    move-object v1, p1

    check-cast v1, Lcom/shabakaty/downloader/ra3;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$e;->r:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->A(Lcom/shabakaty/downloader/ra3;JJ)V

    return-void
.end method
