.class public final Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope$c;
.super Lcom/shabakaty/downloader/af2;
.source "DownloadsActionsHandler.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->j(Lcom/shabakaty/downloader/rh2;Landroidx/lifecycle/e$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/views/DownloadButton;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope$c;->r:Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/views/DownloadButton;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope$c;->r:Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->m()V

    .line 5
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
