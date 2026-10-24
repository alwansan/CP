.class public Lcom/shabakaty/downloader/gn0$a;
.super Ljava/lang/Thread;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/gn0;->flush()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Landroid/media/AudioTrack;

.field public final synthetic s:Lcom/shabakaty/downloader/gn0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/gn0;Ljava/lang/String;Landroid/media/AudioTrack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/gn0$a;->s:Lcom/shabakaty/downloader/gn0;

    iput-object p3, p0, Lcom/shabakaty/downloader/gn0$a;->r:Landroid/media/AudioTrack;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/gn0$a;->r:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/gn0$a;->r:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/gn0$a;->s:Lcom/shabakaty/downloader/gn0;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/gn0;->h:Landroid/os/ConditionVariable;

    .line 5
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/shabakaty/downloader/gn0$a;->s:Lcom/shabakaty/downloader/gn0;

    .line 6
    iget-object v1, v1, Lcom/shabakaty/downloader/gn0;->h:Landroid/os/ConditionVariable;

    .line 7
    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 8
    throw v0
.end method
