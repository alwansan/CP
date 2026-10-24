.class public final Lcom/shabakaty/downloader/gh4;
.super Lcom/shabakaty/downloader/ui4;
.source "SubtitlesSettingsViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.ui.settings.SubtitlesSettingsViewModel$setSubtitleFont$1"
    f = "SubtitlesSettingsViewModel.kt"
    l = {
        0x34
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

.field public final synthetic w:Lcom/shabakaty/downloader/ih4;

.field public final synthetic x:Lcom/shabakaty/downloader/gg4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ih4;Lcom/shabakaty/downloader/gg4;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ih4;",
            "Lcom/shabakaty/downloader/gg4;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/gh4;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/gh4;->w:Lcom/shabakaty/downloader/ih4;

    iput-object p2, p0, Lcom/shabakaty/downloader/gh4;->x:Lcom/shabakaty/downloader/gg4;

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
    new-instance p1, Lcom/shabakaty/downloader/gh4;

    iget-object v0, p0, Lcom/shabakaty/downloader/gh4;->w:Lcom/shabakaty/downloader/ih4;

    iget-object v1, p0, Lcom/shabakaty/downloader/gh4;->x:Lcom/shabakaty/downloader/gg4;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/gh4;-><init>(Lcom/shabakaty/downloader/ih4;Lcom/shabakaty/downloader/gg4;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/gh4;->t(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance p1, Lcom/shabakaty/downloader/gh4;

    iget-object v0, p0, Lcom/shabakaty/downloader/gh4;->w:Lcom/shabakaty/downloader/ih4;

    iget-object v1, p0, Lcom/shabakaty/downloader/gh4;->x:Lcom/shabakaty/downloader/gg4;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/gh4;-><init>(Lcom/shabakaty/downloader/ih4;Lcom/shabakaty/downloader/gg4;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/gh4;->v:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/gh4;->w:Lcom/shabakaty/downloader/ih4;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/ih4;->f:Lcom/shabakaty/downloader/n24;

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/gh4;->x:Lcom/shabakaty/downloader/gg4;

    iput v2, p0, Lcom/shabakaty/downloader/gh4;->v:I

    .line 7
    iget-object v2, p1, Lcom/shabakaty/downloader/n24;->a:Lcom/shabakaty/downloader/n34;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/n24;->h()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v3, Lcom/shabakaty/downloader/y34;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v1, p1, v4}, Lcom/shabakaty/downloader/y34;-><init>(Lcom/shabakaty/downloader/n34;Lcom/shabakaty/downloader/gg4;Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)V

    invoke-static {v3, p0}, Lcom/shabakaty/downloader/j96;->g(Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_0
    if-ne p1, v0, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_1
    if-ne p1, v0, :cond_4

    return-object v0

    .line 10
    :cond_4
    :goto_2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
