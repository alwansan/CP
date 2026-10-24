.class public final Lcom/shabakaty/downloader/pn5;
.super Lcom/shabakaty/downloader/gr5;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/bk5;Lcom/shabakaty/downloader/fj5;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/shabakaty/downloader/pn5;->e:I

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/pn5;->f:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/gr5;-><init>(Lcom/shabakaty/downloader/fj5;)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/in5;Lcom/shabakaty/downloader/fj5;I)V
    .locals 1

    iput p3, p0, Lcom/shabakaty/downloader/pn5;->e:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/pn5;->f:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/gr5;-><init>(Lcom/shabakaty/downloader/fj5;)V

    return-void

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/shabakaty/downloader/pn5;->f:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/gr5;-><init>(Lcom/shabakaty/downloader/fj5;)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3

    iget v0, p0, Lcom/shabakaty/downloader/pn5;->e:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/pn5;->f:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/in5;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_0
    iget-object v1, v0, Lcom/shabakaty/downloader/in5;->w:Lcom/shabakaty/downloader/ll5;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ll5;->S1()I

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/in5;->S1()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Failed to delete stale hits"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/shabakaty/downloader/fq1;->E1(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    :goto_0
    iget-object v0, v0, Lcom/shabakaty/downloader/in5;->C:Lcom/shabakaty/downloader/gr5;

    const-wide/32 v1, 0x5265c00

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/gr5;->e(J)V

    return-void

    .line 7
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/pn5;->f:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/in5;

    .line 8
    new-instance v1, Lcom/shabakaty/downloader/fq1;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/fq1;-><init>(Lcom/shabakaty/downloader/in5;)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/in5;->P1(Lcom/shabakaty/downloader/bs5;)V

    return-void

    .line 9
    :goto_1
    iget-object v0, p0, Lcom/shabakaty/downloader/pn5;->f:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/bk5;

    .line 10
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/shabakaty/downloader/xu6;->b()V

    .line 12
    invoke-virtual {v0}, Lcom/shabakaty/downloader/bk5;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const-string v1, "Inactivity, disconnecting from device AnalyticsService"

    .line 13
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/fq1;->H1(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Lcom/shabakaty/downloader/bk5;->O1()V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
