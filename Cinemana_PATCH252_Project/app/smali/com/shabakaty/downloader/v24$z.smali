.class public Lcom/shabakaty/downloader/v24$z;
.super Lcom/shabakaty/downloader/w31;
.source "SettingsDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/v24;-><init>(Lcom/shabakaty/downloader/vt3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/w31<",
        "Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lcom/shabakaty/downloader/v24;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/v24;Lcom/shabakaty/downloader/vt3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/v24$z;->d:Lcom/shabakaty/downloader/v24;

    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/w31;-><init>(Lcom/shabakaty/downloader/vt3;)V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR REPLACE `settings` SET `userId` = ?,`filter_parentalLevel` = ?,`filter_skipInAppropriateScenes` = ?,`filter_showContentWithNoSubtitle` = ?,`app_language` = ?,`app_theme` = ?,`app_seekPeriod` = ?,`app_showSubtitles` = ?,`subtitles_subtitleColor` = ?,`subtitles_subtitleEdgeColor` = ?,`subtitles_subtitleBackgroundColor` = ?,`subtitles_subtitleEdge` = ?,`subtitles_subtitleFontScale` = ?,`subtitles_subtitleFontFamily` = ? WHERE `userId` = ?"

    return-object v0
.end method

.method public e(Lcom/shabakaty/downloader/ci4;Ljava/lang/Object;)V
    .locals 9

    .line 1
    check-cast p2, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;

    .line 2
    iget-object v0, p2, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;->userId:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object v0, p2, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;->filterSettings:Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eqz v0, :cond_2

    .line 6
    iget-object v4, p0, Lcom/shabakaty/downloader/v24$z;->d:Lcom/shabakaty/downloader/v24;

    .line 7
    iget-object v4, v4, Lcom/shabakaty/downloader/v24;->c:Lcom/shabakaty/downloader/zl2;

    .line 8
    iget-object v5, v0, Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;->parentalLevel:Lcom/shabakaty/downloader/ia3;

    .line 9
    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/zl2;->e(Lcom/shabakaty/downloader/ia3;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 10
    invoke-interface {p1, v3}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-interface {p1, v3, v4}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 12
    :goto_1
    iget-boolean v3, v0, Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;->skipInAppropriateScenes:Z

    int-to-long v3, v3

    .line 13
    invoke-interface {p1, v2, v3, v4}, Lcom/shabakaty/downloader/ai4;->h0(IJ)V

    .line 14
    iget-boolean v0, v0, Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;->showContentWithNoSubtitle:Z

    int-to-long v2, v0

    .line 15
    invoke-interface {p1, v1, v2, v3}, Lcom/shabakaty/downloader/ai4;->h0(IJ)V

    goto :goto_2

    .line 16
    :cond_2
    invoke-interface {p1, v3}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    .line 17
    invoke-interface {p1, v2}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    .line 18
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    .line 19
    :goto_2
    iget-object v0, p2, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;->appSettings:Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;

    const/16 v1, 0x8

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x5

    if-eqz v0, :cond_4

    .line 20
    iget-object v5, p0, Lcom/shabakaty/downloader/v24$z;->d:Lcom/shabakaty/downloader/v24;

    .line 21
    iget-object v5, v5, Lcom/shabakaty/downloader/v24;->d:Lcom/shabakaty/downloader/xl2;

    .line 22
    iget-object v6, v0, Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;->language:Lcom/shabakaty/downloader/tx4;

    .line 23
    invoke-virtual {v5, v6}, Lcom/shabakaty/downloader/xl2;->c(Lcom/shabakaty/downloader/tx4;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    .line 24
    invoke-interface {p1, v4}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_3

    .line 25
    :cond_3
    invoke-interface {p1, v4, v5}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 26
    :goto_3
    iget-object v4, p0, Lcom/shabakaty/downloader/v24$z;->d:Lcom/shabakaty/downloader/v24;

    .line 27
    iget-object v4, v4, Lcom/shabakaty/downloader/v24;->e:Lcom/shabakaty/downloader/cp6;

    .line 28
    iget-object v5, v0, Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;->theme:Lcom/shabakaty/downloader/ky4;

    .line 29
    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/cp6;->a(Lcom/shabakaty/downloader/ky4;)I

    move-result v4

    int-to-long v4, v4

    .line 30
    invoke-interface {p1, v3, v4, v5}, Lcom/shabakaty/downloader/ai4;->h0(IJ)V

    .line 31
    iget v3, v0, Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;->seekPeriod:I

    int-to-long v3, v3

    .line 32
    invoke-interface {p1, v2, v3, v4}, Lcom/shabakaty/downloader/ai4;->h0(IJ)V

    .line 33
    iget-boolean v0, v0, Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;->showSubtitles:Z

    int-to-long v2, v0

    .line 34
    invoke-interface {p1, v1, v2, v3}, Lcom/shabakaty/downloader/ai4;->h0(IJ)V

    goto :goto_4

    .line 35
    :cond_4
    invoke-interface {p1, v4}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    .line 36
    invoke-interface {p1, v3}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    .line 37
    invoke-interface {p1, v2}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    .line 38
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    .line 39
    :goto_4
    iget-object v0, p2, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;->subtitlesSettings:Lcom/shabakaty/downloader/pg4;

    const/16 v1, 0xd

    const/16 v2, 0xc

    const/16 v3, 0xb

    const/16 v4, 0xa

    const/16 v5, 0x9

    const/16 v6, 0xe

    if-eqz v0, :cond_6

    .line 40
    iget v7, v0, Lcom/shabakaty/downloader/pg4;->a:I

    int-to-long v7, v7

    .line 41
    invoke-interface {p1, v5, v7, v8}, Lcom/shabakaty/downloader/ai4;->h0(IJ)V

    .line 42
    iget v5, v0, Lcom/shabakaty/downloader/pg4;->b:I

    int-to-long v7, v5

    .line 43
    invoke-interface {p1, v4, v7, v8}, Lcom/shabakaty/downloader/ai4;->h0(IJ)V

    .line 44
    iget v4, v0, Lcom/shabakaty/downloader/pg4;->c:I

    int-to-long v4, v4

    .line 45
    invoke-interface {p1, v3, v4, v5}, Lcom/shabakaty/downloader/ai4;->h0(IJ)V

    .line 46
    iget-object v3, p0, Lcom/shabakaty/downloader/v24$z;->d:Lcom/shabakaty/downloader/v24;

    .line 47
    iget-object v3, v3, Lcom/shabakaty/downloader/v24;->f:Lcom/shabakaty/downloader/kd;

    .line 48
    iget-object v4, v0, Lcom/shabakaty/downloader/pg4;->d:Lcom/shabakaty/downloader/fg4;

    .line 49
    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/kd;->d(Lcom/shabakaty/downloader/fg4;)I

    move-result v3

    int-to-long v3, v3

    .line 50
    invoke-interface {p1, v2, v3, v4}, Lcom/shabakaty/downloader/ai4;->h0(IJ)V

    .line 51
    iget-object v2, p0, Lcom/shabakaty/downloader/v24$z;->d:Lcom/shabakaty/downloader/v24;

    .line 52
    iget-object v2, v2, Lcom/shabakaty/downloader/v24;->g:Lcom/shabakaty/downloader/wt2;

    .line 53
    iget-object v3, v0, Lcom/shabakaty/downloader/pg4;->e:Lcom/shabakaty/downloader/hg4;

    .line 54
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/wt2;->d(Lcom/shabakaty/downloader/hg4;)F

    move-result v2

    float-to-double v2, v2

    .line 55
    invoke-interface {p1, v1, v2, v3}, Lcom/shabakaty/downloader/ai4;->T(ID)V

    .line 56
    iget-object v1, p0, Lcom/shabakaty/downloader/v24$z;->d:Lcom/shabakaty/downloader/v24;

    .line 57
    iget-object v1, v1, Lcom/shabakaty/downloader/v24;->h:Lcom/shabakaty/downloader/ll3;

    .line 58
    iget-object v0, v0, Lcom/shabakaty/downloader/pg4;->f:Lcom/shabakaty/downloader/gg4;

    .line 59
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/ll3;->c(Lcom/shabakaty/downloader/gg4;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 60
    invoke-interface {p1, v6}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_5

    .line 61
    :cond_5
    invoke-interface {p1, v6, v0}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    goto :goto_5

    .line 62
    :cond_6
    invoke-interface {p1, v5}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    .line 63
    invoke-interface {p1, v4}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    .line 64
    invoke-interface {p1, v3}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    .line 65
    invoke-interface {p1, v2}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    .line 66
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    .line 67
    invoke-interface {p1, v6}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    .line 68
    :goto_5
    iget-object p2, p2, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;->userId:Ljava/lang/String;

    const/16 v0, 0xf

    if-nez p2, :cond_7

    .line 69
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_6

    .line 70
    :cond_7
    invoke-interface {p1, v0, p2}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    :goto_6
    return-void
.end method
