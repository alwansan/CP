.class public final Lcom/shabakaty/cinemana/mod/SubtitlePreviewUpdater;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final controller:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

.field private final dialog:Landroid/app/AlertDialog;

.field private final handler:Landroid/os/Handler;

.field private final web:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;Landroid/app/AlertDialog;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/mod/SubtitlePreviewUpdater;->web:Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/shabakaty/cinemana/mod/SubtitlePreviewUpdater;->controller:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    iput-object p3, p0, Lcom/shabakaty/cinemana/mod/SubtitlePreviewUpdater;->dialog:Landroid/app/AlertDialog;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/shabakaty/cinemana/mod/SubtitlePreviewUpdater;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/shabakaty/cinemana/mod/SubtitlePreviewUpdater;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/cinemana/mod/SubtitlePreviewUpdater;->controller:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;->getPlayer()Lcom/shabakaty/downloader/s64;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/shabakaty/downloader/s64;->C()J

    move-result-wide v2

    const-string v4, "setCurrent("

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/shabakaty/cinemana/mod/SubtitlePreviewUpdater;->web:Landroid/webkit/WebView;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/cinemana/mod/SubtitlePreviewUpdater;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    return-void
.end method
