.class public final Lcom/shabakaty/downloader/rn6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.1"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/vn6;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/vn6;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/rn6;->r:Lcom/shabakaty/downloader/vn6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/rn6;->r:Lcom/shabakaty/downloader/vn6;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    const-string v1, "onActivityCreated"

    .line 3
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/rn6;->r:Lcom/shabakaty/downloader/vn6;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 5
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->y()Lcom/shabakaty/downloader/aq6;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/aq6;->q(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void

    .line 7
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 8
    invoke-virtual {v4}, Landroid/net/Uri;->isHierarchical()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_5

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/rn6;->r:Lcom/shabakaty/downloader/vn6;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->B()Lcom/google/android/gms/measurement/internal/f;

    const-string v1, "android.intent.extra.REFERRER_NAME"

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android-app://com.google.android.googlequicksearchbox/https/www.google.com"

    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3

    const-string v1, "https://www.google.com"

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android-app://com.google.appcrawler"

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eq v3, v0, :cond_4

    const-string v0, "auto"

    goto :goto_3

    :cond_4
    const-string v0, "gs"

    :goto_3
    move-object v5, v0

    :try_start_2
    const-string v0, "referrer"

    .line 15
    invoke-virtual {v4, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez p2, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    iget-object v0, p0, Lcom/shabakaty/downloader/rn6;->r:Lcom/shabakaty/downloader/vn6;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v0

    new-instance v7, Lcom/shabakaty/downloader/jz5;

    move-object v1, v7

    move-object v2, p0

    .line 17
    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/jz5;-><init>(Lcom/shabakaty/downloader/rn6;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, v7}, Lcom/shabakaty/downloader/de6;->r(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/shabakaty/downloader/rn6;->r:Lcom/shabakaty/downloader/vn6;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    goto :goto_0

    .line 19
    :cond_6
    :goto_5
    iget-object v0, p0, Lcom/shabakaty/downloader/rn6;->r:Lcom/shabakaty/downloader/vn6;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    .line 20
    :goto_6
    :try_start_3
    iget-object v1, p0, Lcom/shabakaty/downloader/rn6;->r:Lcom/shabakaty/downloader/vn6;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 22
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v2, "Throwable caught in onActivityCreated"

    .line 23
    invoke-virtual {v1, v2, v0}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 24
    iget-object v0, p0, Lcom/shabakaty/downloader/rn6;->r:Lcom/shabakaty/downloader/vn6;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    goto/16 :goto_0

    .line 25
    :goto_7
    iget-object v1, p0, Lcom/shabakaty/downloader/rn6;->r:Lcom/shabakaty/downloader/vn6;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 26
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->y()Lcom/shabakaty/downloader/aq6;

    move-result-object v1

    .line 27
    invoke-virtual {v1, p1, p2}, Lcom/shabakaty/downloader/aq6;->q(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 28
    throw v0
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/downloader/rn6;->r:Lcom/shabakaty/downloader/vn6;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->y()Lcom/shabakaty/downloader/aq6;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/aq6;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/shabakaty/downloader/aq6;->g:Landroid/app/Activity;

    if-ne p1, v2, :cond_0

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/shabakaty/downloader/aq6;->g:Landroid/app/Activity;

    .line 3
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 4
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d;->g:Lcom/shabakaty/downloader/hg5;

    .line 5
    invoke-virtual {v1}, Lcom/shabakaty/downloader/hg5;->w()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/shabakaty/downloader/aq6;->f:Ljava/util/Map;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 6

    iget-object v0, p0, Lcom/shabakaty/downloader/rn6;->r:Lcom/shabakaty/downloader/vn6;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->y()Lcom/shabakaty/downloader/aq6;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/aq6;->l:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, v0, Lcom/shabakaty/downloader/aq6;->k:Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/shabakaty/downloader/aq6;->h:Z

    .line 3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 4
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d;->n:Lcom/shabakaty/downloader/x30;

    .line 5
    check-cast v1, Lcom/shabakaty/downloader/mn0;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 7
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 8
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d;->g:Lcom/shabakaty/downloader/hg5;

    .line 9
    invoke-virtual {v1}, Lcom/shabakaty/downloader/hg5;->w()Z

    move-result v1

    const/4 v5, 0x0

    if-nez v1, :cond_0

    iput-object v5, v0, Lcom/shabakaty/downloader/aq6;->c:Lcom/shabakaty/downloader/jp6;

    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d;->a()Lcom/shabakaty/downloader/de6;

    move-result-object p1

    new-instance v1, Lcom/shabakaty/downloader/kt5;

    .line 11
    invoke-direct {v1, v0, v3, v4}, Lcom/shabakaty/downloader/kt5;-><init>(Lcom/shabakaty/downloader/aq6;J)V

    .line 12
    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/de6;->r(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/aq6;->s(Landroid/app/Activity;)Lcom/shabakaty/downloader/jp6;

    move-result-object p1

    iget-object v1, v0, Lcom/shabakaty/downloader/aq6;->c:Lcom/shabakaty/downloader/jp6;

    iput-object v1, v0, Lcom/shabakaty/downloader/aq6;->d:Lcom/shabakaty/downloader/jp6;

    iput-object v5, v0, Lcom/shabakaty/downloader/aq6;->c:Lcom/shabakaty/downloader/jp6;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v1

    new-instance v5, Lcom/shabakaty/downloader/qd5;

    .line 15
    invoke-direct {v5, v0, p1, v3, v4}, Lcom/shabakaty/downloader/qd5;-><init>(Lcom/shabakaty/downloader/aq6;Lcom/shabakaty/downloader/jp6;J)V

    .line 16
    invoke-virtual {v1, v5}, Lcom/shabakaty/downloader/de6;->r(Ljava/lang/Runnable;)V

    .line 17
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/rn6;->r:Lcom/shabakaty/downloader/vn6;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d;->A()Lcom/shabakaty/downloader/su6;

    move-result-object p1

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 19
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d;->n:Lcom/shabakaty/downloader/x30;

    .line 20
    check-cast v0, Lcom/shabakaty/downloader/mn0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 22
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 23
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/d;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v3

    new-instance v4, Lcom/shabakaty/downloader/wt6;

    .line 24
    invoke-direct {v4, p1, v0, v1, v2}, Lcom/shabakaty/downloader/wt6;-><init>(Lcom/shabakaty/downloader/su6;JI)V

    .line 25
    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/de6;->r(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 26
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 6

    iget-object v0, p0, Lcom/shabakaty/downloader/rn6;->r:Lcom/shabakaty/downloader/vn6;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->A()Lcom/shabakaty/downloader/su6;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 2
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d;->n:Lcom/shabakaty/downloader/x30;

    .line 3
    check-cast v1, Lcom/shabakaty/downloader/mn0;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 5
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/d;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v3

    new-instance v4, Lcom/shabakaty/downloader/wt6;

    const/4 v5, 0x0

    .line 7
    invoke-direct {v4, v0, v1, v2, v5}, Lcom/shabakaty/downloader/wt6;-><init>(Lcom/shabakaty/downloader/su6;JI)V

    .line 8
    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/de6;->r(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/shabakaty/downloader/rn6;->r:Lcom/shabakaty/downloader/vn6;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->y()Lcom/shabakaty/downloader/aq6;

    move-result-object v0

    .line 10
    iget-object v1, v0, Lcom/shabakaty/downloader/aq6;->l:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v0, Lcom/shabakaty/downloader/aq6;->k:Z

    iget-object v3, v0, Lcom/shabakaty/downloader/aq6;->g:Landroid/app/Activity;

    if-eq p1, v3, :cond_0

    iget-object v3, v0, Lcom/shabakaty/downloader/aq6;->l:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-object p1, v0, Lcom/shabakaty/downloader/aq6;->g:Landroid/app/Activity;

    iput-boolean v5, v0, Lcom/shabakaty/downloader/aq6;->h:Z

    .line 11
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 12
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/d;->g:Lcom/shabakaty/downloader/hg5;

    .line 13
    invoke-virtual {v3}, Lcom/shabakaty/downloader/hg5;->w()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/shabakaty/downloader/aq6;->i:Lcom/shabakaty/downloader/jp6;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 14
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/d;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v3

    new-instance v4, Lcom/shabakaty/downloader/sp6;

    .line 15
    invoke-direct {v4, v0, v2}, Lcom/shabakaty/downloader/sp6;-><init>(Lcom/shabakaty/downloader/aq6;I)V

    .line 16
    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/de6;->r(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 17
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 18
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 19
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d;->g:Lcom/shabakaty/downloader/hg5;

    .line 20
    invoke-virtual {v1}, Lcom/shabakaty/downloader/hg5;->w()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, v0, Lcom/shabakaty/downloader/aq6;->i:Lcom/shabakaty/downloader/jp6;

    iput-object p1, v0, Lcom/shabakaty/downloader/aq6;->c:Lcom/shabakaty/downloader/jp6;

    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d;->a()Lcom/shabakaty/downloader/de6;

    move-result-object p1

    new-instance v1, Lcom/shabakaty/downloader/sp6;

    .line 22
    invoke-direct {v1, v0, v5}, Lcom/shabakaty/downloader/sp6;-><init>(Lcom/shabakaty/downloader/aq6;I)V

    .line 23
    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/de6;->r(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 24
    :cond_1
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/aq6;->s(Landroid/app/Activity;)Lcom/shabakaty/downloader/jp6;

    move-result-object v1

    .line 25
    invoke-virtual {v0, p1, v1, v5}, Lcom/shabakaty/downloader/aq6;->i(Landroid/app/Activity;Lcom/shabakaty/downloader/jp6;Z)V

    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d;->o()Lcom/shabakaty/downloader/vz5;

    move-result-object p1

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 27
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d;->n:Lcom/shabakaty/downloader/x30;

    .line 28
    check-cast v0, Lcom/shabakaty/downloader/mn0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 30
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 31
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v2

    new-instance v3, Lcom/shabakaty/downloader/kt5;

    .line 32
    invoke-direct {v3, p1, v0, v1}, Lcom/shabakaty/downloader/kt5;-><init>(Lcom/shabakaty/downloader/vz5;J)V

    .line 33
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/de6;->r(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :catchall_1
    move-exception p1

    .line 34
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/shabakaty/downloader/rn6;->r:Lcom/shabakaty/downloader/vn6;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->y()Lcom/shabakaty/downloader/aq6;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d;->g:Lcom/shabakaty/downloader/hg5;

    .line 4
    invoke-virtual {v1}, Lcom/shabakaty/downloader/hg5;->w()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/shabakaty/downloader/aq6;->f:Ljava/util/Map;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/jp6;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    .line 6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-wide v1, p1, Lcom/shabakaty/downloader/jp6;->c:J

    const-string v3, "id"

    .line 7
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p1, Lcom/shabakaty/downloader/jp6;->a:Ljava/lang/String;

    const-string v2, "name"

    .line 8
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/shabakaty/downloader/jp6;->b:Ljava/lang/String;

    const-string v1, "referrer_name"

    .line 9
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.google.app_measurement.screen_service"

    .line 10
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
