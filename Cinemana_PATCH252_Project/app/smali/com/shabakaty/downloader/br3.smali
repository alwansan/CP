.class public Lcom/shabakaty/downloader/br3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/nw$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/br3$i;,
        Lcom/shabakaty/downloader/br3$g;,
        Lcom/shabakaty/downloader/br3$h;,
        Lcom/shabakaty/downloader/br3$c;,
        Lcom/shabakaty/downloader/br3$e;,
        Lcom/shabakaty/downloader/br3$f;,
        Lcom/shabakaty/downloader/br3$d;,
        Lcom/shabakaty/downloader/br3$a;,
        Lcom/shabakaty/downloader/br3$b;
    }
.end annotation


# static fields
.field public static final synthetic k:I


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Landroid/os/Handler;

.field public final c:Lcom/shabakaty/downloader/oh5;

.field public final d:Lcom/shabakaty/downloader/br3$e;

.field public final e:Lcom/shabakaty/downloader/pp2;

.field public f:Lcom/shabakaty/downloader/qc7;

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/br3$b;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/br3$a;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/br3$d;",
            "Lcom/shabakaty/downloader/br3$i;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/shabakaty/downloader/br3$i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/oh5;->w:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/oh5;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/br3;->g:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/br3;->h:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/br3;->i:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/br3;->j:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/br3;->a:Ljava/lang/Object;

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/p36;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/p36;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/br3;->b:Landroid/os/Handler;

    .line 8
    new-instance v0, Lcom/shabakaty/downloader/br3$e;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/br3$e;-><init>(Lcom/shabakaty/downloader/br3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/br3;->d:Lcom/shabakaty/downloader/br3$e;

    .line 9
    iput-object p1, p0, Lcom/shabakaty/downloader/br3;->c:Lcom/shabakaty/downloader/oh5;

    .line 10
    new-instance v1, Lcom/shabakaty/downloader/te7;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/te7;-><init>(Lcom/shabakaty/downloader/br3;)V

    .line 11
    iput-object v1, p1, Lcom/shabakaty/downloader/oh5;->h:Lcom/shabakaty/downloader/ei5;

    .line 12
    iput-object v0, p1, Lcom/shabakaty/downloader/l56;->c:Lcom/shabakaty/downloader/ni5;

    .line 13
    new-instance p1, Lcom/shabakaty/downloader/pp2;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/pp2;-><init>(Lcom/shabakaty/downloader/br3;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/br3;->e:Lcom/shabakaty/downloader/pp2;

    return-void
.end method

.method public static w(ILjava/lang/String;)Lcom/shabakaty/downloader/nb3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/nb3<",
            "Lcom/shabakaty/downloader/br3$c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/shabakaty/downloader/br3$f;

    invoke-direct {p1}, Lcom/shabakaty/downloader/br3$f;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 3
    new-instance p0, Lcom/shabakaty/downloader/cl5;

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/cl5;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 4
    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->h(Lcom/shabakaty/downloader/ft3;)V

    return-object p1
.end method

.method public static x(Lcom/shabakaty/downloader/br3$g;)Lcom/shabakaty/downloader/br3$g;
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/br3$g;->n()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2
    :catchall_0
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x834

    const/4 v2, 0x0

    .line 3
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/il5;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/il5;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 5
    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->h(Lcom/shabakaty/downloader/ft3;)V

    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    .line 6
    throw p0
.end method


# virtual methods
.method public final A()V
    .locals 3

    const-string v0, "Must be called from the main thread."

    .line 1
    iget-object v1, p0, Lcom/shabakaty/downloader/br3;->f:Lcom/shabakaty/downloader/qc7;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/br3;->c:Lcom/shabakaty/downloader/oh5;

    .line 4
    iget-object v2, v2, Lcom/shabakaty/downloader/l56;->b:Ljava/lang/String;

    .line 5
    check-cast v1, Lcom/shabakaty/downloader/pd7;

    invoke-virtual {v1, v2, p0}, Lcom/shabakaty/downloader/pd7;->b(Ljava/lang/String;Lcom/shabakaty/downloader/nw$e;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 6
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/br3;->C()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x11

    const/4 v1, 0x0

    .line 8
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/br3;->w(ILjava/lang/String;)Lcom/shabakaty/downloader/nb3;

    goto :goto_1

    .line 9
    :cond_1
    new-instance v0, Lcom/shabakaty/downloader/bf7;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/bf7;-><init>(Lcom/shabakaty/downloader/br3;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/br3;->x(Lcom/shabakaty/downloader/br3$g;)Lcom/shabakaty/downloader/br3$g;

    :goto_1
    return-void
.end method

.method public final B()Z
    .locals 2

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/br3;->e()Lcom/shabakaty/downloader/dr2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget v0, v0, Lcom/shabakaty/downloader/dr2;->v:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final C()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/br3;->f:Lcom/shabakaty/downloader/qc7;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/shabakaty/downloader/br3$d;J)Z
    .locals 2

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/br3;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/br3;->j:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/br3$i;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/br3$i;

    invoke-direct {v0, p0, p2, p3}, Lcom/shabakaty/downloader/br3$i;-><init>(Lcom/shabakaty/downloader/br3;J)V

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/br3;->j:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_1
    iget-object p2, v0, Lcom/shabakaty/downloader/br3$i;->a:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p2, p0, Lcom/shabakaty/downloader/br3;->i:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p0}, Lcom/shabakaty/downloader/br3;->h()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3$i;->a()V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public b()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/br3;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Must be called from the main thread."

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/br3;->c:Lcom/shabakaty/downloader/oh5;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/oh5;->d()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c()Lcom/shabakaty/downloader/sp2;
    .locals 2

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/br3;->e()Lcom/shabakaty/downloader/dr2;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    iget v1, v0, Lcom/shabakaty/downloader/dr2;->C:I

    .line 4
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/dr2;->D1(I)Lcom/shabakaty/downloader/sp2;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/google/android/gms/cast/MediaInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/br3;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Must be called from the main thread."

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/br3;->c:Lcom/shabakaty/downloader/oh5;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/oh5;->e()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e()Lcom/shabakaty/downloader/dr2;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/br3;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Must be called from the main thread."

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/br3;->c:Lcom/shabakaty/downloader/oh5;

    .line 4
    iget-object v1, v1, Lcom/shabakaty/downloader/oh5;->f:Lcom/shabakaty/downloader/dr2;

    .line 5
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public f()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/br3;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Must be called from the main thread."

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/br3;->e()Lcom/shabakaty/downloader/dr2;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iget v1, v1, Lcom/shabakaty/downloader/dr2;->v:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 5
    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public g()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/br3;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Must be called from the main thread."

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/br3;->c:Lcom/shabakaty/downloader/oh5;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/oh5;->f()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public h()Z
    .locals 1

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/br3;->i()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/br3;->B()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/br3;->m()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/br3;->l()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/br3;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public i()Z
    .locals 2

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/br3;->e()Lcom/shabakaty/downloader/dr2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget v0, v0, Lcom/shabakaty/downloader/dr2;->v:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public j()Z
    .locals 2

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/br3;->d()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget v0, v0, Lcom/google/android/gms/cast/MediaInfo;->s:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public k()Z
    .locals 1

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/br3;->e()Lcom/shabakaty/downloader/dr2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget v0, v0, Lcom/shabakaty/downloader/dr2;->C:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public l()Z
    .locals 3

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/br3;->e()Lcom/shabakaty/downloader/dr2;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    iget v0, v0, Lcom/shabakaty/downloader/dr2;->v:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/br3;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/br3;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v2, "Must be called from the main thread."

    .line 6
    invoke-static {v2}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/br3;->e()Lcom/shabakaty/downloader/dr2;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8
    iget v2, v2, Lcom/shabakaty/downloader/dr2;->w:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 9
    :goto_0
    monitor-exit v0

    const/4 v0, 0x2

    if-ne v2, v0, :cond_2

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public m()Z
    .locals 2

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/br3;->e()Lcom/shabakaty/downloader/dr2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget v0, v0, Lcom/shabakaty/downloader/dr2;->v:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public n()Z
    .locals 1

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/br3;->e()Lcom/shabakaty/downloader/dr2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-boolean v0, v0, Lcom/shabakaty/downloader/dr2;->I:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final o()Z
    .locals 5

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/br3;->j()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/br3;->e()Lcom/shabakaty/downloader/dr2;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const-wide/16 v3, 0x2

    .line 4
    invoke-virtual {v0, v3, v4}, Lcom/shabakaty/downloader/dr2;->E1(J)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/dr2;->L:Lcom/shabakaty/downloader/ep2;

    if-eqz v0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public onMessageReceived(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/br3;->c:Lcom/shabakaty/downloader/oh5;

    invoke-virtual {p1, p3}, Lcom/shabakaty/downloader/oh5;->v(Ljava/lang/String;)V

    return-void
.end method

.method public p(Lorg/json/JSONObject;)Lcom/shabakaty/downloader/nb3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/shabakaty/downloader/nb3<",
            "Lcom/shabakaty/downloader/br3$c;",
            ">;"
        }
    .end annotation

    const-string p1, "Must be called from the main thread."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/br3;->C()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/16 p1, 0x11

    .line 3
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/br3;->w(ILjava/lang/String;)Lcom/shabakaty/downloader/nb3;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Lcom/shabakaty/downloader/ag5;

    invoke-direct {p1, p0, v0}, Lcom/shabakaty/downloader/ag5;-><init>(Lcom/shabakaty/downloader/br3;Lorg/json/JSONObject;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/br3;->x(Lcom/shabakaty/downloader/br3$g;)Lcom/shabakaty/downloader/br3$g;

    return-object p1
.end method

.method public q(Lorg/json/JSONObject;)Lcom/shabakaty/downloader/nb3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/shabakaty/downloader/nb3<",
            "Lcom/shabakaty/downloader/br3$c;",
            ">;"
        }
    .end annotation

    const-string p1, "Must be called from the main thread."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/br3;->C()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/16 p1, 0x11

    .line 3
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/br3;->w(ILjava/lang/String;)Lcom/shabakaty/downloader/nb3;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Lcom/shabakaty/downloader/jg5;

    invoke-direct {p1, p0, v0}, Lcom/shabakaty/downloader/jg5;-><init>(Lcom/shabakaty/downloader/br3;Lorg/json/JSONObject;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/br3;->x(Lcom/shabakaty/downloader/br3$g;)Lcom/shabakaty/downloader/br3$g;

    return-object p1
.end method

.method public r(Lcom/shabakaty/downloader/br3$d;)V
    .locals 3

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/br3;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/br3$i;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/br3$i;->a:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, v0, Lcom/shabakaty/downloader/br3$i;->a:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/br3;->j:Ljava/util/Map;

    .line 6
    iget-wide v1, v0, Lcom/shabakaty/downloader/br3$i;->b:J

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p1, v0, Lcom/shabakaty/downloader/br3$i;->e:Lcom/shabakaty/downloader/br3;

    .line 9
    iget-object p1, p1, Lcom/shabakaty/downloader/br3;->b:Landroid/os/Handler;

    .line 10
    iget-object v1, v0, Lcom/shabakaty/downloader/br3$i;->c:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, v0, Lcom/shabakaty/downloader/br3$i;->d:Z

    :cond_0
    return-void
.end method

.method public s(J)Lcom/shabakaty/downloader/nb3;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/shabakaty/downloader/nb3<",
            "Lcom/shabakaty/downloader/br3$c;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v7, Lcom/shabakaty/downloader/pq2;

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move-wide v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/pq2;-><init>(JIZLorg/json/JSONObject;Lcom/shabakaty/downloader/hl3;)V

    .line 2
    invoke-virtual {p0, v7}, Lcom/shabakaty/downloader/br3;->t(Lcom/shabakaty/downloader/pq2;)Lcom/shabakaty/downloader/nb3;

    move-result-object p1

    return-object p1
.end method

.method public t(Lcom/shabakaty/downloader/pq2;)Lcom/shabakaty/downloader/nb3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/pq2;",
            ")",
            "Lcom/shabakaty/downloader/nb3<",
            "Lcom/shabakaty/downloader/br3$c;",
            ">;"
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/br3;->C()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p1, 0x11

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/br3;->w(ILjava/lang/String;)Lcom/shabakaty/downloader/nb3;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/mk5;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/mk5;-><init>(Lcom/shabakaty/downloader/br3;Lcom/shabakaty/downloader/pq2;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/br3;->x(Lcom/shabakaty/downloader/br3$g;)Lcom/shabakaty/downloader/br3$g;

    return-object v0
.end method

.method public u([J)Lcom/shabakaty/downloader/nb3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Lcom/shabakaty/downloader/nb3<",
            "Lcom/shabakaty/downloader/br3$c;",
            ">;"
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/br3;->C()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p1, 0x11

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/br3;->w(ILjava/lang/String;)Lcom/shabakaty/downloader/nb3;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/kg7;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/kg7;-><init>(Lcom/shabakaty/downloader/br3;[J)V

    invoke-static {v0}, Lcom/shabakaty/downloader/br3;->x(Lcom/shabakaty/downloader/br3$g;)Lcom/shabakaty/downloader/br3$g;

    return-object v0
.end method

.method public v()V
    .locals 5

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/br3;->f()I

    move-result v1

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eq v1, v4, :cond_2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/br3;->C()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/br3;->w(ILjava/lang/String;)Lcom/shabakaty/downloader/nb3;

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Lcom/shabakaty/downloader/vj5;

    invoke-direct {v0, p0, v3}, Lcom/shabakaty/downloader/vj5;-><init>(Lcom/shabakaty/downloader/br3;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/br3;->x(Lcom/shabakaty/downloader/br3$g;)Lcom/shabakaty/downloader/br3$g;

    :goto_0
    return-void

    .line 7
    :cond_2
    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/shabakaty/downloader/br3;->C()Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/br3;->w(ILjava/lang/String;)Lcom/shabakaty/downloader/nb3;

    goto :goto_2

    .line 10
    :cond_3
    new-instance v0, Lcom/shabakaty/downloader/dj5;

    invoke-direct {v0, p0, v3}, Lcom/shabakaty/downloader/dj5;-><init>(Lcom/shabakaty/downloader/br3;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/br3;->x(Lcom/shabakaty/downloader/br3$g;)Lcom/shabakaty/downloader/br3$g;

    :goto_2
    return-void
.end method

.method public final y(Lcom/shabakaty/downloader/qc7;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/br3;->f:Lcom/shabakaty/downloader/qc7;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/br3;->c:Lcom/shabakaty/downloader/oh5;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/oh5;->r()V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/br3;->e:Lcom/shabakaty/downloader/pp2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/pp2;->a()V

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/br3;->f:Lcom/shabakaty/downloader/qc7;

    const-string v1, "Must be called from the main thread."

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/br3;->c:Lcom/shabakaty/downloader/oh5;

    .line 7
    iget-object v1, v1, Lcom/shabakaty/downloader/l56;->b:Ljava/lang/String;

    .line 8
    check-cast v0, Lcom/shabakaty/downloader/pd7;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/pd7;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :catch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/br3;->d:Lcom/shabakaty/downloader/br3$e;

    const/4 v1, 0x0

    .line 10
    iput-object v1, v0, Lcom/shabakaty/downloader/br3$e;->a:Lcom/shabakaty/downloader/qc7;

    .line 11
    iget-object v0, p0, Lcom/shabakaty/downloader/br3;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 12
    :cond_1
    iput-object p1, p0, Lcom/shabakaty/downloader/br3;->f:Lcom/shabakaty/downloader/qc7;

    if-eqz p1, :cond_2

    .line 13
    iget-object v0, p0, Lcom/shabakaty/downloader/br3;->d:Lcom/shabakaty/downloader/br3$e;

    .line 14
    iput-object p1, v0, Lcom/shabakaty/downloader/br3$e;->a:Lcom/shabakaty/downloader/qc7;

    :cond_2
    return-void
.end method

.method public final z(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/br3$d;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/br3;->m()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/shabakaty/downloader/br3;->l()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/shabakaty/downloader/br3;->i()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/shabakaty/downloader/br3;->B()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/br3;->k()Z

    move-result p1

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/br3;->c()Lcom/shabakaty/downloader/sp2;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget-object v3, p1, Lcom/shabakaty/downloader/sp2;->r:Lcom/google/android/gms/cast/MediaInfo;

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/br3$d;

    .line 7
    iget-object v4, p1, Lcom/shabakaty/downloader/sp2;->r:Lcom/google/android/gms/cast/MediaInfo;

    .line 8
    iget-wide v4, v4, Lcom/google/android/gms/cast/MediaInfo;->v:J

    .line 9
    invoke-interface {v3, v1, v2, v4, v5}, Lcom/shabakaty/downloader/br3$d;->a(JJ)V

    goto :goto_0

    :cond_1
    return-void

    .line 10
    :cond_2
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/br3$d;

    .line 11
    invoke-interface {v0, v1, v2, v1, v2}, Lcom/shabakaty/downloader/br3$d;->a(JJ)V

    goto :goto_1

    :cond_3
    return-void

    .line 12
    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/br3$d;

    .line 13
    invoke-virtual {p0}, Lcom/shabakaty/downloader/br3;->b()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/br3;->g()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/shabakaty/downloader/br3$d;->a(JJ)V

    goto :goto_3

    :cond_5
    return-void
.end method
