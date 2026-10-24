.class public final synthetic Lcom/shabakaty/downloader/r80;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/pj3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/r80;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/r80;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/r80;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/r80;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/shabakaty/downloader/r80;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/r80;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/s80;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/w80;

    move-result-object v0

    return-object v0

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/r80;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    sget v1, Lcom/shabakaty/downloader/go0;->b:I

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/ys1;->b:Lcom/shabakaty/downloader/ys1;

    .line 4
    const-class v1, Lcom/shabakaty/downloader/ys1;

    monitor-enter v1

    .line 5
    :try_start_0
    sget-object v2, Lcom/shabakaty/downloader/ys1;->b:Lcom/shabakaty/downloader/ys1;

    if-nez v2, :cond_0

    .line 6
    new-instance v2, Lcom/shabakaty/downloader/ys1;

    invoke-direct {v2, v0}, Lcom/shabakaty/downloader/ys1;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/shabakaty/downloader/ys1;->b:Lcom/shabakaty/downloader/ys1;

    .line 7
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/ys1;->b:Lcom/shabakaty/downloader/ys1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
