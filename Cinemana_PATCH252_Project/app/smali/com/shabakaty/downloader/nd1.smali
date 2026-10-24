.class public final Lcom/shabakaty/downloader/nd1;
.super Ljava/lang/Object;
.source "FixedFrameRateEstimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/nd1$a;
    }
.end annotation


# instance fields
.field public a:Lcom/shabakaty/downloader/nd1$a;

.field public b:Lcom/shabakaty/downloader/nd1$a;

.field public c:Z

.field public d:J

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/nd1$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/nd1$a;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/nd1;->a:Lcom/shabakaty/downloader/nd1$a;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/nd1$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/nd1$a;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/nd1;->b:Lcom/shabakaty/downloader/nd1$a;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide v0, p0, Lcom/shabakaty/downloader/nd1;->d:J

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/nd1;->a:Lcom/shabakaty/downloader/nd1$a;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/nd1$a;->a()Z

    move-result v0

    return v0
.end method
