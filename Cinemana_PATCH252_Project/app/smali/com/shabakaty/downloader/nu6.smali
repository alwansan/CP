.class public final Lcom/shabakaty/downloader/nu6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.1"


# instance fields
.field public a:J

.field public b:J

.field public final c:Lcom/shabakaty/downloader/li5;

.field public final synthetic d:Lcom/shabakaty/downloader/su6;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/su6;)V
    .locals 2

    iput-object p1, p0, Lcom/shabakaty/downloader/nu6;->d:Lcom/shabakaty/downloader/su6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/shabakaty/downloader/ku6;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 1
    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/ku6;-><init>(Lcom/shabakaty/downloader/nu6;Lcom/shabakaty/downloader/pi6;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/nu6;->c:Lcom/shabakaty/downloader/li5;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/d;->n:Lcom/shabakaty/downloader/x30;

    .line 3
    check-cast p1, Lcom/shabakaty/downloader/mn0;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/shabakaty/downloader/nu6;->a:J

    iput-wide v0, p0, Lcom/shabakaty/downloader/nu6;->b:J

    return-void
.end method


# virtual methods
.method public final a(ZZJ)Z
    .locals 6

    iget-object v0, p0, Lcom/shabakaty/downloader/nu6;->d:Lcom/shabakaty/downloader/su6;

    .line 1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/d56;->e()V

    iget-object v0, p0, Lcom/shabakaty/downloader/nu6;->d:Lcom/shabakaty/downloader/su6;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka6;->f()V

    .line 3
    invoke-static {}, Lcom/shabakaty/downloader/y87;->c()Z

    iget-object v0, p0, Lcom/shabakaty/downloader/nu6;->d:Lcom/shabakaty/downloader/su6;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d;->g:Lcom/shabakaty/downloader/hg5;

    .line 5
    sget-object v1, Lcom/shabakaty/downloader/d46;->j0:Lcom/shabakaty/downloader/z36;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/shabakaty/downloader/hg5;->v(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/nu6;->d:Lcom/shabakaty/downloader/su6;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/nu6;->d:Lcom/shabakaty/downloader/su6;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->u()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    .line 8
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/c;->n:Lcom/shabakaty/downloader/f96;

    iget-object v1, p0, Lcom/shabakaty/downloader/nu6;->d:Lcom/shabakaty/downloader/su6;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 9
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d;->n:Lcom/shabakaty/downloader/x30;

    .line 10
    check-cast v1, Lcom/shabakaty/downloader/mn0;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 12
    invoke-virtual {v0, v3, v4}, Lcom/shabakaty/downloader/f96;->b(J)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/nu6;->d:Lcom/shabakaty/downloader/su6;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->u()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    .line 15
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/c;->n:Lcom/shabakaty/downloader/f96;

    iget-object v1, p0, Lcom/shabakaty/downloader/nu6;->d:Lcom/shabakaty/downloader/su6;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 16
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d;->n:Lcom/shabakaty/downloader/x30;

    .line 17
    check-cast v1, Lcom/shabakaty/downloader/mn0;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 19
    invoke-virtual {v0, v3, v4}, Lcom/shabakaty/downloader/f96;->b(J)V

    .line 20
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/nu6;->a:J

    sub-long v0, p3, v0

    if-nez p1, :cond_3

    const-wide/16 v3, 0x3e8

    cmp-long p1, v0, v3

    if-ltz p1, :cond_2

    goto :goto_1

    .line 21
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/nu6;->d:Lcom/shabakaty/downloader/su6;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object p1

    .line 23
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    .line 24
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "Screen exposed for less than 1000 ms. Event not sent. time"

    invoke-virtual {p1, p3, p2}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_1
    if-nez p2, :cond_4

    .line 25
    iget-wide v0, p0, Lcom/shabakaty/downloader/nu6;->b:J

    sub-long v0, p3, v0

    iput-wide p3, p0, Lcom/shabakaty/downloader/nu6;->b:J

    :cond_4
    iget-object p1, p0, Lcom/shabakaty/downloader/nu6;->d:Lcom/shabakaty/downloader/su6;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object p1

    .line 27
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    .line 28
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Recording user engagement, ms"

    invoke-virtual {p1, v4, v3}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Landroid/os/Bundle;

    .line 29
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "_et"

    .line 30
    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/shabakaty/downloader/nu6;->d:Lcom/shabakaty/downloader/su6;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 31
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d;->g:Lcom/shabakaty/downloader/hg5;

    .line 32
    invoke-virtual {v0}, Lcom/shabakaty/downloader/hg5;->w()Z

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/downloader/nu6;->d:Lcom/shabakaty/downloader/su6;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->y()Lcom/shabakaty/downloader/aq6;

    move-result-object v1

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    .line 34
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/aq6;->o(Z)Lcom/shabakaty/downloader/jp6;

    move-result-object v0

    .line 35
    invoke-static {v0, p1, v3}, Lcom/google/android/gms/measurement/internal/f;->w(Lcom/shabakaty/downloader/jp6;Landroid/os/Bundle;Z)V

    iget-object v0, p0, Lcom/shabakaty/downloader/nu6;->d:Lcom/shabakaty/downloader/su6;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 36
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d;->g:Lcom/shabakaty/downloader/hg5;

    .line 37
    sget-object v1, Lcom/shabakaty/downloader/d46;->U:Lcom/shabakaty/downloader/z36;

    .line 38
    invoke-virtual {v0, v2, v1}, Lcom/shabakaty/downloader/hg5;->v(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p2, :cond_5

    const-wide/16 v4, 0x1

    const-string v0, "_fr"

    .line 39
    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_5
    iget-object v0, p0, Lcom/shabakaty/downloader/nu6;->d:Lcom/shabakaty/downloader/su6;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 40
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d;->g:Lcom/shabakaty/downloader/hg5;

    .line 41
    invoke-virtual {v0, v2, v1}, Lcom/shabakaty/downloader/hg5;->v(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez p2, :cond_7

    :cond_6
    iget-object p2, p0, Lcom/shabakaty/downloader/nu6;->d:Lcom/shabakaty/downloader/su6;

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 42
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/d;->w()Lcom/shabakaty/downloader/vn6;

    move-result-object p2

    const-string v0, "auto"

    const-string v1, "_e"

    .line 43
    invoke-virtual {p2, v0, v1, p1}, Lcom/shabakaty/downloader/vn6;->o(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_7
    iput-wide p3, p0, Lcom/shabakaty/downloader/nu6;->a:J

    iget-object p1, p0, Lcom/shabakaty/downloader/nu6;->c:Lcom/shabakaty/downloader/li5;

    .line 44
    invoke-virtual {p1}, Lcom/shabakaty/downloader/li5;->a()V

    iget-object p1, p0, Lcom/shabakaty/downloader/nu6;->c:Lcom/shabakaty/downloader/li5;

    const-wide/32 p2, 0x36ee80

    .line 45
    invoke-virtual {p1, p2, p3}, Lcom/shabakaty/downloader/li5;->c(J)V

    return v3
.end method
