.class Lcom/connectsdk/service/CastService$CastClient;
.super Ljava/lang/Object;
.source "CastService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/connectsdk/service/CastService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CastClient"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createCastClientException(Ljava/lang/Exception;)Lcom/connectsdk/service/CastService$CastClientException;
    .locals 2

    .line 1
    new-instance v0, Lcom/connectsdk/service/CastService$CastClientException;

    const-string v1, "CastClient error"

    invoke-direct {v0, v1, p1}, Lcom/connectsdk/service/CastService$CastClientException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v0
.end method


# virtual methods
.method public getApplicationMetadata(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/shabakaty/downloader/nc;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/shabakaty/downloader/nw;->b:Lcom/shabakaty/downloader/nw$b;

    check-cast v0, Lcom/shabakaty/downloader/nw$b$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/yg5;->a:Lcom/google/android/gms/common/api/a$g;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->d(Lcom/google/android/gms/common/api/a$c;)Lcom/google/android/gms/common/api/a$f;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/s57;

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ij;->e()V

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/s57;->X:Lcom/shabakaty/downloader/nc;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    invoke-direct {p0, p1}, Lcom/connectsdk/service/CastService$CastClient;->createCastClientException(Ljava/lang/Exception;)Lcom/connectsdk/service/CastService$CastClientException;

    move-result-object p1

    throw p1
.end method

.method public getApplicationStatus(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/shabakaty/downloader/nw;->b:Lcom/shabakaty/downloader/nw$b;

    check-cast v0, Lcom/shabakaty/downloader/nw$b$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/yg5;->a:Lcom/google/android/gms/common/api/a$g;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->d(Lcom/google/android/gms/common/api/a$c;)Lcom/google/android/gms/common/api/a$f;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/s57;

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ij;->e()V

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/s57;->e0:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    invoke-direct {p0, p1}, Lcom/connectsdk/service/CastService$CastClient;->createCastClientException(Ljava/lang/Exception;)Lcom/connectsdk/service/CastService$CastClientException;

    move-result-object p1

    throw p1
.end method

.method public getVolume(Lcom/google/android/gms/common/api/GoogleApiClient;)D
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/shabakaty/downloader/nw;->b:Lcom/shabakaty/downloader/nw$b;

    check-cast v0, Lcom/shabakaty/downloader/nw$b$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/yg5;->a:Lcom/google/android/gms/common/api/a$g;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->d(Lcom/google/android/gms/common/api/a$c;)Lcom/google/android/gms/common/api/a$f;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/s57;

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ij;->e()V

    .line 4
    iget-wide v0, p1, Lcom/shabakaty/downloader/s57;->j0:D
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 5
    invoke-direct {p0, p1}, Lcom/connectsdk/service/CastService$CastClient;->createCastClientException(Ljava/lang/Exception;)Lcom/connectsdk/service/CastService$CastClientException;

    move-result-object p1

    throw p1
.end method

.method public isMute(Lcom/google/android/gms/common/api/GoogleApiClient;)Z
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/shabakaty/downloader/nw;->b:Lcom/shabakaty/downloader/nw$b;

    check-cast v0, Lcom/shabakaty/downloader/nw$b$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/yg5;->a:Lcom/google/android/gms/common/api/a$g;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->d(Lcom/google/android/gms/common/api/a$c;)Lcom/google/android/gms/common/api/a$f;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/s57;

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ij;->e()V

    .line 4
    iget-boolean p1, p1, Lcom/shabakaty/downloader/s57;->f0:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 5
    invoke-direct {p0, p1}, Lcom/connectsdk/service/CastService$CastClient;->createCastClientException(Ljava/lang/Exception;)Lcom/connectsdk/service/CastService$CastClientException;

    move-result-object p1

    throw p1
.end method

.method public joinApplication(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/shabakaty/downloader/nb3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/shabakaty/downloader/nb3<",
            "Lcom/shabakaty/downloader/nw$a;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lcom/shabakaty/downloader/nw;->b:Lcom/shabakaty/downloader/nw$b;

    check-cast v0, Lcom/shabakaty/downloader/nw$b$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/el6;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lcom/shabakaty/downloader/el6;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->c(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/b;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-direct {p0, p1}, Lcom/connectsdk/service/CastService$CastClient;->createCastClientException(Ljava/lang/Exception;)Lcom/connectsdk/service/CastService$CastClientException;

    move-result-object p1

    throw p1
.end method

.method public joinApplication(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/shabakaty/downloader/nb3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/nb3<",
            "Lcom/shabakaty/downloader/nw$a;",
            ">;"
        }
    .end annotation

    .line 4
    :try_start_0
    sget-object v0, Lcom/shabakaty/downloader/nw;->b:Lcom/shabakaty/downloader/nw$b;

    check-cast v0, Lcom/shabakaty/downloader/nw$b$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/el6;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/shabakaty/downloader/el6;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->c(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/b;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 6
    invoke-direct {p0, p1}, Lcom/connectsdk/service/CastService$CastClient;->createCastClientException(Ljava/lang/Exception;)Lcom/connectsdk/service/CastService$CastClientException;

    move-result-object p1

    throw p1
.end method

.method public launchApplication(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/shabakaty/downloader/if2;)Lcom/shabakaty/downloader/nb3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/if2;",
            ")",
            "Lcom/shabakaty/downloader/nb3<",
            "Lcom/shabakaty/downloader/nw$a;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lcom/shabakaty/downloader/nw;->b:Lcom/shabakaty/downloader/nw$b;

    check-cast v0, Lcom/shabakaty/downloader/nw$b$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ro6;

    invoke-direct {v0, p1, p2, p3}, Lcom/shabakaty/downloader/ro6;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/shabakaty/downloader/if2;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->c(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/b;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-direct {p0, p1}, Lcom/connectsdk/service/CastService$CastClient;->createCastClientException(Ljava/lang/Exception;)Lcom/connectsdk/service/CastService$CastClientException;

    move-result-object p1

    throw p1
.end method

.method public leaveApplication(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/shabakaty/downloader/nw;->b:Lcom/shabakaty/downloader/nw$b;

    check-cast v0, Lcom/shabakaty/downloader/nw$b$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/cv6;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/cv6;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->c(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/b;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    invoke-direct {p0, p1}, Lcom/connectsdk/service/CastService$CastClient;->createCastClientException(Ljava/lang/Exception;)Lcom/connectsdk/service/CastService$CastClientException;

    move-result-object p1

    throw p1
.end method

.method public removeMessageReceivedCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/shabakaty/downloader/nw;->b:Lcom/shabakaty/downloader/nw$b;

    check-cast v0, Lcom/shabakaty/downloader/nw$b$a;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/nw$b$a;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    invoke-direct {p0, p1}, Lcom/connectsdk/service/CastService$CastClient;->createCastClientException(Ljava/lang/Exception;)Lcom/connectsdk/service/CastService$CastClientException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 3
    invoke-direct {p0, p1}, Lcom/connectsdk/service/CastService$CastClient;->createCastClientException(Ljava/lang/Exception;)Lcom/connectsdk/service/CastService$CastClientException;

    move-result-object p1

    throw p1
.end method

.method public setMessageReceivedCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/shabakaty/downloader/cr3;)V
    .locals 1

    .line 1
    :try_start_0
    sget-object p2, Lcom/shabakaty/downloader/nw;->b:Lcom/shabakaty/downloader/nw$b;

    .line 2
    iget-object v0, p3, Lcom/shabakaty/downloader/cr3;->b:Lcom/shabakaty/downloader/oh5;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/l56;->b:Ljava/lang/String;

    .line 4
    check-cast p2, Lcom/shabakaty/downloader/nw$b$a;

    invoke-virtual {p2, p1, v0, p3}, Lcom/shabakaty/downloader/nw$b$a;->b(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/shabakaty/downloader/nw$e;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5
    invoke-direct {p0, p1}, Lcom/connectsdk/service/CastService$CastClient;->createCastClientException(Ljava/lang/Exception;)Lcom/connectsdk/service/CastService$CastClientException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 6
    invoke-direct {p0, p1}, Lcom/connectsdk/service/CastService$CastClient;->createCastClientException(Ljava/lang/Exception;)Lcom/connectsdk/service/CastService$CastClientException;

    move-result-object p1

    throw p1
.end method

.method public setMute(Lcom/google/android/gms/common/api/GoogleApiClient;Z)V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/shabakaty/downloader/nw;->b:Lcom/shabakaty/downloader/nw$b;

    check-cast v0, Lcom/shabakaty/downloader/nw$b$a;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/nw$b$a;->c(Lcom/google/android/gms/common/api/GoogleApiClient;Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    invoke-direct {p0, p1}, Lcom/connectsdk/service/CastService$CastClient;->createCastClientException(Ljava/lang/Exception;)Lcom/connectsdk/service/CastService$CastClientException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 3
    invoke-direct {p0, p1}, Lcom/connectsdk/service/CastService$CastClient;->createCastClientException(Ljava/lang/Exception;)Lcom/connectsdk/service/CastService$CastClientException;

    move-result-object p1

    throw p1
.end method

.method public setVolume(Lcom/google/android/gms/common/api/GoogleApiClient;F)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/shabakaty/downloader/nw;->b:Lcom/shabakaty/downloader/nw$b;

    float-to-double v1, p2

    check-cast v0, Lcom/shabakaty/downloader/nw$b$a;

    invoke-virtual {v0, p1, v1, v2}, Lcom/shabakaty/downloader/nw$b$a;->d(Lcom/google/android/gms/common/api/GoogleApiClient;D)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    invoke-direct {p0, p1}, Lcom/connectsdk/service/CastService$CastClient;->createCastClientException(Ljava/lang/Exception;)Lcom/connectsdk/service/CastService$CastClientException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 3
    invoke-direct {p0, p1}, Lcom/connectsdk/service/CastService$CastClient;->createCastClientException(Ljava/lang/Exception;)Lcom/connectsdk/service/CastService$CastClientException;

    move-result-object p1

    throw p1
.end method

.method public stopApplication(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/shabakaty/downloader/nb3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/shabakaty/downloader/nb3<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .line 4
    :try_start_0
    sget-object v0, Lcom/shabakaty/downloader/nw;->b:Lcom/shabakaty/downloader/nw$b;

    check-cast v0, Lcom/shabakaty/downloader/nw$b$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/or6;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/or6;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->c(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/b;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 6
    invoke-direct {p0, p1}, Lcom/connectsdk/service/CastService$CastClient;->createCastClientException(Ljava/lang/Exception;)Lcom/connectsdk/service/CastService$CastClientException;

    move-result-object p1

    throw p1
.end method

.method public stopApplication(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/shabakaty/downloader/nb3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/nb3<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lcom/shabakaty/downloader/nw;->b:Lcom/shabakaty/downloader/nw$b;

    check-cast v0, Lcom/shabakaty/downloader/nw$b$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/wz6;

    invoke-direct {v0, p1, p2}, Lcom/shabakaty/downloader/wz6;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->c(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/b;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-direct {p0, p1}, Lcom/connectsdk/service/CastService$CastClient;->createCastClientException(Ljava/lang/Exception;)Lcom/connectsdk/service/CastService$CastClientException;

    move-result-object p1

    throw p1
.end method
