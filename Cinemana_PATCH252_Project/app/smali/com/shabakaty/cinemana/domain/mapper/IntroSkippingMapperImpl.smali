.class public Lcom/shabakaty/cinemana/domain/mapper/IntroSkippingMapperImpl;
.super Ljava/lang/Object;
.source "IntroSkippingMapperImpl.java"

# interfaces
.implements Lcom/shabakaty/cinemana/domain/mapper/IntroSkippingMapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$IntroSkippingApi;)Lcom/shabakaty/downloader/o84;
    .locals 9

    .line 2
    new-instance v6, Lcom/shabakaty/downloader/o84;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/o84;-><init>(JJLjava/lang/String;)V

    if-eqz p1, :cond_2

    .line 4
    iget-object v0, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$IntroSkippingApi;->start:Ljava/lang/String;

    const-wide/16 v1, 0x3e8

    if-eqz v0, :cond_0

    .line 5
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    long-to-double v7, v1

    mul-double v3, v3, v7

    double-to-long v3, v3

    .line 6
    iput-wide v3, v6, Lcom/shabakaty/downloader/o84;->r:J

    .line 7
    :cond_0
    iget-object v0, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$IntroSkippingApi;->end:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 8
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    long-to-double v0, v1

    mul-double v3, v3, v0

    double-to-long v0, v3

    .line 9
    iput-wide v0, v6, Lcom/shabakaty/downloader/o84;->s:J

    .line 10
    :cond_1
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$IntroSkippingApi;->controlLevel:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 11
    iput-object p1, v6, Lcom/shabakaty/downloader/o84;->t:Ljava/lang/String;

    :cond_2
    return-object v6
.end method

.method public bridge synthetic mapDtoToDomain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$IntroSkippingApi;

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/domain/mapper/IntroSkippingMapperImpl;->mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$IntroSkippingApi;)Lcom/shabakaty/downloader/o84;

    move-result-object p1

    return-object p1
.end method
