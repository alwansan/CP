.class public final Lcom/shabakaty/downloader/cl6;
.super Lcom/google/android/gms/common/api/internal/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/b<",
        "Lcom/google/android/gms/common/api/Status;",
        "Lcom/shabakaty/downloader/jr6;",
        ">;"
    }
.end annotation


# instance fields
.field public final q:Lcom/shabakaty/downloader/m56;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/m56;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/o30;->m:Lcom/google/android/gms/common/api/a;

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/api/internal/b;-><init>(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/cl6;->q:Lcom/shabakaty/downloader/m56;

    return-void
.end method


# virtual methods
.method public final synthetic e(Lcom/google/android/gms/common/api/Status;)Lcom/shabakaty/downloader/ft3;
    .locals 0

    return-object p1
.end method

.method public final synthetic m(Lcom/google/android/gms/common/api/a$b;)V
    .locals 5

    check-cast p1, Lcom/shabakaty/downloader/jr6;

    new-instance v0, Lcom/shabakaty/downloader/mo6;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/mo6;-><init>(Lcom/shabakaty/downloader/cl6;)V

    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/cl6;->q:Lcom/shabakaty/downloader/m56;

    iget-object v2, v1, Lcom/shabakaty/downloader/m56;->A:Lcom/shabakaty/downloader/o30$c;

    if-eqz v2, :cond_0

    iget-object v3, v1, Lcom/shabakaty/downloader/m56;->z:Lcom/shabakaty/downloader/jl6;

    iget-object v4, v3, Lcom/shabakaty/downloader/jl6;->y:[B

    array-length v4, v4

    if-nez v4, :cond_0

    invoke-interface {v2}, Lcom/shabakaty/downloader/o30$c;->a()[B

    move-result-object v2

    iput-object v2, v3, Lcom/shabakaty/downloader/jl6;->y:[B

    :cond_0
    iget-object v2, v1, Lcom/shabakaty/downloader/m56;->z:Lcom/shabakaty/downloader/jl6;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/rf6;->c()I

    move-result v3

    new-array v4, v3, [B

    invoke-static {v2, v4, v3}, Lcom/shabakaty/downloader/rf6;->b(Lcom/shabakaty/downloader/rf6;[BI)V

    iput-object v4, v1, Lcom/shabakaty/downloader/m56;->s:[B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ij;->k()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/w57;

    iget-object v1, p0, Lcom/shabakaty/downloader/cl6;->q:Lcom/shabakaty/downloader/m56;

    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/w57;->j1(Lcom/shabakaty/downloader/pz6;Lcom/shabakaty/downloader/m56;)V

    return-void

    :catch_0
    move-exception p1

    const-string v0, "ClearcutLoggerApiImpl"

    const-string v1, "derived ClearcutLogger.MessageProducer "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0xa

    const-string v1, "MessageProducer"

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/b;->o(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
