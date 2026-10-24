.class public final Lcom/shabakaty/downloader/zo4;
.super Ljava/lang/Object;
.source "TrackFragment.java"


# instance fields
.field public a:Lcom/shabakaty/downloader/uo0;

.field public b:J

.field public c:J

.field public d:I

.field public e:I

.field public f:[J

.field public g:[I

.field public h:[I

.field public i:[I

.field public j:[J

.field public k:[Z

.field public l:Z

.field public m:[Z

.field public n:Lcom/shabakaty/downloader/xo4;

.field public final o:Lcom/shabakaty/downloader/ka3;

.field public p:Z

.field public q:J

.field public r:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [J

    .line 2
    iput-object v1, p0, Lcom/shabakaty/downloader/zo4;->f:[J

    new-array v1, v0, [I

    .line 3
    iput-object v1, p0, Lcom/shabakaty/downloader/zo4;->g:[I

    new-array v1, v0, [I

    .line 4
    iput-object v1, p0, Lcom/shabakaty/downloader/zo4;->h:[I

    new-array v1, v0, [I

    .line 5
    iput-object v1, p0, Lcom/shabakaty/downloader/zo4;->i:[I

    new-array v1, v0, [J

    .line 6
    iput-object v1, p0, Lcom/shabakaty/downloader/zo4;->j:[J

    new-array v1, v0, [Z

    .line 7
    iput-object v1, p0, Lcom/shabakaty/downloader/zo4;->k:[Z

    new-array v0, v0, [Z

    .line 8
    iput-object v0, p0, Lcom/shabakaty/downloader/zo4;->m:[Z

    .line 9
    new-instance v0, Lcom/shabakaty/downloader/ka3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ka3;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/zo4;->o:Lcom/shabakaty/downloader/ka3;

    return-void
.end method
