.class public final Lcom/shabakaty/downloader/jf;
.super Ljava/lang/Object;
.source "AuthorizationInterceptor.kt"

# interfaces
.implements Lcom/shabakaty/downloader/w22;


# instance fields
.field public final a:Lcom/shabakaty/usermanagement/UserManagement;


# direct methods
.method public constructor <init>(Lcom/shabakaty/usermanagement/UserManagement;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/jf;->a:Lcom/shabakaty/usermanagement/UserManagement;

    return-void
.end method


# virtual methods
.method public intercept(Lcom/shabakaty/downloader/w22$a;)Lcom/shabakaty/downloader/ws3;
    .locals 14

    const-string v0, "chain"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/w22$a;->d()Lcom/shabakaty/downloader/vr3;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/vr3$a;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/vr3$a;-><init>(Lcom/shabakaty/downloader/vr3;)V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/jf;->a:Lcom/shabakaty/usermanagement/UserManagement;

    # Catalogue reads remain anonymous in local account mode.
    const/4 v0, 0x0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/jf;->a:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/UserManagement;->getUserScheme()Lcom/shabakaty/usermanagement/data/model/UserScheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    const-string v2, "authorization"

    invoke-virtual {v1, v2, v0}, Lcom/shabakaty/downloader/vr3$a;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;

    .line 6
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/ns0;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_a

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 7
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v5, "RELEASE"

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v0, v2

    const-string v4, "-1"

    aput-object v4, v0, v3

    .line 8
    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v5, "MANUFACTURER"

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    aput-object v4, v0, v5

    .line 9
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "MODEL"

    invoke-static {v4, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x3

    aput-object v4, v0, v6

    .line 10
    invoke-static {v0}, Lcom/shabakaty/downloader/iq6;->t([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v7, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v9, v7, 0x1

    const/4 v10, 0x0

    if-ltz v7, :cond_8

    check-cast v8, Ljava/lang/String;

    if-nez v8, :cond_2

    goto :goto_2

    .line 12
    :cond_2
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    :goto_2
    const/4 v11, 0x0

    .line 13
    :goto_3
    invoke-static {v10}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ge v11, v12, :cond_6

    .line 14
    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x1f

    .line 15
    invoke-static {v12, v13}, Lcom/shabakaty/downloader/j32;->g(II)I

    move-result v13

    if-gtz v13, :cond_3

    const/16 v13, 0x9

    if-ne v12, v13, :cond_4

    :cond_3
    const/16 v13, 0x7f

    invoke-static {v12, v13}, Lcom/shabakaty/downloader/j32;->g(II)I

    move-result v12

    if-ltz v12, :cond_5

    :cond_4
    const/4 v8, 0x0

    goto :goto_4

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_6
    const/4 v8, 0x1

    :goto_4
    if-nez v8, :cond_7

    const-string v8, ""

    .line 16
    invoke-interface {v0, v7, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_7
    move v7, v9

    goto :goto_1

    .line 17
    :cond_8
    invoke-static {}, Lcom/shabakaty/downloader/iq6;->x()V

    throw v10

    :cond_9
    const-string v4, "Android "

    .line 18
    invoke-static {v4}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; Cinemana "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    sput-object v0, Lcom/shabakaty/downloader/ns0;->a:Ljava/lang/String;

    .line 20
    :cond_a
    sget-object v0, Lcom/shabakaty/downloader/ns0;->a:Ljava/lang/String;

    const-string v2, "User-Agent"

    .line 21
    invoke-virtual {v1, v2, v0}, Lcom/shabakaty/downloader/vr3$a;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;

    .line 22
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vr3$a;->b()Lcom/shabakaty/downloader/vr3;

    move-result-object v0

    .line 23
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/w22$a;->a(Lcom/shabakaty/downloader/vr3;)Lcom/shabakaty/downloader/ws3;

    move-result-object p1

    return-object p1
.end method
