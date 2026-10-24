.class public Lcom/shabakaty/downloader/hy;
.super Ljava/lang/Object;
.source "ChainHead.java"


# instance fields
.field public a:Lcom/shabakaty/downloader/ec0;

.field public b:Lcom/shabakaty/downloader/ec0;

.field public c:Lcom/shabakaty/downloader/ec0;

.field public d:Lcom/shabakaty/downloader/ec0;

.field public e:Lcom/shabakaty/downloader/ec0;

.field public f:Lcom/shabakaty/downloader/ec0;

.field public g:Lcom/shabakaty/downloader/ec0;

.field public h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/ec0;",
            ">;"
        }
    .end annotation
.end field

.field public i:I

.field public j:I

.field public k:F

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ec0;IZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/hy;->k:F

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/hy;->p:Z

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/hy;->a:Lcom/shabakaty/downloader/ec0;

    .line 5
    iput p2, p0, Lcom/shabakaty/downloader/hy;->o:I

    .line 6
    iput-boolean p3, p0, Lcom/shabakaty/downloader/hy;->p:Z

    return-void
.end method
