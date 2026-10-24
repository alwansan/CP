.class public Lcom/shabakaty/downloader/xw;
.super Lcom/shabakaty/downloader/s14;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/xw$c;,
        Lcom/shabakaty/downloader/xw$a;,
        Lcom/shabakaty/downloader/xw$b;,
        Lcom/shabakaty/downloader/xw$d;
    }
.end annotation


# static fields
.field public static final m:Lcom/shabakaty/downloader/pk2;


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/nw$d;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lcom/shabakaty/downloader/xz6;

.field public final f:Lcom/shabakaty/downloader/vw;

.field public final g:Lcom/shabakaty/downloader/o27;

.field public final h:Lcom/shabakaty/downloader/ae7;

.field public i:Lcom/shabakaty/downloader/qc7;

.field public j:Lcom/shabakaty/downloader/br3;

.field public k:Lcom/google/android/gms/cast/CastDevice;

.field public l:Lcom/shabakaty/downloader/nw$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pk2;

    const-string v1, "CastSession"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/pk2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/xw;->m:Lcom/shabakaty/downloader/pk2;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/vw;Lcom/shabakaty/downloader/ae7;Lcom/shabakaty/downloader/o27;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/shabakaty/downloader/s14;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/shabakaty/downloader/xw;->d:Ljava/util/Set;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/xw;->c:Landroid/content/Context;

    .line 4
    iput-object p4, p0, Lcom/shabakaty/downloader/xw;->f:Lcom/shabakaty/downloader/vw;

    .line 5
    iput-object p6, p0, Lcom/shabakaty/downloader/xw;->g:Lcom/shabakaty/downloader/o27;

    .line 6
    iput-object p5, p0, Lcom/shabakaty/downloader/xw;->h:Lcom/shabakaty/downloader/ae7;

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s14;->i()Lcom/shabakaty/downloader/gx1;

    move-result-object p2

    new-instance p3, Lcom/shabakaty/downloader/xw$c;

    const/4 p5, 0x0

    invoke-direct {p3, p0, p5}, Lcom/shabakaty/downloader/xw$c;-><init>(Lcom/shabakaty/downloader/xw;Lcom/shabakaty/downloader/ol3;)V

    .line 8
    sget-object p6, Lcom/shabakaty/downloader/lg5;->a:Lcom/shabakaty/downloader/pk2;

    .line 9
    :try_start_0
    invoke-static {p1}, Lcom/shabakaty/downloader/lg5;->a(Landroid/content/Context;)Lcom/shabakaty/downloader/zg5;

    move-result-object p1

    .line 10
    invoke-interface {p1, p4, p2, p3}, Lcom/shabakaty/downloader/zg5;->G0(Lcom/shabakaty/downloader/vw;Lcom/shabakaty/downloader/gx1;Lcom/shabakaty/downloader/bg6;)Lcom/shabakaty/downloader/xz6;

    move-result-object p5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/shabakaty/downloader/of5; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 11
    :goto_0
    sget-object p2, Lcom/shabakaty/downloader/lg5;->a:Lcom/shabakaty/downloader/pk2;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    const-string p6, "newCastSessionImpl"

    aput-object p6, p3, p4

    const/4 p4, 0x1

    const-class p6, Lcom/shabakaty/downloader/zg5;

    .line 12
    invoke-virtual {p6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p6

    aput-object p6, p3, p4

    const-string p4, "Unable to call %s on %s."

    .line 13
    invoke-virtual {p2, p1, p4, p3}, Lcom/shabakaty/downloader/pk2;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    :goto_1
    iput-object p5, p0, Lcom/shabakaty/downloader/xw;->e:Lcom/shabakaty/downloader/xz6;

    return-void
.end method

.method public static n(Lcom/shabakaty/downloader/xw;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xw;->g:Lcom/shabakaty/downloader/o27;

    .line 2
    iget-boolean v1, v0, Lcom/shabakaty/downloader/o27;->l:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lcom/shabakaty/downloader/o27;->l:Z

    .line 4
    iget-object v3, v0, Lcom/shabakaty/downloader/o27;->i:Lcom/shabakaty/downloader/br3;

    if-eqz v3, :cond_1

    const-string v4, "Must be called from the main thread."

    .line 5
    invoke-static {v4}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 6
    iget-object v3, v3, Lcom/shabakaty/downloader/br3;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    iget-object v3, v0, Lcom/shabakaty/downloader/o27;->c:Lcom/shabakaty/downloader/tk5;

    invoke-virtual {v3, v2}, Lcom/shabakaty/downloader/tk5;->g2(Landroid/support/v4/media/session/MediaSessionCompat;)V

    .line 8
    iget-object v3, v0, Lcom/shabakaty/downloader/o27;->e:Lcom/shabakaty/downloader/sm5;

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {v3}, Lcom/shabakaty/downloader/sm5;->a()V

    .line 10
    :cond_2
    iget-object v3, v0, Lcom/shabakaty/downloader/o27;->f:Lcom/shabakaty/downloader/sm5;

    if-eqz v3, :cond_3

    .line 11
    invoke-virtual {v3}, Lcom/shabakaty/downloader/sm5;->a()V

    .line 12
    :cond_3
    iget-object v3, v0, Lcom/shabakaty/downloader/o27;->k:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v3, :cond_4

    .line 13
    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$b;

    invoke-interface {v3, v2}, Landroid/support/v4/media/session/MediaSessionCompat$b;->c(Landroid/app/PendingIntent;)V

    .line 14
    iget-object v3, v0, Lcom/shabakaty/downloader/o27;->k:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 15
    invoke-virtual {v3, v2, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->e(Landroid/support/v4/media/session/MediaSessionCompat$a;Landroid/os/Handler;)V

    .line 16
    iget-object v3, v0, Lcom/shabakaty/downloader/o27;->k:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 17
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 18
    new-instance v5, Landroid/support/v4/media/MediaMetadataCompat;

    invoke-direct {v5, v4}, Landroid/support/v4/media/MediaMetadataCompat;-><init>(Landroid/os/Bundle;)V

    .line 19
    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$b;

    invoke-interface {v3, v5}, Landroid/support/v4/media/session/MediaSessionCompat$b;->g(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/o27;->a(ILcom/google/android/gms/cast/MediaInfo;)V

    .line 21
    iget-object v3, v0, Lcom/shabakaty/downloader/o27;->k:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v3, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->d(Z)V

    .line 22
    iget-object v1, v0, Lcom/shabakaty/downloader/o27;->k:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 23
    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$b;

    invoke-interface {v1}, Landroid/support/v4/media/session/MediaSessionCompat$b;->a()V

    .line 24
    iput-object v2, v0, Lcom/shabakaty/downloader/o27;->k:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 25
    :cond_4
    iput-object v2, v0, Lcom/shabakaty/downloader/o27;->i:Lcom/shabakaty/downloader/br3;

    .line 26
    iput-object v2, v0, Lcom/shabakaty/downloader/o27;->j:Lcom/google/android/gms/cast/CastDevice;

    .line 27
    invoke-virtual {v0}, Lcom/shabakaty/downloader/o27;->h()V

    if-nez p1, :cond_5

    .line 28
    invoke-virtual {v0}, Lcom/shabakaty/downloader/o27;->i()V

    .line 29
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/xw;->i:Lcom/shabakaty/downloader/qc7;

    if-eqz p1, :cond_7

    .line 30
    check-cast p1, Lcom/shabakaty/downloader/pd7;

    .line 31
    iget-object v0, p1, Lcom/shabakaty/downloader/pd7;->f:Lcom/shabakaty/downloader/o57;

    if-eqz v0, :cond_6

    .line 32
    check-cast v0, Lcom/shabakaty/downloader/vh5;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/vh5;->j()Lcom/shabakaty/downloader/uk4;

    .line 33
    iput-object v2, p1, Lcom/shabakaty/downloader/pd7;->f:Lcom/shabakaty/downloader/o57;

    .line 34
    :cond_6
    iput-object v2, p0, Lcom/shabakaty/downloader/xw;->i:Lcom/shabakaty/downloader/qc7;

    .line 35
    :cond_7
    iput-object v2, p0, Lcom/shabakaty/downloader/xw;->k:Lcom/google/android/gms/cast/CastDevice;

    .line 36
    iget-object p1, p0, Lcom/shabakaty/downloader/xw;->j:Lcom/shabakaty/downloader/br3;

    if-eqz p1, :cond_8

    .line 37
    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/br3;->y(Lcom/shabakaty/downloader/qc7;)V

    .line 38
    iput-object v2, p0, Lcom/shabakaty/downloader/xw;->j:Lcom/shabakaty/downloader/br3;

    :cond_8
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/xw;->e:Lcom/shabakaty/downloader/xz6;

    invoke-interface {v1, p1, v0}, Lcom/shabakaty/downloader/xz6;->X0(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/xw;->m:Lcom/shabakaty/downloader/pk2;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "disconnectFromDevice"

    aput-object v3, v2, v0

    const/4 v3, 0x1

    const-class v4, Lcom/shabakaty/downloader/xz6;

    .line 3
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Unable to call %s on %s."

    .line 4
    invoke-virtual {v1, p1, v3, v2}, Lcom/shabakaty/downloader/pk2;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    :goto_0
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/s14;->d(I)V

    return-void
.end method

.method public b()J
    .locals 4

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/xw;->j:Lcom/shabakaty/downloader/br3;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->g()J

    move-result-wide v0

    iget-object v2, p0, Lcom/shabakaty/downloader/xw;->j:Lcom/shabakaty/downloader/br3;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/br3;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/cast/CastDevice;->o1(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/xw;->k:Lcom/google/android/gms/cast/CastDevice;

    return-void
.end method

.method public f(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/cast/CastDevice;->o1(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/xw;->k:Lcom/google/android/gms/cast/CastDevice;

    return-void
.end method

.method public g(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/xw;->o(Landroid/os/Bundle;)V

    return-void
.end method

.method public h(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/xw;->o(Landroid/os/Bundle;)V

    return-void
.end method

.method public j()Lcom/google/android/gms/cast/CastDevice;
    .locals 1

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/xw;->k:Lcom/google/android/gms/cast/CastDevice;

    return-object v0
.end method

.method public k()Lcom/shabakaty/downloader/br3;
    .locals 1

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/xw;->j:Lcom/shabakaty/downloader/br3;

    return-object v0
.end method

.method public l()Z
    .locals 3

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/xw;->i:Lcom/shabakaty/downloader/qc7;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/shabakaty/downloader/pd7;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/pd7;->f:Lcom/shabakaty/downloader/o57;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    check-cast v0, Lcom/shabakaty/downloader/vh5;

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vh5;->e()V

    .line 5
    iget-boolean v0, v0, Lcom/shabakaty/downloader/vh5;->w:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public m(Z)V
    .locals 3

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/xw;->i:Lcom/shabakaty/downloader/qc7;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/pd7;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/pd7;->f:Lcom/shabakaty/downloader/o57;

    if-eqz v0, :cond_0

    .line 5
    check-cast v0, Lcom/shabakaty/downloader/vh5;

    .line 6
    invoke-static {}, Lcom/shabakaty/downloader/yk4;->a()Lcom/shabakaty/downloader/yk4$a;

    move-result-object v1

    new-instance v2, Lcom/shabakaty/downloader/b00;

    invoke-direct {v2, v0, p1}, Lcom/shabakaty/downloader/b00;-><init>(Lcom/shabakaty/downloader/vh5;Z)V

    .line 7
    iput-object v2, v1, Lcom/shabakaty/downloader/yk4$a;->a:Lcom/shabakaty/downloader/tq3;

    .line 8
    invoke-virtual {v1}, Lcom/shabakaty/downloader/yk4$a;->a()Lcom/shabakaty/downloader/yk4;

    move-result-object p1

    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/common/api/b;->c(ILcom/shabakaty/downloader/yk4;)Lcom/shabakaty/downloader/uk4;

    :cond_0
    return-void
.end method

.method public final o(Landroid/os/Bundle;)V
    .locals 18

    move-object/from16 v1, p0

    const-string v2, "Unable to call %s on %s."

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/cast/CastDevice;->o1(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object v0

    iput-object v0, v1, Lcom/shabakaty/downloader/xw;->k:Lcom/google/android/gms/cast/CastDevice;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_1

    const-string v0, "Must be called from the main thread."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    const/4 v5, 0x2

    .line 3
    :try_start_0
    iget-object v0, v1, Lcom/shabakaty/downloader/s14;->a:Lcom/shabakaty/downloader/ge7;

    invoke-interface {v0}, Lcom/shabakaty/downloader/ge7;->isResuming()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    sget-object v6, Lcom/shabakaty/downloader/s14;->b:Lcom/shabakaty/downloader/pk2;

    new-array v7, v5, [Ljava/lang/Object;

    const-string v8, "isResuming"

    aput-object v8, v7, v3

    const-class v8, Lcom/shabakaty/downloader/ge7;

    .line 5
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    .line 6
    invoke-virtual {v6, v0, v2, v7}, Lcom/shabakaty/downloader/pk2;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    const/16 v0, 0xc1f

    .line 7
    :try_start_1
    iget-object v6, v1, Lcom/shabakaty/downloader/s14;->a:Lcom/shabakaty/downloader/ge7;

    invoke-interface {v6, v0}, Lcom/shabakaty/downloader/ge7;->J1(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 8
    sget-object v6, Lcom/shabakaty/downloader/s14;->b:Lcom/shabakaty/downloader/pk2;

    new-array v5, v5, [Ljava/lang/Object;

    const-string v7, "notifyFailedToResumeSession"

    aput-object v7, v5, v3

    const-class v3, Lcom/shabakaty/downloader/ge7;

    .line 9
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v4

    .line 10
    invoke-virtual {v6, v0, v2, v5}, Lcom/shabakaty/downloader/pk2;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_0
    const/16 v0, 0xc1d

    .line 11
    :try_start_2
    iget-object v6, v1, Lcom/shabakaty/downloader/s14;->a:Lcom/shabakaty/downloader/ge7;

    invoke-interface {v6, v0}, Lcom/shabakaty/downloader/ge7;->r1(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 12
    sget-object v6, Lcom/shabakaty/downloader/s14;->b:Lcom/shabakaty/downloader/pk2;

    new-array v5, v5, [Ljava/lang/Object;

    const-string v7, "notifyFailedToStartSession"

    aput-object v7, v5, v3

    const-class v3, Lcom/shabakaty/downloader/ge7;

    .line 13
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v4

    .line 14
    invoke-virtual {v6, v0, v2, v5}, Lcom/shabakaty/downloader/pk2;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-void

    .line 15
    :cond_1
    iget-object v0, v1, Lcom/shabakaty/downloader/xw;->i:Lcom/shabakaty/downloader/qc7;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 16
    check-cast v0, Lcom/shabakaty/downloader/pd7;

    .line 17
    iget-object v5, v0, Lcom/shabakaty/downloader/pd7;->f:Lcom/shabakaty/downloader/o57;

    if-eqz v5, :cond_2

    .line 18
    check-cast v5, Lcom/shabakaty/downloader/vh5;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/vh5;->j()Lcom/shabakaty/downloader/uk4;

    .line 19
    iput-object v2, v0, Lcom/shabakaty/downloader/pd7;->f:Lcom/shabakaty/downloader/o57;

    .line 20
    :cond_2
    iput-object v2, v1, Lcom/shabakaty/downloader/xw;->i:Lcom/shabakaty/downloader/qc7;

    .line 21
    :cond_3
    sget-object v0, Lcom/shabakaty/downloader/xw;->m:Lcom/shabakaty/downloader/pk2;

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, v1, Lcom/shabakaty/downloader/xw;->k:Lcom/google/android/gms/cast/CastDevice;

    aput-object v6, v5, v3

    const-string v6, "Acquiring a connection to Google Play Services for %s"

    invoke-virtual {v0, v6, v5}, Lcom/shabakaty/downloader/pk2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    iget-object v0, v1, Lcom/shabakaty/downloader/xw;->h:Lcom/shabakaty/downloader/ae7;

    iget-object v5, v1, Lcom/shabakaty/downloader/xw;->c:Landroid/content/Context;

    iget-object v14, v1, Lcom/shabakaty/downloader/xw;->k:Lcom/google/android/gms/cast/CastDevice;

    iget-object v15, v1, Lcom/shabakaty/downloader/xw;->f:Lcom/shabakaty/downloader/vw;

    new-instance v13, Lcom/shabakaty/downloader/xw$b;

    invoke-direct {v13, v1, v2}, Lcom/shabakaty/downloader/xw$b;-><init>(Lcom/shabakaty/downloader/xw;Lcom/shabakaty/downloader/ol3;)V

    new-instance v12, Lcom/shabakaty/downloader/xw$d;

    invoke-direct {v12, v1, v2}, Lcom/shabakaty/downloader/xw$d;-><init>(Lcom/shabakaty/downloader/xw;Lcom/shabakaty/downloader/ol3;)V

    .line 23
    check-cast v0, Lcom/shabakaty/downloader/qf5;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    new-instance v0, Lcom/shabakaty/downloader/pd7;

    sget-object v8, Lcom/shabakaty/downloader/hf5;->a:Lcom/shabakaty/downloader/mg7;

    move-object v7, v0

    move-object v9, v5

    move-object v10, v14

    move-object v11, v15

    move-object/from16 v16, v12

    move-object v12, v13

    move-object/from16 v17, v13

    move-object/from16 v13, v16

    invoke-direct/range {v7 .. v13}, Lcom/shabakaty/downloader/pd7;-><init>(Lcom/shabakaty/downloader/mg7;Landroid/content/Context;Lcom/google/android/gms/cast/CastDevice;Lcom/shabakaty/downloader/vw;Lcom/shabakaty/downloader/nw$d;Lcom/shabakaty/downloader/ha7;)V

    .line 25
    iput-object v0, v1, Lcom/shabakaty/downloader/xw;->i:Lcom/shabakaty/downloader/qc7;

    .line 26
    iget-object v7, v0, Lcom/shabakaty/downloader/pd7;->f:Lcom/shabakaty/downloader/o57;

    if-eqz v7, :cond_4

    .line 27
    check-cast v7, Lcom/shabakaty/downloader/vh5;

    invoke-virtual {v7}, Lcom/shabakaty/downloader/vh5;->j()Lcom/shabakaty/downloader/uk4;

    .line 28
    iput-object v2, v0, Lcom/shabakaty/downloader/pd7;->f:Lcom/shabakaty/downloader/o57;

    .line 29
    :cond_4
    sget-object v7, Lcom/shabakaty/downloader/pd7;->g:Lcom/shabakaty/downloader/pk2;

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v14, v8, v3

    invoke-virtual {v7, v6, v8}, Lcom/shabakaty/downloader/pk2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    new-instance v6, Lcom/shabakaty/downloader/ye5;

    invoke-direct {v6, v0, v2}, Lcom/shabakaty/downloader/ye5;-><init>(Lcom/shabakaty/downloader/pd7;Lcom/shabakaty/downloader/fl3;)V

    .line 31
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    if-eqz v15, :cond_5

    .line 32
    iget-object v8, v15, Lcom/shabakaty/downloader/vw;->w:Lcom/shabakaty/downloader/uw;

    if-eqz v8, :cond_5

    .line 33
    iget-object v8, v8, Lcom/shabakaty/downloader/uw;->u:Lcom/shabakaty/downloader/a13;

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    :goto_3
    const-string v9, "com.google.android.gms.cast.EXTRA_CAST_FRAMEWORK_NOTIFICATION_ENABLED"

    .line 34
    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v15, :cond_6

    .line 35
    iget-object v8, v15, Lcom/shabakaty/downloader/vw;->w:Lcom/shabakaty/downloader/uw;

    if-eqz v8, :cond_6

    .line 36
    iget-boolean v8, v8, Lcom/shabakaty/downloader/uw;->v:Z

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    goto :goto_4

    :cond_6
    const/4 v8, 0x0

    :goto_4
    const-string v9, "com.google.android.gms.cast.EXTRA_CAST_REMOTE_CONTROL_NOTIFICATION_ENABLED"

    .line 37
    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 38
    new-instance v8, Lcom/shabakaty/downloader/nw$c$a;

    move-object/from16 v9, v17

    invoke-direct {v8, v14, v9}, Lcom/shabakaty/downloader/nw$c$a;-><init>(Lcom/google/android/gms/cast/CastDevice;Lcom/shabakaty/downloader/nw$d;)V

    .line 39
    iput-object v7, v8, Lcom/shabakaty/downloader/nw$c$a;->c:Landroid/os/Bundle;

    .line 40
    new-instance v7, Lcom/shabakaty/downloader/nw$c;

    invoke-direct {v7, v8, v2}, Lcom/shabakaty/downloader/nw$c;-><init>(Lcom/shabakaty/downloader/nw$c$a;Lcom/shabakaty/downloader/h56;)V

    .line 41
    sget-object v8, Lcom/shabakaty/downloader/nw;->a:Lcom/google/android/gms/common/api/a;

    .line 42
    new-instance v8, Lcom/shabakaty/downloader/vh5;

    invoke-direct {v8, v5, v7}, Lcom/shabakaty/downloader/vh5;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/nw$c;)V

    .line 43
    iget-object v5, v8, Lcom/shabakaty/downloader/vh5;->E:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iput-object v8, v0, Lcom/shabakaty/downloader/pd7;->f:Lcom/shabakaty/downloader/o57;

    .line 45
    iget-object v0, v8, Lcom/shabakaty/downloader/vh5;->j:Lcom/shabakaty/downloader/hl5;

    .line 46
    iget-object v5, v8, Lcom/google/android/gms/common/api/b;->e:Landroid/os/Looper;

    const-string v6, "Listener must not be null"

    .line 47
    invoke-static {v0, v6}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Looper must not be null"

    .line 48
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v6, Lcom/google/android/gms/common/api/internal/d;

    const-string v7, "castDeviceControllerListenerKey"

    invoke-direct {v6, v5, v0, v7}, Lcom/google/android/gms/common/api/internal/d;-><init>(Landroid/os/Looper;Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance v0, Lcom/google/android/gms/common/api/internal/g;

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/api/internal/g;-><init>(Lcom/shabakaty/downloader/kl3;)V

    .line 51
    new-instance v2, Lcom/shabakaty/downloader/fq1;

    invoke-direct {v2, v8}, Lcom/shabakaty/downloader/fq1;-><init>(Lcom/shabakaty/downloader/vh5;)V

    .line 52
    sget-object v5, Lcom/shabakaty/downloader/di5;->r:Lcom/shabakaty/downloader/tq3;

    .line 53
    iput-object v6, v0, Lcom/google/android/gms/common/api/internal/g;->c:Lcom/google/android/gms/common/api/internal/d;

    .line 54
    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/g;->a:Lcom/shabakaty/downloader/tq3;

    .line 55
    iput-object v5, v0, Lcom/google/android/gms/common/api/internal/g;->b:Lcom/shabakaty/downloader/tq3;

    new-array v2, v4, [Lcom/shabakaty/downloader/ia1;

    .line 56
    sget-object v5, Lcom/shabakaty/downloader/gh5;->a:Lcom/shabakaty/downloader/ia1;

    aput-object v5, v2, v3

    .line 57
    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/g;->d:[Lcom/shabakaty/downloader/ia1;

    const-string v2, "Must set unregister function"

    .line 58
    invoke-static {v4, v2}, Lcom/google/android/gms/common/internal/a;->b(ZLjava/lang/Object;)V

    .line 59
    iget-object v2, v0, Lcom/google/android/gms/common/api/internal/g;->c:Lcom/google/android/gms/common/api/internal/d;

    if-eqz v2, :cond_7

    const/4 v3, 0x1

    :cond_7
    const-string v2, "Must set holder"

    invoke-static {v3, v2}, Lcom/google/android/gms/common/internal/a;->b(ZLjava/lang/Object;)V

    .line 60
    iget-object v2, v0, Lcom/google/android/gms/common/api/internal/g;->c:Lcom/google/android/gms/common/api/internal/d;

    .line 61
    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/d;->b:Lcom/google/android/gms/common/api/internal/d$a;

    const-string v3, "Key must not be null"

    .line 62
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v3, Lcom/shabakaty/downloader/za5;

    iget-object v5, v0, Lcom/google/android/gms/common/api/internal/g;->c:Lcom/google/android/gms/common/api/internal/d;

    iget-object v6, v0, Lcom/google/android/gms/common/api/internal/g;->d:[Lcom/shabakaty/downloader/ia1;

    invoke-direct {v3, v0, v5, v6, v4}, Lcom/shabakaty/downloader/za5;-><init>(Lcom/google/android/gms/common/api/internal/g;Lcom/google/android/gms/common/api/internal/d;[Lcom/shabakaty/downloader/ia1;Z)V

    new-instance v4, Lcom/google/android/gms/common/api/internal/t;

    invoke-direct {v4, v0, v2}, Lcom/google/android/gms/common/api/internal/t;-><init>(Lcom/google/android/gms/common/api/internal/g;Lcom/google/android/gms/common/api/internal/d$a;)V

    sget-object v0, Lcom/shabakaty/downloader/ya5;->r:Ljava/lang/Runnable;

    .line 64
    iget-object v2, v5, Lcom/google/android/gms/common/api/internal/d;->b:Lcom/google/android/gms/common/api/internal/d$a;

    const-string v5, "Listener has already been released."

    .line 65
    invoke-static {v2, v5}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v2, v8, Lcom/google/android/gms/common/api/b;->i:Lcom/google/android/gms/common/api/internal/c;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v5, Lcom/shabakaty/downloader/zk4;

    invoke-direct {v5}, Lcom/shabakaty/downloader/zk4;-><init>()V

    .line 68
    new-instance v6, Lcom/google/android/gms/common/api/internal/y;

    new-instance v7, Lcom/shabakaty/downloader/xa5;

    invoke-direct {v7, v3, v4, v0}, Lcom/shabakaty/downloader/xa5;-><init>(Lcom/google/android/gms/common/api/internal/f;Lcom/google/android/gms/common/api/internal/h;Ljava/lang/Runnable;)V

    invoke-direct {v6, v7, v5}, Lcom/google/android/gms/common/api/internal/y;-><init>(Lcom/shabakaty/downloader/xa5;Lcom/shabakaty/downloader/zk4;)V

    .line 69
    iget-object v0, v2, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    new-instance v3, Lcom/shabakaty/downloader/wa5;

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/c;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 70
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-direct {v3, v6, v2, v8}, Lcom/shabakaty/downloader/wa5;-><init>(Lcom/google/android/gms/common/api/internal/u;ILcom/google/android/gms/common/api/b;)V

    const/16 v2, 0x8

    .line 71
    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 72
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
