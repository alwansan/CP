.class public synthetic Lcom/shabakaty/downloader/su;
.super Ljava/lang/Object;


# static fields
.field public static synthetic a:[I

.field public static synthetic b:[I

.field public static synthetic c:[I

.field public static synthetic d:[I

.field public static synthetic e:[I

.field public static synthetic f:[I

.field public static synthetic g:[I

.field public static synthetic h:[I


# direct methods
.method public static synthetic A(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "data"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "https"

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string p0, "http"

    return-object p0

    :cond_2
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic B(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/16 p0, 0x60

    return p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/16 p0, 0x200

    return p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const/4 p0, -0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic C(Ljava/lang/String;)I
    .locals 2

    const-string v0, "Name is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "AUTO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, "TEXT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const-string v0, "BYTE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const-string v0, "NUMERIC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No enum constant com.google.zxing.pdf417.encoder.Compaction."

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic declared-synchronized a()[I
    .locals 2

    const-class v0, Lcom/shabakaty/downloader/su;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/su;->a:[I

    if-nez v1, :cond_0

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/shabakaty/downloader/su;->l(I)[I

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/su;->a:[I

    :cond_0
    sget-object v1, Lcom/shabakaty/downloader/su;->a:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static synthetic declared-synchronized b()[I
    .locals 2

    const-class v0, Lcom/shabakaty/downloader/su;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/su;->b:[I

    if-nez v1, :cond_0

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/shabakaty/downloader/su;->l(I)[I

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/su;->b:[I

    :cond_0
    sget-object v1, Lcom/shabakaty/downloader/su;->b:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static synthetic declared-synchronized c()[I
    .locals 2

    const-class v0, Lcom/shabakaty/downloader/su;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/su;->c:[I

    if-nez v1, :cond_0

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/shabakaty/downloader/su;->l(I)[I

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/su;->c:[I

    :cond_0
    sget-object v1, Lcom/shabakaty/downloader/su;->c:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static com$google$firebase$perf$util$Constants$CounterNames$s$values()[I
    .locals 1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/su;->a()[I

    move-result-object v0

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static com$google$firebase$perf$util$Constants$TraceNames$s$values()[I
    .locals 1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/su;->b()[I

    move-result-object v0

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static com$google$zxing$pdf417$encoder$Compaction$s$valueOf(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/su;->C(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static com$onesignal$OSInAppMessageAction$OSInAppMessageActionUrlType$s$values()[I
    .locals 1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/su;->c()[I

    move-result-object v0

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static com$onesignal$OSUtils$SchemaType$s$values()[I
    .locals 1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/su;->d()[I

    move-result-object v0

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static com$shabakaty$cinemana$domain$models$local$WatchStatus$s$values()[I
    .locals 1

    invoke-static {}, Lcom/shabakaty/downloader/su;->e()[I

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static synthetic declared-synchronized d()[I
    .locals 2

    const-class v0, Lcom/shabakaty/downloader/su;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/su;->d:[I

    if-nez v1, :cond_0

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/shabakaty/downloader/su;->l(I)[I

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/su;->d:[I

    :cond_0
    sget-object v1, Lcom/shabakaty/downloader/su;->d:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static synthetic declared-synchronized e()[I
    .locals 2

    const-class v0, Lcom/shabakaty/downloader/su;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/su;->e:[I

    if-nez v1, :cond_0

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/shabakaty/downloader/su;->l(I)[I

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/su;->e:[I

    :cond_0
    sget-object v1, Lcom/shabakaty/downloader/su;->e:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static synthetic declared-synchronized f()[I
    .locals 2

    const-class v0, Lcom/shabakaty/downloader/su;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/su;->f:[I

    if-nez v1, :cond_0

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/shabakaty/downloader/su;->l(I)[I

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/su;->f:[I

    :cond_0
    sget-object v1, Lcom/shabakaty/downloader/su;->f:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static synthetic declared-synchronized g()[I
    .locals 2

    const-class v0, Lcom/shabakaty/downloader/su;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/su;->g:[I

    if-nez v1, :cond_0

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/shabakaty/downloader/su;->l(I)[I

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/su;->g:[I

    :cond_0
    sget-object v1, Lcom/shabakaty/downloader/su;->g:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static synthetic declared-synchronized h()[I
    .locals 2

    const-class v0, Lcom/shabakaty/downloader/su;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/su;->h:[I

    if-nez v1, :cond_0

    const/16 v1, 0xc

    invoke-static {v1}, Lcom/shabakaty/downloader/su;->l(I)[I

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/su;->h:[I

    :cond_0
    sget-object v1, Lcom/shabakaty/downloader/su;->h:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static synthetic i(II)I
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    sub-int/2addr p0, p1

    return p0

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic j(II)Z
    .locals 0

    if-eqz p0, :cond_1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    const/4 p0, 0x0

    throw p0
.end method

.method public static javax$jmdns$impl$constants$DNSLabel$s$values()[I
    .locals 1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/su;->f()[I

    move-result-object v0

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static javax$jmdns$impl$constants$DNSOptionCode$s$values()[I
    .locals 1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/su;->g()[I

    move-result-object v0

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static javax$jmdns$impl$constants$DNSResultCode$s$values()[I
    .locals 1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/su;->h()[I

    move-result-object v0

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static synthetic k(I)I
    .locals 0

    if-eqz p0, :cond_0

    add-int/lit8 p0, p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic l(I)[I
    .locals 3

    new-array v0, p0, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    add-int/lit8 v2, v1, 0x1

    aput v2, v0, v1

    move v1, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static synthetic m(I)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static n(I)Z
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic o(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "NONE"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "FATAL"

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string p0, "ERROR"

    return-object p0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const-string p0, "WARN"

    return-object p0

    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    const-string p0, "INFO"

    return-object p0

    :cond_4
    const/4 v0, 0x6

    if-ne p0, v0, :cond_5

    const-string p0, "DEBUG"

    return-object p0

    :cond_5
    const/4 v0, 0x7

    if-ne p0, v0, :cond_6

    const-string p0, "VERBOSE"

    return-object p0

    :cond_6
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic p(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/16 p0, 0x80

    return p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const/16 p0, 0xc0

    return p0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const/16 p0, 0x40

    return p0

    :cond_3
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic q(I)I
    .locals 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const p0, 0xffff

    return p0

    :cond_0
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    return v1

    :cond_2
    const/4 v1, 0x4

    if-ne p0, v1, :cond_3

    return v0

    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic r(I)I
    .locals 3

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const p0, 0xffff

    return p0

    :cond_0
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 v2, 0x3

    if-ne p0, v2, :cond_2

    return v0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    return v1

    :cond_3
    const/4 v1, 0x5

    if-ne p0, v1, :cond_4

    return v2

    :cond_4
    const/4 v2, 0x6

    if-ne p0, v2, :cond_5

    return v0

    :cond_5
    const/4 v0, 0x7

    if-ne p0, v0, :cond_6

    return v1

    :cond_6
    const/16 v1, 0x8

    if-ne p0, v1, :cond_7

    return v2

    :cond_7
    const/16 v2, 0x9

    if-ne p0, v2, :cond_8

    return v0

    :cond_8
    const/16 v0, 0xa

    if-ne p0, v0, :cond_9

    return v1

    :cond_9
    const/16 v1, 0xb

    if-ne p0, v1, :cond_a

    return v2

    :cond_a
    const/16 v1, 0xc

    if-ne p0, v1, :cond_b

    return v0

    :cond_b
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic s(I)I
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    const/4 v2, 0x2

    if-ne p0, v2, :cond_1

    return v1

    :cond_1
    if-ne p0, v0, :cond_2

    return v2

    :cond_2
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic t(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/16 p0, 0x60

    return p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/16 p0, 0x180

    return p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const/4 p0, -0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic u(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    return v0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic v(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    const/4 v2, 0x2

    if-ne p0, v2, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x3

    if-ne p0, v2, :cond_2

    return v0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic w(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    const/4 v2, 0x2

    if-ne p0, v2, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic x(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "_fstec"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "_fsntc"

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string p0, "_tsns"

    return-object p0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const-string p0, "_fr_tot"

    return-object p0

    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    const-string p0, "_fr_slo"

    return-object p0

    :cond_4
    const/4 v0, 0x6

    if-ne p0, v0, :cond_5

    const-string p0, "_fr_fzn"

    return-object p0

    :cond_5
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic y(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "_as"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "_astui"

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string p0, "_astfd"

    return-object p0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const-string p0, "_asti"

    return-object p0

    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    const-string p0, "_fs"

    return-object p0

    :cond_4
    const/4 v0, 0x6

    if-ne p0, v0, :cond_5

    const-string p0, "_bs"

    return-object p0

    :cond_5
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic z(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "webview"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "browser"

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string p0, "replacement"

    return-object p0

    :cond_2
    const/4 p0, 0x0

    throw p0
.end method
