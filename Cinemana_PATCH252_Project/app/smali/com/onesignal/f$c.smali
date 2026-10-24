.class public abstract Lcom/onesignal/f$c;
.super Ljava/lang/Object;
.source "FocusTimeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Long;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/onesignal/f$c;->c:Ljava/lang/Long;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/onesignal/f$c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public final b(J)Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    invoke-static {}, Lcom/onesignal/q0;->w()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "state"

    const-string v3, "ping"

    .line 4
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "active_time"

    .line 5
    invoke-virtual {v0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p1

    const/4 p2, 0x0

    :try_start_0
    const-string v0, "com.amazon.device.messaging.ADM"

    .line 6
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    const/4 v2, 0x2

    goto :goto_4

    .line 7
    :cond_0
    invoke-static {}, Lcom/onesignal/o0;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_4

    .line 8
    :cond_1
    invoke-static {}, Lcom/onesignal/o0;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    invoke-static {}, Lcom/onesignal/o0;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/onesignal/o0;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    goto :goto_2

    .line 10
    :cond_3
    invoke-static {}, Lcom/onesignal/o0;->p()Z

    move-result p2

    :cond_4
    :goto_2
    const/16 v0, 0xd

    if-eqz p2, :cond_5

    :goto_3
    const/16 v2, 0xd

    goto :goto_4

    .line 11
    :cond_5
    invoke-static {}, Lcom/onesignal/o0;->o()Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_4

    :cond_6
    const-string p2, "com.huawei.hwid"

    .line 12
    invoke-static {p2}, Lcom/onesignal/o0;->v(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_3

    :cond_7
    :goto_4
    const-string p2, "device_type"

    .line 13
    invoke-virtual {p1, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    :try_start_1
    const-string p2, "net_type"

    .line 14
    sget-object v0, Lcom/onesignal/q0;->M:Lcom/onesignal/o0;

    invoke-virtual {v0}, Lcom/onesignal/o0;->e()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-object p1
.end method

.method public abstract c()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/v23;",
            ">;"
        }
    .end annotation
.end method

.method public final d()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/onesignal/f$c;->c:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/s73;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/onesignal/f$c;->b:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/shabakaty/downloader/s73;->d(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/f$c;->c:Ljava/lang/Long;

    :cond_0
    const/4 v0, 0x6

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":getUnsentActiveTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onesignal/f$c;->c:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    invoke-static {v0, v1, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    iget-object v0, p0, Lcom/onesignal/f$c;->c:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/onesignal/f$c;->d()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/onesignal/f$c;->a:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract f(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/v23;",
            ">;)V"
        }
    .end annotation
.end method

.method public final g(JLjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/v23;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":saveUnsentActiveData with lastFocusTimeInfluences: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 2
    invoke-static {v1, v0, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    invoke-virtual {p0}, Lcom/onesignal/f$c;->d()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 4
    invoke-virtual {p0, p3}, Lcom/onesignal/f$c;->f(Ljava/util/List;)V

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/onesignal/f$c;->h(J)V

    return-void
.end method

.method public final h(J)V
    .locals 3

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/f$c;->c:Ljava/lang/Long;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":saveUnsentActiveTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/f$c;->c:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 3
    invoke-static {v1, v0, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/s73;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/onesignal/f$c;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/shabakaty/downloader/s73;->j(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public final i(J)V
    .locals 3

    const/4 v0, 0x6

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":sendOnFocus with totalTimeActive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    invoke-static {v0, v1, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/onesignal/f$c;->b(J)Lorg/json/JSONObject;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/onesignal/f$c;->a(Lorg/json/JSONObject;)V

    .line 5
    invoke-static {}, Lcom/onesignal/q0;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/onesignal/f$c;->j(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 6
    sget-object v0, Lcom/onesignal/q0;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Lcom/onesignal/q0;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/onesignal/f$c;->b(J)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/onesignal/f$c;->j(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 8
    :cond_0
    sget-object v0, Lcom/onesignal/q0;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 9
    invoke-static {}, Lcom/onesignal/q0;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/onesignal/f$c;->b(J)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onesignal/f$c;->j(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 10
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onesignal/f$c;->f(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x3

    const-string v0, "Generating on_focus:JSON Failed."

    .line 11
    invoke-static {p2, v0, p1}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final j(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/onesignal/f$c$a;

    invoke-direct {v0, p0}, Lcom/onesignal/f$c$a;-><init>(Lcom/onesignal/f$c;)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "players/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/on_focus"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1, p2, v0}, Lcom/onesignal/x0;->d(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/x0$d;)V

    return-void
.end method

.method public abstract k(Lcom/onesignal/f$a;)V
.end method

.method public final l(Lcom/onesignal/f$a;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/onesignal/q0;->z()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 p1, 0x4

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":sendUnsentTimeNow not possible due to user id null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-static {p1, v0, v1}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Lcom/onesignal/f$c;->k(Lcom/onesignal/f$a;)V

    return-void
.end method

.method public m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/onesignal/f$c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/onesignal/f$c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/f$c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/onesignal/f$c;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/onesignal/f$c;->d()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/onesignal/f$c;->i(J)V

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/onesignal/f$c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
