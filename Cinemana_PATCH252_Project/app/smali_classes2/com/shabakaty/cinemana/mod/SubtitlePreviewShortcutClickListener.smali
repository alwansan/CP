.class public final Lcom/shabakaty/cinemana/mod/SubtitlePreviewShortcutClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final controller:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/mod/SubtitlePreviewShortcutClickListener;->controller:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/cinemana/mod/SubtitlePreviewShortcutClickListener;->controller:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    invoke-static {v0}, Lcom/shabakaty/cinemana/mod/SubtitlePreviewHelper;->showPreview(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V

    return-void
.end method
