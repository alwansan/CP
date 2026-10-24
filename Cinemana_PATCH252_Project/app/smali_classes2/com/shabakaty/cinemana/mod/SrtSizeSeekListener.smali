.class public Lcom/shabakaty/cinemana/mod/SrtSizeSeekListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private final controller:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

.field private final label:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/mod/SrtSizeSeekListener;->controller:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    iput-object p2, p0, Lcom/shabakaty/cinemana/mod/SrtSizeSeekListener;->label:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    if-nez p3, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, p2, 0xa

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u062d\u062c\u0645 \u0627\u0644\u062e\u0637: "

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/shabakaty/cinemana/mod/SrtSizeSeekListener;->label:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/shabakaty/cinemana/mod/SrtSizeSeekListener;->controller:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/mod/SrtSettingsHelper;->applyPercent(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;I)V

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
