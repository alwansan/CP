.class public Lcom/shabakaty/cinemana/mod/SrtPositionSeekListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private final controller:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/mod/SrtPositionSeekListener;->controller:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    add-int/lit16 v0, p2, -0xc8

    int-to-float v0, v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/mod/SrtPositionSeekListener;->controller:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/mod/SrtSettingsHelper;->applyTranslationY(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;F)V

    iget-object v1, p0, Lcom/shabakaty/cinemana/mod/SrtPositionSeekListener;->controller:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/mod/SrtSettingsHelper;->saveTranslationY(Landroid/content/Context;F)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
