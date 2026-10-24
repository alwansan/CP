.class public final Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler$b;
.super Lcom/shabakaty/downloader/af2;
.source "PausedDownloadHandler.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler;-><init>(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroidx/fragment/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Landroidx/fragment/app/q;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler$b;->r:Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler$b;->r:Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler;->w:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/q;

    move-result-object v0

    :goto_0
    return-object v0
.end method
