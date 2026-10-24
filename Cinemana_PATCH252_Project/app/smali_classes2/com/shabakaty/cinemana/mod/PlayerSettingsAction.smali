.class public final Lcom/shabakaty/cinemana/mod/PlayerSettingsAction;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# instance fields
.field private final controller:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/mod/PlayerSettingsAction;->controller:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/cinemana/mod/PlayerSettingsAction;->controller:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    invoke-static {v0}, Lcom/shabakaty/cinemana/mod/PlayerEnhancements;->showMultiSkipDialog(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V

    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object v0
.end method
