.class public Lcom/onesignal/j0;
.super Ljava/lang/Object;
.source "OSSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/j0$b;
    }
.end annotation


# instance fields
.field public a:Lcom/shabakaty/downloader/yh1;

.field public b:Lcom/onesignal/j0$b;

.field public c:Lcom/shabakaty/downloader/b33;


# direct methods
.method public constructor <init>(Lcom/onesignal/j0$b;Lcom/shabakaty/downloader/yh1;Lcom/shabakaty/downloader/b33;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/onesignal/j0;->b:Lcom/onesignal/j0$b;

    .line 3
    iput-object p2, p0, Lcom/onesignal/j0;->a:Lcom/shabakaty/downloader/yh1;

    .line 4
    iput-object p3, p0, Lcom/onesignal/j0;->c:Lcom/shabakaty/downloader/b33;

    return-void
.end method


# virtual methods
.method public final a(Lcom/onesignal/q0$n;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/onesignal/j0;->c:Lcom/shabakaty/downloader/b33;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OneSignal SessionManager attemptSessionUpgrade with entryAction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/shabakaty/downloader/a33;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/a33;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onesignal/j0;->a:Lcom/shabakaty/downloader/yh1;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "entryAction"

    .line 3
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v1, Lcom/onesignal/q0$n;->r:Lcom/onesignal/q0$n;

    invoke-virtual {p1, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yh1;->i()Lcom/shabakaty/downloader/c23;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/onesignal/j0;->a:Lcom/shabakaty/downloader/yh1;

    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/yh1;->f(Lcom/onesignal/q0$n;)Ljava/util/List;

    move-result-object v1

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/shabakaty/downloader/c23;->e()Lcom/shabakaty/downloader/v23;

    move-result-object v4

    .line 9
    sget-object v5, Lcom/shabakaty/downloader/z23;->r:Lcom/shabakaty/downloader/z23;

    if-nez p2, :cond_1

    .line 10
    iget-object p2, v0, Lcom/shabakaty/downloader/c23;->c:Ljava/lang/String;

    .line 11
    :cond_1
    invoke-virtual {p0, v0, v5, p2, v2}, Lcom/onesignal/j0;->f(Lcom/shabakaty/downloader/c23;Lcom/shabakaty/downloader/z23;Ljava/lang/String;Lorg/json/JSONArray;)Z

    move-result p2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    move-object v4, v2

    :goto_1
    if-eqz p2, :cond_4

    .line 12
    iget-object p2, p0, Lcom/onesignal/j0;->c:Lcom/shabakaty/downloader/b33;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OneSignal SessionManager attemptSessionUpgrade channel updated, search for ending direct influences on channels: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p2, Lcom/shabakaty/downloader/a33;

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/a33;->a(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    move-object p2, v1

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/c23;

    .line 15
    iget-object v4, v0, Lcom/shabakaty/downloader/c23;->a:Lcom/shabakaty/downloader/z23;

    .line 16
    invoke-virtual {v4}, Lcom/shabakaty/downloader/z23;->h()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 17
    invoke-virtual {v0}, Lcom/shabakaty/downloader/c23;->e()Lcom/shabakaty/downloader/v23;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {v0}, Lcom/shabakaty/downloader/c23;->l()V

    goto :goto_2

    .line 19
    :cond_4
    iget-object p2, p0, Lcom/onesignal/j0;->c:Lcom/shabakaty/downloader/b33;

    check-cast p2, Lcom/shabakaty/downloader/a33;

    const-string v0, "OneSignal SessionManager attemptSessionUpgrade try UNATTRIBUTED to INDIRECT upgrade"

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/a33;->a(Ljava/lang/String;)V

    .line 20
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/c23;

    .line 21
    iget-object v1, v0, Lcom/shabakaty/downloader/c23;->a:Lcom/shabakaty/downloader/z23;

    .line 22
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v4, Lcom/shabakaty/downloader/z23;->t:Lcom/shabakaty/downloader/z23;

    if-ne v1, v4, :cond_6

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_5

    .line 24
    invoke-virtual {v0}, Lcom/shabakaty/downloader/c23;->j()Lorg/json/JSONArray;

    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 26
    sget-object v4, Lcom/onesignal/q0$n;->t:Lcom/onesignal/q0$n;

    invoke-virtual {p1, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 27
    invoke-virtual {v0}, Lcom/shabakaty/downloader/c23;->e()Lcom/shabakaty/downloader/v23;

    move-result-object v4

    .line 28
    sget-object v5, Lcom/shabakaty/downloader/z23;->s:Lcom/shabakaty/downloader/z23;

    invoke-virtual {p0, v0, v5, v2, v1}, Lcom/onesignal/j0;->f(Lcom/shabakaty/downloader/c23;Lcom/shabakaty/downloader/z23;Ljava/lang/String;Lorg/json/JSONArray;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 29
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    const/4 p1, 0x6

    const-string p2, "Trackers after update attempt: "

    .line 30
    invoke-static {p2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/onesignal/j0;->a:Lcom/shabakaty/downloader/yh1;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yh1;->i()Lcom/shabakaty/downloader/c23;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yh1;->g()Lcom/shabakaty/downloader/c23;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 35
    invoke-static {p1, p2, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    invoke-virtual {p0, v3}, Lcom/onesignal/j0;->e(Ljava/util/List;)V

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/v23;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/onesignal/j0;->a:Lcom/shabakaty/downloader/yh1;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/yh1;->s:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "trackers.values"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Lcom/shabakaty/downloader/c23;

    .line 6
    invoke-virtual {v2}, Lcom/shabakaty/downloader/c23;->e()Lcom/shabakaty/downloader/v23;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/onesignal/j0;->c:Lcom/shabakaty/downloader/b33;

    const-string v1, "OneSignal SessionManager onDirectInfluenceFromIAMClick messageId: "

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/shabakaty/downloader/a33;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/a33;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onesignal/j0;->a:Lcom/shabakaty/downloader/yh1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/yh1;->g()Lcom/shabakaty/downloader/c23;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/z23;->r:Lcom/shabakaty/downloader/z23;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/onesignal/j0;->f(Lcom/shabakaty/downloader/c23;Lcom/shabakaty/downloader/z23;Ljava/lang/String;Lorg/json/JSONArray;)Z

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/onesignal/j0;->c:Lcom/shabakaty/downloader/b33;

    const-string v1, "OneSignal SessionManager onInAppMessageReceived messageId: "

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/shabakaty/downloader/a33;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/a33;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onesignal/j0;->a:Lcom/shabakaty/downloader/yh1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/yh1;->g()Lcom/shabakaty/downloader/c23;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/c23;->n(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/c23;->l()V

    return-void
.end method

.method public final e(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/v23;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/onesignal/j0;->c:Lcom/shabakaty/downloader/b33;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OneSignal SessionManager sendSessionEndingWithInfluences with influences: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/shabakaty/downloader/a33;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/a33;->a(Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/j0$a;

    invoke-direct {v1, p0, p1}, Lcom/onesignal/j0$a;-><init>(Lcom/onesignal/j0;Ljava/util/List;)V

    const-string p1, "OS_END_CURRENT_SESSION"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public final f(Lcom/shabakaty/downloader/c23;Lcom/shabakaty/downloader/z23;Ljava/lang/String;Lorg/json/JSONArray;)Z
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/c23;->a:Lcom/shabakaty/downloader/z23;

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/shabakaty/downloader/c23;->a:Lcom/shabakaty/downloader/z23;

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/z23;->h()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    iget-object v3, p1, Lcom/shabakaty/downloader/c23;->c:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_5

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/z23;->j()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 8
    iget-object v0, p1, Lcom/shabakaty/downloader/c23;->b:Lorg/json/JSONArray;

    if-eqz v0, :cond_8

    .line 9
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 10
    iget-object v0, p1, Lcom/shabakaty/downloader/c23;->b:Lorg/json/JSONArray;

    if-nez v0, :cond_2

    if-nez p4, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_7

    if-nez p4, :cond_3

    goto :goto_3

    .line 11
    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-virtual {p4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-eq v3, v4, :cond_4

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    .line 12
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_6

    const/4 v4, 0x0

    .line 13
    :goto_1
    invoke-virtual {p4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 14
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/shabakaty/downloader/nl6;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 15
    invoke-virtual {p4, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/shabakaty/downloader/nl6;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 16
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    const/4 v0, 0x1

    goto :goto_4

    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_7
    :goto_3
    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_8

    :goto_5
    const/4 v0, 0x1

    goto :goto_6

    :cond_8
    const/4 v0, 0x0

    :goto_6
    if-nez v0, :cond_9

    return v2

    :cond_9
    const/4 v0, 0x6

    const-string v2, "OSChannelTracker changed: "

    .line 18
    invoke-static {v2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 19
    invoke-virtual {p1}, Lcom/shabakaty/downloader/c23;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\nfrom:\ninfluenceType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget-object v3, p1, Lcom/shabakaty/downloader/c23;->a:Lcom/shabakaty/downloader/z23;

    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", directNotificationId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-object v4, p1, Lcom/shabakaty/downloader/c23;->c:Ljava/lang/String;

    .line 23
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", indirectNotificationIds: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget-object v5, p1, Lcom/shabakaty/downloader/c23;->b:Lorg/json/JSONArray;

    .line 25
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\nto:\ninfluenceType: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 26
    invoke-static {v0, v2, v3}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    iput-object p2, p1, Lcom/shabakaty/downloader/c23;->a:Lcom/shabakaty/downloader/z23;

    .line 28
    iput-object p3, p1, Lcom/shabakaty/downloader/c23;->c:Ljava/lang/String;

    .line 29
    iput-object p4, p1, Lcom/shabakaty/downloader/c23;->b:Lorg/json/JSONArray;

    .line 30
    invoke-virtual {p1}, Lcom/shabakaty/downloader/c23;->b()V

    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Trackers changed to: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/onesignal/j0;->a:Lcom/shabakaty/downloader/yh1;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 33
    invoke-virtual {p2}, Lcom/shabakaty/downloader/yh1;->i()Lcom/shabakaty/downloader/c23;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-virtual {p2}, Lcom/shabakaty/downloader/yh1;->g()Lcom/shabakaty/downloader/c23;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-static {v0, p1, v3}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method
