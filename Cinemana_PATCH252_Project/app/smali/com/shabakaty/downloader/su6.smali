.class public final Lcom/shabakaty/downloader/su6;
.super Lcom/shabakaty/downloader/ka6;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.1"


# instance fields
.field public c:Landroid/os/Handler;

.field public final d:Lcom/shabakaty/downloader/qu6;

.field public final e:Lcom/shabakaty/downloader/nu6;

.field public final f:Lcom/shabakaty/downloader/yh1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/ka6;-><init>(Lcom/google/android/gms/measurement/internal/d;)V

    new-instance p1, Lcom/shabakaty/downloader/qu6;

    .line 2
    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/qu6;-><init>(Lcom/shabakaty/downloader/su6;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/su6;->d:Lcom/shabakaty/downloader/qu6;

    new-instance p1, Lcom/shabakaty/downloader/nu6;

    .line 3
    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/nu6;-><init>(Lcom/shabakaty/downloader/su6;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/su6;->e:Lcom/shabakaty/downloader/nu6;

    new-instance p1, Lcom/shabakaty/downloader/yh1;

    .line 4
    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/yh1;-><init>(Lcom/shabakaty/downloader/su6;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/su6;->f:Lcom/shabakaty/downloader/yh1;

    return-void
.end method


# virtual methods
.method public final h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final i()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d56;->e()V

    iget-object v0, p0, Lcom/shabakaty/downloader/su6;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/shabakaty/downloader/os5;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/os5;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/su6;->c:Landroid/os/Handler;

    :cond_0
    return-void
.end method
