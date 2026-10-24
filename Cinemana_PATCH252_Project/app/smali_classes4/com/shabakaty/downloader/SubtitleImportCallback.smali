.class public final Lcom/shabakaty/downloader/SubtitleImportCallback;
.super Ljava/lang/Object;
.source "SubtitleImportCallback.java"

# interfaces
.implements Lcom/shabakaty/downloader/n3;


# instance fields
.field private final a:Lcom/shabakaty/cinemana/player/VideoPlayerActivity;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/player/VideoPlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/SubtitleImportCallback;->a:Lcom/shabakaty/cinemana/player/VideoPlayerActivity;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Landroid/net/Uri;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/SubtitleImportCallback;->a:Lcom/shabakaty/cinemana/player/VideoPlayerActivity;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/SubtitleImportFile;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/shabakaty/downloader/cu;

    invoke-direct {v2, v0}, Lcom/shabakaty/downloader/cu;-><init>(Lcom/shabakaty/cinemana/player/VideoPlayerActivity;)V

    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/cu;->a(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->onManualImport(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
