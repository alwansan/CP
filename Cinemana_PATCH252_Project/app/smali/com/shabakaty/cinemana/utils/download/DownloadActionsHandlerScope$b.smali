.class public final Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope$b;
.super Lcom/shabakaty/downloader/af2;
.source "DownloadsActionsHandler.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;-><init>(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroidx/fragment/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/se0;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope$b;

    invoke-direct {v0}, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope$b;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope$b;->r:Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/hu0;->b:Lcom/shabakaty/downloader/pe0;

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/nh3;->b(Lcom/shabakaty/downloader/me0;)Lcom/shabakaty/downloader/se0;

    move-result-object v0

    return-object v0
.end method
