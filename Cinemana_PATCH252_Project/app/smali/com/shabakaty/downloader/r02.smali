.class public Lcom/shabakaty/downloader/r02;
.super Ljava/lang/Object;
.source "Indicator.java"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:F

.field public k:I

.field public l:I

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:J

.field public r:J

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:Lcom/shabakaty/downloader/n83;

.field public y:Lcom/shabakaty/downloader/e8;

.field public z:Lcom/shabakaty/downloader/pu3;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/r02;->s:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/shabakaty/downloader/r02;->w:I

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/e8;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/r02;->y:Lcom/shabakaty/downloader/e8;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/e8;->r:Lcom/shabakaty/downloader/e8;

    iput-object v0, p0, Lcom/shabakaty/downloader/r02;->y:Lcom/shabakaty/downloader/e8;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/r02;->y:Lcom/shabakaty/downloader/e8;

    return-object v0
.end method

.method public b()Lcom/shabakaty/downloader/n83;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/r02;->x:Lcom/shabakaty/downloader/n83;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/n83;->r:Lcom/shabakaty/downloader/n83;

    iput-object v0, p0, Lcom/shabakaty/downloader/r02;->x:Lcom/shabakaty/downloader/n83;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/r02;->x:Lcom/shabakaty/downloader/n83;

    return-object v0
.end method
