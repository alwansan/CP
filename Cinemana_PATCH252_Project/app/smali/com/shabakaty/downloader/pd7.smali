.class public final Lcom/shabakaty/downloader/pd7;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/qc7;


# static fields
.field public static final g:Lcom/shabakaty/downloader/pk2;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/gms/cast/CastDevice;

.field public final c:Lcom/shabakaty/downloader/vw;

.field public final d:Lcom/shabakaty/downloader/nw$d;

.field public final e:Lcom/shabakaty/downloader/ha7;

.field public f:Lcom/shabakaty/downloader/o57;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pk2;

    const-string v1, "CastApiAdapter"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/pk2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/pd7;->g:Lcom/shabakaty/downloader/pk2;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/mg7;Landroid/content/Context;Lcom/google/android/gms/cast/CastDevice;Lcom/shabakaty/downloader/vw;Lcom/shabakaty/downloader/nw$d;Lcom/shabakaty/downloader/ha7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/pd7;->a:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Lcom/shabakaty/downloader/pd7;->b:Lcom/google/android/gms/cast/CastDevice;

    .line 4
    iput-object p4, p0, Lcom/shabakaty/downloader/pd7;->c:Lcom/shabakaty/downloader/vw;

    .line 5
    iput-object p5, p0, Lcom/shabakaty/downloader/pd7;->d:Lcom/shabakaty/downloader/nw$d;

    .line 6
    iput-object p6, p0, Lcom/shabakaty/downloader/pd7;->e:Lcom/shabakaty/downloader/ha7;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/pd7;->f:Lcom/shabakaty/downloader/o57;

    if-eqz v0, :cond_1

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/vh5;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, v0, Lcom/shabakaty/downloader/vh5;->C:Ljava/util/Map;

    monitor-enter v1

    .line 5
    :try_start_0
    iget-object v2, v0, Lcom/shabakaty/downloader/vh5;->C:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/nw$e;

    .line 6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-static {}, Lcom/shabakaty/downloader/yk4;->a()Lcom/shabakaty/downloader/yk4$a;

    move-result-object v1

    new-instance v3, Lcom/shabakaty/downloader/kj5;

    invoke-direct {v3, v0, v2, p1}, Lcom/shabakaty/downloader/kj5;-><init>(Lcom/shabakaty/downloader/vh5;Lcom/shabakaty/downloader/nw$e;Ljava/lang/String;)V

    .line 8
    iput-object v3, v1, Lcom/shabakaty/downloader/yk4$a;->a:Lcom/shabakaty/downloader/tq3;

    .line 9
    invoke-virtual {v1}, Lcom/shabakaty/downloader/yk4$a;->a()Lcom/shabakaty/downloader/yk4;

    move-result-object p1

    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/common/api/b;->c(ILcom/shabakaty/downloader/yk4;)Lcom/shabakaty/downloader/uk4;

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Channel namespace cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final b(Ljava/lang/String;Lcom/shabakaty/downloader/nw$e;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/pd7;->f:Lcom/shabakaty/downloader/o57;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/vh5;

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/yw;->d(Ljava/lang/String;)V

    .line 4
    iget-object v1, v0, Lcom/shabakaty/downloader/vh5;->C:Ljava/util/Map;

    monitor-enter v1

    .line 5
    :try_start_0
    iget-object v2, v0, Lcom/shabakaty/downloader/vh5;->C:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-static {}, Lcom/shabakaty/downloader/yk4;->a()Lcom/shabakaty/downloader/yk4$a;

    move-result-object v1

    new-instance v2, Lcom/shabakaty/downloader/kj5;

    invoke-direct {v2, v0, p1, p2}, Lcom/shabakaty/downloader/kj5;-><init>(Lcom/shabakaty/downloader/vh5;Ljava/lang/String;Lcom/shabakaty/downloader/nw$e;)V

    .line 8
    iput-object v2, v1, Lcom/shabakaty/downloader/yk4$a;->a:Lcom/shabakaty/downloader/tq3;

    .line 9
    invoke-virtual {v1}, Lcom/shabakaty/downloader/yk4$a;->a()Lcom/shabakaty/downloader/yk4;

    move-result-object p1

    const/4 p2, 0x1

    .line 10
    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/common/api/b;->c(ILcom/shabakaty/downloader/yk4;)Lcom/shabakaty/downloader/uk4;

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method
