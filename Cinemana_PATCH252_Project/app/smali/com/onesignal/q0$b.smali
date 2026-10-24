.class public final Lcom/onesignal/q0$b;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/q0;->U(Lorg/json/JSONObject;Lcom/onesignal/q0$o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lorg/json/JSONObject;

.field public final synthetic s:Lcom/onesignal/q0$o;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/onesignal/q0$o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/q0$b;->r:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/onesignal/q0$b;->s:Lcom/onesignal/q0$o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/onesignal/q0$b;->r:Lorg/json/JSONObject;

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/onesignal/q0;->u:Lcom/shabakaty/downloader/b33;

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/a33;

    const-string v2, "Attempted to send null tags"

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/a33;->b(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/onesignal/q0$b;->s:Lcom/onesignal/q0$o;

    if-eqz v0, :cond_0

    .line 5
    new-instance v3, Lcom/onesignal/q0$y;

    invoke-direct {v3, v1, v2}, Lcom/onesignal/q0$y;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v3}, Lcom/onesignal/q0$o;->b(Lcom/onesignal/q0$y;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Lcom/onesignal/c1;->d(Z)Lcom/onesignal/t1$b;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/t1$b;->b:Lorg/json/JSONObject;

    .line 7
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 8
    iget-object v3, p0, Lcom/onesignal/q0$b;->r:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 9
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 10
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 11
    :try_start_0
    iget-object v5, p0, Lcom/onesignal/q0$b;->r:Lorg/json/JSONObject;

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 12
    instance-of v6, v5, Lorg/json/JSONArray;

    if-nez v6, :cond_6

    instance-of v6, v5, Lorg/json/JSONObject;

    if-eqz v6, :cond_3

    goto :goto_2

    .line 13
    :cond_3
    iget-object v6, p0, Lcom/onesignal/q0$b;->r:Lorg/json/JSONObject;

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, ""

    if-nez v6, :cond_5

    :try_start_1
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_5
    :goto_1
    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 16
    invoke-virtual {v2, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_6
    :goto_2
    const/4 v5, 0x3

    .line 17
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Omitting key \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'! sendTags DO NOT supported nested values!"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    .line 18
    invoke-static {v5, v4, v6}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    goto :goto_0

    .line 19
    :cond_7
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "{}"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 20
    sget-object v0, Lcom/onesignal/q0;->u:Lcom/shabakaty/downloader/b33;

    const-string v3, "Available tags to send: "

    .line 21
    invoke-static {v3}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/shabakaty/downloader/a33;

    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/a33;->a(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/onesignal/q0$b;->s:Lcom/onesignal/q0$o;

    .line 23
    :try_start_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "tags"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    .line 24
    invoke-static {}, Lcom/onesignal/c1;->b()Lcom/onesignal/q1;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/onesignal/t1;->A(Lorg/json/JSONObject;Lcom/onesignal/q0$o;)V

    .line 25
    invoke-static {}, Lcom/onesignal/c1;->a()Lcom/onesignal/o1;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/onesignal/t1;->A(Lorg/json/JSONObject;Lcom/onesignal/q0$o;)V

    .line 26
    invoke-static {}, Lcom/onesignal/c1;->c()Lcom/onesignal/r1;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/onesignal/t1;->A(Lorg/json/JSONObject;Lcom/onesignal/q0$o;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    if-eqz v0, :cond_8

    .line 27
    new-instance v3, Lcom/onesignal/q0$y;

    const-string v4, "Encountered an error attempting to serialize your tags into JSON: "

    invoke-static {v4}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/onesignal/q0$y;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v3}, Lcom/onesignal/q0$o;->b(Lcom/onesignal/q0$y;)V

    .line 28
    :cond_8
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 29
    :cond_9
    sget-object v1, Lcom/onesignal/q0;->u:Lcom/shabakaty/downloader/b33;

    .line 30
    check-cast v1, Lcom/shabakaty/downloader/a33;

    const-string v2, "Send tags ended successfully"

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/a33;->a(Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Lcom/onesignal/q0$b;->s:Lcom/onesignal/q0$o;

    if-eqz v1, :cond_a

    .line 32
    invoke-interface {v1, v0}, Lcom/onesignal/q0$o;->a(Lorg/json/JSONObject;)V

    :cond_a
    :goto_3
    return-void
.end method
