.class public Lcom/shabakaty/cinemana/domain/mapper/VideoModelLanguageMapperImpl;
.super Ljava/lang/Object;
.source "VideoModelLanguageMapperImpl.java"

# interfaces
.implements Lcom/shabakaty/cinemana/domain/mapper/VideoModelLanguageMapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$VideoLanguagesApi;)Lcom/shabakaty/cinemana/domain/models/local/VideoLanguages;
    .locals 3

    .line 2
    new-instance v0, Lcom/shabakaty/cinemana/domain/models/local/VideoLanguages;

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 3
    invoke-direct {v0, v1, v1, v2}, Lcom/shabakaty/cinemana/domain/models/local/VideoLanguages;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz p1, :cond_1

    .line 4
    iget-object v1, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$VideoLanguagesApi;->enTitle:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5
    iput-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoLanguages;->enTitle:Ljava/lang/String;

    .line 6
    :cond_0
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$VideoLanguagesApi;->arTitle:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 7
    iput-object p1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoLanguages;->arTitle:Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public bridge synthetic mapDtoToDomain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$VideoLanguagesApi;

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/domain/mapper/VideoModelLanguageMapperImpl;->mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$VideoLanguagesApi;)Lcom/shabakaty/cinemana/domain/models/local/VideoLanguages;

    move-result-object p1

    return-object p1
.end method
