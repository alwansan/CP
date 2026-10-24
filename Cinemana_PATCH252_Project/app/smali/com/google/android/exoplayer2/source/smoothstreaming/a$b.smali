.class public final Lcom/google/android/exoplayer2/source/smoothstreaming/a$b;
.super Lcom/shabakaty/downloader/pj;
.source "DefaultSsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/smoothstreaming/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final e:Lcom/shabakaty/downloader/wa4$b;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wa4$b;II)V
    .locals 2

    int-to-long p2, p3

    .line 1
    iget v0, p1, Lcom/shabakaty/downloader/wa4$b;->k:I

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    invoke-direct {p0, p2, p3, v0, v1}, Lcom/shabakaty/downloader/pj;-><init>(JJ)V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a$b;->e:Lcom/shabakaty/downloader/wa4$b;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pj;->c()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a$b;->e:Lcom/shabakaty/downloader/wa4$b;

    .line 3
    iget-wide v1, p0, Lcom/shabakaty/downloader/pj;->d:J

    long-to-int v2, v1

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/wa4$b;->o:[J

    aget-wide v1, v0, v2

    return-wide v1
.end method

.method public b()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/a$b;->a()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a$b;->e:Lcom/shabakaty/downloader/wa4$b;

    .line 3
    iget-wide v3, p0, Lcom/shabakaty/downloader/pj;->d:J

    long-to-int v4, v3

    .line 4
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/wa4$b;->b(I)J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2
.end method
