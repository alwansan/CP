.class public Lcom/shabakaty/cinemana/domain/mapper/SkippingDurationsMapperImpl;
.super Ljava/lang/Object;
.source "SkippingDurationsMapperImpl.java"

# interfaces
.implements Lcom/shabakaty/cinemana/domain/mapper/SkippingDurationsMapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$SkippingDurationsApi;)Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;
    .locals 4

    .line 2
    new-instance v0, Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 3
    invoke-direct {v0, v1, v1, v2}, Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;-><init>(Ljava/util/List;Ljava/util/List;I)V

    if-eqz p1, :cond_1

    .line 4
    iget-object v1, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$SkippingDurationsApi;->start:Ljava/util/List;

    const-string v2, "<set-?>"

    if-eqz v1, :cond_0

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    invoke-static {v3, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object v3, v0, Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;->start:Ljava/util/List;

    .line 8
    :cond_0
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$SkippingDurationsApi;->end:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;->end:Ljava/util/List;

    :cond_1
    return-object v0
.end method

.method public bridge synthetic mapDtoToDomain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$SkippingDurationsApi;

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/domain/mapper/SkippingDurationsMapperImpl;->mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$SkippingDurationsApi;)Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;

    move-result-object p1

    return-object p1
.end method
