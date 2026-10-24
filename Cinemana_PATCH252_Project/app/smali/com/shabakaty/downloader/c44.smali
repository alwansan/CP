.class public final Lcom/shabakaty/downloader/c44;
.super Lcom/shabakaty/downloader/ui4;
.source "SettingsUseCases.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.domain.use_cases.SettingsUseCases$syncLocalWithApi$2"
    f = "SettingsUseCases.kt"
    l = {
        0x9b,
        0x9d,
        0xa4
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
.field public v:Ljava/lang/Object;

.field public w:I

.field public final synthetic x:Ljava/lang/String;

.field public final synthetic y:Lcom/shabakaty/downloader/n34;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/shabakaty/downloader/n34;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/n34;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/c44;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/c44;->x:Ljava/lang/String;

    iput-object p2, p0, Lcom/shabakaty/downloader/c44;->y:Lcom/shabakaty/downloader/n34;

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
    new-instance p1, Lcom/shabakaty/downloader/c44;

    iget-object v0, p0, Lcom/shabakaty/downloader/c44;->x:Ljava/lang/String;

    iget-object v1, p0, Lcom/shabakaty/downloader/c44;->y:Lcom/shabakaty/downloader/n34;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/c44;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/n34;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/c44;->t(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance p1, Lcom/shabakaty/downloader/c44;

    iget-object v0, p0, Lcom/shabakaty/downloader/c44;->x:Ljava/lang/String;

    iget-object v1, p0, Lcom/shabakaty/downloader/c44;->y:Lcom/shabakaty/downloader/n34;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/c44;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/n34;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/c44;->w:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/c44;->v:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/cinemana/domain/models/local/user/UserSettings;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/c44;->x:Ljava/lang/String;

    const-string v1, "-_GUEST_-"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/c44;->y:Lcom/shabakaty/downloader/n34;

    iput v5, p0, Lcom/shabakaty/downloader/c44;->w:I

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v1, Lcom/shabakaty/downloader/l34;

    invoke-direct {v1, p1, v4}, Lcom/shabakaty/downloader/l34;-><init>(Lcom/shabakaty/downloader/n34;Lcom/shabakaty/downloader/ud0;)V

    invoke-static {v1, p0}, Lcom/shabakaty/downloader/j96;->g(Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 8
    :cond_4
    :goto_0
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/user/UserSettings;

    move-object v1, p1

    goto :goto_1

    :cond_5
    move-object v1, v4

    .line 9
    :goto_1
    iget-object p1, p0, Lcom/shabakaty/downloader/c44;->y:Lcom/shabakaty/downloader/n34;

    iget-object v6, p0, Lcom/shabakaty/downloader/c44;->x:Ljava/lang/String;

    iput-object v1, p0, Lcom/shabakaty/downloader/c44;->v:Ljava/lang/Object;

    iput v3, p0, Lcom/shabakaty/downloader/c44;->w:I

    invoke-static {p1, v6, p0}, Lcom/shabakaty/downloader/n34;->a(Lcom/shabakaty/downloader/n34;Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 10
    :cond_6
    :goto_2
    check-cast p1, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;

    if-nez v1, :cond_7

    goto :goto_6

    .line 11
    :cond_7
    iget-object v3, p1, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;->filterSettings:Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;

    .line 12
    iget v6, v1, Lcom/shabakaty/cinemana/domain/models/local/user/UserSettings;->parentalLevelStatus:I

    .line 13
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 14
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const-string v7, "3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_3

    .line 15
    :cond_8
    sget-object v6, Lcom/shabakaty/downloader/ia3$d;->d:Lcom/shabakaty/downloader/ia3$d;

    goto :goto_4

    :pswitch_1
    const-string v7, "2"

    .line 16
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_3

    .line 17
    :cond_9
    sget-object v6, Lcom/shabakaty/downloader/ia3$c;->d:Lcom/shabakaty/downloader/ia3$c;

    goto :goto_4

    :pswitch_2
    const-string v7, "1"

    .line 18
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    goto :goto_3

    .line 19
    :cond_a
    sget-object v6, Lcom/shabakaty/downloader/ia3$a;->d:Lcom/shabakaty/downloader/ia3$a;

    goto :goto_4

    .line 20
    :cond_b
    :goto_3
    sget-object v6, Lcom/shabakaty/downloader/ia3$b;->d:Lcom/shabakaty/downloader/ia3$b;

    .line 21
    :goto_4
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iput-object v6, v3, Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;->parentalLevel:Lcom/shabakaty/downloader/ia3;

    .line 23
    iget-object v3, p1, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;->filterSettings:Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;

    .line 24
    iget-object v1, v1, Lcom/shabakaty/cinemana/domain/models/local/user/UserSettings;->userTranslation:Lcom/shabakaty/cinemana/domain/models/local/user/UserSettings$UserTranslation;

    .line 25
    iget v1, v1, Lcom/shabakaty/cinemana/domain/models/local/user/UserSettings$UserTranslation;->status:I

    if-ne v1, v5, :cond_c

    goto :goto_5

    :cond_c
    const/4 v5, 0x0

    .line 26
    :goto_5
    iput-boolean v5, v3, Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;->showContentWithNoSubtitle:Z

    .line 27
    :goto_6
    iget-object v1, p0, Lcom/shabakaty/downloader/c44;->y:Lcom/shabakaty/downloader/n34;

    .line 28
    iget-object v1, v1, Lcom/shabakaty/downloader/n34;->e:Lcom/shabakaty/downloader/u24;

    .line 29
    iput-object v4, p0, Lcom/shabakaty/downloader/c44;->v:Ljava/lang/Object;

    iput v2, p0, Lcom/shabakaty/downloader/c44;->w:I

    invoke-interface {v1, p1, p0}, Lcom/shabakaty/downloader/u24;->k(Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_d

    return-object v0

    .line 30
    :cond_d
    :goto_7
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
