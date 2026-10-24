.class public final Lcom/shabakaty/downloader/gn0$e;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/gn0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/ad3;

.field public final b:Z

.field public final c:J

.field public final d:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ad3;ZJJLcom/shabakaty/downloader/gn0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/gn0$e;->a:Lcom/shabakaty/downloader/ad3;

    .line 3
    iput-boolean p2, p0, Lcom/shabakaty/downloader/gn0$e;->b:Z

    .line 4
    iput-wide p3, p0, Lcom/shabakaty/downloader/gn0$e;->c:J

    .line 5
    iput-wide p5, p0, Lcom/shabakaty/downloader/gn0$e;->d:J

    return-void
.end method
