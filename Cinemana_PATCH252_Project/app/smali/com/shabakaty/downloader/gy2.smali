.class public final Lcom/shabakaty/downloader/gy2;
.super Ljava/lang/Object;
.source "NetworkInformation.kt"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public final e:Lcom/shabakaty/downloader/a63;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/a63;

    invoke-direct {v0}, Lcom/shabakaty/downloader/a63;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/gy2;->e:Lcom/shabakaty/downloader/a63;

    return-void
.end method

.method public static final a(Lcom/shabakaty/downloader/gy2;)V
    .locals 30

    move-object/from16 v0, p0

    const-string v1, "value"

    const-string v2, "name"

    const-string v3, ""

    .line 1
    iget-object v4, v0, Lcom/shabakaty/downloader/gy2;->a:Ljava/lang/String;

    const-string v5, "checkNetworkInfo"

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/shabakaty/downloader/gy2;->b:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/shabakaty/downloader/gy2;->c:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/shabakaty/downloader/gy2;->d:Ljava/lang/String;

    if-nez v4, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance v4, Lcom/shabakaty/downloader/jy2;

    invoke-direct {v4, v0}, Lcom/shabakaty/downloader/jy2;-><init>(Lcom/shabakaty/downloader/gy2;)V

    .line 3
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 4
    :try_start_0
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd HH:mm:ss"

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v7, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 5
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 6
    iget-object v9, v0, Lcom/shabakaty/downloader/gy2;->a:Ljava/lang/String;

    invoke-static {v9, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "1"

    if-nez v9, :cond_3

    :try_start_1
    iget-object v9, v0, Lcom/shabakaty/downloader/gy2;->c:Ljava/lang/String;

    invoke-static {v9, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lcom/shabakaty/downloader/gy2;->a:Ljava/lang/String;

    iget-object v9, v0, Lcom/shabakaty/downloader/gy2;->c:Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "0"

    goto :goto_1

    :cond_2
    move-object v3, v10

    goto :goto_1

    :cond_3
    :goto_0
    const-string v3, "2"

    :goto_1
    const-string v9, "pbip"

    .line 7
    iget-object v11, v0, Lcom/shabakaty/downloader/gy2;->d:Ljava/lang/String;

    invoke-virtual {v6, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "prip"

    .line 8
    iget-object v11, v0, Lcom/shabakaty/downloader/gy2;->a:Ljava/lang/String;

    invoke-virtual {v6, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "refrrer"

    .line 9
    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "check_ip1"

    .line 10
    iget-object v10, v0, Lcom/shabakaty/downloader/gy2;->a:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "check_ip2"

    .line 11
    iget-object v10, v0, Lcom/shabakaty/downloader/gy2;->c:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "check_ip3"

    .line 12
    iget-object v10, v0, Lcom/shabakaty/downloader/gy2;->b:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "rsrv"

    .line 13
    invoke-virtual {v6, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    .line 15
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 16
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v9, "info"

    .line 17
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v10, "infoJsonObject.toString()"

    invoke-static {v6, v10}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-static {v9, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v10, Lcom/shabakaty/downloader/qw1;->l:Lcom/shabakaty/downloader/qw1$b;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v23, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x5b

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x5b

    move-object/from16 v19, v10

    move-object/from16 v20, v9

    invoke-static/range {v19 .. v29}, Lcom/shabakaty/downloader/qw1$b;->a(Lcom/shabakaty/downloader/qw1$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v23, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    const/16 v28, 0x0

    move-object/from16 v19, v10

    move-object/from16 v20, v6

    move/from16 v21, v11

    move/from16 v22, v12

    move/from16 v24, v13

    move/from16 v25, v14

    move/from16 v26, v15

    move/from16 v27, v16

    move/from16 v29, v17

    .line 20
    invoke-static/range {v19 .. v29}, Lcom/shabakaty/downloader/qw1$b;->a(Lcom/shabakaty/downloader/qw1$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "clientDate"

    .line 21
    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "sdf.format(now)"

    invoke-static {v7, v8}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v23, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v1, 0x5b

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x5b

    move-object/from16 v19, v10

    move-object/from16 v20, v6

    .line 23
    invoke-static/range {v19 .. v29}, Lcom/shabakaty/downloader/qw1$b;->a(Lcom/shabakaty/downloader/qw1$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v13, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    move-object v9, v10

    move-object v10, v7

    move/from16 v19, v1

    .line 24
    invoke-static/range {v9 .. v19}, Lcom/shabakaty/downloader/qw1$b;->a(Lcom/shabakaty/downloader/qw1$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v1, Lcom/shabakaty/downloader/th1;

    invoke-direct {v1, v3, v5}, Lcom/shabakaty/downloader/th1;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 26
    new-instance v2, Lcom/shabakaty/downloader/vr3$a;

    invoke-direct {v2}, Lcom/shabakaty/downloader/vr3$a;-><init>()V

    const-string v3, "https://cinemana.shabakaty.cc/api/info/userInfo"

    .line 27
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/vr3$a;->k(Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;

    const-string v3, "body"

    .line 28
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "POST"

    .line 29
    invoke-virtual {v2, v3, v1}, Lcom/shabakaty/downloader/vr3$a;->g(Ljava/lang/String;Lcom/shabakaty/downloader/yr3;)Lcom/shabakaty/downloader/vr3$a;

    .line 30
    invoke-virtual {v2}, Lcom/shabakaty/downloader/vr3$a;->b()Lcom/shabakaty/downloader/vr3;

    move-result-object v1

    .line 31
    iget-object v0, v0, Lcom/shabakaty/downloader/gy2;->e:Lcom/shabakaty/downloader/a63;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/a63;->a(Lcom/shabakaty/downloader/vr3;)Lcom/shabakaty/downloader/mq;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->enqueue(Lcom/shabakaty/downloader/mq;Lcom/shabakaty/downloader/wq;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_4
    :goto_2
    const-string v0, "Not All requests completed!"

    .line 33
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method


# virtual methods
.method public final b(Z)V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/gy2$a;

    invoke-direct {v0, p1, p0}, Lcom/shabakaty/downloader/gy2$a;-><init>(ZLcom/shabakaty/downloader/gy2;)V

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/vr3$a;

    invoke-direct {p1}, Lcom/shabakaty/downloader/vr3$a;-><init>()V

    const-string v1, "https://cinemana.shabakaty.cc/whatismyip"

    .line 3
    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/vr3$a;->k(Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vr3$a;->d()Lcom/shabakaty/downloader/vr3$a;

    .line 5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vr3$a;->b()Lcom/shabakaty/downloader/vr3;

    move-result-object p1

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/gy2;->e:Lcom/shabakaty/downloader/a63;

    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/a63;->a(Lcom/shabakaty/downloader/vr3;)Lcom/shabakaty/downloader/mq;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->enqueue(Lcom/shabakaty/downloader/mq;Lcom/shabakaty/downloader/wq;)V

    return-void
.end method
