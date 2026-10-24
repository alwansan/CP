.class public final Lcom/google/android/exoplayer2/source/hls/a$b;
.super Ljava/lang/Object;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/hls/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Lcom/shabakaty/downloader/zz;

.field public b:Z

.field public c:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/a$b;->a:Lcom/shabakaty/downloader/zz;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/a$b;->b:Z

    .line 4
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/a$b;->c:Landroid/net/Uri;

    return-void
.end method
