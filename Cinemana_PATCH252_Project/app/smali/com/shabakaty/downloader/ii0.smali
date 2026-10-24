.class public final Lcom/shabakaty/downloader/ii0;
.super Ljava/lang/Object;
.source "DLNAControlsActivity.kt"

# interfaces
.implements Lcom/connectsdk/service/capability/MediaControl$PositionListener;


# instance fields
.field public final synthetic a:Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/ii0;->a:Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/ii0;->a:Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;

    .line 3
    iput-wide v0, p1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->y:J

    .line 4
    iget-wide v0, p1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->x:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 5
    invoke-static {p1}, Lcom/shabakaty/downloader/cl3;->e(Lcom/shabakaty/downloader/rh2;)Lcom/shabakaty/downloader/ih2;

    move-result-object p1

    new-instance v0, Lcom/shabakaty/downloader/hi0;

    iget-object v1, p0, Lcom/shabakaty/downloader/ii0;->a:Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/hi0;-><init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;Lcom/shabakaty/downloader/ud0;)V

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/ih2;->c(Lcom/shabakaty/downloader/hn1;)Lcom/shabakaty/downloader/e92;

    :cond_0
    return-void
.end method
