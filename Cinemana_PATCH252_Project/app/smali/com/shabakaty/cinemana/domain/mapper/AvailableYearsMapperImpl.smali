.class public Lcom/shabakaty/cinemana/domain/mapper/AvailableYearsMapperImpl;
.super Ljava/lang/Object;
.source "AvailableYearsMapperImpl.java"

# interfaces
.implements Lcom/shabakaty/cinemana/domain/mapper/AvailableYearsMapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/remote/AvailableYearsApi;)Lcom/shabakaty/cinemana/domain/models/local/AvailableYears;
    .locals 2

    .line 2
    new-instance v0, Lcom/shabakaty/cinemana/domain/models/local/AvailableYears;

    invoke-direct {v0}, Lcom/shabakaty/cinemana/domain/models/local/AvailableYears;-><init>()V

    if-eqz p1, :cond_1

    .line 3
    iget-object v1, p1, Lcom/shabakaty/cinemana/domain/models/remote/AvailableYearsApi;->caption:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4
    iput-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/AvailableYears;->caption:Ljava/lang/String;

    .line 5
    :cond_0
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/remote/AvailableYearsApi;->value:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 6
    iput-object p1, v0, Lcom/shabakaty/cinemana/domain/models/local/AvailableYears;->value:Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public bridge synthetic mapDtoToDomain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/remote/AvailableYearsApi;

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/domain/mapper/AvailableYearsMapperImpl;->mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/remote/AvailableYearsApi;)Lcom/shabakaty/cinemana/domain/models/local/AvailableYears;

    move-result-object p1

    return-object p1
.end method
