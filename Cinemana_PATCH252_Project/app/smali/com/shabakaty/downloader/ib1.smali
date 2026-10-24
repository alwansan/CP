.class public final Lcom/shabakaty/downloader/ib1;
.super Lcom/shabakaty/downloader/ui4;
.source "FilterSettingsViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.ui.settings.FilterSettingsViewModel$changeShowContentWithNoSubtitle$1"
    f = "FilterSettingsViewModel.kt"
    l = {
        0x12
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

.field public final synthetic w:Z

.field public final synthetic x:Lcom/shabakaty/downloader/kb1;


# direct methods
.method public constructor <init>(ZLcom/shabakaty/downloader/kb1;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/shabakaty/downloader/kb1;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/ib1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/shabakaty/downloader/ib1;->w:Z

    iput-object p2, p0, Lcom/shabakaty/downloader/ib1;->x:Lcom/shabakaty/downloader/kb1;

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
    new-instance p1, Lcom/shabakaty/downloader/ib1;

    iget-boolean v0, p0, Lcom/shabakaty/downloader/ib1;->w:Z

    iget-object v1, p0, Lcom/shabakaty/downloader/ib1;->x:Lcom/shabakaty/downloader/kb1;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/ib1;-><init>(ZLcom/shabakaty/downloader/kb1;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/ib1;->t(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance p1, Lcom/shabakaty/downloader/ib1;

    iget-boolean v0, p0, Lcom/shabakaty/downloader/ib1;->w:Z

    iget-object v1, p0, Lcom/shabakaty/downloader/ib1;->x:Lcom/shabakaty/downloader/kb1;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/ib1;-><init>(ZLcom/shabakaty/downloader/kb1;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/ib1;->v:I

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

    .line 4
    iget-boolean p1, p0, Lcom/shabakaty/downloader/ib1;->w:Z

    iget-object v1, p0, Lcom/shabakaty/downloader/ib1;->x:Lcom/shabakaty/downloader/kb1;

    .line 5
    iget-object v1, v1, Lcom/shabakaty/downloader/kb1;->g:Lcom/shabakaty/downloader/n24;

    .line 6
    invoke-virtual {v1}, Lcom/shabakaty/downloader/n24;->d()Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;

    move-result-object v1

    .line 7
    iget-boolean v1, v1, Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;->showContentWithNoSubtitle:Z

    if-eq p1, v1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/shabakaty/downloader/ib1;->x:Lcom/shabakaty/downloader/kb1;

    .line 9
    iget-object p1, p1, Lcom/shabakaty/downloader/kb1;->g:Lcom/shabakaty/downloader/n24;

    .line 10
    iget-boolean v1, p0, Lcom/shabakaty/downloader/ib1;->w:Z

    iput v2, p0, Lcom/shabakaty/downloader/ib1;->v:I

    invoke-virtual {p1, v1, p0}, Lcom/shabakaty/downloader/n24;->q(ZLcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 11
    :cond_2
    :goto_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
