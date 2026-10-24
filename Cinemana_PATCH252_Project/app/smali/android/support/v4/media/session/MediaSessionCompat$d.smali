.class public Landroid/support/v4/media/session/MediaSessionCompat$d;
.super Landroid/support/v4/media/session/MediaSessionCompat$c;
.source "MediaSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>(Landroid/media/session/MediaSession;Lcom/shabakaty/downloader/i05;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/media/session/MediaSessionCompat$c;-><init>(Landroid/media/session/MediaSession;Lcom/shabakaty/downloader/i05;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final m()Lcom/shabakaty/downloader/qq2;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->a:Landroid/media/session/MediaSession;

    .line 2
    invoke-virtual {v0}, Landroid/media/session/MediaSession;->getCurrentControllerInfo()Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/qq2;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/qq2;-><init>(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V

    return-object v1
.end method

.method public n(Lcom/shabakaty/downloader/qq2;)V
    .locals 0

    return-void
.end method
