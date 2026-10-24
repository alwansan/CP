.class public final Lcom/onesignal/x0$c;
.super Ljava/lang/Object;
.source "OneSignalRestClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/x0;->b(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/x0$d;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic r:[Ljava/lang/Thread;

.field public final synthetic s:Ljava/lang/String;

.field public final synthetic t:Ljava/lang/String;

.field public final synthetic u:Lorg/json/JSONObject;

.field public final synthetic v:Lcom/onesignal/x0$d;

.field public final synthetic w:I

.field public final synthetic x:Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/x0$d;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/x0$c;->r:[Ljava/lang/Thread;

    iput-object p2, p0, Lcom/onesignal/x0$c;->s:Ljava/lang/String;

    iput-object p3, p0, Lcom/onesignal/x0$c;->t:Ljava/lang/String;

    iput-object p4, p0, Lcom/onesignal/x0$c;->u:Lorg/json/JSONObject;

    iput-object p5, p0, Lcom/onesignal/x0$c;->v:Lcom/onesignal/x0$d;

    iput p6, p0, Lcom/onesignal/x0$c;->w:I

    iput-object p7, p0, Lcom/onesignal/x0$c;->x:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v1, p0

    .line 1
    iget-object v2, v1, Lcom/onesignal/x0$c;->r:[Ljava/lang/Thread;

    iget-object v0, v1, Lcom/onesignal/x0$c;->s:Ljava/lang/String;

    iget-object v3, v1, Lcom/onesignal/x0$c;->t:Ljava/lang/String;

    iget-object v4, v1, Lcom/onesignal/x0$c;->u:Lorg/json/JSONObject;

    iget-object v5, v1, Lcom/onesignal/x0$c;->v:Lcom/onesignal/x0$d;

    iget v6, v1, Lcom/onesignal/x0$c;->w:I

    iget-object v7, v1, Lcom/onesignal/x0$c;->x:Ljava/lang/String;

    const-string v8, "OS_REST_FAILURE_CALLBACK"

    const-string v9, "OneSignalRestClient: "

    .line 2
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1a

    if-lt v10, v11, :cond_0

    const/16 v10, 0x2710

    .line 3
    invoke-static {v10}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    :cond_0
    const/4 v10, 0x6

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 4
    :try_start_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OneSignalRestClient: Making request to: https://api.onesignal.com/"

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 5
    invoke-static {v10, v11, v13}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    new-instance v11, Ljava/net/URL;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "https://api.onesignal.com/"

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    invoke-static {v11}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/net/URLConnection;

    check-cast v11, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 7
    :try_start_1
    invoke-virtual {v11, v12}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 8
    invoke-virtual {v11, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 9
    invoke-virtual {v11, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v6, "SDK-Version"

    .line 10
    sget-object v14, Lcom/onesignal/q0;->a:Ljava/util/List;

    const-string v14, "onesignal/android/040401"

    invoke-virtual {v11, v6, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Accept"

    const-string v14, "application/vnd.onesignal.v1+json"

    .line 11
    invoke-virtual {v11, v6, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    .line 12
    invoke-virtual {v11, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    :cond_1
    if-eqz v3, :cond_2

    const-string v14, "Content-Type"

    const-string v15, "application/json; charset=UTF-8"

    .line 13
    invoke-virtual {v11, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v11, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v11, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :cond_2
    const-string v6, "UTF-8"

    if-eqz v4, :cond_3

    .line 16
    :try_start_2
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 17
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " SEND JSON: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 18
    invoke-static {v10, v14, v13}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 20
    array-length v14, v4

    invoke-virtual {v11, v14}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 21
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    .line 22
    invoke-virtual {v14, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_3
    const-string v4, "PREFS_OS_ETAG_PREFIX_"

    if-eqz v7, :cond_4

    .line 23
    :try_start_3
    sget-object v14, Lcom/shabakaty/downloader/s73;->a:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v13}, Lcom/shabakaty/downloader/s73;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_4

    const-string v15, "if-none-match"

    .line 24
    invoke-virtual {v11, v15, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "OneSignalRestClient: Adding header if-none-match: "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 26
    invoke-static {v10, v12, v13}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    :cond_4
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/4 v14, 0x7

    .line 28
    :try_start_4
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OneSignalRestClient: After con.getResponseCode to: https://api.onesignal.com/"

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 29
    invoke-static {v14, v10, v13}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/16 v10, 0xc8

    const-string v14, " RECEIVED JSON: "

    const-string v15, "OS_REST_SUCCESS_CALLBACK"

    const-string v16, ""

    const-string v17, "GET"

    const-string v13, "\\A"

    const-string v1, "PREFS_OS_HTTP_CACHE_PREFIX_"

    if-eq v12, v10, :cond_c

    const/16 v10, 0xca

    if-eq v12, v10, :cond_c

    const/16 v4, 0x130

    if-eq v12, v4, :cond_9

    .line 30
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OneSignalRestClient: Failed request to: https://api.onesignal.com/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v4, 0x0

    .line 31
    invoke-static {v1, v0, v4}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_5

    .line 33
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    :cond_5
    if-eqz v0, :cond_7

    .line 34
    new-instance v1, Ljava/util/Scanner;

    invoke-direct {v1, v0, v6}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v1, v13}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Scanner;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v16

    :cond_6
    move-object/from16 v0, v16

    .line 36
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v6, 0x4

    .line 38
    invoke-static {v6, v1, v4}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    goto :goto_0

    .line 39
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " HTTP Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " No response body!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x4

    .line 40
    invoke-static {v4, v0, v1}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_0
    if-nez v5, :cond_8

    goto/16 :goto_4

    .line 41
    :cond_8
    new-instance v4, Ljava/lang/Thread;

    new-instance v6, Lcom/onesignal/z0;

    invoke-direct {v6, v5, v12, v0, v1}, Lcom/onesignal/z0;-><init>(Lcom/onesignal/x0$d;ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v4, v6, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    move-object v13, v4

    goto/16 :goto_b

    .line 43
    :cond_9
    sget-object v0, Lcom/shabakaty/downloader/s73;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v0, v1, v4}, Lcom/shabakaty/downloader/s73;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_a

    move-object/from16 v4, v17

    goto :goto_1

    :cond_a
    move-object v4, v3

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - Using Cached response due to 304: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x6

    const/4 v6, 0x0

    .line 45
    invoke-static {v4, v1, v6}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    if-nez v5, :cond_b

    goto/16 :goto_4

    .line 46
    :cond_b
    new-instance v1, Ljava/lang/Thread;

    new-instance v4, Lcom/onesignal/y0;

    invoke-direct {v4, v5, v0}, Lcom/onesignal/y0;-><init>(Lcom/onesignal/x0$d;Ljava/lang/String;)V

    invoke-direct {v1, v4, v15}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    move-object v13, v1

    goto/16 :goto_b

    :catchall_0
    move-exception v0

    move/from16 v16, v12

    goto/16 :goto_6

    .line 48
    :cond_c
    :try_start_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move/from16 v18, v12

    :try_start_7
    const-string v12, "OneSignalRestClient: Successfully finished request to: https://api.onesignal.com/"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x6

    const/4 v12, 0x0

    .line 49
    invoke-static {v10, v0, v12}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 51
    new-instance v10, Ljava/util/Scanner;

    invoke-direct {v10, v0, v6}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v10, v13}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Scanner;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v10}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v16

    :cond_d
    move-object/from16 v0, v16

    .line 53
    invoke-virtual {v10}, Ljava/util/Scanner;->close()V

    .line 54
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_e

    move-object/from16 v10, v17

    goto :goto_3

    :cond_e
    move-object v10, v3

    :goto_3
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x6

    const/4 v12, 0x0

    .line 55
    invoke-static {v10, v6, v12}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v7, :cond_f

    const-string v6, "etag"

    .line 56
    invoke-virtual {v11, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_f

    .line 57
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "OneSignalRestClient: Response has etag of "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " so caching the response."

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x6

    const/4 v13, 0x0

    .line 58
    invoke-static {v12, v10, v13}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    sget-object v10, Lcom/shabakaty/downloader/s73;->a:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 60
    invoke-static {v10, v4, v6}, Lcom/shabakaty/downloader/s73;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-static {v10, v1, v0}, Lcom/shabakaty/downloader/s73;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_f
    if-nez v5, :cond_10

    :goto_4
    const/4 v13, 0x0

    goto/16 :goto_b

    .line 63
    :cond_10
    new-instance v1, Ljava/lang/Thread;

    new-instance v4, Lcom/onesignal/y0;

    invoke-direct {v4, v5, v0}, Lcom/onesignal/y0;-><init>(Lcom/onesignal/x0$d;Ljava/lang/String;)V

    invoke-direct {v1, v4, v15}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move/from16 v18, v12

    :goto_5
    move-object v1, v11

    move/from16 v11, v18

    goto :goto_7

    :catchall_3
    move-exception v0

    const/16 v16, -0x1

    :goto_6
    move-object v1, v11

    move/from16 v11, v16

    goto :goto_7

    :catchall_4
    move-exception v0

    const/4 v1, 0x0

    const/4 v11, -0x1

    .line 65
    :goto_7
    :try_start_8
    instance-of v4, v0, Ljava/net/ConnectException;

    if-nez v4, :cond_12

    instance-of v4, v0, Ljava/net/UnknownHostException;

    if-eqz v4, :cond_11

    goto :goto_8

    .line 66
    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Error thrown from network stack. "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v4, v3, v0}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    const/4 v6, 0x0

    goto :goto_9

    :cond_12
    :goto_8
    const/4 v3, 0x5

    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OneSignalRestClient: Could not send last request, device is offline. Throwable: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    .line 68
    invoke-static {v3, v4, v6}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :goto_9
    if-nez v5, :cond_13

    move-object v13, v6

    goto :goto_a

    .line 69
    :cond_13
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/onesignal/z0;

    invoke-direct {v4, v5, v11, v6, v0}, Lcom/onesignal/z0;-><init>(Lcom/onesignal/x0$d;ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v3, v4, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-object v13, v3

    :goto_a
    if-eqz v1, :cond_14

    move-object v11, v1

    .line 71
    :goto_b
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_14
    const/4 v1, 0x0

    .line 72
    aput-object v13, v2, v1

    return-void

    :catchall_5
    move-exception v0

    if-eqz v1, :cond_15

    .line 73
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 74
    :cond_15
    throw v0
.end method
