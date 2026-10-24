.class public final Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;
.super Ljava/lang/Object;
.source "SettingsEntity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000e\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\n\u001a\u00020\t8\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR\u001c\u0010\u000f\u001a\u00020\u000e8\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;",
        "",
        "",
        "userId",
        "Ljava/lang/String;",
        "getUserId",
        "()Ljava/lang/String;",
        "setUserId",
        "(Ljava/lang/String;)V",
        "Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;",
        "filterSettings",
        "Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;",
        "getFilterSettings",
        "()Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;",
        "Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;",
        "appSettings",
        "Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;",
        "getAppSettings",
        "()Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;",
        "Lcom/shabakaty/downloader/pg4;",
        "subtitlesSettings",
        "<init>",
        "(Ljava/lang/String;Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;Lcom/shabakaty/downloader/pg4;)V",
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
.field public final appSettings:Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;

.field public final filterSettings:Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;

.field public final subtitlesSettings:Lcom/shabakaty/downloader/pg4;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;Lcom/shabakaty/downloader/pg4;)V
    .locals 1

    const-string v0, "userId"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filterSettings"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appSettings"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subtitlesSettings"

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;->userId:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;->filterSettings:Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;->appSettings:Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;->subtitlesSettings:Lcom/shabakaty/downloader/pg4;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;Lcom/shabakaty/downloader/pg4;I)V
    .locals 8

    and-int/lit8 p2, p5, 0x2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 6
    new-instance p2, Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;

    const/4 p4, 0x7

    const/4 v0, 0x0

    invoke-direct {p2, p3, v0, v0, p4}, Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;-><init>(Lcom/shabakaty/downloader/ia3;ZZI)V

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    and-int/lit8 p4, p5, 0x4

    if-eqz p4, :cond_1

    .line 7
    new-instance p4, Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    move-object v0, p4

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;-><init>(Lcom/shabakaty/downloader/tx4;Lcom/shabakaty/downloader/ky4;IZI)V

    goto :goto_1

    :cond_1
    move-object p4, p3

    :goto_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 8
    new-instance p3, Lcom/shabakaty/downloader/pg4;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3f

    move-object v0, p3

    invoke-direct/range {v0 .. v7}, Lcom/shabakaty/downloader/pg4;-><init>(IIILcom/shabakaty/downloader/fg4;Lcom/shabakaty/downloader/hg4;Lcom/shabakaty/downloader/gg4;I)V

    .line 9
    :cond_2
    invoke-direct {p0, p1, p2, p4, p3}, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;-><init>(Ljava/lang/String;Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;Lcom/shabakaty/downloader/pg4;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;->userId:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;->userId:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;->filterSettings:Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;

    iget-object v3, p1, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;->filterSettings:Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;->appSettings:Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;

    iget-object v3, p1, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;->appSettings:Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;->subtitlesSettings:Lcom/shabakaty/downloader/pg4;

    iget-object p1, p1, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;->subtitlesSettings:Lcom/shabakaty/downloader/pg4;

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;->userId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;->filterSettings:Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;

    invoke-virtual {v1}, Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;->appSettings:Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;->subtitlesSettings:Lcom/shabakaty/downloader/pg4;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/pg4;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "SettingsEntity(userId="

    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", filterSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;->filterSettings:Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", appSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;->appSettings:Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", subtitlesSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;->subtitlesSettings:Lcom/shabakaty/downloader/pg4;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
