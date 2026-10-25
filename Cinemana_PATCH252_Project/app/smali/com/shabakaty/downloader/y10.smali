.class public final Lcom/shabakaty/downloader/y10;
.super Lcom/shabakaty/downloader/ui4;
.source "CinemanaVideoPlayerViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.player.CinemanaVideoPlayerViewModel$setSubtitleFromFile$3"
    f = "CinemanaVideoPlayerViewModel.kt"
    l = {
        0xcb
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ui4;",
        "Lcom/shabakaty/downloader/hn1<",
        "Lcom/shabakaty/downloader/se0;",
        "Lcom/shabakaty/downloader/ud0<",
        "-",
        "Lcom/shabakaty/downloader/qv4;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public v:I

.field public final synthetic w:Lcom/shabakaty/downloader/q10;

.field public final synthetic x:Lcom/shabakaty/cinemana/domain/models/local/Subtitle;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/q10;Lcom/shabakaty/cinemana/domain/models/local/Subtitle;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/q10;",
            "Lcom/shabakaty/cinemana/domain/models/local/Subtitle;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/y10;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/y10;->w:Lcom/shabakaty/downloader/q10;

    iput-object p2, p0, Lcom/shabakaty/downloader/y10;->x:Lcom/shabakaty/cinemana/domain/models/local/Subtitle;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/shabakaty/downloader/se0;

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance p1, Lcom/shabakaty/downloader/y10;

    iget-object v0, p0, Lcom/shabakaty/downloader/y10;->w:Lcom/shabakaty/downloader/q10;

    iget-object v1, p0, Lcom/shabakaty/downloader/y10;->x:Lcom/shabakaty/cinemana/domain/models/local/Subtitle;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/y10;-><init>(Lcom/shabakaty/downloader/q10;Lcom/shabakaty/cinemana/domain/models/local/Subtitle;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/y10;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/downloader/ud0<",
            "*>;)",
            "Lcom/shabakaty/downloader/ud0<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/shabakaty/downloader/y10;

    iget-object v0, p0, Lcom/shabakaty/downloader/y10;->w:Lcom/shabakaty/downloader/q10;

    iget-object v1, p0, Lcom/shabakaty/downloader/y10;->x:Lcom/shabakaty/cinemana/domain/models/local/Subtitle;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/y10;-><init>(Lcom/shabakaty/downloader/q10;Lcom/shabakaty/cinemana/domain/models/local/Subtitle;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const-string v4, "subtitle_import_coroutine_enter"
    invoke-static {v4}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->event(Ljava/lang/String;)V

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/y10;->v:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    const-wide/16 v3, 0x3e8

    .line 4
    iput v2, p0, Lcom/shabakaty/downloader/y10;->v:I

    invoke-static {v3, v4, p0}, Lcom/shabakaty/downloader/rm3;->f(JLcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/y10;->w:Lcom/shabakaty/downloader/q10;

    .line 6
    iget-object p1, p1, Lcom/shabakaty/downloader/q10;->z:Lcom/shabakaty/downloader/xv2;

    .line 7
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    const-string v0, "video_model_at_subtitle_refresh"
    invoke-static {v0, p1}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->value(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez p1, :cond_3

    const-string v0, "subtitle_import_video_model_missing"
    invoke-static {v0}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->event(Ljava/lang/String;)V
    goto :goto_1

    .line 8
    :cond_3
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->subtitles:Ljava/util/List;

    if-nez p1, :cond_4

    const-string v0, "subtitle_import_video_subtitles_missing"
    invoke-static {v0}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->event(Ljava/lang/String;)V
    goto :goto_1

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/shabakaty/downloader/y10;->x:Lcom/shabakaty/cinemana/domain/models/local/Subtitle;
    const-string v1, "subtitle_import_requested"
    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->value(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :goto_1
    iget-object p1, p0, Lcom/shabakaty/downloader/y10;->w:Lcom/shabakaty/downloader/q10;

    .line 11
    iget-object p1, p1, Lcom/shabakaty/downloader/q10;->k:Lcom/shabakaty/downloader/s64;

    .line 12
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ak;->Y()Lcom/shabakaty/downloader/dp2;

    move-result-object p1

    if-nez p1, :cond_5

    const-string v0, "subtitle_import_current_media_item_missing"
    invoke-static {v0}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->event(Ljava/lang/String;)V
    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/dp2;->a()Lcom/shabakaty/downloader/dp2$c;

    move-result-object p1

    iget-object v0, p0, Lcom/shabakaty/downloader/y10;->w:Lcom/shabakaty/downloader/q10;

    .line 13
    invoke-virtual {v0}, Lcom/shabakaty/downloader/q10;->r()Ljava/util/List;

    move-result-object v0

    .line 14
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/dp2$c;->c(Ljava/util/List;)Lcom/shabakaty/downloader/dp2$c;

    .line 15
    iget-object v0, p0, Lcom/shabakaty/downloader/y10;->w:Lcom/shabakaty/downloader/q10;

    .line 16
    iget-object v0, v0, Lcom/shabakaty/downloader/q10;->k:Lcom/shabakaty/downloader/s64;

    .line 17
    invoke-virtual {p1}, Lcom/shabakaty/downloader/dp2$c;->a()Lcom/shabakaty/downloader/dp2;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string v2, "subtitle_import_refresh_source"
    invoke-static {v2}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->event(Ljava/lang/String;)V
    invoke-static {}, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->markSubtitleRefresh()V

    invoke-virtual {v0, p1, v1}, Lcom/shabakaty/downloader/s64;->o(Ljava/util/List;Z)V

    .line 19
    :goto_2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
