.class public Lcom/shabakaty/cinemana/domain/mapper/UserSettingsMapperImpl;
.super Ljava/lang/Object;
.source "UserSettingsMapperImpl.java"

# interfaces
.implements Lcom/shabakaty/cinemana/domain/mapper/UserSettingsMapper;


# instance fields
.field private final parentalControlMapper:Lcom/shabakaty/cinemana/domain/mapper/ParentalControlMapper;

.field private final userTranslationMapper:Lcom/shabakaty/cinemana/domain/mapper/UserTranslationMapper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lcom/shabakaty/cinemana/domain/mapper/ParentalControlMapper;

    invoke-static {v0}, Lcom/shabakaty/downloader/ll3;->f(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/cinemana/domain/mapper/ParentalControlMapper;

    iput-object v0, p0, Lcom/shabakaty/cinemana/domain/mapper/UserSettingsMapperImpl;->parentalControlMapper:Lcom/shabakaty/cinemana/domain/mapper/ParentalControlMapper;

    .line 3
    const-class v0, Lcom/shabakaty/cinemana/domain/mapper/UserTranslationMapper;

    invoke-static {v0}, Lcom/shabakaty/downloader/ll3;->f(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/cinemana/domain/mapper/UserTranslationMapper;

    iput-object v0, p0, Lcom/shabakaty/cinemana/domain/mapper/UserSettingsMapperImpl;->userTranslationMapper:Lcom/shabakaty/cinemana/domain/mapper/UserTranslationMapper;

    return-void
.end method


# virtual methods
.method public mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/remote/user/UserSettingsApi;)Lcom/shabakaty/cinemana/domain/models/local/user/UserSettings;
    .locals 5

    .line 2
    new-instance v0, Lcom/shabakaty/cinemana/domain/models/local/user/UserSettings;

    invoke-direct {v0}, Lcom/shabakaty/cinemana/domain/models/local/user/UserSettings;-><init>()V

    if-eqz p1, :cond_2

    .line 3
    iget-object v1, p1, Lcom/shabakaty/cinemana/domain/models/remote/user/UserSettingsApi;->parentalControl:Ljava/util/List;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    .line 5
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/cinemana/domain/models/remote/user/UserSettingsApi$ParentalControlApi;

    .line 7
    iget-object v4, p0, Lcom/shabakaty/cinemana/domain/mapper/UserSettingsMapperImpl;->parentalControlMapper:Lcom/shabakaty/cinemana/domain/mapper/ParentalControlMapper;

    invoke-interface {v4, v3}, Lcom/shabakaty/downloader/nj;->mapDtoToDomain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/cinemana/domain/models/local/user/UserSettings$ParentalControl;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 8
    :goto_1
    iput-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/user/UserSettings;->parentalControl:Ljava/util/List;

    .line 9
    iget v1, p1, Lcom/shabakaty/cinemana/domain/models/remote/user/UserSettingsApi;->parentalLevelStatus:I

    .line 10
    iput v1, v0, Lcom/shabakaty/cinemana/domain/models/local/user/UserSettings;->parentalLevelStatus:I

    .line 11
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/remote/user/UserSettingsApi;->userTranslation:Lcom/shabakaty/cinemana/domain/models/remote/user/UserSettingsApi$UserTranslationApi;

    if-eqz p1, :cond_2

    .line 12
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/mapper/UserSettingsMapperImpl;->userTranslationMapper:Lcom/shabakaty/cinemana/domain/mapper/UserTranslationMapper;

    invoke-interface {v1, p1}, Lcom/shabakaty/downloader/nj;->mapDtoToDomain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/user/UserSettings$UserTranslation;

    const-string v1, "<set-?>"

    .line 13
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, v0, Lcom/shabakaty/cinemana/domain/models/local/user/UserSettings;->userTranslation:Lcom/shabakaty/cinemana/domain/models/local/user/UserSettings$UserTranslation;

    :cond_2
    return-object v0
.end method

.method public bridge synthetic mapDtoToDomain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/remote/user/UserSettingsApi;

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/domain/mapper/UserSettingsMapperImpl;->mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/remote/user/UserSettingsApi;)Lcom/shabakaty/cinemana/domain/models/local/user/UserSettings;

    move-result-object p1

    return-object p1
.end method
