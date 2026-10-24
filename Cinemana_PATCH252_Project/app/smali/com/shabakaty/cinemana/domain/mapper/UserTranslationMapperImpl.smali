.class public Lcom/shabakaty/cinemana/domain/mapper/UserTranslationMapperImpl;
.super Ljava/lang/Object;
.source "UserTranslationMapperImpl.java"

# interfaces
.implements Lcom/shabakaty/cinemana/domain/mapper/UserTranslationMapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/remote/user/UserSettingsApi$UserTranslationApi;)Lcom/shabakaty/cinemana/domain/models/local/user/UserSettings$UserTranslation;
    .locals 4

    .line 2
    new-instance v0, Lcom/shabakaty/cinemana/domain/models/local/user/UserSettings$UserTranslation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 3
    invoke-direct {v0, v1, v2, v3}, Lcom/shabakaty/cinemana/domain/models/local/user/UserSettings$UserTranslation;-><init>(Ljava/lang/String;II)V

    if-eqz p1, :cond_1

    .line 4
    iget-object v1, p1, Lcom/shabakaty/cinemana/domain/models/remote/user/UserSettingsApi$UserTranslationApi;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5
    iput-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/user/UserSettings$UserTranslation;->name:Ljava/lang/String;

    .line 6
    :cond_0
    iget p1, p1, Lcom/shabakaty/cinemana/domain/models/remote/user/UserSettingsApi$UserTranslationApi;->status:I

    .line 7
    iput p1, v0, Lcom/shabakaty/cinemana/domain/models/local/user/UserSettings$UserTranslation;->status:I

    :cond_1
    return-object v0
.end method

.method public bridge synthetic mapDtoToDomain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/remote/user/UserSettingsApi$UserTranslationApi;

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/domain/mapper/UserTranslationMapperImpl;->mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/remote/user/UserSettingsApi$UserTranslationApi;)Lcom/shabakaty/cinemana/domain/models/local/user/UserSettings$UserTranslation;

    move-result-object p1

    return-object p1
.end method
