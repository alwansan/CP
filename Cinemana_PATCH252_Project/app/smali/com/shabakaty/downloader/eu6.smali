.class public final Lcom/shabakaty/downloader/eu6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final r:J

.field public final s:J

.field public final synthetic t:Lcom/shabakaty/downloader/yh1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/yh1;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/eu6;->t:Lcom/shabakaty/downloader/yh1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/shabakaty/downloader/eu6;->r:J

    iput-wide p4, p0, Lcom/shabakaty/downloader/eu6;->s:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/eu6;->t:Lcom/shabakaty/downloader/yh1;

    iget-object v0, v0, Lcom/shabakaty/downloader/yh1;->t:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/su6;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v0

    new-instance v1, Lcom/shabakaty/downloader/zz6;

    .line 2
    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/zz6;-><init>(Lcom/shabakaty/downloader/eu6;)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/de6;->r(Ljava/lang/Runnable;)V

    return-void
.end method
