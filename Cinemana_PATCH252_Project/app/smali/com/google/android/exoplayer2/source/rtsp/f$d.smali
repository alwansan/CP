.class public final Lcom/google/android/exoplayer2/source/rtsp/f$d;
.super Ljava/lang/Object;
.source "RtspMediaPeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/rtsp/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/cv3;

.field public final b:Lcom/google/android/exoplayer2/source/rtsp/b;

.field public c:Ljava/lang/String;

.field public final synthetic d:Lcom/google/android/exoplayer2/source/rtsp/f;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/f;Lcom/shabakaty/downloader/cv3;ILcom/google/android/exoplayer2/source/rtsp/a$a;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f$d;->d:Lcom/google/android/exoplayer2/source/rtsp/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/f$d;->a:Lcom/shabakaty/downloader/cv3;

    .line 3
    new-instance v3, Lcom/shabakaty/downloader/cu;

    invoke-direct {v3, p0}, Lcom/shabakaty/downloader/cu;-><init>(Lcom/google/android/exoplayer2/source/rtsp/f$d;)V

    .line 4
    new-instance v6, Lcom/google/android/exoplayer2/source/rtsp/b;

    .line 5
    iget-object v4, p1, Lcom/google/android/exoplayer2/source/rtsp/f;->t:Lcom/google/android/exoplayer2/source/rtsp/f$b;

    move-object v0, v6

    move v1, p3

    move-object v2, p2

    move-object v5, p4

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/rtsp/b;-><init>(ILcom/shabakaty/downloader/cv3;Lcom/google/android/exoplayer2/source/rtsp/b$a;Lcom/shabakaty/downloader/p91;Lcom/google/android/exoplayer2/source/rtsp/a$a;)V

    iput-object v6, p0, Lcom/google/android/exoplayer2/source/rtsp/f$d;->b:Lcom/google/android/exoplayer2/source/rtsp/b;

    return-void
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f$d;->b:Lcom/google/android/exoplayer2/source/rtsp/b;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/rtsp/b;->b:Lcom/shabakaty/downloader/cv3;

    iget-object v0, v0, Lcom/shabakaty/downloader/cv3;->b:Landroid/net/Uri;

    return-object v0
.end method
