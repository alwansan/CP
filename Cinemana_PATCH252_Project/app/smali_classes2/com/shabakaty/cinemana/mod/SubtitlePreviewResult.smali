.class public final Lcom/shabakaty/cinemana/mod/SubtitlePreviewResult;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final context:Landroid/content/Context;

.field private final controller:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/mod/SubtitlePreviewResult;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/shabakaty/cinemana/mod/SubtitlePreviewResult;->text:Ljava/lang/String;

    iput-object p3, p0, Lcom/shabakaty/cinemana/mod/SubtitlePreviewResult;->controller:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/shabakaty/cinemana/mod/SubtitlePreviewResult;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/shabakaty/cinemana/mod/SubtitlePreviewResult;->text:Ljava/lang/String;

    iget-object v2, p0, Lcom/shabakaty/cinemana/mod/SubtitlePreviewResult;->controller:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    invoke-static {v0, v1, v2}, Lcom/shabakaty/cinemana/mod/SubtitlePreviewHelper;->showDialog(Landroid/content/Context;Ljava/lang/String;Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V

    return-void
.end method
