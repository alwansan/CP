.class public final Lcom/shabakaty/downloader/ye5;
.super Lcom/shabakaty/downloader/na7;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/pd7;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/pd7;Lcom/shabakaty/downloader/fl3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ye5;->a:Lcom/shabakaty/downloader/pd7;

    invoke-direct {p0}, Lcom/shabakaty/downloader/na7;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ye5;->a:Lcom/shabakaty/downloader/pd7;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/pd7;->e:Lcom/shabakaty/downloader/ha7;

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/xw$d;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :try_start_0
    iget-object v1, v0, Lcom/shabakaty/downloader/xw$d;->a:Lcom/shabakaty/downloader/xw;

    .line 5
    iget-object v1, v1, Lcom/shabakaty/downloader/xw;->j:Lcom/shabakaty/downloader/br3;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Lcom/shabakaty/downloader/br3;->A()V

    .line 7
    :cond_0
    iget-object v0, v0, Lcom/shabakaty/downloader/xw$d;->a:Lcom/shabakaty/downloader/xw;

    .line 8
    iget-object v0, v0, Lcom/shabakaty/downloader/xw;->e:Lcom/shabakaty/downloader/xz6;

    const/4 v1, 0x0

    .line 9
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/xz6;->onConnected(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    sget-object v1, Lcom/shabakaty/downloader/xw;->m:Lcom/shabakaty/downloader/pk2;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "onConnected"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 11
    const-class v4, Lcom/shabakaty/downloader/xz6;

    .line 12
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Unable to call %s on %s."

    .line 13
    invoke-virtual {v1, v0, v3, v2}, Lcom/shabakaty/downloader/pk2;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final b(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ye5;->a:Lcom/shabakaty/downloader/pd7;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/pd7;->e:Lcom/shabakaty/downloader/ha7;

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/xw$d;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :try_start_0
    iget-object v0, v0, Lcom/shabakaty/downloader/xw$d;->a:Lcom/shabakaty/downloader/xw;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/xw;->e:Lcom/shabakaty/downloader/xz6;

    .line 6
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/xz6;->onConnectionSuspended(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    sget-object v0, Lcom/shabakaty/downloader/xw;->m:Lcom/shabakaty/downloader/pk2;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onConnectionSuspended"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 8
    const-class v3, Lcom/shabakaty/downloader/xz6;

    .line 9
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Unable to call %s on %s."

    .line 10
    invoke-virtual {v0, p1, v2, v1}, Lcom/shabakaty/downloader/pk2;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final c(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ye5;->a:Lcom/shabakaty/downloader/pd7;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/pd7;->e:Lcom/shabakaty/downloader/ha7;

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/xw$d;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/xw$d;->a(I)V

    return-void
.end method

.method public final d(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ye5;->a:Lcom/shabakaty/downloader/pd7;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/pd7;->e:Lcom/shabakaty/downloader/ha7;

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/xw$d;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/xw$d;->a(I)V

    return-void
.end method
