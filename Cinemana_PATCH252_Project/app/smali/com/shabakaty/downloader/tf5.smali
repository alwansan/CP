.class public final Lcom/shabakaty/downloader/tf5;
.super Lcom/shabakaty/downloader/qi5;


# instance fields
.field public final synthetic v:I

.field public final w:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fj5;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/tf5;->v:I

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/qi5;-><init>(Lcom/shabakaty/downloader/fj5;)V

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/dc7;

    invoke-direct {p1}, Lcom/shabakaty/downloader/dc7;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/tf5;->w:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/fj5;Lcom/shabakaty/downloader/ox5;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/tf5;->v:I

    .line 3
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/qi5;-><init>(Lcom/shabakaty/downloader/fj5;)V

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/in5;

    invoke-direct {v0, p1, p2}, Lcom/shabakaty/downloader/in5;-><init>(Lcom/shabakaty/downloader/fj5;Lcom/shabakaty/downloader/ox5;)V

    .line 5
    iput-object v0, p0, Lcom/shabakaty/downloader/tf5;->w:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final M1()V
    .locals 8

    iget v0, p0, Lcom/shabakaty/downloader/tf5;->v:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/tf5;->w:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/in5;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qi5;->L1()V

    return-void

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fq1;->x1()Lcom/shabakaty/downloader/xu6;

    move-result-object v0

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/xu6;->c:Lcom/shabakaty/downloader/dc7;

    if-nez v1, :cond_4

    .line 4
    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, v0, Lcom/shabakaty/downloader/xu6;->c:Lcom/shabakaty/downloader/dc7;

    if-nez v1, :cond_3

    .line 6
    new-instance v1, Lcom/shabakaty/downloader/dc7;

    invoke-direct {v1}, Lcom/shabakaty/downloader/dc7;-><init>()V

    .line 7
    iget-object v2, v0, Lcom/shabakaty/downloader/xu6;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 8
    iget-object v3, v0, Lcom/shabakaty/downloader/xu6;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 9
    iput-object v3, v1, Lcom/shabakaty/downloader/dc7;->c:Ljava/lang/String;

    .line 10
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 11
    iput-object v4, v1, Lcom/shabakaty/downloader/dc7;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    .line 12
    :try_start_1
    iget-object v5, v0, Lcom/shabakaty/downloader/xu6;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 13
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 14
    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 15
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 16
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 17
    :cond_0
    iget-object v4, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    :try_start_2
    const-string v2, "GAv4"

    const-string v5, "Error retrieving package info: appName set to "

    .line 18
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    :goto_1
    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_2
    :goto_2
    iput-object v3, v1, Lcom/shabakaty/downloader/dc7;->a:Ljava/lang/String;

    .line 20
    iput-object v4, v1, Lcom/shabakaty/downloader/dc7;->b:Ljava/lang/String;

    .line 21
    iput-object v1, v0, Lcom/shabakaty/downloader/xu6;->c:Lcom/shabakaty/downloader/dc7;

    .line 22
    :cond_3
    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 23
    :cond_4
    :goto_3
    iget-object v0, v0, Lcom/shabakaty/downloader/xu6;->c:Lcom/shabakaty/downloader/dc7;

    .line 24
    iget-object v1, p0, Lcom/shabakaty/downloader/tf5;->w:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/dc7;

    .line 25
    iget-object v2, v0, Lcom/shabakaty/downloader/dc7;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 26
    iget-object v2, v0, Lcom/shabakaty/downloader/dc7;->a:Ljava/lang/String;

    .line 27
    iput-object v2, v1, Lcom/shabakaty/downloader/dc7;->a:Ljava/lang/String;

    .line 28
    :cond_5
    iget-object v2, v0, Lcom/shabakaty/downloader/dc7;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 29
    iget-object v2, v0, Lcom/shabakaty/downloader/dc7;->b:Ljava/lang/String;

    .line 30
    iput-object v2, v1, Lcom/shabakaty/downloader/dc7;->b:Ljava/lang/String;

    .line 31
    :cond_6
    iget-object v2, v0, Lcom/shabakaty/downloader/dc7;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 32
    iget-object v2, v0, Lcom/shabakaty/downloader/dc7;->c:Ljava/lang/String;

    .line 33
    iput-object v2, v1, Lcom/shabakaty/downloader/dc7;->c:Ljava/lang/String;

    .line 34
    :cond_7
    iget-object v2, v0, Lcom/shabakaty/downloader/dc7;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 35
    iget-object v0, v0, Lcom/shabakaty/downloader/dc7;->d:Ljava/lang/String;

    .line 36
    iput-object v0, v1, Lcom/shabakaty/downloader/dc7;->d:Ljava/lang/String;

    .line 37
    :cond_8
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fq1;->B1()Lcom/shabakaty/downloader/k06;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qi5;->N1()V

    .line 39
    iget-object v1, v0, Lcom/shabakaty/downloader/k06;->w:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 40
    iget-object v2, p0, Lcom/shabakaty/downloader/tf5;->w:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/dc7;

    .line 41
    iput-object v1, v2, Lcom/shabakaty/downloader/dc7;->a:Ljava/lang/String;

    .line 42
    :cond_9
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qi5;->N1()V

    .line 43
    iget-object v0, v0, Lcom/shabakaty/downloader/k06;->v:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 44
    iget-object v1, p0, Lcom/shabakaty/downloader/tf5;->w:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/dc7;

    .line 45
    iput-object v0, v1, Lcom/shabakaty/downloader/dc7;->b:Ljava/lang/String;

    :cond_a
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public O1()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/xu6;->b()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/tf5;->w:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/in5;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/shabakaty/downloader/xu6;->b()V

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/fq1;->q1()Lcom/shabakaty/downloader/x30;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/mn0;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 6
    iput-wide v1, v0, Lcom/shabakaty/downloader/in5;->E:J

    return-void
.end method
