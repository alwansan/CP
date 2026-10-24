.class public final Lcom/shabakaty/downloader/qf7;
.super Ljava/io/OutputStream;
.source "com.google.firebase:firebase-messaging@@22.0.0"


# instance fields
.field public final synthetic r:I

.field public s:J


# direct methods
.method public constructor <init>(I)V
    .locals 3

    iput p1, p0, Lcom/shabakaty/downloader/qf7;->r:I

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-wide v1, p0, Lcom/shabakaty/downloader/qf7;->s:J

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-wide v1, p0, Lcom/shabakaty/downloader/qf7;->s:J

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-wide v1, p0, Lcom/shabakaty/downloader/qf7;->s:J

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/qf7;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/qf7;->s:J

    return-wide v0

    .line 2
    :pswitch_1
    iget-wide v0, p0, Lcom/shabakaty/downloader/qf7;->s:J

    return-wide v0

    .line 3
    :goto_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/qf7;->s:J

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final write(I)V
    .locals 4

    iget p1, p0, Lcom/shabakaty/downloader/qf7;->r:I

    const-wide/16 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-wide v2, p0, Lcom/shabakaty/downloader/qf7;->s:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/shabakaty/downloader/qf7;->s:J

    return-void

    .line 2
    :pswitch_1
    iget-wide v2, p0, Lcom/shabakaty/downloader/qf7;->s:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/shabakaty/downloader/qf7;->s:J

    return-void

    .line 3
    :goto_0
    iget-wide v2, p0, Lcom/shabakaty/downloader/qf7;->s:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/shabakaty/downloader/qf7;->s:J

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final write([B)V
    .locals 4

    iget v0, p0, Lcom/shabakaty/downloader/qf7;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 4
    :pswitch_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/qf7;->s:J

    .line 5
    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shabakaty/downloader/qf7;->s:J

    return-void

    .line 6
    :pswitch_1
    iget-wide v0, p0, Lcom/shabakaty/downloader/qf7;->s:J

    .line 7
    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shabakaty/downloader/qf7;->s:J

    return-void

    .line 8
    :goto_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/qf7;->s:J

    .line 9
    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shabakaty/downloader/qf7;->s:J

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final write([BII)V
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/qf7;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-ltz p2, :cond_0

    .line 10
    array-length p1, p1

    if-gt p2, p1, :cond_0

    if-ltz p3, :cond_0

    add-int/2addr p2, p3

    if-gt p2, p1, :cond_0

    if-ltz p2, :cond_0

    .line 11
    iget-wide p1, p0, Lcom/shabakaty/downloader/qf7;->s:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/shabakaty/downloader/qf7;->s:J

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 13
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :pswitch_1
    if-ltz p2, :cond_1

    .line 14
    array-length p1, p1

    if-gt p2, p1, :cond_1

    if-ltz p3, :cond_1

    add-int/2addr p2, p3

    if-gt p2, p1, :cond_1

    if-ltz p2, :cond_1

    .line 15
    iget-wide p1, p0, Lcom/shabakaty/downloader/qf7;->s:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/shabakaty/downloader/qf7;->s:J

    return-void

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 17
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :goto_0
    if-ltz p2, :cond_2

    .line 18
    array-length p1, p1

    if-gt p2, p1, :cond_2

    if-ltz p3, :cond_2

    add-int/2addr p2, p3

    if-gt p2, p1, :cond_2

    if-ltz p2, :cond_2

    .line 19
    iget-wide p1, p0, Lcom/shabakaty/downloader/qf7;->s:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/shabakaty/downloader/qf7;->s:J

    return-void

    .line 20
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 21
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
