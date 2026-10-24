.class public final Lcom/shabakaty/downloader/ir4;
.super Ljava/lang/Object;
.source "TsDurationReader.java"


# instance fields
.field public final a:I

.field public final b:Lcom/shabakaty/downloader/qn4;

.field public final c:Lcom/shabakaty/downloader/ka3;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:J

.field public h:J

.field public i:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/ir4;->a:I

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/qn4;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Lcom/shabakaty/downloader/qn4;-><init>(J)V

    iput-object p1, p0, Lcom/shabakaty/downloader/ir4;->b:Lcom/shabakaty/downloader/qn4;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide v0, p0, Lcom/shabakaty/downloader/ir4;->g:J

    .line 5
    iput-wide v0, p0, Lcom/shabakaty/downloader/ir4;->h:J

    .line 6
    iput-wide v0, p0, Lcom/shabakaty/downloader/ir4;->i:J

    .line 7
    new-instance p1, Lcom/shabakaty/downloader/ka3;

    invoke-direct {p1}, Lcom/shabakaty/downloader/ka3;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ir4;->c:Lcom/shabakaty/downloader/ka3;

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/o91;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ir4;->c:Lcom/shabakaty/downloader/ka3;

    sget-object v1, Lcom/shabakaty/downloader/sy4;->f:[B

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ka3;->B([B)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ir4;->d:Z

    .line 3
    invoke-interface {p1}, Lcom/shabakaty/downloader/o91;->p()V

    const/4 p1, 0x0

    return p1
.end method
