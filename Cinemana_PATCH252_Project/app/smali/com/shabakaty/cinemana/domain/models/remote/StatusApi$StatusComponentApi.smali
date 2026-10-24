.class public final Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;
.super Ljava/lang/Object;
.source "StatusApi.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/domain/models/remote/StatusApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StatusComponentApi"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0015\n\u0002\u0010\u0008\n\u0002\u0008\u0013\u0008\u0086\u0008\u0018\u00002\u00020\u0001R(\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\"\u0010\n\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\"\u0010\u0010\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u000b\u001a\u0004\u0008\u0011\u0010\r\"\u0004\u0008\u0012\u0010\u000fR\"\u0010\u0014\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\"\u0010\u001a\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u000b\u001a\u0004\u0008\u001b\u0010\r\"\u0004\u0008\u001c\u0010\u000fR\"\u0010\u001d\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u000b\u001a\u0004\u0008\u001e\u0010\r\"\u0004\u0008\u001f\u0010\u000fR\"\u0010 \u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010\u000b\u001a\u0004\u0008!\u0010\r\"\u0004\u0008\"\u0010\u000fR\"\u0010#\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008#\u0010\u0015\u001a\u0004\u0008$\u0010\u0017\"\u0004\u0008%\u0010\u0019R\"\u0010&\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010\u000b\u001a\u0004\u0008\'\u0010\r\"\u0004\u0008(\u0010\u000fR\"\u0010*\u001a\u00020)8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008*\u0010+\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R\"\u00100\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u00080\u0010\u0015\u001a\u0004\u00081\u0010\u0017\"\u0004\u00082\u0010\u0019R\"\u00103\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u00083\u0010\u000b\u001a\u0004\u00084\u0010\r\"\u0004\u00085\u0010\u000fR\"\u00106\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u00086\u0010\u000b\u001a\u0004\u00087\u0010\r\"\u0004\u00088\u0010\u000fR\"\u00109\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u00089\u0010\u000b\u001a\u0004\u0008:\u0010\r\"\u0004\u0008;\u0010\u000f\u00a8\u0006<"
    }
    d2 = {
        "Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;",
        "",
        "",
        "",
        "components",
        "Ljava/util/List;",
        "getComponents",
        "()Ljava/util/List;",
        "setComponents",
        "(Ljava/util/List;)V",
        "createdAt",
        "Ljava/lang/String;",
        "getCreatedAt",
        "()Ljava/lang/String;",
        "setCreatedAt",
        "(Ljava/lang/String;)V",
        "description",
        "getDescription",
        "setDescription",
        "",
        "group",
        "Z",
        "getGroup",
        "()Z",
        "setGroup",
        "(Z)V",
        "groupId",
        "getGroupId",
        "setGroupId",
        "id",
        "getId",
        "setId",
        "name",
        "getName",
        "setName",
        "onlyShowIfDegraded",
        "getOnlyShowIfDegraded",
        "setOnlyShowIfDegraded",
        "pageId",
        "getPageId",
        "setPageId",
        "",
        "position",
        "I",
        "getPosition",
        "()I",
        "setPosition",
        "(I)V",
        "showcase",
        "getShowcase",
        "setShowcase",
        "startDate",
        "getStartDate",
        "setStartDate",
        "status",
        "getStatus",
        "setStatus",
        "updatedAt",
        "getUpdatedAt",
        "setUpdatedAt",
        "app_productionBetaRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field public components:Ljava/util/List;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "components"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public createdAt:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "created_at"
    .end annotation
.end field

.field public description:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "description"
    .end annotation
.end field

.field public group:Z
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "group"
    .end annotation
.end field

.field public groupId:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "group_id"
    .end annotation
.end field

.field public id:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "id"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "name"
    .end annotation
.end field

.field public onlyShowIfDegraded:Z
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "only_show_if_degraded"
    .end annotation
.end field

.field public pageId:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "page_id"
    .end annotation
.end field

.field public position:I
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "position"
    .end annotation
.end field

.field public showcase:Z
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "showcase"
    .end annotation
.end field

.field public startDate:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "start_date"
    .end annotation
.end field

.field public status:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "status"
    .end annotation
.end field

.field public updatedAt:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "updated_at"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    const-string v1, ""

    const-string v2, "components"

    .line 2
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "createdAt"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "description"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "groupId"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "id"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "name"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "pageId"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "startDate"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "status"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "updatedAt"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v0, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->components:Ljava/util/List;

    .line 5
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->createdAt:Ljava/lang/String;

    .line 6
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->description:Ljava/lang/String;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->group:Z

    .line 8
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->groupId:Ljava/lang/String;

    .line 9
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->id:Ljava/lang/String;

    .line 10
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->name:Ljava/lang/String;

    .line 11
    iput-boolean v0, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->onlyShowIfDegraded:Z

    .line 12
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->pageId:Ljava/lang/String;

    .line 13
    iput v0, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->position:I

    .line 14
    iput-boolean v0, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->showcase:Z

    .line 15
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->startDate:Ljava/lang/String;

    .line 16
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->status:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->updatedAt:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->components:Ljava/util/List;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->components:Ljava/util/List;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->createdAt:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->createdAt:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->group:Z

    iget-boolean v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->group:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->groupId:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->groupId:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->onlyShowIfDegraded:Z

    iget-boolean v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->onlyShowIfDegraded:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->pageId:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->pageId:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->position:I

    iget v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->position:I

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-boolean v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->showcase:Z

    iget-boolean v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->showcase:Z

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->startDate:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->startDate:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->status:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->status:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->updatedAt:Ljava/lang/String;

    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->updatedAt:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    return v2

    :cond_f
    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->components:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->createdAt:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->description:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-boolean v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->group:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->groupId:Ljava/lang/String;

    const/16 v3, 0x1f

    invoke-static {v1, v0, v3}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->id:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->name:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-boolean v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->onlyShowIfDegraded:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->pageId:Ljava/lang/String;

    const/16 v3, 0x1f

    invoke-static {v1, v0, v3}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->position:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->showcase:Z

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->startDate:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->status:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->updatedAt:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "StatusComponentApi(components="

    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->components:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->createdAt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", group="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->group:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", groupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->groupId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", onlyShowIfDegraded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->onlyShowIfDegraded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", pageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->pageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", showcase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->showcase:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", startDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->startDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", updatedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->updatedAt:Ljava/lang/String;

    const/16 v2, 0x29

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/h61;->a(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
