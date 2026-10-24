.class public final Lcom/shabakaty/downloader/p5;
.super Ljava/lang/Object;
.source "AnalyticsApiManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/p5$a;
    }
.end annotation


# static fields
.field public static f:Lcom/shabakaty/downloader/a63;

.field public static g:Lcom/shabakaty/downloader/r6;

.field public static h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/h51;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/shabakaty/downloader/ff3;

.field public final b:Lcom/shabakaty/usermanagement/UserManagement;

.field public final c:Landroid/content/Context;

.field public final d:Lcom/shabakaty/downloader/p5$a;

.field public final e:Lcom/shabakaty/downloader/lr1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/a63;

    invoke-direct {v0}, Lcom/shabakaty/downloader/a63;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/p5;->f:Lcom/shabakaty/downloader/a63;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/p5;->h:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/ff3;Lcom/shabakaty/usermanagement/UserManagement;Landroid/content/Context;)V
    .locals 2

    const-string v0, "prefsManager"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userManagement"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/p5;->a:Lcom/shabakaty/downloader/ff3;

    iput-object p2, p0, Lcom/shabakaty/downloader/p5;->b:Lcom/shabakaty/usermanagement/UserManagement;

    iput-object p3, p0, Lcom/shabakaty/downloader/p5;->c:Landroid/content/Context;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sput-object p1, Lcom/shabakaty/downloader/p5;->h:Ljava/util/List;

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x5f

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p2}, Lcom/shabakaty/usermanagement/UserManagement;->isLoggedIn()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    .line 6
    new-instance p3, Lcom/shabakaty/downloader/r6;

    sget-object v1, Lcom/shabakaty/downloader/p5;->h:Ljava/util/List;

    invoke-virtual {p2}, Lcom/shabakaty/usermanagement/UserManagement;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/shabakaty/downloader/me4;->A(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p3, v1, p2, p1, v0}, Lcom/shabakaty/downloader/r6;-><init>(Ljava/util/List;Ljava/lang/Long;Ljava/lang/String;I)V

    sput-object p3, Lcom/shabakaty/downloader/p5;->g:Lcom/shabakaty/downloader/r6;

    .line 7
    :cond_0
    new-instance p1, Lcom/shabakaty/downloader/mr1;

    invoke-direct {p1}, Lcom/shabakaty/downloader/mr1;-><init>()V

    .line 8
    iput-boolean v0, p1, Lcom/shabakaty/downloader/mr1;->k:Z

    .line 9
    invoke-virtual {p1}, Lcom/shabakaty/downloader/mr1;->a()Lcom/shabakaty/downloader/lr1;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/p5;->e:Lcom/shabakaty/downloader/lr1;

    .line 10
    new-instance p2, Lcom/shabakaty/downloader/lt3$b;

    invoke-direct {p2}, Lcom/shabakaty/downloader/lt3$b;-><init>()V

    const-string p3, "https://cinemana.shabakaty.cc"

    .line 11
    invoke-virtual {p2, p3}, Lcom/shabakaty/downloader/lt3$b;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/lt3$b;

    .line 12
    new-instance p3, Lcom/shabakaty/downloader/nr1;

    invoke-direct {p3, p1}, Lcom/shabakaty/downloader/nr1;-><init>(Lcom/shabakaty/downloader/lr1;)V

    .line 13
    iget-object p1, p2, Lcom/shabakaty/downloader/lt3$b;->d:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-static {}, Lcom/shabakaty/downloader/wv3;->b()Lcom/shabakaty/downloader/wv3;

    move-result-object p1

    .line 15
    iget-object p3, p2, Lcom/shabakaty/downloader/lt3$b;->e:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    sget-object p1, Lcom/shabakaty/downloader/p5;->f:Lcom/shabakaty/downloader/a63;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/lt3$b;->c(Lcom/shabakaty/downloader/a63;)Lcom/shabakaty/downloader/lt3$b;

    .line 17
    invoke-virtual {p2}, Lcom/shabakaty/downloader/lt3$b;->b()Lcom/shabakaty/downloader/lt3;

    move-result-object p1

    .line 18
    const-class p2, Lcom/shabakaty/downloader/p5$a;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/lt3;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "retrofit.create(Links::class.java)"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/shabakaty/downloader/p5$a;

    iput-object p1, p0, Lcom/shabakaty/downloader/p5;->d:Lcom/shabakaty/downloader/p5$a;

    return-void
.end method

.method public static d(Lcom/shabakaty/downloader/p5;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance p1, Lcom/shabakaty/downloader/h51;

    invoke-direct {p1}, Lcom/shabakaty/downloader/h51;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    .line 3
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "event category  :"

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "event name "

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "analytics"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p2, p0, Lcom/shabakaty/downloader/p5;->a:Lcom/shabakaty/downloader/ff3;

    .line 5
    iget-object p2, p2, Lcom/shabakaty/downloader/ff3;->a:Landroid/content/SharedPreferences;

    const-wide/16 v0, 0x0

    const-string p3, "analyticsTime"

    invoke-interface {p2, p3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p2

    cmp-long p6, p4, p2

    if-gez p6, :cond_0

    .line 6
    sget-object p2, Lcom/shabakaty/downloader/p5;->h:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object p1, Lcom/shabakaty/downloader/p5;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0xa

    if-lt p1, p2, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/shabakaty/downloader/p5;->c()V

    goto :goto_0

    .line 9
    :cond_0
    sget-object p2, Lcom/shabakaty/downloader/p5;->h:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {p0}, Lcom/shabakaty/downloader/p5;->c()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/r6;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v1, p1, Lcom/shabakaty/downloader/r6;->r:Ljava/util/List;

    :goto_0
    if-nez v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iput-object v1, p1, Lcom/shabakaty/downloader/r6;->r:Ljava/util/List;

    .line 4
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/shabakaty/downloader/p5;->e:Lcom/shabakaty/downloader/lr1;

    if-nez p1, :cond_3

    goto :goto_2

    .line 5
    :cond_3
    iget-object v0, p1, Lcom/shabakaty/downloader/r6;->r:Ljava/util/List;

    .line 6
    :goto_2
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/lr1;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "gson.toJson(analyticsEvents?.analytics)"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final b(Ljava/lang/String;I)V
    .locals 8

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "6"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    .line 1
    invoke-static/range {v1 .. v7}, Lcom/shabakaty/downloader/p5;->d(Lcom/shabakaty/downloader/p5;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;I)V

    return-void
.end method

.method public final c()V
    .locals 10

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/p5;->g:Lcom/shabakaty/downloader/r6;

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/p5;->a(Lcom/shabakaty/downloader/r6;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "analytics"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/p5;->g:Lcom/shabakaty/downloader/r6;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/p5;->b:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {v1}, Lcom/shabakaty/usermanagement/UserManagement;->isLoggedIn()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/shabakaty/downloader/p5;->b:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {v1}, Lcom/shabakaty/usermanagement/UserManagement;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/re4;->m0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/p5;->b:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {v1}, Lcom/shabakaty/usermanagement/UserManagement;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v3, p0, Lcom/shabakaty/downloader/p5;->b:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {v3}, Lcom/shabakaty/usermanagement/UserManagement;->getUserId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "userID analytics"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 6
    :goto_0
    iget-object v3, p0, Lcom/shabakaty/downloader/p5;->c:Landroid/content/Context;

    const v4, 0x7f1202c3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "context.getString(R.string.user_id_login)"

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/shabakaty/downloader/p5;->c:Landroid/content/Context;

    const-string v5, "key"

    .line 7
    invoke-static {v3, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "value"

    invoke-static {v1, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "context"

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 9
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "sharedPref.edit()"

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-interface {v4, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 11
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 12
    iget-object v3, p0, Lcom/shabakaty/downloader/p5;->a:Lcom/shabakaty/downloader/ff3;

    .line 13
    iget-object v3, v3, Lcom/shabakaty/downloader/ff3;->b:Landroid/content/SharedPreferences$Editor;

    .line 14
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 15
    sget-object v3, Lcom/shabakaty/downloader/p5;->g:Lcom/shabakaty/downloader/r6;

    if-nez v3, :cond_1

    goto :goto_1

    .line 16
    :cond_1
    iput-object v1, v3, Lcom/shabakaty/downloader/r6;->s:Ljava/lang/String;

    .line 17
    :goto_1
    iget-object v4, p0, Lcom/shabakaty/downloader/p5;->d:Lcom/shabakaty/downloader/p5$a;

    if-nez v0, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    .line 18
    :cond_2
    iget-object v1, v0, Lcom/shabakaty/downloader/r6;->u:Ljava/lang/String;

    :goto_2
    move-object v5, v1

    if-nez v0, :cond_3

    goto :goto_3

    .line 19
    :cond_3
    iget-object v1, v0, Lcom/shabakaty/downloader/r6;->s:Ljava/lang/String;

    if-nez v1, :cond_4

    :goto_3
    move-object v6, v2

    goto :goto_4

    :cond_4
    move-object v6, v1

    :goto_4
    if-nez v0, :cond_5

    goto :goto_5

    .line 20
    :cond_5
    iget-object v1, v0, Lcom/shabakaty/downloader/r6;->t:Ljava/lang/Long;

    if-nez v1, :cond_6

    :goto_5
    move-object v7, v2

    goto :goto_6

    .line 21
    :cond_6
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    :goto_6
    if-nez v0, :cond_7

    goto :goto_7

    .line 22
    :cond_7
    iget v1, v0, Lcom/shabakaty/downloader/r6;->v:I

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    move-object v8, v2

    goto :goto_8

    :cond_8
    move-object v8, v1

    .line 24
    :goto_8
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/p5;->a(Lcom/shabakaty/downloader/r6;)Ljava/lang/String;

    move-result-object v9

    .line 25
    invoke-interface/range {v4 .. v9}, Lcom/shabakaty/downloader/p5$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/t43;

    move-result-object v0

    .line 26
    sget-object v1, Lcom/shabakaty/downloader/ay3;->c:Lcom/shabakaty/downloader/wx3;

    .line 27
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/t43;->k(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/t43;

    move-result-object v0

    .line 28
    invoke-static {}, Lcom/shabakaty/downloader/n7;->a()Lcom/shabakaty/downloader/wx3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/t43;->g(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/t43;

    move-result-object v0

    .line 29
    sget-object v1, Lcom/shabakaty/downloader/o5;->s:Lcom/shabakaty/downloader/o5;

    sget-object v2, Lcom/shabakaty/downloader/n5;->s:Lcom/shabakaty/downloader/n5;

    .line 30
    sget-object v3, Lcom/shabakaty/downloader/do1;->c:Lcom/shabakaty/downloader/j2;

    sget-object v4, Lcom/shabakaty/downloader/do1;->d:Lcom/shabakaty/downloader/xc0;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/shabakaty/downloader/t43;->h(Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/xc0;)Lcom/shabakaty/downloader/mu0;

    return-void
.end method
