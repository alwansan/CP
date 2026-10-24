.class public abstract Lcom/shabakaty/downloader/br3$g;
.super Lcom/google/android/gms/common/api/internal/BasePendingResult;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/br3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/BasePendingResult<",
        "Lcom/shabakaty/downloader/br3$c;",
        ">;"
    }
.end annotation


# instance fields
.field public o:Lcom/shabakaty/downloader/pj5;

.field public final p:Z

.field public final synthetic q:Lcom/shabakaty/downloader/br3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/br3;Z)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/br3$g;->q:Lcom/shabakaty/downloader/br3;

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    .line 3
    iput-boolean p2, p0, Lcom/shabakaty/downloader/br3$g;->p:Z

    .line 4
    new-instance p2, Lcom/shabakaty/downloader/rl5;

    invoke-direct {p2, p0, p1}, Lcom/shabakaty/downloader/rl5;-><init>(Lcom/shabakaty/downloader/br3$g;Lcom/shabakaty/downloader/br3;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/br3$g;->o:Lcom/shabakaty/downloader/pj5;

    return-void
.end method


# virtual methods
.method public synthetic e(Lcom/google/android/gms/common/api/Status;)Lcom/shabakaty/downloader/ft3;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/il5;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/il5;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public abstract m()V
.end method

.method public final n()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/br3$g;->p:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/br3$g;->q:Lcom/shabakaty/downloader/br3;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/br3;->g:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/br3$b;

    .line 5
    invoke-interface {v1}, Lcom/shabakaty/downloader/br3$b;->q()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/br3$g;->q:Lcom/shabakaty/downloader/br3;

    iget-object v0, v0, Lcom/shabakaty/downloader/br3;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/br3$a;

    .line 7
    invoke-virtual {v1}, Lcom/shabakaty/downloader/br3$a;->e()V

    goto :goto_1

    .line 8
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/br3$g;->q:Lcom/shabakaty/downloader/br3;

    .line 9
    iget-object v0, v0, Lcom/shabakaty/downloader/br3;->a:Ljava/lang/Object;

    .line 10
    monitor-enter v0
    :try_end_0
    .catch Lcom/shabakaty/downloader/xh5; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :try_start_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/br3$g;->m()V

    .line 12
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Lcom/shabakaty/downloader/xh5; {:try_start_2 .. :try_end_2} :catch_0

    .line 13
    :catch_0
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x834

    const/4 v2, 0x0

    .line 14
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 15
    new-instance v1, Lcom/shabakaty/downloader/il5;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/il5;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 16
    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->h(Lcom/shabakaty/downloader/ft3;)V

    return-void
.end method
