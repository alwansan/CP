.class public final Lcom/shabakaty/downloader/c32$b;
.super Lcom/shabakaty/downloader/af2;
.source "InternalSeasonFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/c32;->n1(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/views/DownloadButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/views/DownloadButton;

.field public final synthetic s:Lcom/shabakaty/downloader/c32;

.field public final synthetic t:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/views/DownloadButton;Lcom/shabakaty/downloader/c32;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/c32$b;->r:Lcom/shabakaty/downloader/views/DownloadButton;

    iput-object p2, p0, Lcom/shabakaty/downloader/c32$b;->s:Lcom/shabakaty/downloader/c32;

    iput-object p3, p0, Lcom/shabakaty/downloader/c32$b;->t:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;

    const-string v0, "$this$finishedDownloadButtonClick"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/c32$b;->r:Lcom/shabakaty/downloader/views/DownloadButton;

    invoke-virtual {p1, p1, v0}, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->n(Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;Lcom/shabakaty/downloader/views/DownloadButton;)V

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/d32;

    iget-object v1, p0, Lcom/shabakaty/downloader/c32$b;->s:Lcom/shabakaty/downloader/c32;

    iget-object v2, p0, Lcom/shabakaty/downloader/c32$b;->t:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/d32;-><init>(Lcom/shabakaty/downloader/c32;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V

    invoke-virtual {p1, p1, v0}, Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;->r(Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;Lcom/shabakaty/downloader/rm1;)V

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/e32;

    iget-object v1, p0, Lcom/shabakaty/downloader/c32$b;->s:Lcom/shabakaty/downloader/c32;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/e32;-><init>(Lcom/shabakaty/downloader/c32;)V

    invoke-virtual {p1, p1, v0}, Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;->q(Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;Lcom/shabakaty/downloader/rm1;)V

    .line 6
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
