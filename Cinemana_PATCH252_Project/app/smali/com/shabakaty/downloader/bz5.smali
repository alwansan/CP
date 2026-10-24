.class public final Lcom/shabakaty/downloader/bz5;
.super Lcom/shabakaty/downloader/s36;
.source "com.google.android.gms:play-services-measurement-sdk-api@@19.0.1"


# instance fields
.field public final synthetic v:I

.field public final synthetic w:Ljava/lang/String;

.field public final synthetic x:Lcom/shabakaty/downloader/g66;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/g66;Ljava/lang/String;I)V
    .locals 1

    iput p3, p0, Lcom/shabakaty/downloader/bz5;->v:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/bz5;->x:Lcom/shabakaty/downloader/g66;

    iput-object p2, p0, Lcom/shabakaty/downloader/bz5;->w:Ljava/lang/String;

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/shabakaty/downloader/s36;-><init>(Lcom/shabakaty/downloader/g66;Z)V

    return-void

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/shabakaty/downloader/bz5;->x:Lcom/shabakaty/downloader/g66;

    iput-object p2, p0, Lcom/shabakaty/downloader/bz5;->w:Ljava/lang/String;

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/shabakaty/downloader/s36;-><init>(Lcom/shabakaty/downloader/g66;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget v0, p0, Lcom/shabakaty/downloader/bz5;->v:I

    const-string v1, "null reference"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/bz5;->x:Lcom/shabakaty/downloader/g66;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/g66;->f:Lcom/shabakaty/downloader/nu5;

    .line 3
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/bz5;->w:Ljava/lang/String;

    iget-wide v2, p0, Lcom/shabakaty/downloader/s36;->s:J

    .line 5
    invoke-interface {v0, v1, v2, v3}, Lcom/shabakaty/downloader/nu5;->beginAdUnitExposure(Ljava/lang/String;J)V

    return-void

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/bz5;->x:Lcom/shabakaty/downloader/g66;

    .line 7
    iget-object v0, v0, Lcom/shabakaty/downloader/g66;->f:Lcom/shabakaty/downloader/nu5;

    .line 8
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iget-object v1, p0, Lcom/shabakaty/downloader/bz5;->w:Ljava/lang/String;

    iget-wide v2, p0, Lcom/shabakaty/downloader/s36;->s:J

    .line 10
    invoke-interface {v0, v1, v2, v3}, Lcom/shabakaty/downloader/nu5;->endAdUnitExposure(Ljava/lang/String;J)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
