.class public final synthetic Lcom/shabakaty/downloader/vj6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/vn6;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vn6;I)V
    .locals 1

    iput p2, p0, Lcom/shabakaty/downloader/vj6;->r:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/vj6;->s:Lcom/shabakaty/downloader/vn6;

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/shabakaty/downloader/vj6;->s:Lcom/shabakaty/downloader/vn6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget v0, p0, Lcom/shabakaty/downloader/vj6;->r:I

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_8

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/vj6;->s:Lcom/shabakaty/downloader/vn6;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/d56;->e()V

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 3
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/d;->u()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v6

    .line 4
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/c;->q:Lcom/shabakaty/downloader/u86;

    invoke-virtual {v6}, Lcom/shabakaty/downloader/u86;->b()Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 5
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/d;->u()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v6

    .line 6
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/c;->r:Lcom/shabakaty/downloader/f96;

    invoke-virtual {v6}, Lcom/shabakaty/downloader/f96;->a()J

    move-result-wide v6

    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 7
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/d;->u()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v8

    .line 8
    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/c;->r:Lcom/shabakaty/downloader/f96;

    add-long/2addr v4, v6

    invoke-virtual {v8, v4, v5}, Lcom/shabakaty/downloader/f96;->b(J)V

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 9
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v4, 0x5

    const/4 v8, 0x1

    cmp-long v9, v6, v4

    if-ltz v9, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 11
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b;->i:Lcom/shabakaty/downloader/s66;

    const-string v2, "Permanently failed to retrieve Deferred Deep Link. Reached maximum retries."

    .line 12
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->u()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    .line 14
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/c;->q:Lcom/shabakaty/downloader/u86;

    invoke-virtual {v0, v8}, Lcom/shabakaty/downloader/u86;->a(Z)V

    goto/16 :goto_7

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shabakaty/downloader/de6;->e()V

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->x()Lcom/shabakaty/downloader/io6;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/d;->j(Lcom/shabakaty/downloader/mi6;)V

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->r()Lcom/google/android/gms/measurement/internal/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/a;->j()Ljava/lang/String;

    move-result-object v4

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->u()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v5

    .line 19
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/e;->e()V

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 20
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/d;->n:Lcom/shabakaty/downloader/x30;

    .line 21
    check-cast v6, Lcom/shabakaty/downloader/mn0;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 23
    iget-object v9, v5, Lcom/google/android/gms/measurement/internal/c;->g:Ljava/lang/String;

    const-string v10, ""

    if-eqz v9, :cond_2

    iget-wide v11, v5, Lcom/google/android/gms/measurement/internal/c;->i:J

    cmp-long v13, v6, v11

    if-ltz v13, :cond_1

    goto :goto_0

    .line 24
    :cond_1
    new-instance v6, Landroid/util/Pair;

    iget-boolean v5, v5, Lcom/google/android/gms/measurement/internal/c;->h:Z

    .line 25
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v6, v9, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 26
    :cond_2
    :goto_0
    iget-object v9, v5, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 27
    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/d;->g:Lcom/shabakaty/downloader/hg5;

    .line 28
    sget-object v11, Lcom/shabakaty/downloader/d46;->b:Lcom/shabakaty/downloader/z36;

    .line 29
    invoke-virtual {v9, v4, v11}, Lcom/shabakaty/downloader/hg5;->r(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)J

    move-result-wide v11

    add-long/2addr v11, v6

    iput-wide v11, v5, Lcom/google/android/gms/measurement/internal/c;->i:J

    .line 30
    :try_start_0
    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 31
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/d;->a:Landroid/content/Context;

    .line 32
    invoke-static {v6}, Lcom/shabakaty/downloader/v4;->b(Landroid/content/Context;)Lcom/shabakaty/downloader/v4$a;

    move-result-object v6

    iput-object v10, v5, Lcom/google/android/gms/measurement/internal/c;->g:Ljava/lang/String;

    .line 33
    iget-object v7, v6, Lcom/shabakaty/downloader/v4$a;->a:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 34
    iput-object v7, v5, Lcom/google/android/gms/measurement/internal/c;->g:Ljava/lang/String;

    .line 35
    :cond_3
    iget-boolean v6, v6, Lcom/shabakaty/downloader/v4$a;->b:Z

    .line 36
    iput-boolean v6, v5, Lcom/google/android/gms/measurement/internal/c;->h:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    .line 37
    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 38
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v7

    .line 39
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/b;->m:Lcom/shabakaty/downloader/s66;

    const-string v9, "Unable to get advertising id"

    .line 40
    invoke-virtual {v7, v9, v6}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v10, v5, Lcom/google/android/gms/measurement/internal/c;->g:Ljava/lang/String;

    .line 41
    :goto_1
    new-instance v6, Landroid/util/Pair;

    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/c;->g:Ljava/lang/String;

    iget-boolean v5, v5, Lcom/google/android/gms/measurement/internal/c;->h:Z

    .line 42
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    :goto_2
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/d;->g:Lcom/shabakaty/downloader/hg5;

    .line 44
    invoke-virtual {v5}, Lcom/shabakaty/downloader/hg5;->u()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    .line 45
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/CharSequence;

    .line 46
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto/16 :goto_6

    .line 47
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->x()Lcom/shabakaty/downloader/io6;

    move-result-object v5

    invoke-virtual {v5}, Lcom/shabakaty/downloader/mi6;->h()V

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/d;->a:Landroid/content/Context;

    const-string v7, "connectivity"

    .line 48
    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    if-eqz v5, :cond_5

    .line 49
    :try_start_1
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    :cond_5
    move-object v5, v3

    :goto_3
    if-eqz v5, :cond_7

    .line 50
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 51
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->B()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v5

    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->r()Lcom/google/android/gms/measurement/internal/a;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/d;->g:Lcom/shabakaty/downloader/hg5;

    .line 53
    invoke-virtual {v7}, Lcom/shabakaty/downloader/hg5;->q()J

    .line 54
    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 55
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->u()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/c;->r:Lcom/shabakaty/downloader/f96;

    invoke-virtual {v7}, Lcom/shabakaty/downloader/f96;->a()J

    move-result-wide v11

    add-long/2addr v11, v1

    .line 56
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :try_start_2
    invoke-static {v6}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    invoke-static {v4}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/Object;

    const-wide/32 v13, 0xa471

    .line 59
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v13, 0x0

    aput-object v9, v7, v13

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/f;->l0()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const-string v9, "v%s.%s"

    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v13

    aput-object v6, v1, v8

    aput-object v4, v1, v2

    const/4 v2, 0x3

    .line 60
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v1, v2

    const-string v2, "https://www.googleadservices.com/pagead/conversion/app/deeplink?id_type=adid&sdk_version=%s&rdid=%s&bundleid=%s&retry=%s"

    .line 61
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v5, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 62
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d;->g:Lcom/shabakaty/downloader/hg5;

    const-string v6, "debug.deferred.deeplink"

    .line 63
    invoke-virtual {v2, v6, v10}, Lcom/shabakaty/downloader/hg5;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "&ddl_test=1"

    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    :cond_6
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v2

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    :goto_4
    iget-object v2, v5, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 67
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 68
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    .line 69
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v5, "Failed to create BOW URL for Deferred Deep Link. exception"

    invoke-virtual {v2, v5, v1}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_5
    if-eqz v3, :cond_a

    .line 70
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->x()Lcom/shabakaty/downloader/io6;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/e;

    invoke-direct {v2, v0, v8}, Lcom/google/android/gms/measurement/internal/e;-><init>(Lcom/google/android/gms/measurement/internal/d;I)V

    .line 71
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->e()V

    invoke-virtual {v1}, Lcom/shabakaty/downloader/mi6;->h()V

    .line 72
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 73
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v0

    new-instance v5, Lcom/shabakaty/downloader/fo6;

    .line 74
    invoke-direct {v5, v1, v4, v3, v2}, Lcom/shabakaty/downloader/fo6;-><init>(Lcom/shabakaty/downloader/io6;Ljava/lang/String;Ljava/net/URL;Lcom/google/android/gms/measurement/internal/e;)V

    .line 75
    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/de6;->q(Ljava/lang/Runnable;)V

    goto :goto_7

    .line 76
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 77
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->i:Lcom/shabakaty/downloader/s66;

    const-string v1, "Network is not available for Deferred Deep Link request. Skipping"

    .line 78
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    goto :goto_7

    .line 79
    :cond_8
    :goto_6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 80
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->m:Lcom/shabakaty/downloader/s66;

    const-string v1, "ADID unavailable to retrieve Deferred Deep Link. Skipping"

    .line 81
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    goto :goto_7

    .line 82
    :cond_9
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 83
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 84
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->m:Lcom/shabakaty/downloader/s66;

    const-string v1, "Deferred Deep Link already retrieved. Not fetching again."

    .line 85
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    :cond_a
    :goto_7
    return-void

    .line 86
    :goto_8
    iget-object v0, p0, Lcom/shabakaty/downloader/vj6;->s:Lcom/shabakaty/downloader/vn6;

    iget-object v0, v0, Lcom/shabakaty/downloader/vn6;->n:Lcom/shabakaty/downloader/id7;

    .line 87
    iget-object v6, v0, Lcom/shabakaty/downloader/id7;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 88
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/d;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v6

    invoke-virtual {v6}, Lcom/shabakaty/downloader/de6;->e()V

    .line 89
    invoke-virtual {v0}, Lcom/shabakaty/downloader/id7;->b()Z

    move-result v6

    if-nez v6, :cond_b

    goto/16 :goto_d

    .line 90
    :cond_b
    invoke-virtual {v0}, Lcom/shabakaty/downloader/id7;->c()Z

    move-result v6

    const-string v7, "_cc"

    if-eqz v6, :cond_c

    iget-object v1, v0, Lcom/shabakaty/downloader/id7;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 91
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->u()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/c;->t:Lcom/shabakaty/downloader/s96;

    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/s96;->b(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    .line 92
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "(not set)"

    const-string v3, "source"

    .line 93
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "medium"

    .line 94
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_cis"

    const-string v3, "intent"

    .line 95
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v1, v7, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v2, v0, Lcom/shabakaty/downloader/id7;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 97
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d;->w()Lcom/shabakaty/downloader/vn6;

    move-result-object v2

    const-string v3, "auto"

    const-string v4, "_cmpx"

    .line 98
    invoke-virtual {v2, v3, v4, v1}, Lcom/shabakaty/downloader/vn6;->o(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_c

    .line 99
    :cond_c
    iget-object v4, v0, Lcom/shabakaty/downloader/id7;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 100
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/d;->u()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/c;->t:Lcom/shabakaty/downloader/s96;

    invoke-virtual {v4}, Lcom/shabakaty/downloader/s96;->a()Ljava/lang/String;

    move-result-object v4

    .line 101
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v1, v0, Lcom/shabakaty/downloader/id7;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 102
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 103
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b;->g:Lcom/shabakaty/downloader/s66;

    const-string v2, "Cache still valid but referrer not found"

    .line 104
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    goto :goto_b

    .line 105
    :cond_d
    iget-object v5, v0, Lcom/shabakaty/downloader/id7;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 106
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/d;->u()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/c;->u:Lcom/shabakaty/downloader/f96;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/f96;->a()J

    move-result-wide v5

    const-wide/32 v8, 0x36ee80

    div-long/2addr v5, v8

    add-long/2addr v5, v1

    mul-long v5, v5, v8

    .line 107
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    .line 108
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v4, Landroid/util/Pair;

    .line 109
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    invoke-virtual {v1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 111
    invoke-virtual {v1, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 112
    :cond_e
    iget-object v1, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v1, v7, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 113
    iget-object v1, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v1, :cond_f

    const-string v1, "app"

    goto :goto_a

    .line 114
    :cond_f
    check-cast v1, Ljava/lang/String;

    .line 115
    :goto_a
    iget-object v2, v0, Lcom/shabakaty/downloader/id7;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 116
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d;->w()Lcom/shabakaty/downloader/vn6;

    move-result-object v2

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    const-string v5, "_cmp"

    .line 117
    invoke-virtual {v2, v1, v5, v4}, Lcom/shabakaty/downloader/vn6;->o(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 118
    :goto_b
    iget-object v1, v0, Lcom/shabakaty/downloader/id7;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 119
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->u()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/c;->t:Lcom/shabakaty/downloader/s96;

    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/s96;->b(Ljava/lang/String;)V

    .line 120
    :goto_c
    iget-object v0, v0, Lcom/shabakaty/downloader/id7;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 121
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->u()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/c;->u:Lcom/shabakaty/downloader/f96;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/f96;->b(J)V

    :goto_d
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
