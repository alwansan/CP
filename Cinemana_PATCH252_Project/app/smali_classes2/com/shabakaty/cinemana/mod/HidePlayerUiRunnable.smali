.class public final Lcom/shabakaty/cinemana/mod/HidePlayerUiRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final controller:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/mod/HidePlayerUiRunnable;->controller:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/cinemana/mod/HidePlayerUiRunnable;->controller:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/shabakaty/cinemana/mod/PlayerEnhancements;->hideAllPlayerUi(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V

    :cond_0
    return-void
.end method
