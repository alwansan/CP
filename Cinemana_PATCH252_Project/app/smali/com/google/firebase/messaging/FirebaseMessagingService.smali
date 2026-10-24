.class public Lcom/google/firebase/messaging/FirebaseMessagingService;
.super Lcom/shabakaty/downloader/s31;
.source "com.google.firebase:firebase-messaging@@22.0.0"


# static fields
.field public static final w:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0xa

    .line 1
    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/google/firebase/messaging/FirebaseMessagingService;->w:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/s31;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/content/Intent;)V
    .locals 30

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.google.android.c2dm.intent.RECEIVE"

    .line 2
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT"

    const-string v4, "FirebaseMessaging"

    if-nez v2, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "com.google.firebase.messaging.NEW_TOKEN"

    .line 3
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "token"

    .line 4
    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    return-void

    .line 5
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unknown intent action: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :goto_1
    const-string v0, "google.message_id"

    .line 6
    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    sget-object v5, Lcom/google/firebase/messaging/FirebaseMessagingService;->w:Ljava/util/Queue;

    .line 8
    check-cast v5, Ljava/util/ArrayDeque;

    invoke-virtual {v5, v2}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 9
    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 10
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "Received duplicate message: "

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v2, 0x1

    goto :goto_4

    .line 11
    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->size()I

    move-result v9

    const/16 v10, 0xa

    if-lt v9, v10, :cond_8

    .line 12
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 13
    :cond_8
    invoke-virtual {v5, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :goto_3
    const/4 v2, 0x0

    :goto_4
    if-nez v2, :cond_f

    const-string v2, "message_type"

    .line 14
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "gcm"

    if-nez v2, :cond_9

    move-object v2, v5

    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/4 v10, 0x2

    sparse-switch v9, :sswitch_data_0

    goto :goto_5

    :sswitch_0
    const-string v5, "send_event"

    .line 15
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v5, 0x2

    goto :goto_6

    :sswitch_1
    const-string v5, "send_error"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v5, 0x3

    goto :goto_6

    :sswitch_2
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v5, 0x0

    goto :goto_6

    :sswitch_3
    const-string v5, "deleted_messages"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    goto :goto_6

    :cond_a
    :goto_5
    const/4 v5, -0x1

    :goto_6
    const-string v9, "message_id"

    if-eqz v5, :cond_10

    if-eq v5, v7, :cond_f

    if-eq v5, v10, :cond_e

    if-eq v5, v6, :cond_c

    const-string v0, "Received message with unknown type: "

    .line 16
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_b
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_7
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 17
    :cond_c
    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    .line 18
    invoke-virtual {v1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    :cond_d
    new-instance v0, Lcom/shabakaty/downloader/ga7;

    const-string v2, "error"

    .line 20
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ga7;-><init>(Ljava/lang/String;)V

    goto :goto_8

    .line 21
    :cond_e
    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    :cond_f
    :goto_8
    move-object/from16 v5, p0

    goto/16 :goto_1c

    .line 22
    :cond_10
    invoke-static/range {p1 .. p1}, Lcom/shabakaty/downloader/ls2;->c(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 23
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "_nr"

    invoke-static {v5, v2}, Lcom/shabakaty/downloader/ls2;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 24
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_9

    :cond_12
    const-string v2, "delivery_metrics_exported_to_big_query_enabled"

    .line 25
    :try_start_0
    invoke-static {}, Lcom/shabakaty/downloader/ec1;->b()Lcom/shabakaty/downloader/ec1;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    invoke-static {}, Lcom/shabakaty/downloader/ec1;->b()Lcom/shabakaty/downloader/ec1;

    move-result-object v3

    .line 27
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ec1;->a()V

    .line 28
    iget-object v3, v3, Lcom/shabakaty/downloader/ec1;->a:Landroid/content/Context;

    const-string v5, "com.google.firebase.messaging"

    .line 29
    invoke-virtual {v3, v5, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "export_to_big_query"

    .line 30
    invoke-interface {v5, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 31
    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_a

    .line 32
    :cond_13
    :try_start_1
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    if-eqz v5, :cond_14

    .line 33
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x80

    .line 34
    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 35
    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_14

    .line 36
    invoke-virtual {v5, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 37
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v3, v2, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_a

    :catch_0
    const-string v2, "FirebaseApp has not being initialized. Device might be in direct boot mode. Skip exporting delivery metrics to Big Query"

    .line 38
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    :cond_14
    :goto_9
    const/4 v2, 0x0

    :goto_a
    if-eqz v2, :cond_27

    .line 39
    sget-object v25, Lcom/shabakaty/downloader/ms2$b;->t:Lcom/shabakaty/downloader/ms2$b;

    .line 40
    sget-object v2, Lcom/google/firebase/messaging/FirebaseMessaging;->n:Lcom/shabakaty/downloader/pq4;

    if-nez v2, :cond_15

    const-string v0, "TransportFactory is null. Skip exporting message delivery metrics to Big Query"

    .line 41
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a

    .line 42
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_16

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 43
    :cond_16
    sget v5, Lcom/shabakaty/downloader/ms2;->p:I

    const-string v5, ""

    const-string v6, "google.ttl"

    .line 44
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 45
    instance-of v11, v6, Ljava/lang/Integer;

    if-eqz v11, :cond_17

    .line 46
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_b
    move v8, v6

    goto :goto_c

    .line 47
    :cond_17
    instance-of v11, v6, Ljava/lang/String;

    if-eqz v11, :cond_18

    .line 48
    :try_start_2
    move-object v11, v6

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_b

    :goto_c
    move/from16 v21, v8

    goto :goto_d

    .line 49
    :catch_2
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0xd

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v11, "Invalid TTL: "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    const/16 v21, 0x0

    :goto_d
    const-string v6, "google.to"

    .line 50
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 51
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_19

    :goto_e
    move-object v15, v6

    goto :goto_f

    .line 52
    :cond_19
    :try_start_3
    invoke-static {}, Lcom/shabakaty/downloader/ec1;->b()Lcom/shabakaty/downloader/ec1;

    move-result-object v6

    invoke-static {v6}, Lcom/shabakaty/downloader/lc1;->f(Lcom/shabakaty/downloader/ec1;)Lcom/shabakaty/downloader/lc1;

    move-result-object v6

    invoke-virtual {v6}, Lcom/shabakaty/downloader/lc1;->getId()Lcom/shabakaty/downloader/uk4;

    move-result-object v6

    invoke-static {v6}, Lcom/shabakaty/downloader/kl4;->a(Lcom/shabakaty/downloader/uk4;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_8

    goto :goto_e

    .line 53
    :goto_f
    invoke-static {}, Lcom/shabakaty/downloader/ec1;->b()Lcom/shabakaty/downloader/ec1;

    move-result-object v6

    .line 54
    invoke-virtual {v6}, Lcom/shabakaty/downloader/ec1;->a()V

    .line 55
    iget-object v6, v6, Lcom/shabakaty/downloader/ec1;->a:Landroid/content/Context;

    .line 56
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    .line 57
    sget-object v17, Lcom/shabakaty/downloader/ms2$d;->t:Lcom/shabakaty/downloader/ms2$d;

    .line 58
    invoke-static {v3}, Lcom/shabakaty/downloader/c13;->m(Landroid/os/Bundle;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 59
    sget-object v6, Lcom/shabakaty/downloader/ms2$c;->v:Lcom/shabakaty/downloader/ms2$c;

    goto :goto_10

    .line 60
    :cond_1a
    sget-object v6, Lcom/shabakaty/downloader/ms2$c;->t:Lcom/shabakaty/downloader/ms2$c;

    :goto_10
    move-object/from16 v16, v6

    .line 61
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 62
    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1b
    if-eqz v0, :cond_1c

    move-object v14, v0

    goto :goto_11

    :cond_1c
    move-object v14, v5

    .line 63
    :goto_11
    invoke-static {v3}, Lcom/shabakaty/downloader/ls2;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    move-object/from16 v22, v0

    goto :goto_12

    :cond_1d
    move-object/from16 v22, v5

    :goto_12
    const-string v0, "collapse_key"

    .line 64
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    move-object/from16 v19, v0

    goto :goto_13

    :cond_1e
    move-object/from16 v19, v5

    :goto_13
    const-string v0, "google.c.a.m_l"

    .line 65
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    move-object/from16 v26, v0

    goto :goto_14

    :cond_1f
    move-object/from16 v26, v5

    :goto_14
    const-string v0, "google.c.a.c_l"

    .line 66
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    move-object/from16 v29, v0

    goto :goto_15

    :cond_20
    move-object/from16 v29, v5

    :goto_15
    const-string v0, "google.c.sender.id"

    .line 67
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    const-wide/16 v8, 0x0

    if-eqz v5, :cond_21

    .line 68
    :try_start_4
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_17

    :catch_3
    move-exception v0

    const-string v3, "error parsing project number"

    .line 69
    invoke-static {v4, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    :cond_21
    invoke-static {}, Lcom/shabakaty/downloader/ec1;->b()Lcom/shabakaty/downloader/ec1;

    move-result-object v3

    .line 71
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ec1;->a()V

    .line 72
    iget-object v0, v3, Lcom/shabakaty/downloader/ec1;->c:Lcom/shabakaty/downloader/tc1;

    .line 73
    iget-object v0, v0, Lcom/shabakaty/downloader/tc1;->e:Ljava/lang/String;

    if-eqz v0, :cond_22

    .line 74
    :try_start_5
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_17

    :catch_4
    move-exception v0

    move-object v5, v0

    const-string v0, "error parsing sender ID"

    .line 75
    invoke-static {v4, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    :cond_22
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ec1;->a()V

    .line 77
    iget-object v0, v3, Lcom/shabakaty/downloader/ec1;->c:Lcom/shabakaty/downloader/tc1;

    .line 78
    iget-object v0, v0, Lcom/shabakaty/downloader/tc1;->b:Ljava/lang/String;

    const-string v3, "1:"

    .line 79
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v5, "error parsing app ID"

    if-nez v3, :cond_23

    .line 80
    :try_start_6
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_17

    :catch_5
    move-exception v0

    move-object v3, v0

    .line 81
    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    :cond_23
    const-string v3, ":"

    .line 82
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 83
    array-length v3, v0

    if-ge v3, v10, :cond_24

    goto :goto_16

    .line 84
    :cond_24
    aget-object v0, v0, v7

    .line 85
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_25

    goto :goto_16

    .line 86
    :cond_25
    :try_start_7
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_17

    :catch_6
    move-exception v0

    move-object v3, v0

    .line 87
    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16
    move-wide v5, v8

    :goto_17
    cmp-long v0, v5, v8

    if-lez v0, :cond_26

    move-wide v12, v5

    goto :goto_18

    :cond_26
    move-wide v12, v8

    .line 88
    :goto_18
    new-instance v0, Lcom/shabakaty/downloader/ms2;

    move-object v11, v0

    const/16 v20, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v27, 0x0

    invoke-direct/range {v11 .. v29}, Lcom/shabakaty/downloader/ms2;-><init>(JLjava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/ms2$c;Lcom/shabakaty/downloader/ms2$d;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;JLcom/shabakaty/downloader/ms2$b;Ljava/lang/String;JLjava/lang/String;)V

    :try_start_8
    const-string v3, "FCM_CLIENT_EVENT_LOGGING"

    .line 89
    const-class v5, Lcom/shabakaty/downloader/ns2;

    const-string v6, "proto"

    .line 90
    new-instance v7, Lcom/shabakaty/downloader/o31;

    invoke-direct {v7, v6}, Lcom/shabakaty/downloader/o31;-><init>(Ljava/lang/String;)V

    .line 91
    sget-object v6, Lcom/shabakaty/downloader/ks2;->r:Lcom/shabakaty/downloader/aq4;

    .line 92
    invoke-interface {v2, v3, v5, v7, v6}, Lcom/shabakaty/downloader/pq4;->a(Ljava/lang/String;Ljava/lang/Class;Lcom/shabakaty/downloader/o31;Lcom/shabakaty/downloader/aq4;)Lcom/shabakaty/downloader/mq4;

    move-result-object v2

    sget v3, Lcom/shabakaty/downloader/ns2;->b:I

    .line 93
    new-instance v3, Lcom/shabakaty/downloader/ns2;

    .line 94
    invoke-direct {v3, v0}, Lcom/shabakaty/downloader/ns2;-><init>(Lcom/shabakaty/downloader/ms2;)V

    .line 95
    invoke-static {v3}, Lcom/shabakaty/downloader/i51;->e(Ljava/lang/Object;)Lcom/shabakaty/downloader/i51;

    move-result-object v0

    .line 96
    invoke-interface {v2, v0}, Lcom/shabakaty/downloader/mq4;->a(Lcom/shabakaty/downloader/i51;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_1a

    :catch_7
    move-exception v0

    const-string v2, "Failed to send big query analytics payload."

    .line 97
    invoke-static {v4, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    :catch_8
    move-exception v0

    goto :goto_19

    :catch_9
    move-exception v0

    .line 98
    :goto_19
    new-instance v1, Ljava/lang/RuntimeException;

    .line 99
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 100
    :cond_27
    :goto_1a
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_28

    new-instance v0, Landroid/os/Bundle;

    .line 101
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_28
    const-string v2, "androidx.content.wakelockid"

    .line 102
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 103
    invoke-static {v0}, Lcom/shabakaty/downloader/c13;->m(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_2a

    new-instance v2, Lcom/shabakaty/downloader/c13;

    .line 104
    invoke-direct {v2, v0}, Lcom/shabakaty/downloader/c13;-><init>(Landroid/os/Bundle;)V

    .line 105
    new-instance v3, Lcom/shabakaty/downloader/nw2;

    const-string v4, "Firebase-Messaging-Network-Io"

    invoke-direct {v3, v4}, Lcom/shabakaty/downloader/nw2;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    .line 106
    new-instance v4, Lcom/shabakaty/downloader/lu0;

    move-object/from16 v5, p0

    .line 107
    invoke-direct {v4, v5, v2, v3}, Lcom/shabakaty/downloader/lu0;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/c13;Ljava/util/concurrent/Executor;)V

    .line 108
    :try_start_9
    invoke-virtual {v4}, Lcom/shabakaty/downloader/lu0;->a()Z

    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v2, :cond_29

    .line 109
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_1c

    :cond_29
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 110
    invoke-static/range {p1 .. p1}, Lcom/shabakaty/downloader/ls2;->c(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 111
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "_nf"

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/ls2;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1b

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 112
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 113
    throw v1

    :cond_2a
    move-object/from16 v5, p0

    .line 114
    :cond_2b
    :goto_1b
    new-instance v1, Lcom/shabakaty/downloader/dr3;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/dr3;-><init>(Landroid/os/Bundle;)V

    :goto_1c
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7aedf14e -> :sswitch_3
        0x18f11 -> :sswitch_2
        0x308f3e91 -> :sswitch_1
        0x3090df23 -> :sswitch_0
    .end sparse-switch
.end method
