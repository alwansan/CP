.class public final Lcom/shabakaty/cinemana/domain/models/remote/StatusApi;
.super Ljava/lang/Object;
.source "StatusApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;,
        Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusPageApi;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0002\u0011\u0012R(\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\"\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/shabakaty/cinemana/domain/models/remote/StatusApi;",
        "",
        "",
        "Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;",
        "components",
        "Ljava/util/List;",
        "getComponents",
        "()Ljava/util/List;",
        "setComponents",
        "(Ljava/util/List;)V",
        "Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusPageApi;",
        "page",
        "Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusPageApi;",
        "getPage",
        "()Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusPageApi;",
        "setPage",
        "(Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusPageApi;)V",
        "StatusComponentApi",
        "StatusPageApi",
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
            "Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;",
            ">;"
        }
    .end annotation
.end field

.field public page:Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusPageApi;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "page"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    .line 2
    new-instance v8, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusPageApi;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusPageApi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "components"

    .line 3
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "page"

    invoke-static {v8, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object v0, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi;->components:Ljava/util/List;

    .line 6
    iput-object v8, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi;->page:Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusPageApi;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi;->components:Ljava/util/List;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi;->components:Ljava/util/List;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi;->page:Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusPageApi;

    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi;->page:Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusPageApi;

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi;->components:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi;->page:Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusPageApi;

    invoke-virtual {v1}, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusPageApi;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "StatusApi(components="

    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi;->components:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi;->page:Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusPageApi;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
