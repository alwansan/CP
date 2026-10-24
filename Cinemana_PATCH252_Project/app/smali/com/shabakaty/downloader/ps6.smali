.class public final Lcom/shabakaty/downloader/ps6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/ws6;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ws6;I)V
    .locals 1

    iput p2, p0, Lcom/shabakaty/downloader/ps6;->r:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ps6;->s:Lcom/shabakaty/downloader/ws6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/shabakaty/downloader/ps6;->s:Lcom/shabakaty/downloader/ws6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/shabakaty/downloader/ps6;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ps6;->s:Lcom/shabakaty/downloader/ws6;

    iget-object v0, v0, Lcom/shabakaty/downloader/ws6;->t:Lcom/shabakaty/downloader/zs6;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 2
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d;->a:Landroid/content/Context;

    .line 3
    iget-object v3, p0, Lcom/shabakaty/downloader/ps6;->s:Lcom/shabakaty/downloader/ws6;

    iget-object v3, v3, Lcom/shabakaty/downloader/ws6;->t:Lcom/shabakaty/downloader/zs6;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 4
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "com.google.android.gms.measurement.AppMeasurementService"

    .line 5
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/zs6;->v(Lcom/shabakaty/downloader/zs6;Landroid/content/ComponentName;)V

    return-void

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ps6;->s:Lcom/shabakaty/downloader/ws6;

    iget-object v0, v0, Lcom/shabakaty/downloader/ws6;->t:Lcom/shabakaty/downloader/zs6;

    const/4 v1, 0x0

    .line 8
    iput-object v1, v0, Lcom/shabakaty/downloader/zs6;->d:Lcom/shabakaty/downloader/o46;

    .line 9
    invoke-virtual {v0}, Lcom/shabakaty/downloader/zs6;->r()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
