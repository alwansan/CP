.class public final Lcom/shabakaty/downloader/SequentialSubtitleSettingsClick;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# instance fields
.field private final receiver:Lcom/shabakaty/downloader/ed3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ed3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/SequentialSubtitleSettingsClick;->receiver:Lcom/shabakaty/downloader/ed3;

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/downloader/SequentialSubtitleSettingsClick;->receiver:Lcom/shabakaty/downloader/ed3;

    iget-object v1, v0, Lcom/shabakaty/downloader/ed3;->b:Landroid/content/Context;

    check-cast v1, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;

    iget-object v2, v0, Lcom/shabakaty/downloader/ed3;->a:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    invoke-static {v1, v2}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->openSettings(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object v0
.end method
