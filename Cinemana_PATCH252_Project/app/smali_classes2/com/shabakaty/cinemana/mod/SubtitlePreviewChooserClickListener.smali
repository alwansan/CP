.class public final Lcom/shabakaty/cinemana/mod/SubtitlePreviewChooserClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final context:Landroid/content/Context;

.field private final controller:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/mod/SubtitlePreviewChooserClickListener;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/shabakaty/cinemana/mod/SubtitlePreviewChooserClickListener;->controller:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/cinemana/mod/SubtitlePreviewChooserClickListener;->controller:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/shabakaty/cinemana/mod/SubtitlePreviewHelper;->showCurrentSubtitleChooser(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V

    :cond_1
    return-void
.end method
