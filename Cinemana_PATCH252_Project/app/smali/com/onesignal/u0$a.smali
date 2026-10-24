.class public final Lcom/onesignal/u0$a;
.super Lcom/onesignal/x0$d;
.source "OneSignalRemoteParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/u0;->a(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/u0$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/onesignal/u0$b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/u0$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/u0$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/onesignal/u0$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/onesignal/u0$a;->c:Lcom/onesignal/u0$b;

    invoke-direct {p0}, Lcom/onesignal/x0$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    const/16 p2, 0x193

    if-ne p1, p2, :cond_0

    const/4 p1, 0x2

    const/4 p2, 0x0

    const-string p3, "403 error getting OneSignal params, omitting further retries!"

    .line 1
    invoke-static {p1, p3, p2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/onesignal/u0$a$a;

    invoke-direct {p2, p0}, Lcom/onesignal/u0$a$a;-><init>(Lcom/onesignal/u0$a;)V

    const-string p3, "OS_PARAMS_REQUEST"

    invoke-direct {p1, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/onesignal/u0$a;->c:Lcom/onesignal/u0$b;

    const/4 v1, 0x0

    .line 2
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3
    new-instance p1, Lcom/onesignal/v0;

    invoke-direct {p1, v2}, Lcom/onesignal/v0;-><init>(Lorg/json/JSONObject;)V

    .line 4
    check-cast v0, Lcom/onesignal/q0$l;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 5
    sput-boolean v2, Lcom/onesignal/q0;->R:Z

    .line 6
    iget-object v3, p1, Lcom/onesignal/u0$e;->a:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 7
    sput-object v3, Lcom/onesignal/q0;->e:Ljava/lang/String;

    .line 8
    :cond_0
    sget-object v3, Lcom/onesignal/q0;->z:Lcom/onesignal/i0;

    .line 9
    sget-object v4, Lcom/onesignal/q0;->F:Lcom/shabakaty/downloader/yh1;

    .line 10
    sget-object v5, Lcom/onesignal/q0;->E:Lcom/shabakaty/downloader/xl2;

    .line 11
    sget-object v6, Lcom/onesignal/q0;->u:Lcom/shabakaty/downloader/b33;

    .line 12
    iput-object p1, v3, Lcom/onesignal/i0;->a:Lcom/onesignal/u0$e;

    .line 13
    sget-object v3, Lcom/shabakaty/downloader/s73;->a:Ljava/lang/String;

    iget-boolean v7, p1, Lcom/onesignal/u0$e;->c:Z

    const-string v8, "GT_FIREBASE_TRACKING_ENABLED"

    invoke-static {v3, v8, v7}, Lcom/shabakaty/downloader/s73;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14
    iget-boolean v7, p1, Lcom/onesignal/u0$e;->d:Z

    const-string v8, "OS_RESTORE_TTL_FILTER"

    invoke-static {v3, v8, v7}, Lcom/shabakaty/downloader/s73;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 15
    iget-boolean v7, p1, Lcom/onesignal/u0$e;->e:Z

    const-string v8, "OS_CLEAR_GROUP_SUMMARY_CLICK"

    invoke-static {v3, v8, v7}, Lcom/shabakaty/downloader/s73;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 16
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p1, Lcom/onesignal/u0$e;->k:Lcom/onesignal/u0$d;

    iget-boolean v5, v5, Lcom/onesignal/u0$d;->h:Z

    const-string v7, "PREFS_OS_OUTCOMES_V2"

    .line 17
    invoke-static {v3, v7, v5}, Lcom/shabakaty/downloader/s73;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 18
    iget-boolean v5, p1, Lcom/onesignal/u0$e;->f:Z

    const-string v7, "PREFS_OS_RECEIVE_RECEIPTS_ENABLED"

    .line 19
    invoke-static {v3, v7, v5}, Lcom/shabakaty/downloader/s73;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 20
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OneSignal saveInfluenceParams: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/onesignal/u0$e;->k:Lcom/onesignal/u0$d;

    invoke-virtual {v7}, Lcom/onesignal/u0$d;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v6, Lcom/shabakaty/downloader/a33;

    invoke-virtual {v6, v5}, Lcom/shabakaty/downloader/a33;->a(Ljava/lang/String;)V

    .line 21
    iget-object v5, p1, Lcom/onesignal/u0$e;->k:Lcom/onesignal/u0$d;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "influenceParams"

    .line 22
    invoke-static {v5, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v4, v4, Lcom/shabakaty/downloader/yh1;->t:Ljava/lang/Object;

    check-cast v4, Lcom/shabakaty/downloader/y23;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v6, v4, Lcom/shabakaty/downloader/y23;->r:Lcom/shabakaty/downloader/xl2;

    .line 25
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-boolean v6, v5, Lcom/onesignal/u0$d;->e:Z

    const-string v7, "PREFS_OS_DIRECT_ENABLED"

    .line 27
    invoke-static {v3, v7, v6}, Lcom/shabakaty/downloader/s73;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 28
    iget-object v6, v4, Lcom/shabakaty/downloader/y23;->r:Lcom/shabakaty/downloader/xl2;

    .line 29
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-boolean v6, v5, Lcom/onesignal/u0$d;->f:Z

    const-string v7, "PREFS_OS_INDIRECT_ENABLED"

    .line 31
    invoke-static {v3, v7, v6}, Lcom/shabakaty/downloader/s73;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 32
    iget-object v6, v4, Lcom/shabakaty/downloader/y23;->r:Lcom/shabakaty/downloader/xl2;

    .line 33
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-boolean v6, v5, Lcom/onesignal/u0$d;->g:Z

    const-string v7, "PREFS_OS_UNATTRIBUTED_ENABLED"

    .line 35
    invoke-static {v3, v7, v6}, Lcom/shabakaty/downloader/s73;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 36
    iget-object v6, v4, Lcom/shabakaty/downloader/y23;->r:Lcom/shabakaty/downloader/xl2;

    .line 37
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget v7, v5, Lcom/onesignal/u0$d;->b:I

    const-string v8, "PREFS_OS_NOTIFICATION_LIMIT"

    .line 39
    invoke-virtual {v6, v3, v8, v7}, Lcom/shabakaty/downloader/xl2;->f(Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    iget-object v6, v4, Lcom/shabakaty/downloader/y23;->r:Lcom/shabakaty/downloader/xl2;

    .line 41
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget v7, v5, Lcom/onesignal/u0$d;->a:I

    const-string v8, "PREFS_OS_INDIRECT_ATTRIBUTION_WINDOW"

    .line 43
    invoke-virtual {v6, v3, v8, v7}, Lcom/shabakaty/downloader/xl2;->f(Ljava/lang/String;Ljava/lang/String;I)V

    .line 44
    iget-object v6, v4, Lcom/shabakaty/downloader/y23;->r:Lcom/shabakaty/downloader/xl2;

    .line 45
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget v7, v5, Lcom/onesignal/u0$d;->d:I

    const-string v8, "PREFS_OS_IAM_LIMIT"

    .line 47
    invoke-virtual {v6, v3, v8, v7}, Lcom/shabakaty/downloader/xl2;->f(Ljava/lang/String;Ljava/lang/String;I)V

    .line 48
    iget-object v4, v4, Lcom/shabakaty/downloader/y23;->r:Lcom/shabakaty/downloader/xl2;

    .line 49
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget v5, v5, Lcom/onesignal/u0$d;->c:I

    const-string v6, "PREFS_OS_IAM_INDIRECT_ATTRIBUTION_WINDOW"

    .line 51
    invoke-virtual {v4, v3, v6, v5}, Lcom/shabakaty/downloader/xl2;->f(Ljava/lang/String;Ljava/lang/String;I)V

    .line 52
    iget-object v4, p1, Lcom/onesignal/u0$e;->g:Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    .line 53
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v5, "PREFS_OS_DISABLE_GMS_MISSING_PROMPT"

    .line 54
    invoke-static {v3, v5, v4}, Lcom/shabakaty/downloader/s73;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 55
    :cond_1
    iget-object v4, p1, Lcom/onesignal/u0$e;->h:Ljava/lang/Boolean;

    if-eqz v4, :cond_2

    .line 56
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v5, "PREFS_OS_UNSUBSCRIBE_WHEN_NOTIFICATIONS_DISABLED"

    .line 57
    invoke-static {v3, v5, v4}, Lcom/shabakaty/downloader/s73;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 58
    :cond_2
    iget-object v4, p1, Lcom/onesignal/u0$e;->i:Ljava/lang/Boolean;

    if-eqz v4, :cond_3

    .line 59
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 60
    sget-object v5, Lcom/onesignal/q0;->u:Lcom/shabakaty/downloader/b33;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OneSignal startLocationShared: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    check-cast v5, Lcom/shabakaty/downloader/a33;

    invoke-virtual {v5, v6}, Lcom/shabakaty/downloader/a33;->a(Ljava/lang/String;)V

    .line 61
    sget-object v5, Lcom/onesignal/q0;->z:Lcom/onesignal/i0;

    .line 62
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "PREFS_OS_LOCATION_SHARED"

    .line 63
    invoke-static {v3, v5, v4}, Lcom/shabakaty/downloader/s73;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez v4, :cond_3

    .line 64
    sget-object v4, Lcom/onesignal/q0;->u:Lcom/shabakaty/downloader/b33;

    check-cast v4, Lcom/shabakaty/downloader/a33;

    const-string v5, "OneSignal is shareLocation set false, clearing last location!"

    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/a33;->a(Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/onesignal/c1;->b()Lcom/onesignal/q1;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onesignal/t1;->f()V

    .line 66
    invoke-static {}, Lcom/onesignal/c1;->a()Lcom/onesignal/o1;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onesignal/t1;->f()V

    .line 67
    invoke-static {}, Lcom/onesignal/c1;->c()Lcom/onesignal/r1;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onesignal/t1;->f()V

    .line 68
    :cond_3
    iget-object v4, p1, Lcom/onesignal/u0$e;->j:Ljava/lang/Boolean;

    if-eqz v4, :cond_4

    .line 69
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v5, "PREFS_OS_REQUIRES_USER_PRIVACY_CONSENT"

    .line 70
    invoke-static {v3, v5, v4}, Lcom/shabakaty/downloader/s73;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 71
    :cond_4
    sget-boolean v3, Lcom/onesignal/q0;->o:Z

    if-eqz v3, :cond_5

    goto :goto_1

    .line 72
    :cond_5
    sget-object v3, Lcom/onesignal/q0;->W:Lcom/shabakaty/downloader/yo4;

    if-nez v3, :cond_6

    .line 73
    invoke-static {}, Lcom/onesignal/q0;->w()Ljava/lang/String;

    move-result-object v3

    .line 74
    sget-object v4, Lcom/onesignal/q0;->b:Landroid/content/Context;

    .line 75
    sget-object v5, Lcom/onesignal/q0;->u:Lcom/shabakaty/downloader/b33;

    check-cast v5, Lcom/shabakaty/downloader/a33;

    const-string v6, "Trying to continue OneSignal with null delayed params"

    invoke-virtual {v5, v6}, Lcom/shabakaty/downloader/a33;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_6
    iget-object v4, v3, Lcom/shabakaty/downloader/yo4;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 77
    iget-object v3, v3, Lcom/shabakaty/downloader/yo4;->c:Ljava/lang/Object;

    check-cast v3, Landroid/content/Context;

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    .line 78
    :goto_0
    sget-object v5, Lcom/onesignal/q0;->u:Lcom/shabakaty/downloader/b33;

    const-string v6, "reassignDelayedInitParams with appContext: "

    invoke-static {v6}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/onesignal/q0;->b:Landroid/content/Context;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    check-cast v5, Lcom/shabakaty/downloader/a33;

    invoke-virtual {v5, v6}, Lcom/shabakaty/downloader/a33;->a(Ljava/lang/String;)V

    .line 79
    sput-object v1, Lcom/onesignal/q0;->W:Lcom/shabakaty/downloader/yo4;

    .line 80
    invoke-static {v3}, Lcom/onesignal/q0;->V(Ljava/lang/String;)V

    .line 81
    sget-boolean v3, Lcom/onesignal/q0;->o:Z

    if-nez v3, :cond_8

    if-nez v4, :cond_7

    .line 82
    sget-object v3, Lcom/onesignal/q0;->u:Lcom/shabakaty/downloader/b33;

    check-cast v3, Lcom/shabakaty/downloader/a33;

    const-string v4, "Trying to continue OneSignal with null delayed params context"

    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/a33;->b(Ljava/lang/String;)V

    :goto_1
    const/4 v3, 0x0

    goto :goto_2

    .line 83
    :cond_7
    invoke-static {v4}, Lcom/onesignal/q0;->F(Landroid/content/Context;)V

    :cond_8
    const/4 v3, 0x1

    :goto_2
    if-nez v3, :cond_9

    .line 84
    sget-boolean v3, Lcom/onesignal/q0;->p:Z

    if-eqz v3, :cond_9

    .line 85
    invoke-static {}, Lcom/onesignal/q0;->L()V

    .line 86
    :cond_9
    sget-object v3, Lcom/onesignal/q0;->b:Landroid/content/Context;

    iget-object p1, p1, Lcom/onesignal/u0$e;->b:Lorg/json/JSONArray;

    sget-object v4, Lcom/shabakaty/downloader/i03;->a:Ljava/util/regex/Pattern;

    const/4 v4, 0x3

    .line 87
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-ge v5, v6, :cond_a

    goto/16 :goto_7

    :cond_a
    if-eqz p1, :cond_f

    .line 88
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-nez v5, :cond_b

    goto/16 :goto_7

    :cond_b
    const-string v5, "notification"

    .line 89
    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 90
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 91
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v7

    :goto_3
    if-ge v2, v7, :cond_c

    .line 92
    :try_start_1
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v3, v5, v8}, Lcom/shabakaty/downloader/i03;->a(Landroid/content/Context;Landroid/app/NotificationManager;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v8

    const-string v9, "Could not create notification channel due to JSON payload error!"

    .line 93
    invoke-static {v4, v9, v8}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 94
    :cond_c
    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_7

    .line 95
    :cond_d
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 96
    :try_start_2
    invoke-virtual {v5}, Landroid/app/NotificationManager;->getNotificationChannels()Ljava/util/List;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v2

    const-string v3, "Error when trying to delete notification channel: "

    .line 97
    invoke-static {v3}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-static {v4, v2, v1}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannel;

    .line 100
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OS_"

    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v6, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 102
    invoke-virtual {v5, v1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    goto :goto_6

    .line 103
    :cond_f
    :goto_7
    iget-boolean p1, v0, Lcom/onesignal/q0$l;->a:Z

    if-eqz p1, :cond_10

    .line 104
    invoke-static {}, Lcom/onesignal/q0;->N()V

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    :goto_8
    const/4 v2, 0x2

    const-string v3, "Error parsing android_params!: "

    .line 105
    invoke-static {v2, v3, v0}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Response that errored from android_params!: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-static {v2, p1, v1}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_10
    :goto_9
    return-void
.end method
