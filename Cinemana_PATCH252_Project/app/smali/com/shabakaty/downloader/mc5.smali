.class public final Lcom/shabakaty/downloader/mc5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.4.0"

# interfaces
.implements Lcom/shabakaty/downloader/nb3$a;


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/nb3;

.field public final synthetic b:Lcom/shabakaty/downloader/zk4;

.field public final synthetic c:Lcom/shabakaty/downloader/ob3$a;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/nb3;Lcom/shabakaty/downloader/zk4;Lcom/shabakaty/downloader/ob3$a;Lcom/shabakaty/downloader/ob3$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/mc5;->a:Lcom/shabakaty/downloader/nb3;

    iput-object p2, p0, Lcom/shabakaty/downloader/mc5;->b:Lcom/shabakaty/downloader/zk4;

    iput-object p3, p0, Lcom/shabakaty/downloader/mc5;->c:Lcom/shabakaty/downloader/ob3$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->W0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/mc5;->a:Lcom/shabakaty/downloader/nb3;

    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    check-cast p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-boolean v3, p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->j:Z

    xor-int/lit8 v3, v3, 0x1

    const-string v4, "Result has already been consumed."

    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/a;->l(ZLjava/lang/Object;)V

    .line 4
    :try_start_0
    iget-object v3, p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    sget-object v0, Lcom/google/android/gms/common/api/Status;->z:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->f(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->x:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->f(Lcom/google/android/gms/common/api/Status;)V

    .line 7
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->g()Z

    move-result v0

    const-string v1, "Result is not ready."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/a;->l(ZLjava/lang/Object;)V

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->l()Lcom/shabakaty/downloader/ft3;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/mc5;->b:Lcom/shabakaty/downloader/zk4;

    iget-object v1, p0, Lcom/shabakaty/downloader/mc5;->c:Lcom/shabakaty/downloader/ob3$a;

    invoke-interface {v1, p1}, Lcom/shabakaty/downloader/ob3$a;->a(Lcom/shabakaty/downloader/ft3;)Ljava/lang/Object;

    move-result-object p1

    .line 10
    iget-object v0, v0, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ye7;->q(Ljava/lang/Object;)V

    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/mc5;->b:Lcom/shabakaty/downloader/zk4;

    .line 12
    invoke-static {p1}, Lcom/shabakaty/downloader/i9;->a(Lcom/google/android/gms/common/api/Status;)Lcom/shabakaty/downloader/g9;

    move-result-object p1

    .line 13
    iget-object v0, v0, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ye7;->p(Ljava/lang/Exception;)V

    return-void
.end method
