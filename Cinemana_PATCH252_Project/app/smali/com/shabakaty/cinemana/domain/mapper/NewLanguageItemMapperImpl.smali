.class public Lcom/shabakaty/cinemana/domain/mapper/NewLanguageItemMapperImpl;
.super Ljava/lang/Object;
.source "NewLanguageItemMapperImpl.java"

# interfaces
.implements Lcom/shabakaty/cinemana/domain/mapper/NewLanguageItemMapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi$NewLanguageItemApi;)Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem$NewLanguageItem;
    .locals 9

    .line 2
    new-instance v8, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem$NewLanguageItem;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3f

    move-object v0, v8

    .line 3
    invoke-direct/range {v0 .. v7}, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem$NewLanguageItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz p1, :cond_4

    .line 4
    iget-object v0, p1, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi$NewLanguageItemApi;->catNb:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5
    iput-object v0, v8, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem$NewLanguageItem;->catNb:Ljava/lang/String;

    .line 6
    :cond_0
    iget-object v0, p1, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi$NewLanguageItemApi;->langArTitle:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 7
    iput-object v0, v8, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem$NewLanguageItem;->langArTitle:Ljava/lang/String;

    .line 8
    :cond_1
    iget-object v0, p1, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi$NewLanguageItemApi;->langEnTitle:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 9
    iput-object v0, v8, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem$NewLanguageItem;->langEnTitle:Ljava/lang/String;

    .line 10
    :cond_2
    iget-object v0, p1, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi$NewLanguageItemApi;->langFreq:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 11
    iput-object v0, v8, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem$NewLanguageItem;->langFreq:Ljava/lang/String;

    .line 12
    :cond_3
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi$NewLanguageItemApi;->langNb:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 13
    iput-object p1, v8, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem$NewLanguageItem;->langNb:Ljava/lang/String;

    :cond_4
    return-object v8
.end method

.method public bridge synthetic mapDtoToDomain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi$NewLanguageItemApi;

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/domain/mapper/NewLanguageItemMapperImpl;->mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi$NewLanguageItemApi;)Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem$NewLanguageItem;

    move-result-object p1

    return-object p1
.end method
