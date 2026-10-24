.class public final Lcom/shabakaty/downloader/ei0;
.super Lcom/shabakaty/downloader/af2;
.source "DLNAControlsActivity.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Landroid/app/Activity;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;

.field public final synthetic s:Lcom/shabakaty/cinemana/domain/models/local/Quality;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;Lcom/shabakaty/cinemana/domain/models/local/Quality;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/ei0;->r:Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;

    iput-object p2, p0, Lcom/shabakaty/downloader/ei0;->s:Lcom/shabakaty/cinemana/domain/models/local/Quality;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Landroid/app/Activity;

    const-string v0, "$this$showOnUiThread"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/ei0;->r:Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;

    .line 4
    iget-object v0, p1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->B:Lcom/connectsdk/service/capability/MediaControl;

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lcom/shabakaty/downloader/di0;

    iget-object v2, p0, Lcom/shabakaty/downloader/ei0;->s:Lcom/shabakaty/cinemana/domain/models/local/Quality;

    invoke-direct {v1, v2, p1}, Lcom/shabakaty/downloader/di0;-><init>(Lcom/shabakaty/cinemana/domain/models/local/Quality;Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;)V

    invoke-interface {v0, v1}, Lcom/connectsdk/service/capability/MediaControl;->getPosition(Lcom/connectsdk/service/capability/MediaControl$PositionListener;)V

    .line 6
    :goto_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
