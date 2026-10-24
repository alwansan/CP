.class public final Lcom/shabakaty/downloader/n24;
.super Ljava/lang/Object;
.source "Settings.kt"


# instance fields
.field public final a:Lcom/shabakaty/downloader/n34;

.field public final b:Lcom/shabakaty/usermanagement/UserManagement;

.field public final c:Lcom/shabakaty/downloader/ff3;

.field public final d:Lcom/shabakaty/downloader/pc;

.field public e:Lcom/shabakaty/downloader/e92;

.field public f:Z

.field public final g:Lcom/shabakaty/downloader/dw2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/dw2<",
            "Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lcom/shabakaty/downloader/gc4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/gc4<",
            "Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lcom/shabakaty/downloader/te1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/te1<",
            "Lcom/shabakaty/downloader/tx4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/n34;Lcom/shabakaty/usermanagement/UserManagement;Lcom/shabakaty/downloader/ff3;Lcom/shabakaty/downloader/pc;)V
    .locals 7

    const-string v0, "settingsUseCases"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userManagement"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefsManager"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "applicationScope"

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/n24;->a:Lcom/shabakaty/downloader/n34;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/n24;->b:Lcom/shabakaty/usermanagement/UserManagement;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/n24;->c:Lcom/shabakaty/downloader/ff3;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/n24;->d:Lcom/shabakaty/downloader/pc;

    .line 6
    new-instance p1, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/n24;->h()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;-><init>(Ljava/lang/String;Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;Lcom/shabakaty/downloader/pg4;I)V

    invoke-static {p1}, Lcom/shabakaty/downloader/ic4;->a(Ljava/lang/Object;)Lcom/shabakaty/downloader/dw2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/n24;->g:Lcom/shabakaty/downloader/dw2;

    .line 7
    iput-object p1, p0, Lcom/shabakaty/downloader/n24;->h:Lcom/shabakaty/downloader/gc4;

    .line 8
    new-instance p2, Lcom/shabakaty/downloader/n24$f;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/n24$f;-><init>(Lcom/shabakaty/downloader/te1;)V

    .line 9
    iput-object p2, p0, Lcom/shabakaty/downloader/n24;->i:Lcom/shabakaty/downloader/te1;

    return-void
.end method

.method public static final a(Lcom/shabakaty/downloader/n24;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v0, p1, Lcom/shabakaty/downloader/k24;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/k24;

    iget v1, v0, Lcom/shabakaty/downloader/k24;->x:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/k24;->x:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/k24;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/k24;-><init>(Lcom/shabakaty/downloader/n24;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p1, v0, Lcom/shabakaty/downloader/k24;->v:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 3
    iget v2, v0, Lcom/shabakaty/downloader/k24;->x:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lcom/shabakaty/downloader/k24;->u:Ljava/lang/Object;

    check-cast p0, Lcom/shabakaty/downloader/n24;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_2
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/n24;->a:Lcom/shabakaty/downloader/n34;

    new-instance v2, Lcom/shabakaty/downloader/l24;

    invoke-direct {v2, p0}, Lcom/shabakaty/downloader/l24;-><init>(Lcom/shabakaty/downloader/n24;)V

    iput-object p0, v0, Lcom/shabakaty/downloader/k24;->u:Ljava/lang/Object;

    iput v4, v0, Lcom/shabakaty/downloader/k24;->x:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v4, Lcom/shabakaty/downloader/b44;

    invoke-direct {v4, p1, v2, v3}, Lcom/shabakaty/downloader/b44;-><init>(Lcom/shabakaty/downloader/n34;Lcom/shabakaty/downloader/rm1;Lcom/shabakaty/downloader/ud0;)V

    invoke-static {v4, v0}, Lcom/shabakaty/downloader/j96;->g(Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    goto :goto_2

    .line 8
    :cond_3
    :goto_1
    check-cast p1, Lcom/shabakaty/downloader/te1;

    new-instance v0, Lcom/shabakaty/downloader/m24;

    invoke-direct {v0, p0, v3}, Lcom/shabakaty/downloader/m24;-><init>(Lcom/shabakaty/downloader/n24;Lcom/shabakaty/downloader/ud0;)V

    .line 9
    new-instance v1, Lcom/shabakaty/downloader/bf1;

    invoke-direct {v1, p1, v0}, Lcom/shabakaty/downloader/bf1;-><init>(Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/jn1;)V

    :goto_2
    return-object v1
.end method


# virtual methods
.method public final b(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/shabakaty/downloader/n24$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/n24$a;

    iget v1, v0, Lcom/shabakaty/downloader/n24$a;->x:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/n24$a;->x:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/n24$a;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/n24$a;-><init>(Lcom/shabakaty/downloader/n24;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p1, v0, Lcom/shabakaty/downloader/n24$a;->v:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/n24$a;->x:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Lcom/shabakaty/downloader/n24$a;->u:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/n24;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/n24;->a:Lcom/shabakaty/downloader/n34;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/n24;->h()Ljava/lang/String;

    move-result-object v2

    iput-object p0, v0, Lcom/shabakaty/downloader/n24$a;->u:Ljava/lang/Object;

    iput v4, v0, Lcom/shabakaty/downloader/n24$a;->x:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v4, Lcom/shabakaty/downloader/o34;

    invoke-direct {v4, p1, v2, v5}, Lcom/shabakaty/downloader/o34;-><init>(Lcom/shabakaty/downloader/n34;Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)V

    invoke-static {v4, v0}, Lcom/shabakaty/downloader/j96;->g(Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 6
    :goto_1
    check-cast p1, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    const-string v4, "-_GUEST_-"

    .line 7
    iput-object v4, p1, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;->userId:Ljava/lang/String;

    .line 8
    iget-object v4, p1, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;->filterSettings:Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;

    .line 9
    iget-object v6, v4, Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;->parentalLevel:Lcom/shabakaty/downloader/ia3;

    .line 10
    instance-of v6, v6, Lcom/shabakaty/downloader/ia3$a;

    if-eqz v6, :cond_6

    .line 11
    sget-object v6, Lcom/shabakaty/downloader/ia3$b;->d:Lcom/shabakaty/downloader/ia3$b;

    .line 12
    iput-object v6, v4, Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;->parentalLevel:Lcom/shabakaty/downloader/ia3;

    .line 13
    :cond_6
    iget-object v2, v2, Lcom/shabakaty/downloader/n24;->a:Lcom/shabakaty/downloader/n34;

    iput-object v5, v0, Lcom/shabakaty/downloader/n24$a;->u:Ljava/lang/Object;

    iput v3, v0, Lcom/shabakaty/downloader/n24$a;->x:I

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v3, Lcom/shabakaty/downloader/e44;

    invoke-direct {v3, v2, p1, v5}, Lcom/shabakaty/downloader/e44;-><init>(Lcom/shabakaty/downloader/n34;Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;Lcom/shabakaty/downloader/ud0;)V

    invoke-static {v3, v0}, Lcom/shabakaty/downloader/j96;->g(Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    goto :goto_2

    :cond_7
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_2
    if-ne p1, v1, :cond_8

    return-object v1

    .line 15
    :cond_8
    :goto_3
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method

.method public final c()Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/n24;->h:Lcom/shabakaty/downloader/gc4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/gc4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;->appSettings:Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;

    return-object v0
.end method

.method public final d()Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/n24;->h:Lcom/shabakaty/downloader/gc4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/gc4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;->filterSettings:Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;

    return-object v0
.end method

.method public final e()Lcom/shabakaty/downloader/ia3;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/n24;->d()Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;->parentalLevel:Lcom/shabakaty/downloader/ia3;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/n24;->d()Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;

    move-result-object v0

    .line 2
    iget-boolean v0, v0, Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;->skipInAppropriateScenes:Z

    return v0
.end method

.method public final g()Lcom/shabakaty/downloader/pg4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/n24;->h:Lcom/shabakaty/downloader/gc4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/gc4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;->subtitlesSettings:Lcom/shabakaty/downloader/pg4;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/n24;->b:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/UserManagement;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/n24;->b:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/UserManagement;->getUserId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "-_GUEST_-"

    :goto_0
    return-object v0
.end method

.method public final i()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/n24;->c()Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;->language:Lcom/shabakaty/downloader/tx4;

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/tx4$b;->b:Lcom/shabakaty/downloader/tx4$b;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final j(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/shabakaty/downloader/n24$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/n24$b;

    iget v1, v0, Lcom/shabakaty/downloader/n24$b;->x:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/n24$b;->x:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/n24$b;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/n24$b;-><init>(Lcom/shabakaty/downloader/n24;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p1, v0, Lcom/shabakaty/downloader/n24$b;->v:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/n24$b;->x:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/shabakaty/downloader/n24$b;->u:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/n24;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iput-object p0, v0, Lcom/shabakaty/downloader/n24$b;->u:Ljava/lang/Object;

    iput v3, v0, Lcom/shabakaty/downloader/n24$b;->x:I

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/n24;->b(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 5
    :goto_1
    iget-object v1, v0, Lcom/shabakaty/downloader/n24;->d:Lcom/shabakaty/downloader/pc;

    const/4 v2, 0x0

    new-instance v4, Lcom/shabakaty/downloader/n24$c;

    const/4 p1, 0x0

    invoke-direct {v4, v0, p1}, Lcom/shabakaty/downloader/n24$c;-><init>(Lcom/shabakaty/downloader/n24;Lcom/shabakaty/downloader/ud0;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    .line 6
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method

.method public final k(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/shabakaty/downloader/n24$d;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/n24$d;

    iget v1, v0, Lcom/shabakaty/downloader/n24$d;->x:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/n24$d;->x:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/n24$d;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/n24$d;-><init>(Lcom/shabakaty/downloader/n24;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p1, v0, Lcom/shabakaty/downloader/n24$d;->v:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/n24$d;->x:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Lcom/shabakaty/downloader/n24$d;->u:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/n24;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/n24;->a:Lcom/shabakaty/downloader/n34;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/n24;->h()Ljava/lang/String;

    move-result-object v2

    iput-object p0, v0, Lcom/shabakaty/downloader/n24$d;->u:Ljava/lang/Object;

    iput v4, v0, Lcom/shabakaty/downloader/n24$d;->x:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v4, Lcom/shabakaty/downloader/o34;

    invoke-direct {v4, p1, v2, v5}, Lcom/shabakaty/downloader/o34;-><init>(Lcom/shabakaty/downloader/n34;Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)V

    invoke-static {v4, v0}, Lcom/shabakaty/downloader/j96;->g(Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 6
    :goto_1
    check-cast p1, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;

    if-nez p1, :cond_5

    goto :goto_3

    .line 7
    :cond_5
    iget-object v2, v2, Lcom/shabakaty/downloader/n24;->a:Lcom/shabakaty/downloader/n34;

    iput-object v5, v0, Lcom/shabakaty/downloader/n24$d;->u:Ljava/lang/Object;

    iput v3, v0, Lcom/shabakaty/downloader/n24$d;->x:I

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v3, Lcom/shabakaty/downloader/e44;

    invoke-direct {v3, v2, p1, v5}, Lcom/shabakaty/downloader/e44;-><init>(Lcom/shabakaty/downloader/n34;Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;Lcom/shabakaty/downloader/ud0;)V

    invoke-static {v3, v0}, Lcom/shabakaty/downloader/j96;->g(Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    goto :goto_2

    :cond_6
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_2
    if-ne p1, v1, :cond_7

    return-object v1

    .line 9
    :cond_7
    :goto_3
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method

.method public final l(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/shabakaty/downloader/n24$e;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/n24$e;

    iget v1, v0, Lcom/shabakaty/downloader/n24$e;->x:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/n24$e;->x:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/n24$e;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/n24$e;-><init>(Lcom/shabakaty/downloader/n24;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p1, v0, Lcom/shabakaty/downloader/n24$e;->v:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/n24$e;->x:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/shabakaty/downloader/n24$e;->u:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/n24;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iget-boolean p1, p0, Lcom/shabakaty/downloader/n24;->f:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/shabakaty/downloader/n24;->h()Ljava/lang/String;

    move-result-object p1

    const-string v2, "-_GUEST_-"

    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/n24;->a:Lcom/shabakaty/downloader/n34;

    .line 6
    iget-object v2, p0, Lcom/shabakaty/downloader/n24;->h:Lcom/shabakaty/downloader/gc4;

    .line 7
    invoke-interface {v2}, Lcom/shabakaty/downloader/gc4;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;

    iput-object p0, v0, Lcom/shabakaty/downloader/n24$e;->u:Ljava/lang/Object;

    iput v3, v0, Lcom/shabakaty/downloader/n24$e;->x:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v3, Lcom/shabakaty/downloader/p34;

    const/4 v4, 0x0

    invoke-direct {v3, v2, p1, v4}, Lcom/shabakaty/downloader/p34;-><init>(Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;Lcom/shabakaty/downloader/n34;Lcom/shabakaty/downloader/ud0;)V

    invoke-static {v3, v0}, Lcom/shabakaty/downloader/j96;->g(Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, v0, Lcom/shabakaty/downloader/n24;->f:Z

    .line 10
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method

.method public final m(ILcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/n24;->a:Lcom/shabakaty/downloader/n34;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/n24;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v2, Lcom/shabakaty/downloader/v34;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v1, v3}, Lcom/shabakaty/downloader/v34;-><init>(Lcom/shabakaty/downloader/n34;ILjava/lang/String;Lcom/shabakaty/downloader/ud0;)V

    invoke-static {v2, p2}, Lcom/shabakaty/downloader/j96;->g(Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_0
    if-ne p1, p2, :cond_1

    return-object p1

    .line 3
    :cond_1
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method

.method public final n(ZLcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/n24;->a:Lcom/shabakaty/downloader/n34;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/n24;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v2, Lcom/shabakaty/downloader/x34;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v1, v3}, Lcom/shabakaty/downloader/x34;-><init>(Lcom/shabakaty/downloader/n34;ZLjava/lang/String;Lcom/shabakaty/downloader/ud0;)V

    invoke-static {v2, p2}, Lcom/shabakaty/downloader/j96;->g(Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_0
    if-ne p1, p2, :cond_1

    return-object p1

    .line 3
    :cond_1
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method

.method public final o(Lcom/shabakaty/downloader/hg4;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/hg4;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Ui8;->saveNative(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/n24;->a:Lcom/shabakaty/downloader/n34;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/n24;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v2, Lcom/shabakaty/downloader/z34;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v1, v3}, Lcom/shabakaty/downloader/z34;-><init>(Lcom/shabakaty/downloader/n34;Lcom/shabakaty/downloader/hg4;Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)V

    invoke-static {v2, p2}, Lcom/shabakaty/downloader/j96;->g(Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_0
    if-ne p1, p2, :cond_1

    return-object p1

    .line 3
    :cond_1
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method

.method public final p(Lcom/shabakaty/downloader/ia3;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ia3;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/shabakaty/downloader/n24$g;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/n24$g;

    iget v1, v0, Lcom/shabakaty/downloader/n24$g;->x:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/n24$g;->x:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/n24$g;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/n24$g;-><init>(Lcom/shabakaty/downloader/n24;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p2, v0, Lcom/shabakaty/downloader/n24$g;->v:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/n24$g;->x:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/shabakaty/downloader/n24$g;->u:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/n24;

    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/shabakaty/downloader/n24;->a:Lcom/shabakaty/downloader/n34;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/n24;->h()Ljava/lang/String;

    move-result-object v2

    iput-object p0, v0, Lcom/shabakaty/downloader/n24$g;->u:Ljava/lang/Object;

    iput v3, v0, Lcom/shabakaty/downloader/n24$g;->x:I

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v4, Lcom/shabakaty/downloader/d44;

    const/4 v5, 0x0

    invoke-direct {v4, p2, p1, v2, v5}, Lcom/shabakaty/downloader/d44;-><init>(Lcom/shabakaty/downloader/n34;Lcom/shabakaty/downloader/ia3;Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)V

    invoke-static {v4, v0}, Lcom/shabakaty/downloader/j96;->g(Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_1
    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object p1, p0

    .line 6
    :goto_2
    iput-boolean v3, p1, Lcom/shabakaty/downloader/n24;->f:Z

    .line 7
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method

.method public final q(ZLcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/shabakaty/downloader/n24$h;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/n24$h;

    iget v1, v0, Lcom/shabakaty/downloader/n24$h;->x:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/n24$h;->x:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/n24$h;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/n24$h;-><init>(Lcom/shabakaty/downloader/n24;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p2, v0, Lcom/shabakaty/downloader/n24$h;->v:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/n24$h;->x:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/shabakaty/downloader/n24$h;->u:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/n24;

    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/shabakaty/downloader/n24;->a:Lcom/shabakaty/downloader/n34;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/n24;->h()Ljava/lang/String;

    move-result-object v2

    iput-object p0, v0, Lcom/shabakaty/downloader/n24$h;->u:Ljava/lang/Object;

    iput v3, v0, Lcom/shabakaty/downloader/n24$h;->x:I

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v4, Lcom/shabakaty/downloader/f44;

    const/4 v5, 0x0

    invoke-direct {v4, p2, p1, v2, v5}, Lcom/shabakaty/downloader/f44;-><init>(Lcom/shabakaty/downloader/n34;ZLjava/lang/String;Lcom/shabakaty/downloader/ud0;)V

    invoke-static {v4, v0}, Lcom/shabakaty/downloader/j96;->g(Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_1
    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object p1, p0

    .line 6
    :goto_2
    iput-boolean v3, p1, Lcom/shabakaty/downloader/n24;->f:Z

    .line 7
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
