.class public final Lcom/shabakaty/downloader/gi0;
.super Ljava/lang/Object;
.source "DLNAControlsActivity.kt"

# interfaces
.implements Lcom/connectsdk/service/capability/MediaControl$PlayStateListener;


# instance fields
.field public final synthetic a:Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/gi0;->a:Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;

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
    check-cast p1, Lcom/connectsdk/service/capability/MediaControl$PlayStateStatus;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/gi0;->a:Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;

    new-instance v1, Lcom/shabakaty/downloader/da4;

    invoke-direct {v1, v0, p1}, Lcom/shabakaty/downloader/da4;-><init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;Lcom/connectsdk/service/capability/MediaControl$PlayStateStatus;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
