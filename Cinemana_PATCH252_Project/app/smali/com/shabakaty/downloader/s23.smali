.class public Lcom/shabakaty/downloader/s23;
.super Ljava/lang/Object;
.source "OSInAppMessageRedisplayStats.java"


# instance fields
.field public a:J

.field public b:I

.field public c:I

.field public d:J

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/shabakaty/downloader/s23;->a:J

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/shabakaty/downloader/s23;->b:I

    const/4 v1, 0x1

    .line 4
    iput v1, p0, Lcom/shabakaty/downloader/s23;->c:I

    const-wide/16 v1, 0x0

    .line 5
    iput-wide v1, p0, Lcom/shabakaty/downloader/s23;->d:J

    .line 6
    iput-boolean v0, p0, Lcom/shabakaty/downloader/s23;->e:Z

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 8
    iput-wide v0, p0, Lcom/shabakaty/downloader/s23;->a:J

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/shabakaty/downloader/s23;->b:I

    const/4 v1, 0x1

    .line 10
    iput v1, p0, Lcom/shabakaty/downloader/s23;->c:I

    const-wide/16 v1, 0x0

    .line 11
    iput-wide v1, p0, Lcom/shabakaty/downloader/s23;->d:J

    .line 12
    iput-boolean v0, p0, Lcom/shabakaty/downloader/s23;->e:Z

    .line 13
    iput p1, p0, Lcom/shabakaty/downloader/s23;->b:I

    .line 14
    iput-wide p2, p0, Lcom/shabakaty/downloader/s23;->a:J

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 16
    iput-wide v0, p0, Lcom/shabakaty/downloader/s23;->a:J

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/shabakaty/downloader/s23;->b:I

    const/4 v1, 0x1

    .line 18
    iput v1, p0, Lcom/shabakaty/downloader/s23;->c:I

    const-wide/16 v2, 0x0

    .line 19
    iput-wide v2, p0, Lcom/shabakaty/downloader/s23;->d:J

    .line 20
    iput-boolean v0, p0, Lcom/shabakaty/downloader/s23;->e:Z

    .line 21
    iput-boolean v1, p0, Lcom/shabakaty/downloader/s23;->e:Z

    const-string v0, "limit"

    .line 22
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "delay"

    .line 23
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 24
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 25
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/shabakaty/downloader/s23;->c:I

    .line 26
    :cond_0
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 27
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shabakaty/downloader/s23;->d:J

    goto :goto_0

    .line 28
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 29
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/shabakaty/downloader/s23;->d:J

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "OSInAppMessageDisplayStats{lastDisplayTime="

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/shabakaty/downloader/s23;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", displayQuantity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shabakaty/downloader/s23;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", displayLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shabakaty/downloader/s23;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", displayDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shabakaty/downloader/s23;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
