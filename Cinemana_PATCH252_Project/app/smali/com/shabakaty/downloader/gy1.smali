.class public final synthetic Lcom/shabakaty/downloader/gy1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/ar$c;
.implements Lcom/shabakaty/downloader/td0;


# instance fields
.field public final synthetic r:Ljava/lang/Object;

.field public final synthetic s:Ljava/lang/Object;

.field public final synthetic t:Ljava/lang/Object;

.field public final synthetic u:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/remoteconfig/internal/a;Lcom/shabakaty/downloader/uk4;Lcom/shabakaty/downloader/uk4;Ljava/util/Date;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/gy1;->r:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/gy1;->s:Ljava/lang/Object;

    iput-object p3, p0, Lcom/shabakaty/downloader/gy1;->t:Ljava/lang/Object;

    iput-object p4, p0, Lcom/shabakaty/downloader/gy1;->u:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/iy1;Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/fz1;Lcom/shabakaty/downloader/fy1$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/gy1;->r:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/gy1;->s:Ljava/lang/Object;

    iput-object p3, p0, Lcom/shabakaty/downloader/gy1;->t:Ljava/lang/Object;

    iput-object p4, p0, Lcom/shabakaty/downloader/gy1;->u:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public M(Lcom/shabakaty/downloader/uk4;)Ljava/lang/Object;
    .locals 4

    iget-object p1, p0, Lcom/shabakaty/downloader/gy1;->r:Ljava/lang/Object;

    check-cast p1, Lcom/google/firebase/remoteconfig/internal/a;

    iget-object v0, p0, Lcom/shabakaty/downloader/gy1;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/uk4;

    iget-object v1, p0, Lcom/shabakaty/downloader/gy1;->t:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/uk4;

    iget-object v2, p0, Lcom/shabakaty/downloader/gy1;->u:Ljava/lang/Object;

    check-cast v2, Ljava/util/Date;

    sget-object v3, Lcom/google/firebase/remoteconfig/internal/a;->j:[I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uk4;->l()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/gd1;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uk4;->g()Ljava/lang/Exception;

    move-result-object v0

    const-string v1, "Firebase Installations failed to get installation ID for fetch."

    invoke-direct {p1, v1, v0}, Lcom/shabakaty/downloader/gd1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    invoke-static {p1}, Lcom/shabakaty/downloader/kl4;->d(Ljava/lang/Exception;)Lcom/shabakaty/downloader/uk4;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/shabakaty/downloader/uk4;->l()Z

    move-result v3

    if-nez v3, :cond_1

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/gd1;

    .line 7
    invoke-virtual {v1}, Lcom/shabakaty/downloader/uk4;->g()Ljava/lang/Exception;

    move-result-object v0

    const-string v1, "Firebase Installations failed to get installation auth token for fetch."

    invoke-direct {p1, v1, v0}, Lcom/shabakaty/downloader/gd1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    invoke-static {p1}, Lcom/shabakaty/downloader/kl4;->d(Ljava/lang/Exception;)Lcom/shabakaty/downloader/uk4;

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uk4;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 10
    invoke-virtual {v1}, Lcom/shabakaty/downloader/uk4;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/v12;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/v12;->a()Ljava/lang/String;

    move-result-object v1

    .line 11
    :try_start_0
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/firebase/remoteconfig/internal/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Lcom/google/firebase/remoteconfig/internal/a$a;

    move-result-object v0

    .line 12
    iget v1, v0, Lcom/google/firebase/remoteconfig/internal/a$a;->a:I

    if-eqz v1, :cond_2

    .line 13
    invoke-static {v0}, Lcom/shabakaty/downloader/kl4;->e(Ljava/lang/Object;)Lcom/shabakaty/downloader/uk4;

    move-result-object p1

    goto :goto_0

    .line 14
    :cond_2
    iget-object v1, p1, Lcom/google/firebase/remoteconfig/internal/a;->e:Lcom/shabakaty/downloader/s90;

    .line 15
    iget-object v2, v0, Lcom/google/firebase/remoteconfig/internal/a$a;->b:Lcom/shabakaty/downloader/t90;

    .line 16
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/s90;->c(Lcom/shabakaty/downloader/t90;)Lcom/shabakaty/downloader/uk4;

    move-result-object v1

    iget-object p1, p1, Lcom/google/firebase/remoteconfig/internal/a;->c:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/shabakaty/downloader/cu;

    invoke-direct {v2, v0}, Lcom/shabakaty/downloader/cu;-><init>(Lcom/google/firebase/remoteconfig/internal/a$a;)V

    .line 17
    invoke-virtual {v1, p1, v2}, Lcom/shabakaty/downloader/uk4;->n(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/kh4;)Lcom/shabakaty/downloader/uk4;

    move-result-object p1
    :try_end_0
    .catch Lcom/shabakaty/downloader/hd1; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18
    invoke-static {p1}, Lcom/shabakaty/downloader/kl4;->d(Ljava/lang/Exception;)Lcom/shabakaty/downloader/uk4;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public f(Lcom/shabakaty/downloader/ar$a;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/shabakaty/downloader/gy1;->r:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/iy1;

    iget-object v1, p0, Lcom/shabakaty/downloader/gy1;->s:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/shabakaty/downloader/gy1;->t:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/fz1;

    iget-object v3, p0, Lcom/shabakaty/downloader/gy1;->u:Ljava/lang/Object;

    check-cast v3, Lcom/shabakaty/downloader/fy1$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    new-instance v4, Lcom/shabakaty/downloader/hy1;

    invoke-direct {v4, v0, v2, v3, p1}, Lcom/shabakaty/downloader/hy1;-><init>(Lcom/shabakaty/downloader/iy1;Lcom/shabakaty/downloader/fz1;Lcom/shabakaty/downloader/fy1$a;Lcom/shabakaty/downloader/ar$a;)V

    invoke-interface {v1, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string p1, "analyzeImage"

    return-object p1
.end method
