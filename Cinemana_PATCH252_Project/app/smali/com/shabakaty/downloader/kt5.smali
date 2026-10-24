.class public final Lcom/shabakaty/downloader/kt5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:J

.field public final synthetic t:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/aq6;J)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/kt5;->r:I

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/kt5;->t:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/shabakaty/downloader/kt5;->s:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/vz5;J)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/kt5;->r:I

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/kt5;->t:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/shabakaty/downloader/kt5;->s:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/shabakaty/downloader/kt5;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/kt5;->t:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/vz5;

    iget-wide v1, p0, Lcom/shabakaty/downloader/kt5;->s:J

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/vz5;->n(J)V

    return-void

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/kt5;->t:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/aq6;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->o()Lcom/shabakaty/downloader/vz5;

    move-result-object v0

    iget-wide v1, p0, Lcom/shabakaty/downloader/kt5;->s:J

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/vz5;->h(J)V

    iget-object v0, p0, Lcom/shabakaty/downloader/kt5;->t:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/aq6;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/shabakaty/downloader/aq6;->e:Lcom/shabakaty/downloader/jp6;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
