.class public Lcom/shabakaty/downloader/c43;
.super Ljava/lang/Object;
.source "OSSMSSubscriptionState.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public r:Lcom/shabakaty/downloader/l33;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/l33<",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/downloader/c43;",
            ">;"
        }
    .end annotation
.end field

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;


# direct methods
.method public constructor <init>(Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/l33;

    const-string v1, "changed"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/l33;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/shabakaty/downloader/c43;->r:Lcom/shabakaty/downloader/l33;

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lcom/shabakaty/downloader/s73;->a:Ljava/lang/String;

    const-string v0, "PREFS_OS_SMS_ID_LAST"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/shabakaty/downloader/s73;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/c43;->s:Ljava/lang/String;

    const-string v0, "PREFS_OS_SMS_NUMBER_LAST"

    .line 4
    invoke-static {p1, v0, v1}, Lcom/shabakaty/downloader/s73;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/c43;->t:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/onesignal/q0;->v()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/c43;->s:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/onesignal/c1;->c()Lcom/onesignal/r1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onesignal/t1;->o()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/c43;->t:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/c43;->s:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "smsUserId"

    if-eqz v1, :cond_0

    .line 3
    :try_start_1
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/c43;->t:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "smsNumber"

    if-eqz v1, :cond_1

    .line 6
    :try_start_2
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 7
    :cond_1
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    const-string v1, "isSubscribed"

    .line 8
    iget-object v2, p0, Lcom/shabakaty/downloader/c43;->s:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/shabakaty/downloader/c43;->t:Ljava/lang/String;

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 9
    :goto_2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
