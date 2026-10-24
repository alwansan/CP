.class public final Lcom/shabakaty/downloader/nc7;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/nw$a;


# instance fields
.field public final r:Lcom/google/android/gms/common/api/Status;

.field public final s:Lcom/shabakaty/downloader/nc;

.field public final t:Ljava/lang/String;

.field public final u:Ljava/lang/String;

.field public final v:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/nc7;->r:Lcom/google/android/gms/common/api/Status;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/nc7;->s:Lcom/shabakaty/downloader/nc;

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/nc7;->t:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/nc7;->u:Ljava/lang/String;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/shabakaty/downloader/nc7;->v:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/shabakaty/downloader/nc;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/shabakaty/downloader/nc7;->r:Lcom/google/android/gms/common/api/Status;

    .line 9
    iput-object p2, p0, Lcom/shabakaty/downloader/nc7;->s:Lcom/shabakaty/downloader/nc;

    .line 10
    iput-object p3, p0, Lcom/shabakaty/downloader/nc7;->t:Ljava/lang/String;

    .line 11
    iput-object p4, p0, Lcom/shabakaty/downloader/nc7;->u:Ljava/lang/String;

    .line 12
    iput-boolean p5, p0, Lcom/shabakaty/downloader/nc7;->v:Z

    return-void
.end method


# virtual methods
.method public final P0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/nc7;->u:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/nc7;->v:Z

    return v0
.end method

.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/nc7;->r:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final l0()Lcom/shabakaty/downloader/nc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/nc7;->s:Lcom/shabakaty/downloader/nc;

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/nc7;->t:Ljava/lang/String;

    return-object v0
.end method
