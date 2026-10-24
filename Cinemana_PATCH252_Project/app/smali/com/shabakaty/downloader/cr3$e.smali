.class public abstract Lcom/shabakaty/downloader/cr3$e;
.super Lcom/shabakaty/downloader/um5;
.source "com.google.android.gms:play-services-cast@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/cr3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/um5<",
        "Lcom/shabakaty/downloader/cr3$a;",
        ">;"
    }
.end annotation


# instance fields
.field public q:Lcom/shabakaty/downloader/pj5;

.field public final r:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic s:Lcom/shabakaty/downloader/cr3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/cr3;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/cr3$e;->s:Lcom/shabakaty/downloader/cr3;

    .line 2
    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/um5;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/cr3$e;->r:Ljava/lang/ref/WeakReference;

    .line 4
    new-instance p2, Lcom/shabakaty/downloader/zy5;

    invoke-direct {p2, p0, p1}, Lcom/shabakaty/downloader/zy5;-><init>(Lcom/shabakaty/downloader/cr3$e;Lcom/shabakaty/downloader/cr3;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/cr3$e;->q:Lcom/shabakaty/downloader/pj5;

    return-void
.end method


# virtual methods
.method public synthetic e(Lcom/google/android/gms/common/api/Status;)Lcom/shabakaty/downloader/ft3;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ez5;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/ez5;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public m(Lcom/google/android/gms/common/api/a$b;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/s57;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/cr3$e;->s:Lcom/shabakaty/downloader/cr3;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/cr3;->a:Ljava/lang/Object;

    .line 4
    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/cr3$e;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/GoogleApiClient;

    const/16 v2, 0x834

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 6
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    .line 7
    invoke-direct {p1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 8
    new-instance v1, Lcom/shabakaty/downloader/ez5;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/ez5;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 9
    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->h(Lcom/shabakaty/downloader/ft3;)V

    .line 10
    monitor-exit v0

    return-void

    .line 11
    :cond_0
    iget-object v4, p0, Lcom/shabakaty/downloader/cr3$e;->s:Lcom/shabakaty/downloader/cr3;

    .line 12
    iget-object v4, v4, Lcom/shabakaty/downloader/cr3;->c:Lcom/shabakaty/downloader/cr3$d;

    .line 13
    iput-object v1, v4, Lcom/shabakaty/downloader/cr3$d;->a:Lcom/google/android/gms/common/api/GoogleApiClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/cr3$e;->q(Lcom/shabakaty/downloader/s57;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 15
    :catchall_0
    :try_start_2
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    .line 16
    invoke-direct {p1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 17
    new-instance v1, Lcom/shabakaty/downloader/ez5;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/ez5;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 18
    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->h(Lcom/shabakaty/downloader/ft3;)V

    .line 19
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/cr3$e;->s:Lcom/shabakaty/downloader/cr3;

    .line 20
    iget-object p1, p1, Lcom/shabakaty/downloader/cr3;->c:Lcom/shabakaty/downloader/cr3$d;

    .line 21
    iput-object v3, p1, Lcom/shabakaty/downloader/cr3$d;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 22
    monitor-exit v0

    return-void

    :catch_0
    move-exception p1

    .line 23
    throw p1

    :catchall_1
    move-exception p1

    .line 24
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public abstract q(Lcom/shabakaty/downloader/s57;)V
.end method
