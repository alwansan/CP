.class public final Lcom/shabakaty/epom_view/ui/EpomView$f;
.super Lcom/shabakaty/downloader/af2;
.source "EpomView.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/epom_view/ui/EpomView;->onDetachedFromWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/f41$e;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/epom_view/ui/EpomView;


# direct methods
.method public constructor <init>(Lcom/shabakaty/epom_view/ui/EpomView;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/epom_view/ui/EpomView$f;->r:Lcom/shabakaty/epom_view/ui/EpomView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/f41$e;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/epom_view/ui/EpomView$f;->r:Lcom/shabakaty/epom_view/ui/EpomView;

    .line 4
    iget-object p1, p1, Lcom/shabakaty/epom_view/ui/EpomView;->Q:Lcom/shabakaty/downloader/j71;

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p1}, Lcom/shabakaty/downloader/bd3;->pause()V

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/epom_view/ui/EpomView$f;->r:Lcom/shabakaty/epom_view/ui/EpomView;

    .line 7
    iget-object p1, p1, Lcom/shabakaty/epom_view/ui/EpomView;->S:Lcom/shabakaty/downloader/n41;

    .line 8
    iget-object p1, p1, Lcom/shabakaty/downloader/n41;->N:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 9
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/PlayerView;->u:Landroid/view/View;

    instance-of v0, p1, Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_1

    .line 10
    check-cast p1, Landroid/opengl/GLSurfaceView;

    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 11
    :cond_1
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
