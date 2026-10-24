.class public abstract Lcom/onesignal/t1;
.super Ljava/lang/Object;
.source "UserStateSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/t1$c;,
        Lcom/onesignal/t1$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Lcom/onesignal/c1$a;

.field public c:Z

.field public d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/onesignal/q0$o;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/onesignal/q0$s;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/onesignal/t1$c;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/lang/Object;

.field public i:Z

.field public j:Lcom/onesignal/n1;

.field public k:Lcom/onesignal/n1;


# direct methods
.method public constructor <init>(Lcom/onesignal/c1$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/onesignal/t1;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/onesignal/t1;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/onesignal/t1;->e:Ljava/util/Queue;

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/onesignal/t1;->f:Ljava/util/Queue;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/onesignal/t1;->g:Ljava/util/HashMap;

    .line 7
    new-instance v0, Lcom/onesignal/t1$a;

    invoke-direct {v0, p0}, Lcom/onesignal/t1$a;-><init>(Lcom/onesignal/t1;)V

    iput-object v0, p0, Lcom/onesignal/t1;->h:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/onesignal/t1;->i:Z

    .line 9
    iput-object p1, p0, Lcom/onesignal/t1;->b:Lcom/onesignal/c1$a;

    return-void
.end method

.method public static a(Lcom/onesignal/t1;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "errors"

    const/16 v0, 0x190

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 2
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Lcom/onesignal/t1;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/onesignal/t1;->q()Lcom/onesignal/n1;

    move-result-object v0

    const-string v1, "logoutEmail"

    invoke-virtual {v0, v1}, Lcom/onesignal/n1;->o(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onesignal/t1;->k:Lcom/onesignal/n1;

    const-string v1, "email_auth_hash"

    invoke-virtual {v0, v1}, Lcom/onesignal/n1;->o(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/onesignal/t1;->k:Lcom/onesignal/n1;

    const-string v2, "parent_player_id"

    invoke-virtual {v0, v2}, Lcom/onesignal/n1;->p(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/onesignal/t1;->k:Lcom/onesignal/n1;

    const-string v3, "email"

    invoke-virtual {v0, v3}, Lcom/onesignal/n1;->p(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/onesignal/t1;->k:Lcom/onesignal/n1;

    invoke-virtual {v0}, Lcom/onesignal/n1;->k()V

    .line 6
    iget-object v0, p0, Lcom/onesignal/t1;->j:Lcom/onesignal/n1;

    invoke-virtual {v0, v1}, Lcom/onesignal/n1;->o(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/onesignal/t1;->j:Lcom/onesignal/n1;

    invoke-virtual {v0, v2}, Lcom/onesignal/n1;->p(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/onesignal/t1;->j:Lcom/onesignal/n1;

    invoke-virtual {v0}, Lcom/onesignal/n1;->g()Lcom/shabakaty/downloader/yo;

    move-result-object v0

    .line 9
    iget-object v0, v0, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    iget-object p0, p0, Lcom/onesignal/t1;->j:Lcom/onesignal/n1;

    invoke-virtual {p0, v3}, Lcom/onesignal/n1;->p(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/onesignal/c1;->a()Lcom/onesignal/o1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onesignal/t1;->C()V

    .line 12
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device successfully logged out of email: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 13
    invoke-static {v0, p0, v1}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    sget-object p0, Lcom/onesignal/q0;->a:Ljava/util/List;

    return-void
.end method

.method public static c(Lcom/onesignal/t1;)V
    .locals 3

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x4

    const-string v1, "Creating new player based on missing player_id noted above."

    const/4 v2, 0x0

    .line 2
    invoke-static {v0, v1, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    sget-object v0, Lcom/onesignal/q0;->a:Ljava/util/List;

    .line 4
    invoke-virtual {p0}, Lcom/onesignal/t1;->y()V

    .line 5
    invoke-virtual {p0, v2}, Lcom/onesignal/t1;->E(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/onesignal/t1;->z()V

    return-void
.end method

.method public static d(Lcom/onesignal/t1;I)V
    .locals 7

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/16 v1, 0x193

    if-ne p1, v1, :cond_0

    const/4 p1, 0x2

    const-string v1, "403 error updating player, omitting further retries!"

    .line 2
    invoke-static {p1, v1, v0}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    invoke-virtual {p0}, Lcom/onesignal/t1;->j()V

    goto :goto_2

    :cond_0
    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onesignal/t1;->n(Ljava/lang/Integer;)Lcom/onesignal/t1$c;

    move-result-object v1

    .line 5
    iget-object v2, v1, Lcom/onesignal/t1$c;->s:Landroid/os/Handler;

    monitor-enter v2

    .line 6
    :try_start_0
    iget v3, v1, Lcom/onesignal/t1$c;->t:I

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 7
    :goto_0
    iget-object v4, v1, Lcom/onesignal/t1$c;->s:Landroid/os/Handler;

    invoke-virtual {v4, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v3, :cond_3

    if-nez v4, :cond_3

    .line 8
    iget v3, v1, Lcom/onesignal/t1$c;->t:I

    add-int/2addr v3, v5

    iput v3, v1, Lcom/onesignal/t1$c;->t:I

    .line 9
    iget-object v4, v1, Lcom/onesignal/t1$c;->s:Landroid/os/Handler;

    .line 10
    iget v5, v1, Lcom/onesignal/t1$c;->r:I

    if-eqz v5, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    new-instance v0, Lcom/onesignal/x1;

    invoke-direct {v0, v1}, Lcom/onesignal/x1;-><init>(Lcom/onesignal/t1$c;)V

    :goto_1
    mul-int/lit16 v3, v3, 0x3a98

    int-to-long v5, v3

    .line 12
    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13
    :cond_3
    iget-object v0, v1, Lcom/onesignal/t1$c;->s:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_4

    .line 14
    invoke-virtual {p0}, Lcom/onesignal/t1;->j()V

    :cond_4
    :goto_2
    return-void

    :catchall_0
    move-exception p0

    .line 15
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public A(Lorg/json/JSONObject;Lcom/onesignal/q0$o;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Lcom/onesignal/t1;->e:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/onesignal/t1;->r()Lcom/onesignal/n1;

    move-result-object p2

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p2, p1, v0}, Lcom/onesignal/n1;->d(Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    return-void
.end method

.method public final B()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/onesignal/c1;->d(Z)Lcom/onesignal/t1$b;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/t1$b;->b:Lorg/json/JSONObject;

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/onesignal/t1;->e:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/q0$o;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1, v0}, Lcom/onesignal/q0$o;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public C()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/onesignal/t1;->a:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    invoke-virtual {p0}, Lcom/onesignal/t1;->r()Lcom/onesignal/n1;

    move-result-object v1

    const-string v2, "session"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lcom/onesignal/n1;->m(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/onesignal/t1;->r()Lcom/onesignal/n1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/n1;->k()V

    .line 4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public D(Z)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/onesignal/t1;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/onesignal/t1;->l()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/onesignal/t1;->q()Lcom/onesignal/n1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onesignal/n1;->e()Lcom/shabakaty/downloader/yo;

    move-result-object v2

    .line 4
    iget-object v2, v2, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    check-cast v2, Lorg/json/JSONObject;

    const-string v3, "logoutEmail"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    const-string p1, "app_id"

    const-string v1, "parent_player_id"

    const-string v2, "email_auth_hash"

    const-string v3, "players/"

    const-string v5, "/email_logout"

    .line 5
    invoke-static {v3, v0, v5}, Lcom/shabakaty/downloader/jp2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 7
    :try_start_0
    iget-object v5, p0, Lcom/onesignal/t1;->j:Lcom/onesignal/n1;

    invoke-virtual {v5}, Lcom/onesignal/n1;->e()Lcom/shabakaty/downloader/yo;

    move-result-object v5

    .line 8
    iget-object v6, v5, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    check-cast v6, Lorg/json/JSONObject;

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 9
    iget-object v5, v5, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    check-cast v5, Lorg/json/JSONObject;

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    :cond_0
    iget-object v2, p0, Lcom/onesignal/t1;->j:Lcom/onesignal/n1;

    invoke-virtual {v2}, Lcom/onesignal/n1;->g()Lcom/shabakaty/downloader/yo;

    move-result-object v2

    .line 12
    iget-object v5, v2, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    check-cast v5, Lorg/json/JSONObject;

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 13
    iget-object v5, v2, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    check-cast v5, Lorg/json/JSONObject;

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 14
    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    :cond_1
    iget-object v1, v2, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-virtual {v3, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 18
    :goto_0
    new-instance p1, Lcom/onesignal/u1;

    invoke-direct {p1, p0}, Lcom/onesignal/u1;-><init>(Lcom/onesignal/t1;)V

    invoke-static {v0, v3, p1}, Lcom/onesignal/x0;->d(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/x0$d;)V

    goto/16 :goto_4

    .line 19
    :cond_2
    iget-object v2, p0, Lcom/onesignal/t1;->j:Lcom/onesignal/n1;

    if-nez v2, :cond_3

    .line 20
    invoke-virtual {p0}, Lcom/onesignal/t1;->s()V

    :cond_3
    if-nez p1, :cond_4

    .line 21
    invoke-virtual {p0}, Lcom/onesignal/t1;->t()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 22
    :goto_1
    iget-object v2, p0, Lcom/onesignal/t1;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 23
    :try_start_1
    iget-object v3, p0, Lcom/onesignal/t1;->j:Lcom/onesignal/n1;

    invoke-virtual {p0}, Lcom/onesignal/t1;->q()Lcom/onesignal/n1;

    move-result-object v5

    invoke-virtual {v3, v5, p1}, Lcom/onesignal/n1;->b(Lcom/onesignal/n1;Z)Lorg/json/JSONObject;

    move-result-object v8

    .line 24
    invoke-virtual {p0}, Lcom/onesignal/t1;->q()Lcom/onesignal/n1;

    move-result-object v3

    .line 25
    iget-object v5, p0, Lcom/onesignal/t1;->j:Lcom/onesignal/n1;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v6, Lcom/onesignal/n1;->d:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 27
    :try_start_2
    iget-object v5, v5, Lcom/onesignal/n1;->b:Lorg/json/JSONObject;

    iget-object v3, v3, Lcom/onesignal/n1;->b:Lorg/json/JSONObject;

    const/4 v7, 0x0

    invoke-static {v5, v3, v7, v7}, Lcom/shabakaty/downloader/nl6;->f(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object v3

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v5, 0x6

    .line 28
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UserStateSynchronizer internalSyncUserState from session call: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " jsonBody: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 29
    invoke-static {v5, v6, v7}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    if-nez v8, :cond_5

    .line 30
    iget-object p1, p0, Lcom/onesignal/t1;->j:Lcom/onesignal/n1;

    invoke-virtual {p1, v3, v7}, Lcom/onesignal/n1;->l(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 31
    invoke-virtual {p0}, Lcom/onesignal/t1;->B()V

    .line 32
    invoke-virtual {p0}, Lcom/onesignal/t1;->h()V

    .line 33
    monitor-exit v2

    goto :goto_4

    .line 34
    :cond_5
    invoke-virtual {p0}, Lcom/onesignal/t1;->q()Lcom/onesignal/n1;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onesignal/n1;->k()V

    .line 35
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez p1, :cond_8

    if-nez v0, :cond_7

    .line 36
    invoke-virtual {p0}, Lcom/onesignal/t1;->m()I

    move-result p1

    const-string v0, "Error updating the user record because of the null user id"

    .line 37
    invoke-static {p1, v0, v7}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    new-instance p1, Lcom/onesignal/q0$y;

    const/4 v0, -0x1

    const-string v1, "Unable to update tags: the current user is not registered with OneSignal"

    invoke-direct {p1, v0, v1}, Lcom/onesignal/q0$y;-><init>(ILjava/lang/String;)V

    .line 39
    :goto_2
    iget-object v0, p0, Lcom/onesignal/t1;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/q0$o;

    if-eqz v0, :cond_6

    .line 40
    invoke-interface {v0, p1}, Lcom/onesignal/q0$o;->b(Lcom/onesignal/q0$y;)V

    goto :goto_2

    .line 41
    :cond_6
    invoke-virtual {p0}, Lcom/onesignal/t1;->g()V

    goto :goto_4

    :cond_7
    const-string p1, "players/"

    .line 42
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v9, Lcom/onesignal/v1;

    invoke-direct {v9, p0, v8, v3}, Lcom/onesignal/v1;-><init>(Lcom/onesignal/t1;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    const v10, 0x1d4c0

    const/4 v11, 0x0

    const-string v7, "PUT"

    .line 43
    invoke-static/range {v6 .. v11}, Lcom/onesignal/x0;->b(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/x0$d;ILjava/lang/String;)V

    goto :goto_4

    :cond_8
    if-nez v0, :cond_9

    const-string p1, "players"

    goto :goto_3

    :cond_9
    const-string p1, "players/"

    const-string v2, "/on_session"

    .line 44
    invoke-static {p1, v0, v2}, Lcom/shabakaty/downloader/jp2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 45
    :goto_3
    iput-boolean v1, p0, Lcom/onesignal/t1;->i:Z

    .line 46
    invoke-virtual {p0, v8}, Lcom/onesignal/t1;->e(Lorg/json/JSONObject;)V

    .line 47
    new-instance v1, Lcom/onesignal/w1;

    invoke-direct {v1, p0, v3, v8, v0}, Lcom/onesignal/w1;-><init>(Lcom/onesignal/t1;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-static {p1, v8, v1}, Lcom/onesignal/x0;->d(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/x0$d;)V

    .line 48
    :goto_4
    iget-object p1, p0, Lcom/onesignal/t1;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 49
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1

    :catchall_1
    move-exception p1

    .line 50
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method

.method public abstract E(Ljava/lang/String;)V
.end method

.method public F(Lcom/onesignal/o$d;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/onesignal/t1;->r()Lcom/onesignal/n1;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "lat"

    .line 4
    iget-object v3, p1, Lcom/onesignal/o$d;->a:Ljava/lang/Double;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "long"

    .line 5
    iget-object v3, p1, Lcom/onesignal/o$d;->b:Ljava/lang/Double;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "loc_acc"

    .line 6
    iget-object v3, p1, Lcom/onesignal/o$d;->c:Ljava/lang/Float;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "loc_type"

    .line 7
    iget-object v3, p1, Lcom/onesignal/o$d;->d:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v2, v0, Lcom/onesignal/n1;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v1}, Lcom/onesignal/n1;->n(Lorg/json/JSONObject;Ljava/util/HashMap;)V

    .line 9
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "loc_bg"

    .line 10
    iget-object v3, p1, Lcom/onesignal/o$d;->e:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "loc_time_stamp"

    .line 11
    iget-object p1, p1, Lcom/onesignal/o$d;->f:Ljava/lang/Long;

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object p1, v0, Lcom/onesignal/n1;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, v1}, Lcom/onesignal/n1;->n(Lorg/json/JSONObject;Ljava/util/HashMap;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public abstract e(Lorg/json/JSONObject;)V
.end method

.method public f()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/onesignal/t1;->q()Lcom/onesignal/n1;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "loc_time_stamp"

    const-string v2, "loc_bg"

    .line 2
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "lat"

    const/4 v5, 0x0

    .line 3
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "long"

    .line 4
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "loc_acc"

    .line 5
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "loc_type"

    .line 6
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v3, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v4, v0, Lcom/onesignal/n1;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, v4, v3}, Lcom/onesignal/n1;->n(Lorg/json/JSONObject;Ljava/util/HashMap;)V

    .line 10
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 11
    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {v3, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v1, v0, Lcom/onesignal/n1;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v3}, Lcom/onesignal/n1;->n(Lorg/json/JSONObject;Ljava/util/HashMap;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 15
    :goto_0
    invoke-virtual {p0}, Lcom/onesignal/t1;->q()Lcom/onesignal/n1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/n1;->k()V

    return-void
.end method

.method public final g()V
    .locals 3

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/onesignal/t1;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/q0$s;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/onesignal/t1;->b:Lcom/onesignal/c1$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-interface {v0, v1, v2}, Lcom/onesignal/q0$s;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 3

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/onesignal/t1;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/q0$s;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/onesignal/t1;->b:Lcom/onesignal/c1$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    invoke-interface {v0, v1, v2}, Lcom/onesignal/q0$s;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract i(Lorg/json/JSONObject;)V
.end method

.method public final j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/onesignal/t1;->j:Lcom/onesignal/n1;

    iget-object v1, p0, Lcom/onesignal/t1;->k:Lcom/onesignal/n1;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/onesignal/n1;->b(Lcom/onesignal/n1;Z)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/onesignal/t1;->i(Lorg/json/JSONObject;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/onesignal/t1;->q()Lcom/onesignal/n1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/n1;->e()Lcom/shabakaty/downloader/yo;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "logoutEmail"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object v0, Lcom/onesignal/q0;->a:Ljava/util/List;

    :cond_1
    return-void
.end method

.method public k()Lcom/onesignal/n1;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/onesignal/t1;->j:Lcom/onesignal/n1;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/onesignal/t1;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/t1;->j:Lcom/onesignal/n1;

    if-nez v1, :cond_0

    const-string v1, "CURRENT_STATE"

    const/4 v2, 0x1

    .line 4
    invoke-virtual {p0, v1, v2}, Lcom/onesignal/t1;->u(Ljava/lang/String;Z)Lcom/onesignal/n1;

    move-result-object v1

    iput-object v1, p0, Lcom/onesignal/t1;->j:Lcom/onesignal/n1;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/onesignal/t1;->j:Lcom/onesignal/n1;

    return-object v0
.end method

.method public abstract l()Ljava/lang/String;
.end method

.method public abstract m()I
.end method

.method public n(Ljava/lang/Integer;)Lcom/onesignal/t1$c;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/onesignal/t1;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/t1;->g:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/onesignal/t1;->g:Ljava/util/HashMap;

    new-instance v2, Lcom/onesignal/t1$c;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, p0, v3}, Lcom/onesignal/t1$c;-><init>(Lcom/onesignal/t1;I)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/onesignal/t1;->g:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onesignal/t1$c;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public o()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/onesignal/t1;->q()Lcom/onesignal/n1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/n1;->g()Lcom/shabakaty/downloader/yo;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "identifier"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/onesignal/t1;->r()Lcom/onesignal/n1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/n1;->e()Lcom/shabakaty/downloader/yo;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "session"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public q()Lcom/onesignal/n1;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/onesignal/t1;->k:Lcom/onesignal/n1;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/onesignal/t1;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/t1;->k:Lcom/onesignal/n1;

    if-nez v1, :cond_0

    const-string v1, "TOSYNC_STATE"

    const/4 v2, 0x1

    .line 4
    invoke-virtual {p0, v1, v2}, Lcom/onesignal/t1;->u(Ljava/lang/String;Z)Lcom/onesignal/n1;

    move-result-object v1

    iput-object v1, p0, Lcom/onesignal/t1;->k:Lcom/onesignal/n1;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/onesignal/t1;->k:Lcom/onesignal/n1;

    return-object v0
.end method

.method public r()Lcom/onesignal/n1;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/onesignal/t1;->k:Lcom/onesignal/n1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/onesignal/t1;->k()Lcom/onesignal/n1;

    move-result-object v0

    const-string v1, "TOSYNC_STATE"

    .line 3
    invoke-virtual {v0, v1}, Lcom/onesignal/n1;->j(Ljava/lang/String;)Lcom/onesignal/n1;

    move-result-object v1

    .line 4
    :try_start_0
    invoke-virtual {v0}, Lcom/onesignal/n1;->f()Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v1, Lcom/onesignal/n1;->b:Lorg/json/JSONObject;

    .line 5
    invoke-virtual {v0}, Lcom/onesignal/n1;->h()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v1, Lcom/onesignal/n1;->c:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 7
    :goto_0
    iput-object v1, p0, Lcom/onesignal/t1;->k:Lcom/onesignal/n1;

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/onesignal/t1;->z()V

    .line 9
    iget-object v0, p0, Lcom/onesignal/t1;->k:Lcom/onesignal/n1;

    return-object v0
.end method

.method public s()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/onesignal/t1;->j:Lcom/onesignal/n1;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/onesignal/t1;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/t1;->j:Lcom/onesignal/n1;

    if-nez v1, :cond_0

    const-string v1, "CURRENT_STATE"

    const/4 v2, 0x1

    .line 4
    invoke-virtual {p0, v1, v2}, Lcom/onesignal/t1;->u(Ljava/lang/String;Z)Lcom/onesignal/n1;

    move-result-object v1

    iput-object v1, p0, Lcom/onesignal/t1;->j:Lcom/onesignal/n1;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/onesignal/t1;->q()Lcom/onesignal/n1;

    return-void
.end method

.method public final t()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/onesignal/t1;->q()Lcom/onesignal/n1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/n1;->e()Lcom/shabakaty/downloader/yo;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "session"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/onesignal/t1;->l()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/onesignal/t1;->i:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract u(Ljava/lang/String;Z)Lcom/onesignal/n1;
.end method

.method public abstract v(Lorg/json/JSONObject;)V
.end method

.method public w()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/onesignal/t1;->k:Lcom/onesignal/n1;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/onesignal/t1;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/onesignal/t1;->k()Lcom/onesignal/n1;

    move-result-object v2

    iget-object v3, p0, Lcom/onesignal/t1;->k:Lcom/onesignal/n1;

    invoke-virtual {p0}, Lcom/onesignal/t1;->t()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/onesignal/n1;->b(Lcom/onesignal/n1;Z)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/onesignal/t1;->k:Lcom/onesignal/n1;

    invoke-virtual {v2}, Lcom/onesignal/n1;->k()V

    .line 5
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    return v1
.end method

.method public x(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/onesignal/t1;->c:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iput-boolean p1, p0, Lcom/onesignal/t1;->c:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/onesignal/t1;->z()V

    :cond_1
    return-void
.end method

.method public y()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/onesignal/t1;->j:Lcom/onesignal/n1;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v2, Lcom/onesignal/n1;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 3
    :try_start_0
    iput-object v1, v0, Lcom/onesignal/n1;->c:Lorg/json/JSONObject;

    .line 4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lcom/onesignal/t1;->j:Lcom/onesignal/n1;

    invoke-virtual {v0}, Lcom/onesignal/n1;->k()V

    return-void

    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public abstract z()V
.end method
