.class public final Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;
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
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B/\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000e\u0012\u0008\u0008\u0003\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0019\u0010\u0008\u001a\u00020\u00078\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;",
        "",
        "",
        "seekPeriod",
        "I",
        "getSeekPeriod",
        "()I",
        "",
        "showSubtitles",
        "Z",
        "getShowSubtitles",
        "()Z",
        "Lcom/shabakaty/downloader/tx4;",
        "language",
        "Lcom/shabakaty/downloader/ky4;",
        "theme",
        "<init>",
        "(Lcom/shabakaty/downloader/tx4;Lcom/shabakaty/downloader/ky4;IZ)V",
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
.field public final language:Lcom/shabakaty/downloader/tx4;

.field public final seekPeriod:I

.field public final showSubtitles:Z

.field public final theme:Lcom/shabakaty/downloader/ky4;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;-><init>(Lcom/shabakaty/downloader/tx4;Lcom/shabakaty/downloader/ky4;IZI)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/tx4;Lcom/shabakaty/downloader/ky4;IZ)V
    .locals 1

    const-string v0, "language"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "theme"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;->language:Lcom/shabakaty/downloader/tx4;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;->theme:Lcom/shabakaty/downloader/ky4;

    .line 4
    iput p3, p0, Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;->seekPeriod:I

    .line 5
    iput-boolean p4, p0, Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;->showSubtitles:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/tx4;Lcom/shabakaty/downloader/ky4;IZI)V
    .locals 1

    and-int/lit8 p1, p5, 0x1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 6
    sget-object p1, Lcom/shabakaty/downloader/tx4$a;->b:Lcom/shabakaty/downloader/tx4$a;

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_1

    .line 7
    sget-object p2, Lcom/shabakaty/downloader/ky4$a;->b:Lcom/shabakaty/downloader/ky4$a;

    :cond_1
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_2

    const/16 p3, 0xa

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/4 p4, 0x1

    .line 8
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;-><init>(Lcom/shabakaty/downloader/tx4;Lcom/shabakaty/downloader/ky4;IZ)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;->language:Lcom/shabakaty/downloader/tx4;

    iget-object v3, p1, Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;->language:Lcom/shabakaty/downloader/tx4;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;->theme:Lcom/shabakaty/downloader/ky4;

    iget-object v3, p1, Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;->theme:Lcom/shabakaty/downloader/ky4;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;->seekPeriod:I

    iget v3, p1, Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;->seekPeriod:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;->showSubtitles:Z

    iget-boolean p1, p1, Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;->showSubtitles:Z

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;->language:Lcom/shabakaty/downloader/tx4;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;->theme:Lcom/shabakaty/downloader/ky4;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;->seekPeriod:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;->showSubtitles:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "AppSettingsEntity(language="

    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;->language:Lcom/shabakaty/downloader/tx4;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", theme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;->theme:Lcom/shabakaty/downloader/ky4;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", seekPeriod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;->seekPeriod:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", showSubtitles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;->showSubtitles:Z

    const/16 v2, 0x29

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/xh2;->a(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
