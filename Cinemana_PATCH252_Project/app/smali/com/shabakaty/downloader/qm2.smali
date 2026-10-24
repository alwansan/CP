.class public final Lcom/shabakaty/downloader/qm2;
.super Ljava/lang/Object;
.source "Mapper.kt"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/shabakaty/downloader/s25;

.field public final c:Lcom/shabakaty/cinemana/domain/mapper/VideoModelMapper;

.field public final d:Lcom/shabakaty/downloader/y25;

.field public final e:Lcom/shabakaty/cinemana/domain/mapper/FranchiseItemMapper;

.field public final f:Lcom/shabakaty/cinemana/domain/mapper/UserListMapper;

.field public final g:Lcom/shabakaty/cinemana/domain/mapper/TranscodeFileMapper;

.field public final h:Lcom/shabakaty/cinemana/domain/mapper/CommentMapper;

.field public final i:Lcom/shabakaty/cinemana/domain/mapper/VideoStatusMapper;

.field public final j:Lcom/shabakaty/cinemana/domain/mapper/VideoStatusEntityMapper;

.field public final k:Lcom/shabakaty/cinemana/domain/mapper/LogoutResponseMapper;

.field public final l:Lcom/shabakaty/cinemana/domain/mapper/StaffInfoMapper;

.field public final m:Lcom/shabakaty/cinemana/domain/mapper/VideosGroupMapper;

.field public final n:Lcom/shabakaty/cinemana/domain/mapper/NewCategoryItemMapper;

.field public final o:Lcom/shabakaty/cinemana/domain/mapper/UserSettingsMapper;

.field public final p:Lcom/shabakaty/cinemana/domain/mapper/NotificationsListMapper;

.field public final q:Lcom/shabakaty/cinemana/domain/mapper/CommentsRulesMapper;

.field public final r:Lcom/shabakaty/cinemana/domain/mapper/AvailableYearsMapper;

.field public final s:Lcom/shabakaty/cinemana/domain/mapper/SearchItemMapper;

.field public final t:Lcom/shabakaty/cinemana/domain/mapper/VideoStatusMapperFromEntity;

.field public final u:Lcom/shabakaty/cinemana/domain/mapper/VideoModelEntityMapper;

.field public final v:Lcom/shabakaty/cinemana/domain/mapper/StatusMapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/shabakaty/downloader/ff3;Lcom/shabakaty/downloader/pm4;Lcom/shabakaty/downloader/s25;Lcom/shabakaty/cinemana/domain/mapper/VideoModelMapper;Lcom/shabakaty/downloader/y25;Lcom/shabakaty/cinemana/domain/mapper/FranchiseItemMapper;Lcom/shabakaty/cinemana/domain/mapper/UserListMapper;Lcom/shabakaty/cinemana/domain/mapper/TranscodeFileMapper;Lcom/shabakaty/cinemana/domain/mapper/CommentMapper;Lcom/shabakaty/cinemana/domain/mapper/VideoStatusMapper;Lcom/shabakaty/cinemana/domain/mapper/VideoStatusEntityMapper;Lcom/shabakaty/cinemana/domain/mapper/LogoutResponseMapper;Lcom/shabakaty/cinemana/domain/mapper/StaffInfoMapper;Lcom/shabakaty/cinemana/domain/mapper/VideosGroupMapper;Lcom/shabakaty/cinemana/domain/mapper/NewCategoryItemMapper;Lcom/shabakaty/cinemana/domain/mapper/UserSettingsMapper;Lcom/shabakaty/cinemana/domain/mapper/NotificationsListMapper;Lcom/shabakaty/cinemana/domain/mapper/CommentsRulesMapper;Lcom/shabakaty/cinemana/domain/mapper/AvailableYearsMapper;Lcom/shabakaty/cinemana/domain/mapper/SearchItemMapper;Lcom/shabakaty/cinemana/domain/mapper/VideoStatusMapperFromEntity;Lcom/shabakaty/cinemana/domain/mapper/VideoModelEntityMapper;Lcom/shabakaty/cinemana/domain/mapper/StatusMapper;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    move-object/from16 v12, p14

    move-object/from16 v13, p15

    move-object/from16 v14, p16

    move-object/from16 v15, p17

    move-object/from16 v0, p18

    const-string v0, "context"

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefsManager"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "themeHelper"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusDao"

    invoke-static {v2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoModelMapper"

    invoke-static {v3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoUtils"

    invoke-static {v4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "franchiseItemMapper"

    invoke-static {v5, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userListMapper"

    invoke-static {v6, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transcodeFileMapper"

    invoke-static {v7, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commentMapper"

    invoke-static {v8, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoStatusMapper"

    invoke-static {v9, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoStatusEntityMapper"

    invoke-static {v10, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logoutResponseMapper"

    invoke-static {v11, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "staffInfoMapper"

    invoke-static {v12, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videosGroupMapper"

    invoke-static {v13, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newCategoryItemMapper"

    invoke-static {v14, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userSettingsMapper"

    invoke-static {v15, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationsListMapper"

    move-object/from16 v1, p18

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commentsRulesMapper"

    move-object/from16 v1, p19

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availableYearsMapper"

    move-object/from16 v1, p20

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchItemMapper"

    move-object/from16 v1, p21

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoStatusMapperFromEntity"

    move-object/from16 v1, p22

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoModelEntityMapper"

    move-object/from16 v1, p23

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusMapper"

    move-object/from16 v1, p24

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2
    iput-object v1, v0, Lcom/shabakaty/downloader/qm2;->a:Landroid/content/Context;

    .line 3
    iput-object v2, v0, Lcom/shabakaty/downloader/qm2;->b:Lcom/shabakaty/downloader/s25;

    .line 4
    iput-object v3, v0, Lcom/shabakaty/downloader/qm2;->c:Lcom/shabakaty/cinemana/domain/mapper/VideoModelMapper;

    .line 5
    iput-object v4, v0, Lcom/shabakaty/downloader/qm2;->d:Lcom/shabakaty/downloader/y25;

    .line 6
    iput-object v5, v0, Lcom/shabakaty/downloader/qm2;->e:Lcom/shabakaty/cinemana/domain/mapper/FranchiseItemMapper;

    .line 7
    iput-object v6, v0, Lcom/shabakaty/downloader/qm2;->f:Lcom/shabakaty/cinemana/domain/mapper/UserListMapper;

    .line 8
    iput-object v7, v0, Lcom/shabakaty/downloader/qm2;->g:Lcom/shabakaty/cinemana/domain/mapper/TranscodeFileMapper;

    .line 9
    iput-object v8, v0, Lcom/shabakaty/downloader/qm2;->h:Lcom/shabakaty/cinemana/domain/mapper/CommentMapper;

    .line 10
    iput-object v9, v0, Lcom/shabakaty/downloader/qm2;->i:Lcom/shabakaty/cinemana/domain/mapper/VideoStatusMapper;

    .line 11
    iput-object v10, v0, Lcom/shabakaty/downloader/qm2;->j:Lcom/shabakaty/cinemana/domain/mapper/VideoStatusEntityMapper;

    .line 12
    iput-object v11, v0, Lcom/shabakaty/downloader/qm2;->k:Lcom/shabakaty/cinemana/domain/mapper/LogoutResponseMapper;

    .line 13
    iput-object v12, v0, Lcom/shabakaty/downloader/qm2;->l:Lcom/shabakaty/cinemana/domain/mapper/StaffInfoMapper;

    .line 14
    iput-object v13, v0, Lcom/shabakaty/downloader/qm2;->m:Lcom/shabakaty/cinemana/domain/mapper/VideosGroupMapper;

    .line 15
    iput-object v14, v0, Lcom/shabakaty/downloader/qm2;->n:Lcom/shabakaty/cinemana/domain/mapper/NewCategoryItemMapper;

    .line 16
    iput-object v15, v0, Lcom/shabakaty/downloader/qm2;->o:Lcom/shabakaty/cinemana/domain/mapper/UserSettingsMapper;

    move-object/from16 v1, p18

    .line 17
    iput-object v1, v0, Lcom/shabakaty/downloader/qm2;->p:Lcom/shabakaty/cinemana/domain/mapper/NotificationsListMapper;

    move-object/from16 v1, p19

    move-object/from16 v2, p20

    .line 18
    iput-object v1, v0, Lcom/shabakaty/downloader/qm2;->q:Lcom/shabakaty/cinemana/domain/mapper/CommentsRulesMapper;

    .line 19
    iput-object v2, v0, Lcom/shabakaty/downloader/qm2;->r:Lcom/shabakaty/cinemana/domain/mapper/AvailableYearsMapper;

    move-object/from16 v1, p21

    move-object/from16 v2, p22

    .line 20
    iput-object v1, v0, Lcom/shabakaty/downloader/qm2;->s:Lcom/shabakaty/cinemana/domain/mapper/SearchItemMapper;

    .line 21
    iput-object v2, v0, Lcom/shabakaty/downloader/qm2;->t:Lcom/shabakaty/cinemana/domain/mapper/VideoStatusMapperFromEntity;

    move-object/from16 v1, p23

    move-object/from16 v2, p24

    .line 22
    iput-object v1, v0, Lcom/shabakaty/downloader/qm2;->u:Lcom/shabakaty/cinemana/domain/mapper/VideoModelEntityMapper;

    .line 23
    iput-object v2, v0, Lcom/shabakaty/downloader/qm2;->v:Lcom/shabakaty/cinemana/domain/mapper/StatusMapper;

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/cinemana/domain/models/remote/user/LogoutResponseApi;)Lcom/shabakaty/cinemana/domain/models/local/user/LogoutResponse;
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qm2;->k:Lcom/shabakaty/cinemana/domain/mapper/LogoutResponseMapper;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/nj;->mapDtoToDomain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/user/LogoutResponse;

    return-object p1
.end method

.method public final b(Ljava/util/List;Z)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi;

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/qm2;->n:Lcom/shabakaty/cinemana/domain/mapper/NewCategoryItemMapper;

    invoke-interface {v2, v1}, Lcom/shabakaty/downloader/nj;->mapDtoToDomain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;

    if-eqz p2, :cond_0

    .line 6
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->t:Ljava/lang/String;

    goto :goto_1

    .line 7
    :cond_0
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->s:Ljava/lang/String;

    .line 8
    :goto_1
    invoke-virtual {v1, v2}, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->a(Ljava/lang/String;)V

    .line 9
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->A:Ljava/util/List;

    .line 10
    invoke-static {v2}, Lcom/shabakaty/downloader/m50;->z0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    .line 11
    new-instance v12, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem$NewLanguageItem;

    .line 12
    iget-object v5, v1, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->B:Ljava/lang/String;

    const/4 v10, 0x0

    const/16 v11, 0x20

    const-string v6, "\u0627\u0644\u0643\u0644"

    const-string v7, "All"

    const-string v8, ""

    const-string v9, ""

    move-object v4, v12

    .line 13
    invoke-direct/range {v4 .. v11}, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem$NewLanguageItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 14
    move-object v4, v2

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 15
    iput-object v2, v1, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->A:Ljava/util/List;

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_1
    invoke-static {v0}, Lcom/shabakaty/downloader/m50;->z0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/shabakaty/cinemana/domain/models/remote/user/UserSettingsApi;)Lcom/shabakaty/cinemana/domain/models/local/user/UserSettings;
    .locals 5

    const-string v0, "userSettingsApi"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qm2;->o:Lcom/shabakaty/cinemana/domain/mapper/UserSettingsMapper;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/nj;->mapDtoToDomain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/user/UserSettings;

    .line 2
    iget-object v0, p1, Lcom/shabakaty/cinemana/domain/models/local/user/UserSettings;->parentalControl:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/cinemana/domain/models/local/user/UserSettings$ParentalControl;

    .line 4
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/local/user/UserSettings$ParentalControl;->id:Ljava/lang/String;

    .line 5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0x30

    if-eq v3, v4, :cond_4

    const/16 v4, 0x32

    if-eq v3, v4, :cond_2

    const/16 v4, 0x33

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const v2, 0x7f080157

    goto :goto_2

    :cond_2
    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const v2, 0x7f080156

    goto :goto_2

    :cond_4
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :goto_1
    const v2, 0x7f080154

    goto :goto_2

    :cond_5
    const v2, 0x7f080155

    .line 6
    :goto_2
    iput v2, v1, Lcom/shabakaty/cinemana/domain/models/local/user/UserSettings$ParentalControl;->icon:I

    goto :goto_0

    :cond_6
    return-object p1
.end method

.method public final d(Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;)Lcom/shabakaty/cinemana/domain/models/local/VideoModel;
    .locals 1

    const-string v0, "videoModelApi"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qm2;->c:Lcom/shabakaty/cinemana/domain/mapper/VideoModelMapper;

    invoke-virtual {v0, p1}, Lcom/shabakaty/cinemana/domain/mapper/VideoModelMapper;->mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;)Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/qm2;->g(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    return-object p1
.end method

.method public final e(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 1
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;

    .line 4
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/qm2;->d(Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;)Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v0}, Lcom/shabakaty/downloader/m50;->z0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public final f(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)Lcom/shabakaty/downloader/i25;
    .locals 1

    const-string v0, "videoModel"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qm2;->u:Lcom/shabakaty/cinemana/domain/mapper/VideoModelEntityMapper;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/nj;->mapDtoToDomain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/i25;

    return-object p1
.end method

.method public final g(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)Lcom/shabakaty/cinemana/domain/models/local/VideoModel;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qm2;->b:Lcom/shabakaty/downloader/s25;

    invoke-virtual {p1, v0, p0}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->a(Lcom/shabakaty/downloader/s25;Lcom/shabakaty/downloader/qm2;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/qm2;->d:Lcom/shabakaty/downloader/y25;

    const-string v1, "videoUtils"

    .line 3
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v1, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->kind:Ljava/lang/String;

    const-string v2, "2"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/y25;->a(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->episodeDesc:Ljava/lang/String;

    :cond_0
    return-object p1
.end method

.method public final h(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 4
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/qm2;->g(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
