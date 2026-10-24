.class public final Lcom/shabakaty/downloader/gn0$h;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/gn0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "h"
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Landroid/media/AudioTrack$StreamEventCallback;

.field public final synthetic c:Lcom/shabakaty/downloader/gn0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/gn0;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/gn0$h;->c:Lcom/shabakaty/downloader/gn0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/gn0$h;->a:Landroid/os/Handler;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/gn0$h$a;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/gn0$h$a;-><init>(Lcom/shabakaty/downloader/gn0$h;Lcom/shabakaty/downloader/gn0;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/gn0$h;->b:Landroid/media/AudioTrack$StreamEventCallback;

    return-void
.end method
