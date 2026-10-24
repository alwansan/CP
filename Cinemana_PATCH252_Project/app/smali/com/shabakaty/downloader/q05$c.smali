.class public final Lcom/shabakaty/downloader/q05$c;
.super Ljava/lang/Object;
.source "VideoFrameReleaseHelper.java"

# interfaces
.implements Lcom/shabakaty/downloader/q05$a;
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/q05;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Landroid/hardware/display/DisplayManager;

.field public b:Lcom/shabakaty/downloader/q05$a$a;


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/q05$c;->a:Landroid/hardware/display/DisplayManager;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/q05$a$a;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/q05$c;->b:Lcom/shabakaty/downloader/q05$a$a;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/q05$c;->a:Landroid/hardware/display/DisplayManager;

    invoke-static {}, Lcom/shabakaty/downloader/sy4;->l()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/q05$c;->a:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 4
    check-cast p1, Lcom/shabakaty/downloader/cu;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/cu;->i(Landroid/view/Display;)V

    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/q05$c;->b:Lcom/shabakaty/downloader/q05$a$a;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/q05$c;->a:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/cu;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/cu;->i(Landroid/view/Display;)V

    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method public unregister()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/q05$c;->a:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/q05$c;->b:Lcom/shabakaty/downloader/q05$a$a;

    return-void
.end method
