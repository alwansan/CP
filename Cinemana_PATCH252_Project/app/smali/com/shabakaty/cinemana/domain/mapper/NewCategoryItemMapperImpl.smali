.class public Lcom/shabakaty/cinemana/domain/mapper/NewCategoryItemMapperImpl;
.super Ljava/lang/Object;
.source "NewCategoryItemMapperImpl.java"

# interfaces
.implements Lcom/shabakaty/cinemana/domain/mapper/NewCategoryItemMapper;


# instance fields
.field private final newLanguageItemMapper:Lcom/shabakaty/cinemana/domain/mapper/NewLanguageItemMapper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lcom/shabakaty/cinemana/domain/mapper/NewLanguageItemMapper;

    invoke-static {v0}, Lcom/shabakaty/downloader/ll3;->f(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/cinemana/domain/mapper/NewLanguageItemMapper;

    iput-object v0, p0, Lcom/shabakaty/cinemana/domain/mapper/NewCategoryItemMapperImpl;->newLanguageItemMapper:Lcom/shabakaty/cinemana/domain/mapper/NewLanguageItemMapper;

    return-void
.end method


# virtual methods
.method public mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi;)Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;
    .locals 20

    move-object/from16 v0, p1

    .line 2
    new-instance v15, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;

    move-object v1, v15

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v19, v15

    move-object/from16 v15, v16

    const/16 v17, 0x0

    const v18, 0xffff

    .line 3
    invoke-direct/range {v1 .. v18}, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz v0, :cond_e

    .line 4
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi;->arTitle:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object/from16 v2, v19

    .line 5
    iput-object v1, v2, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->s:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, v19

    .line 6
    :goto_0
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi;->enTitle:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 7
    iput-object v1, v2, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->t:Ljava/lang/String;

    .line 8
    :cond_1
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi;->img:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 9
    iput-object v1, v2, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->u:Ljava/lang/String;

    .line 10
    :cond_2
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi;->imgMediumThumb:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 11
    iput-object v1, v2, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->v:Ljava/lang/String;

    .line 12
    :cond_3
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi;->imgMediumThumbObjUrl:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 13
    iput-object v1, v2, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->w:Ljava/lang/String;

    .line 14
    :cond_4
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi;->imgObjUrl:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 15
    iput-object v1, v2, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->x:Ljava/lang/String;

    .line 16
    :cond_5
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi;->imgThumb:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 17
    iput-object v1, v2, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->y:Ljava/lang/String;

    .line 18
    :cond_6
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi;->imgThumbObjUrl:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 19
    iput-object v1, v2, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->z:Ljava/lang/String;

    .line 20
    :cond_7
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi;->langArray:Ljava/util/List;

    if-nez v1, :cond_8

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v5, p0

    goto :goto_2

    .line 22
    :cond_8
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi$NewLanguageItemApi;

    move-object/from16 v5, p0

    .line 24
    iget-object v6, v5, Lcom/shabakaty/cinemana/domain/mapper/NewCategoryItemMapperImpl;->newLanguageItemMapper:Lcom/shabakaty/cinemana/domain/mapper/NewLanguageItemMapper;

    invoke-interface {v6, v4}, Lcom/shabakaty/downloader/nj;->mapDtoToDomain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem$NewLanguageItem;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    move-object/from16 v5, p0

    move-object v1, v3

    .line 25
    :goto_2
    iput-object v1, v2, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->A:Ljava/util/List;

    .line 26
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi;->nb:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 27
    iput-object v1, v2, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->B:Ljava/lang/String;

    .line 28
    :cond_a
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi;->objectUrlExpiration:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 29
    iput-object v1, v2, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->C:Ljava/lang/String;

    .line 30
    :cond_b
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi;->porder:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 31
    iput-object v1, v2, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->D:Ljava/lang/String;

    .line 32
    :cond_c
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi;->sort:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 33
    iput-object v1, v2, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->E:Ljava/lang/String;

    .line 34
    :cond_d
    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi;->updateDateTime:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 35
    iput-object v0, v2, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->F:Ljava/lang/String;

    goto :goto_3

    :cond_e
    move-object/from16 v5, p0

    move-object/from16 v2, v19

    :cond_f
    :goto_3
    return-object v2
.end method

.method public bridge synthetic mapDtoToDomain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi;

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/domain/mapper/NewCategoryItemMapperImpl;->mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi;)Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;

    move-result-object p1

    return-object p1
.end method
