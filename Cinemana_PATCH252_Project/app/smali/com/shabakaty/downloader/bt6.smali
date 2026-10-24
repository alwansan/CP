.class public final Lcom/shabakaty/downloader/bt6;
.super Lcom/shabakaty/downloader/uv6;
.source "com.google.android.gms:play-services-measurement@@19.0.1"


# instance fields
.field public d:Ljava/lang/String;

.field public e:Z

.field public f:J

.field public final g:Lcom/shabakaty/downloader/f96;

.field public final h:Lcom/shabakaty/downloader/f96;

.field public final i:Lcom/shabakaty/downloader/f96;

.field public final j:Lcom/shabakaty/downloader/f96;

.field public final k:Lcom/shabakaty/downloader/f96;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/uw6;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/uv6;-><init>(Lcom/shabakaty/downloader/uw6;)V

    new-instance p1, Lcom/shabakaty/downloader/f96;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->u()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "last_delete_stale"

    const-wide/16 v2, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/shabakaty/downloader/f96;-><init>(Lcom/google/android/gms/measurement/internal/c;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/shabakaty/downloader/bt6;->g:Lcom/shabakaty/downloader/f96;

    new-instance p1, Lcom/shabakaty/downloader/f96;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->u()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "backoff"

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/shabakaty/downloader/f96;-><init>(Lcom/google/android/gms/measurement/internal/c;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/shabakaty/downloader/bt6;->h:Lcom/shabakaty/downloader/f96;

    new-instance p1, Lcom/shabakaty/downloader/f96;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->u()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "last_upload"

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/shabakaty/downloader/f96;-><init>(Lcom/google/android/gms/measurement/internal/c;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/shabakaty/downloader/bt6;->i:Lcom/shabakaty/downloader/f96;

    new-instance p1, Lcom/shabakaty/downloader/f96;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->u()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "last_upload_attempt"

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/shabakaty/downloader/f96;-><init>(Lcom/google/android/gms/measurement/internal/c;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/shabakaty/downloader/bt6;->j:Lcom/shabakaty/downloader/f96;

    new-instance p1, Lcom/shabakaty/downloader/f96;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->u()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "midnight_offset"

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/shabakaty/downloader/f96;-><init>(Lcom/google/android/gms/measurement/internal/c;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/shabakaty/downloader/bt6;->k:Lcom/shabakaty/downloader/f96;

    return-void
.end method


# virtual methods
.method public final h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final i(Ljava/lang/String;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, ""

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->e()V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 2
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d;->n:Lcom/shabakaty/downloader/x30;

    .line 3
    check-cast v1, Lcom/shabakaty/downloader/mn0;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 5
    iget-object v3, p0, Lcom/shabakaty/downloader/bt6;->d:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-wide v4, p0, Lcom/shabakaty/downloader/bt6;->f:J

    cmp-long v6, v1, v4

    if-ltz v6, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Landroid/util/Pair;

    iget-boolean v0, p0, Lcom/shabakaty/downloader/bt6;->e:Z

    .line 7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 8
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 9
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/d;->g:Lcom/shabakaty/downloader/hg5;

    .line 10
    sget-object v4, Lcom/shabakaty/downloader/d46;->b:Lcom/shabakaty/downloader/z36;

    .line 11
    invoke-virtual {v3, p1, v4}, Lcom/shabakaty/downloader/hg5;->r(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)J

    move-result-wide v3

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/shabakaty/downloader/bt6;->f:J

    .line 12
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 13
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/d;->a:Landroid/content/Context;

    .line 14
    invoke-static {p1}, Lcom/shabakaty/downloader/v4;->b(Landroid/content/Context;)Lcom/shabakaty/downloader/v4$a;

    move-result-object p1

    iput-object v0, p0, Lcom/shabakaty/downloader/bt6;->d:Ljava/lang/String;

    .line 15
    iget-object v1, p1, Lcom/shabakaty/downloader/v4$a;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 16
    iput-object v1, p0, Lcom/shabakaty/downloader/bt6;->d:Ljava/lang/String;

    .line 17
    :cond_2
    iget-boolean p1, p1, Lcom/shabakaty/downloader/v4$a;->b:Z

    .line 18
    iput-boolean p1, p0, Lcom/shabakaty/downloader/bt6;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 21
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b;->m:Lcom/shabakaty/downloader/s66;

    const-string v2, "Unable to get advertising id"

    .line 22
    invoke-virtual {v1, v2, p1}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/bt6;->d:Ljava/lang/String;

    .line 23
    :goto_1
    new-instance p1, Landroid/util/Pair;

    iget-object v0, p0, Lcom/shabakaty/downloader/bt6;->d:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/shabakaty/downloader/bt6;->e:Z

    .line 24
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final j(Ljava/lang/String;Lcom/shabakaty/downloader/qg5;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/qg5;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/shabakaty/downloader/qg5;->f()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/bt6;->i(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Landroid/util/Pair;

    .line 3
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v0, ""

    invoke-direct {p1, v0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final n(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->e()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/bt6;->i(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string v0, "MD5"

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/f;->r(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/math/BigInteger;

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    invoke-direct {v4, v2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 p1, 0x0

    aput-object v4, v3, p1

    const-string p1, "%032X"

    invoke-static {v1, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
