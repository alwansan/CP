.class public Lcom/shabakaty/downloader/cr3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/nw$e;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingRemoteException"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/cr3$e;,
        Lcom/shabakaty/downloader/cr3$f;,
        Lcom/shabakaty/downloader/cr3$a;,
        Lcom/shabakaty/downloader/cr3$d;,
        Lcom/shabakaty/downloader/cr3$b;,
        Lcom/shabakaty/downloader/cr3$c;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final synthetic f:I


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lcom/shabakaty/downloader/oh5;

.field public final c:Lcom/shabakaty/downloader/cr3$d;

.field public d:Lcom/shabakaty/downloader/cr3$b;

.field public e:Lcom/shabakaty/downloader/cr3$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/oh5;->w:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/oh5;

    invoke-direct {v0}, Lcom/shabakaty/downloader/oh5;-><init>()V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/shabakaty/downloader/cr3;->a:Ljava/lang/Object;

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/cr3;->b:Lcom/shabakaty/downloader/oh5;

    .line 5
    new-instance v1, Lcom/shabakaty/downloader/fq1;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/fq1;-><init>(Lcom/shabakaty/downloader/cr3;)V

    .line 6
    iput-object v1, v0, Lcom/shabakaty/downloader/oh5;->h:Lcom/shabakaty/downloader/ei5;

    .line 7
    new-instance v1, Lcom/shabakaty/downloader/cr3$d;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/cr3$d;-><init>(Lcom/shabakaty/downloader/cr3;)V

    iput-object v1, p0, Lcom/shabakaty/downloader/cr3;->c:Lcom/shabakaty/downloader/cr3$d;

    .line 8
    iput-object v1, v0, Lcom/shabakaty/downloader/l56;->c:Lcom/shabakaty/downloader/ni5;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/cast/MediaInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cr3;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/cr3;->b:Lcom/shabakaty/downloader/oh5;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/oh5;->e()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b()Lcom/shabakaty/downloader/dr2;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cr3;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/cr3;->b:Lcom/shabakaty/downloader/oh5;

    .line 3
    iget-object v1, v1, Lcom/shabakaty/downloader/oh5;->f:Lcom/shabakaty/downloader/dr2;

    .line 4
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/shabakaty/downloader/nb3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/shabakaty/downloader/nb3<",
            "Lcom/shabakaty/downloader/cr3$a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ky5;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/ky5;-><init>(Lcom/shabakaty/downloader/cr3;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->c(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/b;

    move-result-object p1

    return-object p1
.end method

.method public onMessageReceived(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/cr3;->b:Lcom/shabakaty/downloader/oh5;

    invoke-virtual {p1, p3}, Lcom/shabakaty/downloader/oh5;->v(Ljava/lang/String;)V

    return-void
.end method
