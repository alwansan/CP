.class public final Lcom/shabakaty/downloader/de5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# instance fields
.field public a:Lcom/shabakaty/downloader/br3;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static n(J)Ljava/lang/String;
    .locals 5

    const-wide/16 v0, 0x3e8

    const-wide/16 v2, 0x0

    cmp-long v4, p0, v2

    if-ltz v4, :cond_0

    .line 1
    div-long/2addr p0, v0

    invoke-static {p0, p1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v2, "-"

    neg-long p0, p0

    .line 2
    div-long/2addr p0, v0

    invoke-static {p0, p1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/de5;->a:Lcom/shabakaty/downloader/br3;

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->h()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/de5;->a:Lcom/shabakaty/downloader/br3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/de5;->a:Lcom/shabakaty/downloader/br3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/de5;->a:Lcom/shabakaty/downloader/br3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->c()Lcom/shabakaty/downloader/sp2;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/sp2;->r:Lcom/google/android/gms/cast/MediaInfo;

    if-eqz v0, :cond_5

    .line 6
    iget-wide v3, v0, Lcom/google/android/gms/cast/MediaInfo;->v:J

    .line 7
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/de5;->a:Lcom/shabakaty/downloader/br3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->g()J

    move-result-wide v3

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/de5;->i()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/de5;->k()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/shabakaty/downloader/de5;->a:Lcom/shabakaty/downloader/br3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->b()J

    move-result-wide v3

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 14
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/de5;->g()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-int v0, v1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final b()Lcom/shabakaty/downloader/ip2;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/de5;->a:Lcom/shabakaty/downloader/br3;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->h()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/de5;->a:Lcom/shabakaty/downloader/br3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->d()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/cast/MediaInfo;->u:Lcom/shabakaty/downloader/ip2;

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public final c(J)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/de5;->a:Lcom/shabakaty/downloader/br3;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->h()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/de5;->a:Lcom/shabakaty/downloader/br3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->o()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/de5;->f()I

    move-result v0

    int-to-long v2, v0

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/de5;->g()J

    move-result-wide v4

    add-long/2addr v4, v2

    sub-long/2addr v4, p1

    const-wide/16 p1, 0x2710

    cmp-long v0, v4, p1

    if-gez v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public final d()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/de5;->a:Lcom/shabakaty/downloader/br3;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->h()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/de5;->a:Lcom/shabakaty/downloader/br3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->j()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/de5;->a:Lcom/shabakaty/downloader/br3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/de5;->a:Lcom/shabakaty/downloader/br3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->b()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/shabakaty/downloader/de5;->g()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v0, v2

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/de5;->a:Lcom/shabakaty/downloader/br3;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/br3;->o()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/de5;->e()I

    move-result v2

    invoke-virtual {p0}, Lcom/shabakaty/downloader/de5;->f()I

    move-result v3

    .line 6
    invoke-static {v0, v2, v3}, Lcom/shabakaty/downloader/yw;->g(III)I

    move-result v0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/de5;->a()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/yw;->g(III)I

    move-result v0

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public final e()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/de5;->a:Lcom/shabakaty/downloader/br3;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/de5;->a:Lcom/shabakaty/downloader/br3;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/de5;->a:Lcom/shabakaty/downloader/br3;

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->o()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/de5;->j()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/shabakaty/downloader/de5;->g()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v0, v2

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/de5;->a()I

    move-result v2

    .line 7
    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/yw;->g(III)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public final f()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/de5;->a:Lcom/shabakaty/downloader/br3;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/shabakaty/downloader/de5;->a:Lcom/shabakaty/downloader/br3;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->j()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/de5;->a:Lcom/shabakaty/downloader/br3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->o()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/de5;->k()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/shabakaty/downloader/de5;->g()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v0, v2

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/de5;->a()I

    move-result v2

    .line 7
    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/yw;->g(III)I

    move-result v0

    return v0

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/de5;->a()I

    move-result v0

    return v0
.end method

.method public final g()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/de5;->a:Lcom/shabakaty/downloader/br3;

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/shabakaty/downloader/de5;->a:Lcom/shabakaty/downloader/br3;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->j()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/de5;->h()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/de5;->j()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/de5;->a:Lcom/shabakaty/downloader/br3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->b()J

    move-result-wide v0

    return-wide v0

    :cond_3
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final h()Ljava/lang/Long;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/de5;->a:Lcom/shabakaty/downloader/br3;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/shabakaty/downloader/de5;->a:Lcom/shabakaty/downloader/br3;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->j()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/de5;->a:Lcom/shabakaty/downloader/br3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->d()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/de5;->b()Lcom/shabakaty/downloader/ip2;

    move-result-object v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 6
    iget-object v0, v1, Lcom/shabakaty/downloader/ip2;->s:Landroid/os/Bundle;

    const-string v2, "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_MEDIA"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, v1, Lcom/shabakaty/downloader/ip2;->s:Landroid/os/Bundle;

    const-string v3, "com.google.android.gms.cast.metadata.SECTION_DURATION"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/de5;->a:Lcom/shabakaty/downloader/br3;

    .line 9
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x5

    .line 10
    invoke-static {v2, v0}, Lcom/shabakaty/downloader/ip2;->F1(Ljava/lang/String;I)V

    .line 11
    iget-object v0, v1, Lcom/shabakaty/downloader/ip2;->s:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final i()Ljava/lang/Long;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/de5;->a:Lcom/shabakaty/downloader/br3;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/de5;->a:Lcom/shabakaty/downloader/br3;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->j()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/de5;->b()Lcom/shabakaty/downloader/ip2;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, v0, Lcom/shabakaty/downloader/ip2;->s:Landroid/os/Bundle;

    const-string v2, "com.google.android.gms.cast.metadata.SECTION_DURATION"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/de5;->h()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v1, 0x5

    .line 8
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/ip2;->F1(Ljava/lang/String;I)V

    .line 9
    iget-object v0, v0, Lcom/shabakaty/downloader/ip2;->s:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    add-long/2addr v3, v0

    .line 10
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final j()Ljava/lang/Long;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/de5;->a:Lcom/shabakaty/downloader/br3;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/shabakaty/downloader/de5;->a:Lcom/shabakaty/downloader/br3;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/shabakaty/downloader/de5;->a:Lcom/shabakaty/downloader/br3;

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->o()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/de5;->a:Lcom/shabakaty/downloader/br3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->e()Lcom/shabakaty/downloader/dr2;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/dr2;->L:Lcom/shabakaty/downloader/ep2;

    if-eqz v0, :cond_5

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/de5;->a:Lcom/shabakaty/downloader/br3;

    .line 8
    iget-object v2, v0, Lcom/shabakaty/downloader/br3;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string v1, "Must be called from the main thread."

    .line 9
    invoke-static {v1}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 10
    iget-object v3, v0, Lcom/shabakaty/downloader/br3;->c:Lcom/shabakaty/downloader/oh5;

    .line 11
    iget-object v0, v3, Lcom/shabakaty/downloader/oh5;->f:Lcom/shabakaty/downloader/dr2;

    const-wide/16 v4, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    iget-object v0, v0, Lcom/shabakaty/downloader/dr2;->L:Lcom/shabakaty/downloader/ep2;

    if-nez v0, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    iget-wide v6, v0, Lcom/shabakaty/downloader/ep2;->r:J

    .line 14
    iget-boolean v1, v0, Lcom/shabakaty/downloader/ep2;->t:Z

    if-eqz v1, :cond_3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v8, -0x1

    .line 15
    invoke-virtual/range {v3 .. v9}, Lcom/shabakaty/downloader/oh5;->h(DJJ)J

    move-result-wide v3

    move-wide v4, v3

    goto :goto_0

    :cond_3
    move-wide v4, v6

    .line 16
    :goto_0
    iget-boolean v1, v0, Lcom/shabakaty/downloader/ep2;->u:Z

    if-eqz v1, :cond_4

    .line 17
    iget-wide v0, v0, Lcom/shabakaty/downloader/ep2;->s:J

    .line 18
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 19
    :cond_4
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 21
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    :goto_2
    return-object v1
.end method

.method public final k()Ljava/lang/Long;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/de5;->a:Lcom/shabakaty/downloader/br3;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/de5;->a:Lcom/shabakaty/downloader/br3;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/de5;->a:Lcom/shabakaty/downloader/br3;

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->o()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/de5;->a:Lcom/shabakaty/downloader/br3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->e()Lcom/shabakaty/downloader/dr2;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/dr2;->L:Lcom/shabakaty/downloader/ep2;

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/de5;->a:Lcom/shabakaty/downloader/br3;

    .line 8
    iget-object v2, v0, Lcom/shabakaty/downloader/br3;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string v1, "Must be called from the main thread."

    .line 9
    invoke-static {v1}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 10
    iget-object v0, v0, Lcom/shabakaty/downloader/br3;->c:Lcom/shabakaty/downloader/oh5;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/oh5;->c()J

    move-result-wide v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 12
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public final l()Ljava/lang/Long;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/de5;->a:Lcom/shabakaty/downloader/br3;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/de5;->a:Lcom/shabakaty/downloader/br3;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->j()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/de5;->a:Lcom/shabakaty/downloader/br3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->d()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-wide v2, v0, Lcom/google/android/gms/cast/MediaInfo;->D:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 6
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public final m(J)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/de5;->a:Lcom/shabakaty/downloader/br3;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->h()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/rt5;->a:[I

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/de5;->a:Lcom/shabakaty/downloader/br3;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/shabakaty/downloader/br3;->h()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/shabakaty/downloader/de5;->a:Lcom/shabakaty/downloader/br3;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/br3;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/de5;->l()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    sub-int/2addr v2, v4

    .line 6
    aget v0, v0, v2

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_3

    return-object v1

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/shabakaty/downloader/de5;->a:Lcom/shabakaty/downloader/br3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/shabakaty/downloader/de5;->h()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_4

    .line 8
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/de5;->n(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 9
    :cond_4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/de5;->g()J

    move-result-wide v0

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/de5;->n(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 10
    :cond_5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/de5;->l()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 11
    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    move-result-object p1

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_2
    return-object v1
.end method
