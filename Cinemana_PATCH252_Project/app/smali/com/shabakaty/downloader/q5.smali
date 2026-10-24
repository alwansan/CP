.class public final Lcom/shabakaty/downloader/q5;
.super Ljava/lang/Object;
.source "AnalyticsApiManagerPlayer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/q5$b;,
        Lcom/shabakaty/downloader/q5$a;
    }
.end annotation


# static fields
.field public static f:Lcom/shabakaty/downloader/a63;

.field public static g:Lcom/shabakaty/downloader/q5;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/shabakaty/downloader/q5$b;

.field public final c:Lcom/shabakaty/downloader/lr1;

.field public d:Lcom/shabakaty/downloader/r6;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/h51;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/shabakaty/downloader/nn0;)V
    .locals 13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/q5;->a:Landroid/content/Context;

    .line 3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/shabakaty/downloader/q5;->e:Ljava/util/List;

    const p2, 0x7f1202c4

    .line 4
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.string.user_identifier)"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-wide/16 v2, 0x0

    .line 6
    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    cmp-long v6, v4, v2

    if-nez v6, :cond_1

    .line 8
    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    const-wide v7, 0x7fffffffffffffffL

    .line 9
    :cond_0
    invoke-virtual {v6}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    shl-long/2addr v4, v0

    ushr-long/2addr v4, v0

    .line 10
    rem-long v9, v4, v7

    sub-long/2addr v4, v9

    const-wide v11, 0x7ffffffffffffffeL

    add-long/2addr v4, v11

    cmp-long v11, v4, v2

    if-ltz v11, :cond_0

    .line 11
    iget-object v2, p0, Lcom/shabakaty/downloader/q5;->a:Landroid/content/Context;

    invoke-virtual {v2, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/shabakaty/downloader/q5;->a:Landroid/content/Context;

    const-string v2, "context"

    .line 12
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 14
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "sharedPref.edit()"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-interface {v1, p2, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 16
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 17
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v1, "userId identifier: "

    invoke-static {v1, p2}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "ali"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v4, v9

    .line 18
    :cond_1
    new-instance p2, Lcom/shabakaty/downloader/r6;

    iget-object v1, p0, Lcom/shabakaty/downloader/q5;->e:Ljava/util/List;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p2, v1, v2, p1, v0}, Lcom/shabakaty/downloader/r6;-><init>(Ljava/util/List;Ljava/lang/Long;Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/shabakaty/downloader/q5;->d:Lcom/shabakaty/downloader/r6;

    .line 19
    new-instance p1, Lcom/shabakaty/downloader/mr1;

    invoke-direct {p1}, Lcom/shabakaty/downloader/mr1;-><init>()V

    .line 20
    iput-boolean v0, p1, Lcom/shabakaty/downloader/mr1;->k:Z

    .line 21
    invoke-virtual {p1}, Lcom/shabakaty/downloader/mr1;->a()Lcom/shabakaty/downloader/lr1;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/q5;->c:Lcom/shabakaty/downloader/lr1;

    .line 22
    sget-object p2, Lcom/shabakaty/downloader/q5;->f:Lcom/shabakaty/downloader/a63;

    if-nez p2, :cond_2

    .line 23
    new-instance p2, Lcom/shabakaty/downloader/a63$a;

    invoke-direct {p2}, Lcom/shabakaty/downloader/a63$a;-><init>()V

    .line 24
    new-instance v0, Lcom/shabakaty/downloader/q5$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/q5$a;-><init>(Lcom/shabakaty/downloader/q5;)V

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/a63$a;->a(Lcom/shabakaty/downloader/w22;)Lcom/shabakaty/downloader/a63$a;

    .line 25
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {p2, v1, v2, v0}, Lcom/shabakaty/downloader/a63$a;->d(JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/a63$a;

    .line 26
    invoke-virtual {p2, v1, v2, v0}, Lcom/shabakaty/downloader/a63$a;->b(JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/a63$a;

    .line 27
    invoke-virtual {p2, v1, v2, v0}, Lcom/shabakaty/downloader/a63$a;->e(JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/a63$a;

    .line 28
    new-instance v0, Lcom/shabakaty/downloader/a63;

    invoke-direct {v0, p2}, Lcom/shabakaty/downloader/a63;-><init>(Lcom/shabakaty/downloader/a63$a;)V

    .line 29
    sput-object v0, Lcom/shabakaty/downloader/q5;->f:Lcom/shabakaty/downloader/a63;

    .line 30
    :cond_2
    new-instance p2, Lcom/shabakaty/downloader/lt3$b;

    invoke-direct {p2}, Lcom/shabakaty/downloader/lt3$b;-><init>()V

    const-string v0, "https://cinemana.shabakaty.cc"

    .line 31
    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/lt3$b;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/lt3$b;

    .line 32
    new-instance v0, Lcom/shabakaty/downloader/nr1;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/nr1;-><init>(Lcom/shabakaty/downloader/lr1;)V

    .line 33
    iget-object p1, p2, Lcom/shabakaty/downloader/lt3$b;->d:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-static {}, Lcom/shabakaty/downloader/wv3;->b()Lcom/shabakaty/downloader/wv3;

    move-result-object p1

    .line 35
    iget-object v0, p2, Lcom/shabakaty/downloader/lt3$b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object p1, Lcom/shabakaty/downloader/q5;->f:Lcom/shabakaty/downloader/a63;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/lt3$b;->c(Lcom/shabakaty/downloader/a63;)Lcom/shabakaty/downloader/lt3$b;

    .line 37
    invoke-virtual {p2}, Lcom/shabakaty/downloader/lt3$b;->b()Lcom/shabakaty/downloader/lt3;

    move-result-object p1

    .line 38
    const-class p2, Lcom/shabakaty/downloader/q5$b;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/lt3;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "retrofit.create(Links::class.java)"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/shabakaty/downloader/q5$b;

    iput-object p1, p0, Lcom/shabakaty/downloader/q5;->b:Lcom/shabakaty/downloader/q5$b;

    .line 39
    sput-object p0, Lcom/shabakaty/downloader/q5;->g:Lcom/shabakaty/downloader/q5;

    return-void
.end method

.method public static c(Lcom/shabakaty/downloader/q5;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;I)V
    .locals 3

    .line 1
    new-instance p1, Lcom/shabakaty/downloader/h51;

    invoke-direct {p1}, Lcom/shabakaty/downloader/h51;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    .line 3
    iget-object p6, p0, Lcom/shabakaty/downloader/q5;->a:Landroid/content/Context;

    const-string v0, "context"

    .line 4
    invoke-static {p6, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {p6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p6

    const-wide/16 v0, 0x0

    const-string v2, "playerAnalyticsTime"

    .line 6
    invoke-interface {p6, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long p6, p4, v0

    if-gez p6, :cond_0

    .line 7
    iget-object p4, p0, Lcom/shabakaty/downloader/q5;->e:Ljava/util/List;

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "event category  :"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "event name "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "analytics"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object p1, p0, Lcom/shabakaty/downloader/q5;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0xa

    if-lt p1, p2, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/shabakaty/downloader/q5;->b()V

    goto :goto_0

    .line 11
    :cond_0
    iget-object p2, p0, Lcom/shabakaty/downloader/q5;->e:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {p0}, Lcom/shabakaty/downloader/q5;->b()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/r6;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/r6;->r:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const-string p1, ""

    goto :goto_2

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/q5;->c:Lcom/shabakaty/downloader/lr1;

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/r6;->r:Ljava/util/List;

    .line 5
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/lr1;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "gson.toJson(analyticsEvents.analytics)"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object p1
.end method

.method public final b()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/q5;->d:Lcom/shabakaty/downloader/r6;

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/q5;->a(Lcom/shabakaty/downloader/r6;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "analytics"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/q5;->d:Lcom/shabakaty/downloader/r6;

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/q5;->a(Lcom/shabakaty/downloader/r6;)Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/q5;->d:Lcom/shabakaty/downloader/r6;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/q5;->a:Landroid/content/Context;

    const v2, 0x7f1202c3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.string.user_id_login)"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/shabakaty/downloader/q5;->a:Landroid/content/Context;

    const-string v3, ""

    const-string v4, "key"

    .line 5
    invoke-static {v1, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "context"

    invoke-static {v2, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 7
    :try_start_0
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 8
    invoke-static {v1}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    .line 9
    :cond_0
    :goto_0
    instance-of v2, v1, Lcom/shabakaty/downloader/dt3$a;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 10
    :goto_1
    check-cast v3, Ljava/lang/String;

    .line 11
    iget-object v1, p0, Lcom/shabakaty/downloader/q5;->d:Lcom/shabakaty/downloader/r6;

    .line 12
    iput-object v3, v1, Lcom/shabakaty/downloader/r6;->s:Ljava/lang/String;

    .line 13
    iget-object v4, p0, Lcom/shabakaty/downloader/q5;->b:Lcom/shabakaty/downloader/q5$b;

    .line 14
    iget-object v5, v0, Lcom/shabakaty/downloader/r6;->u:Ljava/lang/String;

    .line 15
    iget-object v1, v0, Lcom/shabakaty/downloader/r6;->s:Ljava/lang/String;

    .line 16
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 17
    iget-object v1, v0, Lcom/shabakaty/downloader/r6;->t:Ljava/lang/Long;

    const-string v2, "analyticsEvents.identifier"

    .line 18
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 19
    iget v1, v0, Lcom/shabakaty/downloader/r6;->v:I

    .line 20
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/q5;->a(Lcom/shabakaty/downloader/r6;)Ljava/lang/String;

    move-result-object v9

    invoke-interface/range {v4 .. v9}, Lcom/shabakaty/downloader/q5$b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    .line 21
    sget-object v1, Lcom/shabakaty/downloader/ay3;->c:Lcom/shabakaty/downloader/wx3;

    .line 22
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/f74;->m(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    .line 23
    invoke-static {}, Lcom/shabakaty/downloader/n7;->a()Lcom/shabakaty/downloader/wx3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/f74;->j(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    .line 24
    new-instance v1, Lcom/shabakaty/downloader/q5$c;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/q5$c;-><init>(Lcom/shabakaty/downloader/q5;)V

    sget-object v2, Lcom/shabakaty/downloader/q5$d;->r:Lcom/shabakaty/downloader/q5$d;

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/uv3;->c(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/mu0;

    return-void
.end method

.method public final d(Ljava/lang/String;ILjava/lang/Long;)V
    .locals 8

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "0"

    const/4 v6, 0x0

    const/16 v7, 0x10

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    .line 1
    invoke-static/range {v1 .. v7}, Lcom/shabakaty/downloader/q5;->c(Lcom/shabakaty/downloader/q5;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;I)V

    return-void
.end method
