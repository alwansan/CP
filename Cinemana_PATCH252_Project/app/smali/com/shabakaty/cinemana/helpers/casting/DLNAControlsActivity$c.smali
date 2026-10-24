.class public final Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity$c;
.super Ljava/lang/Object;
.source "DLNAControlsActivity.kt"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity$c;->r:Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 1
    iget-object p1, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity$c;->r:Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;

    .line 2
    iget-object p3, p1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->B:Lcom/connectsdk/service/capability/MediaControl;

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    int-to-long v0, p2

    .line 3
    iget-wide p1, p1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->x:J

    mul-long v0, v0, p1

    const/16 p1, 0x64

    int-to-long p1, p1

    .line 4
    div-long/2addr v0, p1

    const/4 p1, 0x0

    invoke-interface {p3, v0, v1, p1}, Lcom/connectsdk/service/capability/MediaControl;->seek(JLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
