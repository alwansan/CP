.class public final synthetic Lcom/shabakaty/downloader/sb6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@19.0.1"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/wc6;

.field public final synthetic t:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/wc6;Ljava/lang/String;I)V
    .locals 1

    iput p3, p0, Lcom/shabakaty/downloader/sb6;->r:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/sb6;->s:Lcom/shabakaty/downloader/wc6;

    iput-object p2, p0, Lcom/shabakaty/downloader/sb6;->t:Ljava/lang/String;

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/sb6;->s:Lcom/shabakaty/downloader/wc6;

    iput-object p2, p0, Lcom/shabakaty/downloader/sb6;->t:Ljava/lang/String;

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/sb6;->s:Lcom/shabakaty/downloader/wc6;

    iput-object p2, p0, Lcom/shabakaty/downloader/sb6;->t:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lcom/shabakaty/downloader/sb6;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/sb6;->s:Lcom/shabakaty/downloader/wc6;

    iget-object v1, p0, Lcom/shabakaty/downloader/sb6;->t:Ljava/lang/String;

    iget-object v2, v0, Lcom/shabakaty/downloader/qv6;->b:Lcom/shabakaty/downloader/uw6;

    .line 2
    iget-object v2, v2, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 3
    invoke-static {v2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 4
    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/mh5;->E(Ljava/lang/String;)Lcom/shabakaty/downloader/xf6;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    .line 5
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "platform"

    const-string v5, "android"

    .line 6
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "package_name"

    .line 7
    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 8
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d;->g:Lcom/shabakaty/downloader/hg5;

    .line 9
    invoke-virtual {v0}, Lcom/shabakaty/downloader/hg5;->q()J

    const-wide/32 v0, 0xa471

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "gmp_version"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 10
    invoke-virtual {v2}, Lcom/shabakaty/downloader/xf6;->P()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "app_version"

    .line 11
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_0
    invoke-virtual {v2}, Lcom/shabakaty/downloader/xf6;->B()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "app_version_int"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {v2}, Lcom/shabakaty/downloader/xf6;->E()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "dynamite_version"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v3

    .line 14
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/sb6;->s:Lcom/shabakaty/downloader/wc6;

    iget-object v1, p0, Lcom/shabakaty/downloader/sb6;->t:Ljava/lang/String;

    .line 15
    new-instance v2, Lcom/shabakaty/downloader/j27;

    new-instance v3, Lcom/shabakaty/downloader/qz2;

    invoke-direct {v3, v0, v1}, Lcom/shabakaty/downloader/qz2;-><init>(Lcom/shabakaty/downloader/wc6;Ljava/lang/String;)V

    const-string v0, "internal.remoteConfig"

    invoke-direct {v2, v0, v3}, Lcom/shabakaty/downloader/j27;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/qz2;)V

    return-object v2

    .line 16
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/sb6;->s:Lcom/shabakaty/downloader/wc6;

    iget-object v1, p0, Lcom/shabakaty/downloader/sb6;->t:Ljava/lang/String;

    .line 17
    new-instance v2, Lcom/shabakaty/downloader/zu6;

    new-instance v3, Lcom/shabakaty/downloader/sb6;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v1, v4}, Lcom/shabakaty/downloader/sb6;-><init>(Lcom/shabakaty/downloader/wc6;Ljava/lang/String;I)V

    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/zu6;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
