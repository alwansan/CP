.class public Lcom/shabakaty/downloader/pq2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@19.0.0"


# instance fields
.field public final a:J

.field public final b:I

.field public final c:Z

.field public final d:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(JIZLorg/json/JSONObject;Lcom/shabakaty/downloader/hl3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/shabakaty/downloader/pq2;->a:J

    .line 3
    iput p3, p0, Lcom/shabakaty/downloader/pq2;->b:I

    .line 4
    iput-boolean p4, p0, Lcom/shabakaty/downloader/pq2;->c:Z

    .line 5
    iput-object p5, p0, Lcom/shabakaty/downloader/pq2;->d:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/shabakaty/downloader/pq2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/pq2;

    .line 3
    iget-wide v3, p0, Lcom/shabakaty/downloader/pq2;->a:J

    iget-wide v5, p1, Lcom/shabakaty/downloader/pq2;->a:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget v1, p0, Lcom/shabakaty/downloader/pq2;->b:I

    iget v3, p1, Lcom/shabakaty/downloader/pq2;->b:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/shabakaty/downloader/pq2;->c:Z

    iget-boolean v3, p1, Lcom/shabakaty/downloader/pq2;->c:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/pq2;->d:Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/shabakaty/downloader/pq2;->d:Lorg/json/JSONObject;

    .line 4
    invoke-static {v1, p1}, Lcom/shabakaty/downloader/q43;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-wide v1, p0, Lcom/shabakaty/downloader/pq2;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/shabakaty/downloader/pq2;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/shabakaty/downloader/pq2;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/pq2;->d:Lorg/json/JSONObject;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
