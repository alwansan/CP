.class public final Lcom/shabakaty/downloader/di0;
.super Ljava/lang/Object;
.source "DLNAControlsActivity.kt"

# interfaces
.implements Lcom/connectsdk/service/capability/MediaControl$PositionListener;


# instance fields
.field public final synthetic a:Lcom/shabakaty/cinemana/domain/models/local/Quality;

.field public final synthetic b:Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/domain/models/local/Quality;Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/di0;->a:Lcom/shabakaty/cinemana/domain/models/local/Quality;

    iput-object p2, p0, Lcom/shabakaty/downloader/di0;->b:Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;

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
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Long;

    .line 2
    invoke-static {}, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->c()Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/di0;->a:Lcom/shabakaty/cinemana/domain/models/local/Quality;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/Quality;->url:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/di0;->b:Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;

    .line 6
    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->g(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
