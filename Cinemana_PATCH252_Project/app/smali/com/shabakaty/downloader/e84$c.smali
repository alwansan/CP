.class public final Lcom/shabakaty/downloader/e84$c;
.super Ljava/lang/Object;
.source "SingleSampleMediaPeriod.java"

# interfaces
.implements Lcom/shabakaty/downloader/ij2$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/e84;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:J

.field public final b:Lcom/shabakaty/downloader/yl0;

.field public final c:Lcom/shabakaty/downloader/uc4;

.field public d:[B


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/yl0;Lcom/shabakaty/downloader/vl0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/shabakaty/downloader/hj2;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shabakaty/downloader/e84$c;->a:J

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/e84$c;->b:Lcom/shabakaty/downloader/yl0;

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/uc4;

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/uc4;-><init>(Lcom/shabakaty/downloader/vl0;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/e84$c;->c:Lcom/shabakaty/downloader/uc4;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/e84$c;->c:Lcom/shabakaty/downloader/uc4;

    const-wide/16 v1, 0x0

    .line 2
    iput-wide v1, v0, Lcom/shabakaty/downloader/uc4;->b:J

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/e84$c;->b:Lcom/shabakaty/downloader/yl0;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/uc4;->a(Lcom/shabakaty/downloader/yl0;)J

    const/4 v0, 0x0

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/e84$c;->c:Lcom/shabakaty/downloader/uc4;

    .line 5
    iget-wide v0, v0, Lcom/shabakaty/downloader/uc4;->b:J

    long-to-int v1, v0

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/e84$c;->d:[B

    if-nez v0, :cond_0

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 7
    iput-object v0, p0, Lcom/shabakaty/downloader/e84$c;->d:[B

    goto :goto_1

    .line 8
    :cond_0
    array-length v2, v0

    if-ne v1, v2, :cond_1

    .line 9
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/e84$c;->d:[B

    .line 10
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/shabakaty/downloader/e84$c;->c:Lcom/shabakaty/downloader/uc4;

    iget-object v2, p0, Lcom/shabakaty/downloader/e84$c;->d:[B

    array-length v3, v2

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v1, v3}, Lcom/shabakaty/downloader/uc4;->read([BII)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/e84$c;->c:Lcom/shabakaty/downloader/uc4;

    sget v1, Lcom/shabakaty/downloader/sy4;->a:I

    if-eqz v0, :cond_3

    .line 12
    :try_start_1
    iget-object v0, v0, Lcom/shabakaty/downloader/uc4;->a:Lcom/shabakaty/downloader/vl0;

    invoke-interface {v0}, Lcom/shabakaty/downloader/vl0;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 13
    iget-object v1, p0, Lcom/shabakaty/downloader/e84$c;->c:Lcom/shabakaty/downloader/uc4;

    sget v2, Lcom/shabakaty/downloader/sy4;->a:I

    if-eqz v1, :cond_4

    .line 14
    :try_start_2
    iget-object v1, v1, Lcom/shabakaty/downloader/uc4;->a:Lcom/shabakaty/downloader/vl0;

    invoke-interface {v1}, Lcom/shabakaty/downloader/vl0;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 15
    :catch_1
    :cond_4
    throw v0
.end method

.method public b()V
    .locals 0

    return-void
.end method
