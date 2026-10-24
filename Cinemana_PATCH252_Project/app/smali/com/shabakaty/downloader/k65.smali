.class public final Lcom/shabakaty/downloader/k65;
.super Lcom/shabakaty/downloader/af2;
.source "WideVerticalVideosView.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/yk;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/k65;->r:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/yk;

    iget-object v1, p0, Lcom/shabakaty/downloader/k65;->r:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/yk;-><init>(Lcom/shabakaty/downloader/pk;)V

    return-object v0
.end method
