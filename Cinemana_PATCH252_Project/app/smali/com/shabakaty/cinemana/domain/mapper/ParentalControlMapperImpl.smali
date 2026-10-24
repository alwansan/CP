.class public Lcom/shabakaty/cinemana/domain/mapper/ParentalControlMapperImpl;
.super Ljava/lang/Object;
.source "ParentalControlMapperImpl.java"

# interfaces
.implements Lcom/shabakaty/cinemana/domain/mapper/ParentalControlMapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/remote/user/UserSettingsApi$ParentalControlApi;)Lcom/shabakaty/cinemana/domain/models/local/user/UserSettings$ParentalControl;
    .locals 2

    .line 2
    new-instance v0, Lcom/shabakaty/cinemana/domain/models/local/user/UserSettings$ParentalControl;

    invoke-direct {v0}, Lcom/shabakaty/cinemana/domain/models/local/user/UserSettings$ParentalControl;-><init>()V

    if-eqz p1, :cond_4

    .line 3
    iget-object v1, p1, Lcom/shabakaty/cinemana/domain/models/remote/user/UserSettingsApi$ParentalControlApi;->ageLimit:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4
    iput-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/user/UserSettings$ParentalControl;->ageLimit:Ljava/lang/String;

    .line 5
    :cond_0
    iget-object v1, p1, Lcom/shabakaty/cinemana/domain/models/remote/user/UserSettingsApi$ParentalControlApi;->filmRating:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 6
    iput-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/user/UserSettings$ParentalControl;->filmRating:Ljava/lang/String;

    .line 7
    :cond_1
    iget-object v1, p1, Lcom/shabakaty/cinemana/domain/models/remote/user/UserSettingsApi$ParentalControlApi;->id:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 8
    iput-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/user/UserSettings$ParentalControl;->id:Ljava/lang/String;

    .line 9
    :cond_2
    iget-object v1, p1, Lcom/shabakaty/cinemana/domain/models/remote/user/UserSettingsApi$ParentalControlApi;->name:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 10
    iput-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/user/UserSettings$ParentalControl;->name:Ljava/lang/String;

    .line 11
    :cond_3
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/remote/user/UserSettingsApi$ParentalControlApi;->tvShowRating:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 12
    iput-object p1, v0, Lcom/shabakaty/cinemana/domain/models/local/user/UserSettings$ParentalControl;->tvShowRating:Ljava/lang/String;

    :cond_4
    return-object v0
.end method

.method public bridge synthetic mapDtoToDomain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/remote/user/UserSettingsApi$ParentalControlApi;

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/domain/mapper/ParentalControlMapperImpl;->mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/remote/user/UserSettingsApi$ParentalControlApi;)Lcom/shabakaty/cinemana/domain/models/local/user/UserSettings$ParentalControl;

    move-result-object p1

    return-object p1
.end method
