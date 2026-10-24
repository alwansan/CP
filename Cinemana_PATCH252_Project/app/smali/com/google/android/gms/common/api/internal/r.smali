.class public final Lcom/google/android/gms/common/api/internal/r;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/gb0;

.field public final synthetic s:Lcom/google/android/gms/common/api/internal/c$c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/c$c;Lcom/shabakaty/downloader/gb0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/r;->s:Lcom/google/android/gms/common/api/internal/c$c;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/r;->r:Lcom/shabakaty/downloader/gb0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/r;->s:Lcom/google/android/gms/common/api/internal/c$c;

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/c$c;->f:Lcom/google/android/gms/common/api/internal/c;

    .line 2
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/c;->x:Ljava/util/Map;

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/c$c;->b:Lcom/shabakaty/downloader/j9;

    .line 4
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/c$a;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/r;->r:Lcom/shabakaty/downloader/gb0;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/gb0;->o1()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/r;->s:Lcom/google/android/gms/common/api/internal/c$c;

    const/4 v3, 0x1

    .line 7
    iput-boolean v3, v1, Lcom/google/android/gms/common/api/internal/c$c;->e:Z

    .line 8
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/c$c;->a:Lcom/google/android/gms/common/api/a$f;

    .line 9
    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$f;->E()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/r;->s:Lcom/google/android/gms/common/api/internal/c$c;

    .line 11
    iget-boolean v1, v0, Lcom/google/android/gms/common/api/internal/c$c;->e:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/c$c;->c:Lcom/shabakaty/downloader/uw1;

    if-eqz v1, :cond_1

    .line 12
    iget-object v2, v0, Lcom/google/android/gms/common/api/internal/c$c;->a:Lcom/google/android/gms/common/api/a$f;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/c$c;->d:Ljava/util/Set;

    invoke-interface {v2, v1, v0}, Lcom/google/android/gms/common/api/a$f;->w(Lcom/shabakaty/downloader/uw1;Ljava/util/Set;)V

    :cond_1
    return-void

    .line 13
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/r;->s:Lcom/google/android/gms/common/api/internal/c$c;

    .line 14
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/c$c;->a:Lcom/google/android/gms/common/api/a$f;

    .line 15
    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$f;->r()Ljava/util/Set;

    move-result-object v3

    .line 16
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/common/api/a$f;->w(Lcom/shabakaty/downloader/uw1;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v3, "GoogleApiManager"

    const-string v4, "Failed to get service from broker. "

    .line 17
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/r;->s:Lcom/google/android/gms/common/api/internal/c$c;

    .line 19
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/c$c;->a:Lcom/google/android/gms/common/api/a$f;

    const-string v3, "Failed to get service from broker."

    .line 20
    invoke-interface {v1, v3}, Lcom/google/android/gms/common/api/a$f;->s(Ljava/lang/String;)V

    .line 21
    new-instance v1, Lcom/shabakaty/downloader/gb0;

    const/16 v3, 0xa

    invoke-direct {v1, v3}, Lcom/shabakaty/downloader/gb0;-><init>(I)V

    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/internal/c$a;->g(Lcom/shabakaty/downloader/gb0;Ljava/lang/Exception;)V

    return-void

    .line 23
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/r;->r:Lcom/shabakaty/downloader/gb0;

    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/internal/c$a;->g(Lcom/shabakaty/downloader/gb0;Ljava/lang/Exception;)V

    return-void
.end method
