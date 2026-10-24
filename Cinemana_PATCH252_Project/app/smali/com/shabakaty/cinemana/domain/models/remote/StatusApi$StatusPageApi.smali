.class public final Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusPageApi;
.super Ljava/lang/Object;
.source "StatusApi.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/domain/models/remote/StatusApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StatusPageApi"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0013\u0008\u0086\u0008\u0018\u00002\u00020\u0001R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\u0004\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\"\u0010\u000c\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\u0004\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\"\u0010\u000f\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0004\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R\"\u0010\u0012\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0004\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusPageApi;",
        "",
        "",
        "id",
        "Ljava/lang/String;",
        "getId",
        "()Ljava/lang/String;",
        "setId",
        "(Ljava/lang/String;)V",
        "name",
        "getName",
        "setName",
        "timeZone",
        "getTimeZone",
        "setTimeZone",
        "updatedAt",
        "getUpdatedAt",
        "setUpdatedAt",
        "url",
        "getUrl",
        "setUrl",
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

.field public timeZone:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "time_zone"
    .end annotation
.end field

.field public updatedAt:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "updated_at"
    .end annotation
.end field

.field public url:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusPageApi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    and-int/lit8 p1, p6, 0x1

    const/4 p2, 0x0

    const-string p3, ""

    if-eqz p1, :cond_0

    move-object p1, p3

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    and-int/lit8 p4, p6, 0x2

    if-eqz p4, :cond_1

    move-object p4, p3

    goto :goto_1

    :cond_1
    move-object p4, p2

    :goto_1
    and-int/lit8 p5, p6, 0x4

    if-eqz p5, :cond_2

    move-object p5, p3

    goto :goto_2

    :cond_2
    move-object p5, p2

    :goto_2
    and-int/lit8 v0, p6, 0x8

    if-eqz v0, :cond_3

    move-object v0, p3

    goto :goto_3

    :cond_3
    move-object v0, p2

    :goto_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    move-object p2, p3

    :cond_4
    const-string p3, "id"

    .line 1
    invoke-static {p1, p3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "name"

    invoke-static {p4, p3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "timeZone"

    invoke-static {p5, p3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "updatedAt"

    invoke-static {v0, p3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "url"

    invoke-static {p2, p3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusPageApi;->id:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusPageApi;->name:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusPageApi;->timeZone:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusPageApi;->updatedAt:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusPageApi;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusPageApi;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusPageApi;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusPageApi;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusPageApi;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusPageApi;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusPageApi;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusPageApi;->timeZone:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusPageApi;->timeZone:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusPageApi;->updatedAt:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusPageApi;->updatedAt:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusPageApi;->url:Ljava/lang/String;

    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusPageApi;->url:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusPageApi;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusPageApi;->name:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusPageApi;->timeZone:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusPageApi;->updatedAt:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusPageApi;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "StatusPageApi(id="

    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusPageApi;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusPageApi;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timeZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusPageApi;->timeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", updatedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusPageApi;->updatedAt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusPageApi;->url:Ljava/lang/String;

    const/16 v2, 0x29

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/h61;->a(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
