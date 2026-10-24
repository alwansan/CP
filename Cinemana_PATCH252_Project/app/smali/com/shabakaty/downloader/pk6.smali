.class public final Lcom/shabakaty/downloader/pk6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-sdk@@19.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/fv5;

.field public final synthetic t:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/shabakaty/downloader/fv5;I)V
    .locals 1

    iput p3, p0, Lcom/shabakaty/downloader/pk6;->r:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/pk6;->t:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iput-object p2, p0, Lcom/shabakaty/downloader/pk6;->s:Lcom/shabakaty/downloader/fv5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/shabakaty/downloader/pk6;->t:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iput-object p2, p0, Lcom/shabakaty/downloader/pk6;->s:Lcom/shabakaty/downloader/fv5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/shabakaty/downloader/pk6;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/pk6;->t:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->z()Lcom/shabakaty/downloader/zs6;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/pk6;->s:Lcom/shabakaty/downloader/fv5;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/d56;->e()V

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka6;->f()V

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/zs6;->q(Z)Lcom/shabakaty/downloader/ma7;

    move-result-object v2

    new-instance v3, Lcom/shabakaty/downloader/so5;

    .line 6
    invoke-direct {v3, v0, v2, v1}, Lcom/shabakaty/downloader/so5;-><init>(Lcom/shabakaty/downloader/zs6;Lcom/shabakaty/downloader/ma7;Lcom/shabakaty/downloader/fv5;)V

    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/zs6;->t(Ljava/lang/Runnable;)V

    return-void

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/pk6;->t:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->B()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/pk6;->s:Lcom/shabakaty/downloader/fv5;

    iget-object v2, p0, Lcom/shabakaty/downloader/pk6;->t:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d;->c()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/f;->B(Lcom/shabakaty/downloader/fv5;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
