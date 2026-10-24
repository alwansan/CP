.class public final Lcom/shabakaty/downloader/wy0;
.super Ljava/lang/Object;
.source "DownloaderModule_ProvideDownloader$shabakaty_downloader_releaseFactory.java"

# interfaces
.implements Lcom/shabakaty/downloader/oj3;


# instance fields
.field public final synthetic a:I

.field public final b:Lcom/shabakaty/downloader/ow4;

.field public final c:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/ey0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ow4;Lcom/shabakaty/downloader/oj3;I)V
    .locals 1

    iput p3, p0, Lcom/shabakaty/downloader/wy0;->a:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/wy0;->b:Lcom/shabakaty/downloader/ow4;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/wy0;->c:Lcom/shabakaty/downloader/oj3;

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/wy0;->b:Lcom/shabakaty/downloader/ow4;

    .line 6
    iput-object p2, p0, Lcom/shabakaty/downloader/wy0;->c:Lcom/shabakaty/downloader/oj3;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/shabakaty/downloader/wy0;->a:I

    const-string v1, "downloadManager"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/wy0;->b:Lcom/shabakaty/downloader/ow4;

    iget-object v2, p0, Lcom/shabakaty/downloader/wy0;->c:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v2}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/ey0;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/wy0;->b:Lcom/shabakaty/downloader/ow4;

    iget-object v2, p0, Lcom/shabakaty/downloader/wy0;->c:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v2}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/ey0;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
