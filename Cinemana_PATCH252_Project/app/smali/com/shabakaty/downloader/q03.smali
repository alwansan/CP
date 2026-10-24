.class public Lcom/shabakaty/downloader/q03;
.super Lcom/shabakaty/downloader/r03;
.source "NotificationCompat.java"


# instance fields
.field public e:[I

.field public f:Landroid/support/v4/media/session/MediaSessionCompat$Token;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/r03;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/q03;->e:[I

    return-void
.end method


# virtual methods
.method public b(Lcom/shabakaty/downloader/h03;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/s03;

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/s03;->b:Landroid/app/Notification$Builder;

    .line 3
    new-instance v0, Landroid/app/Notification$MediaStyle;

    invoke-direct {v0}, Landroid/app/Notification$MediaStyle;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/q03;->e:[I

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Landroid/app/Notification$MediaStyle;->setShowActionsInCompactView([I)Landroid/app/Notification$MediaStyle;

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/q03;->f:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$Token;->s:Ljava/lang/Object;

    .line 8
    check-cast v1, Landroid/media/session/MediaSession$Token;

    invoke-virtual {v0, v1}, Landroid/app/Notification$MediaStyle;->setMediaSession(Landroid/media/session/MediaSession$Token;)Landroid/app/Notification$MediaStyle;

    .line 9
    :cond_1
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    return-void
.end method

.method public h(Lcom/shabakaty/downloader/h03;)Landroid/widget/RemoteViews;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public i(Lcom/shabakaty/downloader/h03;)Landroid/widget/RemoteViews;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
