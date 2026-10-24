.class public final Lcom/onesignal/q0$f;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/q0;->G()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/onesignal/q0;->P:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 2
    invoke-static {v0}, Lcom/onesignal/c1;->d(Z)Lcom/onesignal/t1$b;

    move-result-object v0

    .line 3
    iget-boolean v2, v0, Lcom/onesignal/t1$b;->a:Z

    if-eqz v2, :cond_0

    .line 4
    sput-boolean v1, Lcom/onesignal/q0;->P:Z

    .line 5
    :cond_0
    sget-object v1, Lcom/onesignal/q0;->V:Ljava/util/ArrayList;

    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onesignal/q0$r;

    .line 8
    iget-object v4, v0, Lcom/onesignal/t1$b;->b:Lorg/json/JSONObject;

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "{}"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, v0, Lcom/onesignal/t1$b;->b:Lorg/json/JSONObject;

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x0

    :goto_2
    invoke-interface {v3, v4}, Lcom/onesignal/q0$r;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 9
    :cond_3
    sget-object v0, Lcom/onesignal/q0;->V:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
