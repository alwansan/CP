.class public Lcom/shabakaty/downloader/y14;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# static fields
.field public static final c:Lcom/shabakaty/downloader/pk2;


# instance fields
.field public final a:Lcom/shabakaty/downloader/se7;

.field public final b:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pk2;

    const-string v1, "SessionManager"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/pk2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/y14;->c:Lcom/shabakaty/downloader/pk2;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/se7;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/y14;->a:Lcom/shabakaty/downloader/se7;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/y14;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/z14;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/shabakaty/downloader/s14;",
            ">(",
            "Lcom/shabakaty/downloader/z14<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "null reference"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Must be called from the main thread."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/y14;->a:Lcom/shabakaty/downloader/se7;

    new-instance v1, Lcom/shabakaty/downloader/zf5;

    invoke-direct {v1, p1, p2}, Lcom/shabakaty/downloader/zf5;-><init>(Lcom/shabakaty/downloader/z14;Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/se7;->d1(Lcom/shabakaty/downloader/lf7;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4
    sget-object p2, Lcom/shabakaty/downloader/y14;->c:Lcom/shabakaty/downloader/pk2;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "addSessionManagerListener"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/shabakaty/downloader/se7;

    .line 5
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Unable to call %s on %s."

    .line 6
    invoke-virtual {p2, p1, v1, v0}, Lcom/shabakaty/downloader/pk2;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public b(Z)V
    .locals 6

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    sget-object v2, Lcom/shabakaty/downloader/y14;->c:Lcom/shabakaty/downloader/pk2;

    const-string v3, "End session for %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/shabakaty/downloader/y14;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 3
    iget-object v5, v2, Lcom/shabakaty/downloader/pk2;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/shabakaty/downloader/pk2;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/y14;->a:Lcom/shabakaty/downloader/se7;

    invoke-interface {v2, v1, p1}, Lcom/shabakaty/downloader/se7;->C(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5
    sget-object v2, Lcom/shabakaty/downloader/y14;->c:Lcom/shabakaty/downloader/pk2;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "endCurrentSession"

    aput-object v4, v3, v0

    const-class v0, Lcom/shabakaty/downloader/se7;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    const-string v0, "Unable to call %s on %s."

    .line 7
    invoke-virtual {v2, p1, v0, v3}, Lcom/shabakaty/downloader/pk2;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public c()Lcom/shabakaty/downloader/xw;
    .locals 2

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/y14;->d()Lcom/shabakaty/downloader/s14;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    instance-of v1, v0, Lcom/shabakaty/downloader/xw;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcom/shabakaty/downloader/xw;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Lcom/shabakaty/downloader/s14;
    .locals 5

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/y14;->a:Lcom/shabakaty/downloader/se7;

    invoke-interface {v0}, Lcom/shabakaty/downloader/se7;->W1()Lcom/shabakaty/downloader/gx1;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/p43;->h2(Lcom/shabakaty/downloader/gx1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/s14;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/y14;->c:Lcom/shabakaty/downloader/pk2;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "getWrappedCurrentSession"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/shabakaty/downloader/se7;

    .line 4
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Unable to call %s on %s."

    .line 5
    invoke-virtual {v1, v0, v3, v2}, Lcom/shabakaty/downloader/pk2;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public e(Lcom/shabakaty/downloader/z14;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/shabakaty/downloader/s14;",
            ">(",
            "Lcom/shabakaty/downloader/z14<",
            "TT;>;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/y14;->a:Lcom/shabakaty/downloader/se7;

    new-instance v1, Lcom/shabakaty/downloader/zf5;

    invoke-direct {v1, p1, p2}, Lcom/shabakaty/downloader/zf5;-><init>(Lcom/shabakaty/downloader/z14;Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/se7;->O0(Lcom/shabakaty/downloader/lf7;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    sget-object p2, Lcom/shabakaty/downloader/y14;->c:Lcom/shabakaty/downloader/pk2;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "removeSessionManagerListener"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/shabakaty/downloader/se7;

    .line 4
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Unable to call %s on %s."

    .line 5
    invoke-virtual {p2, p1, v1, v0}, Lcom/shabakaty/downloader/pk2;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
