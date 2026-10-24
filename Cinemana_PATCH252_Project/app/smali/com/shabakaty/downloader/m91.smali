.class public final Lcom/shabakaty/downloader/m91;
.super Lcom/shabakaty/downloader/xk;
.source "ExternalSeasonFragmentViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/xk<",
        "Lcom/shabakaty/downloader/k91;",
        ">;"
    }
.end annotation


# instance fields
.field public final f:Lcom/shabakaty/downloader/jw0;

.field public final g:Lcom/shabakaty/downloader/q15;

.field public final h:Lcom/shabakaty/downloader/mj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/mj<",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

.field public final j:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            ">;>;"
        }
    .end annotation
.end field

.field public k:Ljava/lang/String;

.field public final l:Lcom/shabakaty/downloader/wl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/wl<",
            "Lcom/shabakaty/downloader/tj<",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            ">;",
            "Lcom/shabakaty/downloader/tj<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/TranscodeFile;",
            ">;>;",
            "Lcom/shabakaty/downloader/tj<",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/usermanagement/UserManagement;Lcom/shabakaty/downloader/jw0;Lcom/shabakaty/downloader/ox4;Lcom/shabakaty/downloader/q15;)V
    .locals 70

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    const-string v3, "userManagement"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "downloadDao"

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "userActionsUseCases"

    move-object/from16 v4, p3

    invoke-static {v4, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "videoInfoUseCases"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/shabakaty/downloader/xk;-><init>()V

    .line 2
    iput-object v1, v0, Lcom/shabakaty/downloader/m91;->f:Lcom/shabakaty/downloader/jw0;

    .line 3
    iput-object v2, v0, Lcom/shabakaty/downloader/m91;->g:Lcom/shabakaty/downloader/q15;

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/mj;

    new-instance v15, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-object v2, v15

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

    move-object/from16 v69, v15

    move-object/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

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

    const/16 v40, 0x0

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

    const-wide/16 v57, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, -0x1

    const v68, 0x7fffffff

    invoke-direct/range {v2 .. v68}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/cinemana/domain/models/local/VideoLanguages;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJLjava/lang/String;Ljava/lang/String;ZLcom/shabakaty/downloader/q25;Ljava/util/List;Lcom/shabakaty/cinemana/domain/models/local/Quality;Ljava/lang/String;ZII)V

    move-object/from16 v2, v69

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/mj;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/shabakaty/downloader/m91;->h:Lcom/shabakaty/downloader/mj;

    .line 5
    new-instance v1, Lcom/shabakaty/downloader/xv2;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/xv2;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/shabakaty/downloader/m91;->j:Lcom/shabakaty/downloader/xv2;

    const-string v1, "0"

    .line 6
    iput-object v1, v0, Lcom/shabakaty/downloader/m91;->k:Ljava/lang/String;

    .line 7
    new-instance v1, Lcom/shabakaty/downloader/l91;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/l91;-><init>(Lcom/shabakaty/downloader/m91;)V

    iput-object v1, v0, Lcom/shabakaty/downloader/m91;->l:Lcom/shabakaty/downloader/wl;

    return-void
.end method


# virtual methods
.method public final l(Ljava/lang/String;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)Ljava/lang/String;
    .locals 4

    if-nez p2, :cond_0

    goto :goto_2

    .line 1
    :cond_0
    iget-object p2, p2, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->subtitles:Ljava/util/List;

    if-nez p2, :cond_1

    goto :goto_2

    .line 2
    :cond_1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;

    .line 3
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->type:Ljava/lang/String;

    const-string v3, "ar"

    .line 4
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5
    iget-object v1, v1, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->extention:Ljava/lang/String;

    .line 6
    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 7
    :goto_1
    check-cast v0, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;

    if-nez v0, :cond_5

    goto :goto_2

    .line 8
    :cond_5
    iget-object p1, v0, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->file:Ljava/lang/String;

    if-nez p1, :cond_6

    :goto_2
    const-string p1, ""

    :cond_6
    return-object p1
.end method
