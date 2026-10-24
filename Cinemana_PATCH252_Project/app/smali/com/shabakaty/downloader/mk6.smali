.class public final Lcom/shabakaty/downloader/mk6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:J

.field public final synthetic t:Lcom/shabakaty/downloader/vn6;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vn6;JI)V
    .locals 1

    iput p4, p0, Lcom/shabakaty/downloader/mk6;->r:I

    const/4 v0, 0x1

    if-eq p4, v0, :cond_0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/mk6;->t:Lcom/shabakaty/downloader/vn6;

    iput-wide p2, p0, Lcom/shabakaty/downloader/mk6;->s:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/shabakaty/downloader/mk6;->t:Lcom/shabakaty/downloader/vn6;

    iput-wide p2, p0, Lcom/shabakaty/downloader/mk6;->s:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/shabakaty/downloader/mk6;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/mk6;->t:Lcom/shabakaty/downloader/vn6;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->u()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/c;->j:Lcom/shabakaty/downloader/f96;

    iget-wide v1, p0, Lcom/shabakaty/downloader/mk6;->s:J

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/f96;->b(J)V

    iget-object v0, p0, Lcom/shabakaty/downloader/mk6;->t:Lcom/shabakaty/downloader/vn6;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->m:Lcom/shabakaty/downloader/s66;

    .line 6
    iget-wide v1, p0, Lcom/shabakaty/downloader/mk6;->s:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Session timeout duration set"

    invoke-virtual {v0, v2, v1}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/mk6;->t:Lcom/shabakaty/downloader/vn6;

    iget-wide v1, p0, Lcom/shabakaty/downloader/mk6;->s:J

    const/4 v3, 0x1

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Lcom/shabakaty/downloader/vn6;->r(JZ)V

    iget-object v0, p0, Lcom/shabakaty/downloader/mk6;->t:Lcom/shabakaty/downloader/vn6;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->z()Lcom/shabakaty/downloader/zs6;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zs6;->y(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
