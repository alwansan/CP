.class public final synthetic Lcom/shabakaty/downloader/ae5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/a73;


# instance fields
.field public final synthetic r:I

.field public final s:Lcom/shabakaty/downloader/tw;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/tw;I)V
    .locals 1

    iput p2, p0, Lcom/shabakaty/downloader/ae5;->r:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ae5;->s:Lcom/shabakaty/downloader/tw;

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ae5;->s:Lcom/shabakaty/downloader/tw;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 12

    iget v0, p0, Lcom/shabakaty/downloader/ae5;->r:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ae5;->s:Lcom/shabakaty/downloader/tw;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_ENABLED"

    .line 2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/shabakaty/downloader/tw;->c:Lcom/shabakaty/downloader/y14;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v4, "com.google.android.gms.cast.FLAG_CLIENT_FEATURE_USAGE_ANALYTICS_ENABLED"

    .line 3
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v1, :cond_1

    if-eqz v4, :cond_4

    .line 4
    :cond_1
    iget-object v5, v0, Lcom/shabakaty/downloader/tw;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 5
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v7, "%s.%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, v0, Lcom/shabakaty/downloader/tw;->a:Landroid/content/Context;

    .line 6
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    const-string v9, "client_cast_analytics_data"

    aput-object v9, v8, v3

    .line 7
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 8
    iget-object v7, v0, Lcom/shabakaty/downloader/tw;->a:Landroid/content/Context;

    .line 9
    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 10
    invoke-virtual {v7, v6, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, v0, Lcom/shabakaty/downloader/tw;->j:Landroid/content/SharedPreferences;

    .line 11
    iget-object v6, v0, Lcom/shabakaty/downloader/tw;->a:Landroid/content/Context;

    .line 12
    invoke-static {v6}, Lcom/shabakaty/downloader/yq4;->b(Landroid/content/Context;)V

    .line 13
    invoke-static {}, Lcom/shabakaty/downloader/yq4;->a()Lcom/shabakaty/downloader/yq4;

    move-result-object v6

    sget-object v7, Lcom/shabakaty/downloader/kp;->e:Lcom/shabakaty/downloader/kp;

    invoke-virtual {v6, v7}, Lcom/shabakaty/downloader/yq4;->c(Lcom/shabakaty/downloader/g31;)Lcom/shabakaty/downloader/pq4;

    move-result-object v6

    const-string v7, "CAST_SENDER_SDK"

    .line 14
    const-class v8, Lcom/shabakaty/downloader/wx6;

    sget-object v9, Lcom/shabakaty/downloader/km5;->r:Lcom/shabakaty/downloader/aq4;

    check-cast v6, Lcom/shabakaty/downloader/qq4;

    .line 15
    new-instance v10, Lcom/shabakaty/downloader/o31;

    const-string v11, "proto"

    invoke-direct {v10, v11}, Lcom/shabakaty/downloader/o31;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v6, v7, v8, v10, v9}, Lcom/shabakaty/downloader/qq4;->a(Ljava/lang/String;Ljava/lang/Class;Lcom/shabakaty/downloader/o31;Lcom/shabakaty/downloader/aq4;)Lcom/shabakaty/downloader/mq4;

    move-result-object v6

    const-string v7, "com.google.android.gms.cast.FLAG_FIRELOG_UPLOAD_MODE"

    .line 17
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 18
    iget-object p1, v0, Lcom/shabakaty/downloader/tw;->j:Landroid/content/SharedPreferences;

    .line 19
    new-instance v9, Lcom/shabakaty/downloader/u46;

    invoke-direct {v9, p1, v6, v7, v8}, Lcom/shabakaty/downloader/u46;-><init>(Landroid/content/SharedPreferences;Lcom/shabakaty/downloader/mq4;J)V

    .line 20
    iput-object v9, v0, Lcom/shabakaty/downloader/tw;->i:Lcom/shabakaty/downloader/u46;

    if-eqz v1, :cond_2

    .line 21
    iget-object p1, v0, Lcom/shabakaty/downloader/tw;->a:Landroid/content/Context;

    .line 22
    new-instance v1, Lcom/shabakaty/downloader/i06;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/i06;-><init>(Landroid/content/Context;)V

    const-string p1, "com.google.android.gms.cast.DICTIONARY_CAST_STATUS_CODES_TO_APP_SESSION_ERROR"

    const-string v6, "com.google.android.gms.cast.DICTIONARY_CAST_STATUS_CODES_TO_APP_SESSION_CHANGE_REASON"

    .line 23
    filled-new-array {p1, v6}, [Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-static {}, Lcom/shabakaty/downloader/yk4;->a()Lcom/shabakaty/downloader/yk4$a;

    move-result-object v6

    new-instance v7, Lcom/shabakaty/downloader/qz2;

    invoke-direct {v7, v1, p1}, Lcom/shabakaty/downloader/qz2;-><init>(Lcom/shabakaty/downloader/i06;[Ljava/lang/String;)V

    .line 25
    iput-object v7, v6, Lcom/shabakaty/downloader/yk4$a;->a:Lcom/shabakaty/downloader/tq3;

    new-array p1, v3, [Lcom/shabakaty/downloader/ia1;

    .line 26
    sget-object v7, Lcom/shabakaty/downloader/gh5;->c:Lcom/shabakaty/downloader/ia1;

    aput-object v7, p1, v2

    .line 27
    iput-object p1, v6, Lcom/shabakaty/downloader/yk4$a;->c:[Lcom/shabakaty/downloader/ia1;

    .line 28
    iput-boolean v2, v6, Lcom/shabakaty/downloader/yk4$a;->b:Z

    .line 29
    invoke-virtual {v6}, Lcom/shabakaty/downloader/yk4$a;->a()Lcom/shabakaty/downloader/yk4;

    move-result-object p1

    .line 30
    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/common/api/b;->c(ILcom/shabakaty/downloader/yk4;)Lcom/shabakaty/downloader/uk4;

    move-result-object p1

    .line 31
    new-instance v1, Lcom/shabakaty/downloader/ae5;

    invoke-direct {v1, v0, v3}, Lcom/shabakaty/downloader/ae5;-><init>(Lcom/shabakaty/downloader/tw;I)V

    .line 32
    check-cast p1, Lcom/shabakaty/downloader/ye7;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v2, Lcom/shabakaty/downloader/dl4;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v2, v1}, Lcom/shabakaty/downloader/ye7;->c(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/a73;)Lcom/shabakaty/downloader/uk4;

    :cond_2
    if-eqz v4, :cond_4

    .line 34
    iget-object p1, v0, Lcom/shabakaty/downloader/tw;->j:Landroid/content/SharedPreferences;

    iget-object v0, v0, Lcom/shabakaty/downloader/tw;->i:Lcom/shabakaty/downloader/u46;

    sget-object v1, Lcom/shabakaty/downloader/b87;->i:Lcom/shabakaty/downloader/pk2;

    .line 35
    const-class v1, Lcom/shabakaty/downloader/b87;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v2, Lcom/shabakaty/downloader/b87;->k:Lcom/shabakaty/downloader/b87;

    if-nez v2, :cond_3

    .line 37
    new-instance v2, Lcom/shabakaty/downloader/b87;

    invoke-direct {v2, p1, v0, v5}, Lcom/shabakaty/downloader/b87;-><init>(Landroid/content/SharedPreferences;Lcom/shabakaty/downloader/u46;Ljava/lang/String;)V

    sput-object v2, Lcom/shabakaty/downloader/b87;->k:Lcom/shabakaty/downloader/b87;

    .line 38
    :cond_3
    sget-object p1, Lcom/shabakaty/downloader/b87;->k:Lcom/shabakaty/downloader/b87;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 39
    sget-object p1, Lcom/shabakaty/downloader/lw6;->x:Lcom/shabakaty/downloader/lw6;

    invoke-static {p1}, Lcom/shabakaty/downloader/b87;->a(Lcom/shabakaty/downloader/lw6;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 40
    monitor-exit v1

    throw p1

    :cond_4
    :goto_1
    return-void

    .line 41
    :goto_2
    iget-object v0, p0, Lcom/shabakaty/downloader/ae5;->s:Lcom/shabakaty/downloader/tw;

    check-cast p1, Landroid/os/Bundle;

    .line 42
    iget-object v1, v0, Lcom/shabakaty/downloader/tw;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 43
    new-instance v2, Lcom/shabakaty/downloader/lo6;

    iget-object v3, v0, Lcom/shabakaty/downloader/tw;->j:Landroid/content/SharedPreferences;

    iget-object v4, v0, Lcom/shabakaty/downloader/tw;->i:Lcom/shabakaty/downloader/u46;

    invoke-direct {v2, v3, v4, p1, v1}, Lcom/shabakaty/downloader/lo6;-><init>(Landroid/content/SharedPreferences;Lcom/shabakaty/downloader/u46;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 44
    iget-object p1, v0, Lcom/shabakaty/downloader/tw;->c:Lcom/shabakaty/downloader/y14;

    .line 45
    new-instance v0, Lcom/shabakaty/downloader/wr6;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/wr6;-><init>(Lcom/shabakaty/downloader/lo6;Lcom/shabakaty/downloader/ic6;)V

    .line 46
    const-class v1, Lcom/shabakaty/downloader/xw;

    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/downloader/y14;->a(Lcom/shabakaty/downloader/z14;Ljava/lang/Class;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
