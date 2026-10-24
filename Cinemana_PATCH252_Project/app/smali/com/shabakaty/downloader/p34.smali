.class public final Lcom/shabakaty/downloader/p34;
.super Lcom/shabakaty/downloader/ui4;
.source "SettingsUseCases.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.domain.use_cases.SettingsUseCases$sendData$2"
    f = "SettingsUseCases.kt"
    l = {
        0xb9,
        0xbc
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

.field public w:I

.field public synthetic x:Ljava/lang/Object;

.field public final synthetic y:Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;

.field public final synthetic z:Lcom/shabakaty/downloader/n34;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;Lcom/shabakaty/downloader/n34;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;",
            "Lcom/shabakaty/downloader/n34;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/p34;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/p34;->y:Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;

    iput-object p2, p0, Lcom/shabakaty/downloader/p34;->z:Lcom/shabakaty/downloader/n34;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/shabakaty/downloader/se0;

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/p34;

    iget-object v1, p0, Lcom/shabakaty/downloader/p34;->y:Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;

    iget-object v2, p0, Lcom/shabakaty/downloader/p34;->z:Lcom/shabakaty/downloader/n34;

    invoke-direct {v0, v1, v2, p2}, Lcom/shabakaty/downloader/p34;-><init>(Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;Lcom/shabakaty/downloader/n34;Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/p34;->x:Ljava/lang/Object;

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/p34;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 3
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

    new-instance v0, Lcom/shabakaty/downloader/p34;

    iget-object v1, p0, Lcom/shabakaty/downloader/p34;->y:Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;

    iget-object v2, p0, Lcom/shabakaty/downloader/p34;->z:Lcom/shabakaty/downloader/n34;

    invoke-direct {v0, v1, v2, p2}, Lcom/shabakaty/downloader/p34;-><init>(Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;Lcom/shabakaty/downloader/n34;Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/p34;->x:Ljava/lang/Object;

    return-object v0
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/p34;->w:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget v1, p0, Lcom/shabakaty/downloader/p34;->v:I

    iget-object v4, p0, Lcom/shabakaty/downloader/p34;->x:Ljava/lang/Object;

    check-cast v4, Lcom/shabakaty/downloader/se0;

    :try_start_1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/shabakaty/downloader/p34;->x:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/se0;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/p34;->y:Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;

    .line 5
    iget-object v1, v1, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;->filterSettings:Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;

    .line 6
    iget-boolean v5, v1, Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;->showContentWithNoSubtitle:Z

    .line 7
    iget-object v6, p0, Lcom/shabakaty/downloader/p34;->z:Lcom/shabakaty/downloader/n34;

    .line 8
    :try_start_2
    iget-object v6, v6, Lcom/shabakaty/downloader/n34;->a:Lcom/shabakaty/downloader/k9;

    .line 9
    iget-object v1, v1, Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;->parentalLevel:Lcom/shabakaty/downloader/ia3;

    .line 10
    iget-object v1, v1, Lcom/shabakaty/downloader/ia3;->a:Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lcom/shabakaty/downloader/p34;->x:Ljava/lang/Object;

    iput v5, p0, Lcom/shabakaty/downloader/p34;->v:I

    iput v4, p0, Lcom/shabakaty/downloader/p34;->w:I

    invoke-interface {v6, v1, p0}, Lcom/shabakaty/downloader/k9;->j(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    move v1, v5

    .line 12
    :goto_0
    :try_start_3
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_2
    move-exception p1

    move v1, v5

    .line 13
    :goto_1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    .line 14
    :goto_2
    invoke-static {p1}, Lcom/shabakaty/downloader/dt3;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {p1}, Lcom/shabakaty/downloader/wt2;->j(Ljava/lang/Throwable;)V

    .line 15
    :goto_3
    iget-object p1, p0, Lcom/shabakaty/downloader/p34;->z:Lcom/shabakaty/downloader/n34;

    .line 16
    :try_start_4
    iget-object p1, p1, Lcom/shabakaty/downloader/n34;->a:Lcom/shabakaty/downloader/k9;

    .line 17
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v2, p0, Lcom/shabakaty/downloader/p34;->x:Ljava/lang/Object;

    iput v3, p0, Lcom/shabakaty/downloader/p34;->w:I

    invoke-interface {p1, v1, p0}, Lcom/shabakaty/downloader/k9;->m(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 18
    :cond_5
    :goto_4
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    .line 19
    :goto_5
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    .line 20
    :goto_6
    invoke-static {p1}, Lcom/shabakaty/downloader/dt3;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_7

    :cond_6
    invoke-static {p1}, Lcom/shabakaty/downloader/wt2;->j(Ljava/lang/Throwable;)V

    sget-object v2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_7
    return-object v2
.end method
