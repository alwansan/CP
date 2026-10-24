.class public final Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;
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
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B%\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\"\u0010\u0007\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u0004\u001a\u0004\u0008\u0008\u0010\u0006\"\u0004\u0008\t\u0010\n\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;",
        "",
        "",
        "skipInAppropriateScenes",
        "Z",
        "getSkipInAppropriateScenes",
        "()Z",
        "showContentWithNoSubtitle",
        "getShowContentWithNoSubtitle",
        "setShowContentWithNoSubtitle",
        "(Z)V",
        "Lcom/shabakaty/downloader/ia3;",
        "parentalLevel",
        "<init>",
        "(Lcom/shabakaty/downloader/ia3;ZZ)V",
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
.field public parentalLevel:Lcom/shabakaty/downloader/ia3;

.field public showContentWithNoSubtitle:Z

.field public final skipInAppropriateScenes:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-direct {p0, v0, v1, v1, v2}, Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;-><init>(Lcom/shabakaty/downloader/ia3;ZZI)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/ia3;ZZ)V
    .locals 1

    const-string v0, "parentalLevel"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;->parentalLevel:Lcom/shabakaty/downloader/ia3;

    .line 3
    iput-boolean p2, p0, Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;->skipInAppropriateScenes:Z

    .line 4
    iput-boolean p3, p0, Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;->showContentWithNoSubtitle:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/ia3;ZZI)V
    .locals 1

    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_0

    .line 5
    sget-object p1, Lcom/shabakaty/downloader/ia3$b;->d:Lcom/shabakaty/downloader/ia3$b;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    const/4 p2, 0x1

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    .line 6
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;-><init>(Lcom/shabakaty/downloader/ia3;ZZ)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;->parentalLevel:Lcom/shabakaty/downloader/ia3;

    iget-object v3, p1, Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;->parentalLevel:Lcom/shabakaty/downloader/ia3;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;->skipInAppropriateScenes:Z

    iget-boolean v3, p1, Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;->skipInAppropriateScenes:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;->showContentWithNoSubtitle:Z

    iget-boolean p1, p1, Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;->showContentWithNoSubtitle:Z

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;->parentalLevel:Lcom/shabakaty/downloader/ia3;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;->skipInAppropriateScenes:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;->showContentWithNoSubtitle:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "FilterSettingsEntity(parentalLevel="

    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;->parentalLevel:Lcom/shabakaty/downloader/ia3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", skipInAppropriateScenes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;->skipInAppropriateScenes:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showContentWithNoSubtitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;->showContentWithNoSubtitle:Z

    const/16 v2, 0x29

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/xh2;->a(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
