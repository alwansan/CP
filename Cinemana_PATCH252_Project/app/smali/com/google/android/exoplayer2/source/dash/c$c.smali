.class public final Lcom/google/android/exoplayer2/source/dash/c$c;
.super Lcom/shabakaty/downloader/pj;
.source "DefaultDashChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final e:Lcom/google/android/exoplayer2/source/dash/c$b;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/dash/c$b;JJJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/shabakaty/downloader/pj;-><init>(JJ)V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/c$c;->e:Lcom/google/android/exoplayer2/source/dash/c$b;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pj;->c()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c$c;->e:Lcom/google/android/exoplayer2/source/dash/c$b;

    .line 3
    iget-wide v1, p0, Lcom/shabakaty/downloader/pj;->d:J

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/c$b;->f(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()J
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pj;->c()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c$c;->e:Lcom/google/android/exoplayer2/source/dash/c$b;

    .line 3
    iget-wide v1, p0, Lcom/shabakaty/downloader/pj;->d:J

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/c$b;->e(J)J

    move-result-wide v0

    return-wide v0
.end method
