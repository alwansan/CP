.class public abstract Lcom/shabakaty/downloader/s14;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/s14$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/shabakaty/downloader/pk2;


# instance fields
.field public final a:Lcom/shabakaty/downloader/ge7;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pk2;

    const-string v1, "Session"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/pk2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/s14;->b:Lcom/shabakaty/downloader/pk2;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/s14$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/s14$a;-><init>(Lcom/shabakaty/downloader/s14;Lcom/shabakaty/downloader/kl3;)V

    .line 3
    sget-object v2, Lcom/shabakaty/downloader/lg5;->a:Lcom/shabakaty/downloader/pk2;

    .line 4
    :try_start_0
    invoke-static {p1}, Lcom/shabakaty/downloader/lg5;->a(Landroid/content/Context;)Lcom/shabakaty/downloader/zg5;

    move-result-object p1

    .line 5
    invoke-interface {p1, p2, p3, v0}, Lcom/shabakaty/downloader/zg5;->W0(Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/ne5;)Lcom/shabakaty/downloader/ge7;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/shabakaty/downloader/of5; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 6
    :goto_0
    sget-object p2, Lcom/shabakaty/downloader/lg5;->a:Lcom/shabakaty/downloader/pk2;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v2, "newSessionImpl"

    aput-object v2, p3, v0

    const/4 v0, 0x1

    const-class v2, Lcom/shabakaty/downloader/zg5;

    .line 7
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v0

    const-string v0, "Unable to call %s on %s."

    .line 8
    invoke-virtual {p2, p1, v0, p3}, Lcom/shabakaty/downloader/pk2;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    :goto_1
    iput-object v1, p0, Lcom/shabakaty/downloader/s14;->a:Lcom/shabakaty/downloader/ge7;

    return-void
.end method


# virtual methods
.method public abstract a(Z)V
.end method

.method public b()J
    .locals 2

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public c()Z
    .locals 6

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/s14;->a:Lcom/shabakaty/downloader/ge7;

    invoke-interface {v0}, Lcom/shabakaty/downloader/ge7;->isConnected()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/s14;->b:Lcom/shabakaty/downloader/pk2;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "isConnected"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-class v5, Lcom/shabakaty/downloader/ge7;

    .line 4
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v3, "Unable to call %s on %s."

    .line 5
    invoke-virtual {v1, v0, v3, v2}, Lcom/shabakaty/downloader/pk2;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4
.end method

.method public final d(I)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/s14;->a:Lcom/shabakaty/downloader/ge7;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/ge7;->B0(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/s14;->b:Lcom/shabakaty/downloader/pk2;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "notifySessionEnded"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/shabakaty/downloader/ge7;

    .line 3
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Unable to call %s on %s."

    .line 4
    invoke-virtual {v0, p1, v2, v1}, Lcom/shabakaty/downloader/pk2;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public f(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public abstract g(Landroid/os/Bundle;)V
.end method

.method public abstract h(Landroid/os/Bundle;)V
.end method

.method public final i()Lcom/shabakaty/downloader/gx1;
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/s14;->a:Lcom/shabakaty/downloader/ge7;

    invoke-interface {v0}, Lcom/shabakaty/downloader/ge7;->F1()Lcom/shabakaty/downloader/gx1;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/s14;->b:Lcom/shabakaty/downloader/pk2;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "getWrappedObject"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/shabakaty/downloader/ge7;

    .line 3
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Unable to call %s on %s."

    .line 4
    invoke-virtual {v1, v0, v3, v2}, Lcom/shabakaty/downloader/pk2;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method
