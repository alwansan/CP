.class public final Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;
.super Ljava/lang/Object;
.source "StatusInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/domain/models/local/StatusInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StatusComponent"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0015\n\u0002\u0010\u0008\n\u0002\u0008\u0013\u0008\u0086\u0008\u0018\u00002\u00020\u0001R(\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\"\u0010\n\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\"\u0010\u0010\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u000b\u001a\u0004\u0008\u0011\u0010\r\"\u0004\u0008\u0012\u0010\u000fR\"\u0010\u0014\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\"\u0010\u001a\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u000b\u001a\u0004\u0008\u001b\u0010\r\"\u0004\u0008\u001c\u0010\u000fR\"\u0010\u001d\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u000b\u001a\u0004\u0008\u001e\u0010\r\"\u0004\u0008\u001f\u0010\u000fR\"\u0010 \u001a\u00020\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010\u000b\u001a\u0004\u0008!\u0010\r\"\u0004\u0008\"\u0010\u000fR\"\u0010#\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008#\u0010\u0015\u001a\u0004\u0008$\u0010\u0017\"\u0004\u0008%\u0010\u0019R\"\u0010&\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010\u000b\u001a\u0004\u0008\'\u0010\r\"\u0004\u0008(\u0010\u000fR\"\u0010*\u001a\u00020)8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008*\u0010+\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R\"\u00100\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00080\u0010\u0015\u001a\u0004\u00081\u0010\u0017\"\u0004\u00082\u0010\u0019R\"\u00103\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00083\u0010\u000b\u001a\u0004\u00084\u0010\r\"\u0004\u00085\u0010\u000fR\"\u00106\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00086\u0010\u000b\u001a\u0004\u00087\u0010\r\"\u0004\u00088\u0010\u000fR\"\u00109\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00089\u0010\u000b\u001a\u0004\u0008:\u0010\r\"\u0004\u0008;\u0010\u000f\u00a8\u0006<"
    }
    d2 = {
        "Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;",
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public createdAt:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public group:Z

.field public groupId:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public onlyShowIfDegraded:Z

.field public pageId:Ljava/lang/String;

.field public position:I

.field public serviceStatus:Lcom/shabakaty/downloader/q14;

.field public showcase:Z

.field public startDate:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public updatedAt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    const-string v1, ""

    .line 2
    sget-object v2, Lcom/shabakaty/downloader/q14$b$a;->c:Lcom/shabakaty/downloader/q14$b$a;

    const-string v3, "components"

    .line 3
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "createdAt"

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "description"

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "groupId"

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "id"

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "name"

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "pageId"

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "startDate"

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "serviceStatus"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "status"

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "updatedAt"

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object v0, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->components:Ljava/util/List;

    .line 6
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->createdAt:Ljava/lang/String;

    .line 7
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->description:Ljava/lang/String;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->group:Z

    .line 9
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->groupId:Ljava/lang/String;

    .line 10
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->id:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->name:Ljava/lang/String;

    .line 12
    iput-boolean v0, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->onlyShowIfDegraded:Z

    .line 13
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->pageId:Ljava/lang/String;

    .line 14
    iput v0, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->position:I

    .line 15
    iput-boolean v0, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->showcase:Z

    .line 16
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->startDate:Ljava/lang/String;

    .line 17
    iput-object v2, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->serviceStatus:Lcom/shabakaty/downloader/q14;

    .line 18
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->status:Ljava/lang/String;

    .line 19
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->updatedAt:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->components:Ljava/util/List;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->components:Ljava/util/List;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->createdAt:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->createdAt:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->group:Z

    iget-boolean v3, p1, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->group:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->groupId:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->groupId:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->onlyShowIfDegraded:Z

    iget-boolean v3, p1, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->onlyShowIfDegraded:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->pageId:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->pageId:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->position:I

    iget v3, p1, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->position:I

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-boolean v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->showcase:Z

    iget-boolean v3, p1, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->showcase:Z

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->startDate:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->startDate:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->serviceStatus:Lcom/shabakaty/downloader/q14;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->serviceStatus:Lcom/shabakaty/downloader/q14;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->status:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->status:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->updatedAt:Ljava/lang/String;

    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->updatedAt:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    return v2

    :cond_10
    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->components:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->createdAt:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->description:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-boolean v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->group:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->groupId:Ljava/lang/String;

    const/16 v3, 0x1f

    invoke-static {v1, v0, v3}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->id:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->name:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-boolean v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->onlyShowIfDegraded:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->pageId:Ljava/lang/String;

    const/16 v3, 0x1f

    invoke-static {v1, v0, v3}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->position:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->showcase:Z

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->startDate:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->serviceStatus:Lcom/shabakaty/downloader/q14;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->status:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->updatedAt:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "StatusComponent(components="

    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->components:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->createdAt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", group="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->group:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", groupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->groupId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", onlyShowIfDegraded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->onlyShowIfDegraded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", pageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->pageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", showcase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->showcase:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", startDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->startDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", serviceStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->serviceStatus:Lcom/shabakaty/downloader/q14;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", updatedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->updatedAt:Ljava/lang/String;

    const/16 v2, 0x29

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/h61;->a(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
