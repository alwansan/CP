.class public final Lcom/shabakaty/downloader/dx5;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final synthetic b:Lcom/shabakaty/downloader/ww5;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ww5;Ljava/lang/String;JLcom/shabakaty/downloader/ml3;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/dx5;->b:Lcom/shabakaty/downloader/ww5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    const-wide/16 v0, 0x0

    cmp-long p1, p3, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/a;->a(Z)V

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/dx5;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/dx5;->b:Lcom/shabakaty/downloader/ww5;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/ww5;->v:Landroid/content/SharedPreferences;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/dx5;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":start"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 4
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/dx5;->b:Lcom/shabakaty/downloader/ww5;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/fq1;->q1()Lcom/shabakaty/downloader/x30;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/mn0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 7
    iget-object v4, p0, Lcom/shabakaty/downloader/dx5;->b:Lcom/shabakaty/downloader/ww5;

    .line 8
    iget-object v4, v4, Lcom/shabakaty/downloader/ww5;->v:Landroid/content/SharedPreferences;

    .line 9
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 10
    invoke-virtual {p0}, Lcom/shabakaty/downloader/dx5;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 11
    invoke-virtual {p0}, Lcom/shabakaty/downloader/dx5;->c()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 12
    iget-object v5, p0, Lcom/shabakaty/downloader/dx5;->a:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ":start"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 13
    invoke-interface {v4, v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 14
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    .line 15
    :cond_1
    monitor-enter p0

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/dx5;->b:Lcom/shabakaty/downloader/ww5;

    .line 17
    iget-object v0, v0, Lcom/shabakaty/downloader/ww5;->v:Landroid/content/SharedPreferences;

    .line 18
    invoke-virtual {p0}, Lcom/shabakaty/downloader/dx5;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v4, 0x1

    cmp-long v6, v0, v2

    if-gtz v6, :cond_2

    .line 19
    iget-object v0, p0, Lcom/shabakaty/downloader/dx5;->b:Lcom/shabakaty/downloader/ww5;

    .line 20
    iget-object v0, v0, Lcom/shabakaty/downloader/ww5;->v:Landroid/content/SharedPreferences;

    .line 21
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 22
    invoke-virtual {p0}, Lcom/shabakaty/downloader/dx5;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 23
    invoke-virtual {p0}, Lcom/shabakaty/downloader/dx5;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 24
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 25
    monitor-exit p0

    return-void

    .line 26
    :cond_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    .line 27
    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    const-wide v6, 0x7fffffffffffffffL

    and-long/2addr v2, v6

    add-long/2addr v0, v4

    .line 28
    div-long/2addr v6, v0

    cmp-long v4, v2, v6

    if-gez v4, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 29
    :goto_0
    iget-object v3, p0, Lcom/shabakaty/downloader/dx5;->b:Lcom/shabakaty/downloader/ww5;

    .line 30
    iget-object v3, v3, Lcom/shabakaty/downloader/ww5;->v:Landroid/content/SharedPreferences;

    .line 31
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    if-eqz v2, :cond_4

    .line 32
    invoke-virtual {p0}, Lcom/shabakaty/downloader/dx5;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 33
    :cond_4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/dx5;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 34
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 35
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/dx5;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":count"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/dx5;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
