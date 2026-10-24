.class public final Lcom/shabakaty/downloader/xw$a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/gt3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/xw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/gt3<",
        "Lcom/shabakaty/downloader/nw$a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public final synthetic b:Lcom/shabakaty/downloader/xw;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/xw;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/xw$a;->b:Lcom/shabakaty/downloader/xw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/xw$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onResult(Lcom/shabakaty/downloader/ft3;)V
    .locals 6

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/nw$a;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/xw$a;->b:Lcom/shabakaty/downloader/xw;

    .line 3
    iput-object p1, v0, Lcom/shabakaty/downloader/xw;->l:Lcom/shabakaty/downloader/nw$a;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-interface {p1}, Lcom/shabakaty/downloader/ft3;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->W0()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    sget-object v2, Lcom/shabakaty/downloader/xw;->m:Lcom/shabakaty/downloader/pk2;

    const-string v3, "%s() -> success result"

    new-array v4, v0, [Ljava/lang/Object;

    .line 6
    iget-object v5, p0, Lcom/shabakaty/downloader/xw$a;->a:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/shabakaty/downloader/pk2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iget-object v2, p0, Lcom/shabakaty/downloader/xw$a;->b:Lcom/shabakaty/downloader/xw;

    new-instance v3, Lcom/shabakaty/downloader/br3;

    new-instance v4, Lcom/shabakaty/downloader/oh5;

    invoke-direct {v4}, Lcom/shabakaty/downloader/oh5;-><init>()V

    invoke-direct {v3, v4}, Lcom/shabakaty/downloader/br3;-><init>(Lcom/shabakaty/downloader/oh5;)V

    .line 8
    iput-object v3, v2, Lcom/shabakaty/downloader/xw;->j:Lcom/shabakaty/downloader/br3;

    .line 9
    iget-object v2, p0, Lcom/shabakaty/downloader/xw$a;->b:Lcom/shabakaty/downloader/xw;

    .line 10
    iget-object v3, v2, Lcom/shabakaty/downloader/xw;->j:Lcom/shabakaty/downloader/br3;

    .line 11
    iget-object v2, v2, Lcom/shabakaty/downloader/xw;->i:Lcom/shabakaty/downloader/qc7;

    .line 12
    invoke-virtual {v3, v2}, Lcom/shabakaty/downloader/br3;->y(Lcom/shabakaty/downloader/qc7;)V

    .line 13
    iget-object v2, p0, Lcom/shabakaty/downloader/xw$a;->b:Lcom/shabakaty/downloader/xw;

    .line 14
    iget-object v2, v2, Lcom/shabakaty/downloader/xw;->j:Lcom/shabakaty/downloader/br3;

    .line 15
    invoke-virtual {v2}, Lcom/shabakaty/downloader/br3;->A()V

    .line 16
    iget-object v2, p0, Lcom/shabakaty/downloader/xw$a;->b:Lcom/shabakaty/downloader/xw;

    .line 17
    iget-object v3, v2, Lcom/shabakaty/downloader/xw;->g:Lcom/shabakaty/downloader/o27;

    .line 18
    iget-object v4, v2, Lcom/shabakaty/downloader/xw;->j:Lcom/shabakaty/downloader/br3;

    .line 19
    invoke-virtual {v2}, Lcom/shabakaty/downloader/xw;->j()Lcom/google/android/gms/cast/CastDevice;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/shabakaty/downloader/o27;->d(Lcom/shabakaty/downloader/br3;Lcom/google/android/gms/cast/CastDevice;)V

    .line 20
    iget-object v2, p0, Lcom/shabakaty/downloader/xw$a;->b:Lcom/shabakaty/downloader/xw;

    .line 21
    iget-object v2, v2, Lcom/shabakaty/downloader/xw;->e:Lcom/shabakaty/downloader/xz6;

    .line 22
    invoke-interface {p1}, Lcom/shabakaty/downloader/nw$a;->l0()Lcom/shabakaty/downloader/nc;

    move-result-object v3

    .line 23
    invoke-interface {p1}, Lcom/shabakaty/downloader/nw$a;->p()Ljava/lang/String;

    move-result-object v4

    .line 24
    invoke-interface {p1}, Lcom/shabakaty/downloader/nw$a;->P0()Ljava/lang/String;

    move-result-object v5

    .line 25
    invoke-interface {p1}, Lcom/shabakaty/downloader/nw$a;->d()Z

    move-result p1

    .line 26
    invoke-interface {v2, v3, v4, v5, p1}, Lcom/shabakaty/downloader/xz6;->j(Lcom/shabakaty/downloader/nc;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 27
    :cond_0
    sget-object v2, Lcom/shabakaty/downloader/xw;->m:Lcom/shabakaty/downloader/pk2;

    const-string v3, "%s() -> failure result"

    new-array v4, v0, [Ljava/lang/Object;

    .line 28
    iget-object v5, p0, Lcom/shabakaty/downloader/xw$a;->a:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/shabakaty/downloader/pk2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    iget-object v2, p0, Lcom/shabakaty/downloader/xw$a;->b:Lcom/shabakaty/downloader/xw;

    .line 30
    iget-object v2, v2, Lcom/shabakaty/downloader/xw;->e:Lcom/shabakaty/downloader/xz6;

    .line 31
    invoke-interface {p1}, Lcom/shabakaty/downloader/ft3;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 32
    iget p1, p1, Lcom/google/android/gms/common/api/Status;->s:I

    .line 33
    invoke-interface {v2, p1}, Lcom/shabakaty/downloader/xz6;->y(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 34
    :goto_0
    sget-object v2, Lcom/shabakaty/downloader/xw;->m:Lcom/shabakaty/downloader/pk2;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "methods"

    aput-object v4, v3, v1

    .line 35
    const-class v1, Lcom/shabakaty/downloader/xz6;

    .line 36
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v0, "Unable to call %s on %s."

    .line 37
    invoke-virtual {v2, p1, v0, v3}, Lcom/shabakaty/downloader/pk2;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
