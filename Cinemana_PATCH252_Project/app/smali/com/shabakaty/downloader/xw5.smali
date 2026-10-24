.class public final Lcom/shabakaty/downloader/xw5;
.super Lcom/shabakaty/downloader/s36;
.source "com.google.android.gms:play-services-measurement-sdk-api@@19.0.1"


# instance fields
.field public final synthetic v:I

.field public final synthetic w:Ljava/lang/Object;

.field public final synthetic x:Lcom/shabakaty/downloader/g66;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/g66;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/xw5;->v:I

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/xw5;->x:Lcom/shabakaty/downloader/g66;

    iput-object p2, p0, Lcom/shabakaty/downloader/xw5;->w:Ljava/lang/Object;

    const/4 p2, 0x1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/s36;-><init>(Lcom/shabakaty/downloader/g66;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/g66;Lcom/shabakaty/downloader/w36;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/xw5;->v:I

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/xw5;->x:Lcom/shabakaty/downloader/g66;

    iput-object p2, p0, Lcom/shabakaty/downloader/xw5;->w:Ljava/lang/Object;

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/shabakaty/downloader/s36;-><init>(Lcom/shabakaty/downloader/g66;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget v0, p0, Lcom/shabakaty/downloader/xw5;->v:I

    const-string v1, "null reference"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/xw5;->x:Lcom/shabakaty/downloader/g66;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/g66;->f:Lcom/shabakaty/downloader/nu5;

    .line 3
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/xw5;->w:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    iget-wide v2, p0, Lcom/shabakaty/downloader/s36;->r:J

    .line 5
    invoke-interface {v0, v1, v2, v3}, Lcom/shabakaty/downloader/nu5;->setConditionalUserProperty(Landroid/os/Bundle;J)V

    return-void

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/xw5;->x:Lcom/shabakaty/downloader/g66;

    .line 7
    iget-object v0, v0, Lcom/shabakaty/downloader/g66;->f:Lcom/shabakaty/downloader/nu5;

    .line 8
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iget-object v1, p0, Lcom/shabakaty/downloader/xw5;->w:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/w36;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/nu5;->registerOnMeasurementEventListener(Lcom/shabakaty/downloader/xv5;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
