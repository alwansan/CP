.class public final synthetic Lcom/shabakaty/downloader/wk6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final s:Ljava/lang/Object;

.field public final t:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/media/MediaNotificationService;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/wk6;->r:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/wk6;->s:Ljava/lang/Object;

    iput p2, p0, Lcom/shabakaty/downloader/wk6;->t:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/wk6;->r:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/wk6;->s:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/shabakaty/downloader/wk6;->t:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/wk6;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/wk6;->s:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;

    iget v1, p0, Lcom/shabakaty/downloader/wk6;->t:I

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/Service;->stopSelf(I)V

    return-void

    .line 3
    :goto_0
    iget v0, p0, Lcom/shabakaty/downloader/wk6;->t:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/wk6;->s:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
