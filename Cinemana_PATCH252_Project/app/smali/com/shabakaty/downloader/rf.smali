.class public final synthetic Lcom/shabakaty/downloader/rf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/rn1;


# static fields
.field public static final synthetic b:Lcom/shabakaty/downloader/rf;

.field public static final synthetic c:Lcom/shabakaty/downloader/rf;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/rf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/rf;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/rf;->b:Lcom/shabakaty/downloader/rf;

    new-instance v0, Lcom/shabakaty/downloader/rf;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/rf;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/rf;->c:Lcom/shabakaty/downloader/rf;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/shabakaty/downloader/rf;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 72

    move-object/from16 v0, p0

    iget v1, v0, Lcom/shabakaty/downloader/rf;->a:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Lcom/shabakaty/downloader/yh4;

    invoke-interface {v1}, Lcom/shabakaty/downloader/yh4;->F()Ljava/util/List;

    move-result-object v1

    return-object v1

    :goto_0
    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 1
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 4
    check-cast v4, Lcom/shabakaty/cinemana/data/db/search/SearchItem;

    .line 5
    iget-object v6, v4, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->nb:Ljava/lang/String;

    .line 6
    iget-object v7, v4, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->enTitle:Ljava/lang/String;

    .line 7
    iget-object v8, v4, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->arTitle:Ljava/lang/String;

    .line 8
    iget-object v9, v4, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->stars:Ljava/lang/String;

    .line 9
    iget-object v13, v4, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->year:Ljava/lang/String;

    .line 10
    iget-object v14, v4, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->kind:Ljava/lang/String;

    .line 11
    iget-object v15, v4, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->season:Ljava/lang/String;

    .line 12
    iget-object v5, v4, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->imgObjUrl:Ljava/lang/String;

    move-object/from16 v16, v5

    .line 13
    iget-object v5, v4, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->episodeNummer:Ljava/lang/String;

    move-object/from16 v20, v5

    .line 14
    iget-object v5, v4, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->rate:Ljava/lang/String;

    move-object/from16 v21, v5

    .line 15
    iget-object v5, v4, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->imgMediumThumbObjUrl:Ljava/lang/String;

    move-object/from16 v17, v5

    .line 16
    new-instance v5, Lcom/shabakaty/cinemana/domain/models/local/Category;

    .line 17
    iget-object v10, v4, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->categoryEn:Ljava/lang/String;

    .line 18
    iget-object v4, v4, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->categoryAr:Ljava/lang/String;

    .line 19
    invoke-direct {v5, v10, v4}, Lcom/shabakaty/cinemana/domain/models/local/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/shabakaty/downloader/iq6;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v40

    .line 20
    new-instance v4, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-object v5, v4

    const/4 v11, 0x0

    move-object v12, v11

    move-object v10, v11

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const-wide/16 v60, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const v70, -0xcf90

    const v71, 0x7ffffffb

    invoke-direct/range {v5 .. v71}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/cinemana/domain/models/local/VideoLanguages;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJLjava/lang/String;Ljava/lang/String;ZLcom/shabakaty/downloader/q25;Ljava/util/List;Lcom/shabakaty/cinemana/domain/models/local/Quality;Ljava/lang/String;ZII)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 21
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v3, :cond_1

    invoke-static {v2}, Lcom/shabakaty/downloader/m50;->x0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    goto :goto_2

    .line 22
    :cond_1
    invoke-static {v2}, Lcom/shabakaty/downloader/m50;->y0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 23
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :goto_2
    move-object v4, v1

    .line 24
    new-instance v1, Lcom/shabakaty/downloader/tj;

    .line 25
    sget-object v3, Lcom/shabakaty/downloader/tj$a;->r:Lcom/shabakaty/downloader/tj$a;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    move-object v2, v1

    .line 26
    invoke-direct/range {v2 .. v7}, Lcom/shabakaty/downloader/tj;-><init>(Lcom/shabakaty/downloader/tj$a;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;I)V

    goto :goto_3

    :cond_2
    const/4 v10, 0x0

    .line 27
    new-instance v1, Lcom/shabakaty/downloader/tj;

    .line 28
    sget-object v9, Lcom/shabakaty/downloader/tj$a;->u:Lcom/shabakaty/downloader/tj$a;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xc

    move-object v8, v1

    .line 29
    invoke-direct/range {v8 .. v13}, Lcom/shabakaty/downloader/tj;-><init>(Lcom/shabakaty/downloader/tj$a;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;I)V

    :goto_3
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
