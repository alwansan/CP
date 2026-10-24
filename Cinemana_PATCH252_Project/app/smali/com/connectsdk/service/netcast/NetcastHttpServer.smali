.class public Lcom/connectsdk/service/netcast/NetcastHttpServer;
.super Ljava/lang/Object;
.source "NetcastHttpServer.java"


# static fields
.field public static final UDAP_PATH_EVENT:Ljava/lang/String; = "/udap/api/event"


# instance fields
.field public port:I

.field public running:Z

.field public service:Lcom/connectsdk/service/NetcastTVService;

.field public subscriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/connectsdk/service/command/URLServiceSubscription<",
            "*>;>;"
        }
    .end annotation
.end field

.field public textChangedListener:Lcom/connectsdk/service/capability/listeners/ResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public welcomeSocket:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/NetcastTVService;ILcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/NetcastTVService;",
            "I",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/connectsdk/service/netcast/NetcastHttpServer;->port:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/connectsdk/service/netcast/NetcastHttpServer;->running:Z

    .line 4
    iput-object p1, p0, Lcom/connectsdk/service/netcast/NetcastHttpServer;->service:Lcom/connectsdk/service/NetcastTVService;

    .line 5
    iput p2, p0, Lcom/connectsdk/service/netcast/NetcastHttpServer;->port:I

    .line 6
    iput-object p3, p0, Lcom/connectsdk/service/netcast/NetcastHttpServer;->textChangedListener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    return-void
.end method


# virtual methods
.method public setSubscriptions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/connectsdk/service/command/URLServiceSubscription<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/netcast/NetcastHttpServer;->subscriptions:Ljava/util/List;

    return-void
.end method

.method public start()V
    .locals 10

    const-string v0, ""

    .line 1
    iget-boolean v1, p0, Lcom/connectsdk/service/netcast/NetcastHttpServer;->running:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcom/connectsdk/service/netcast/NetcastHttpServer;->running:Z

    .line 3
    :try_start_0
    new-instance v1, Ljava/net/ServerSocket;

    iget v2, p0, Lcom/connectsdk/service/netcast/NetcastHttpServer;->port:I

    invoke-direct {v1, v2}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v1, p0, Lcom/connectsdk/service/netcast/NetcastHttpServer;->welcomeSocket:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 5
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/connectsdk/service/netcast/NetcastHttpServer;->running:Z

    if-eqz v1, :cond_d

    .line 6
    iget-object v1, p0, Lcom/connectsdk/service/netcast/NetcastHttpServer;->welcomeSocket:Ljava/net/ServerSocket;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_10

    .line 7
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/connectsdk/service/netcast/NetcastHttpServer;->welcomeSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 9
    :try_start_2
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 10
    :cond_3
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 11
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 12
    :cond_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->read()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_5

    int-to-char v5, v5

    .line 13
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "</envelope>"

    .line 15
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v5, :cond_4

    goto :goto_2

    :catch_1
    move-exception v5

    goto :goto_1

    :catch_2
    move-exception v4

    move-object v5, v4

    move-object v4, v3

    .line 16
    :goto_1
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 17
    :cond_5
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 18
    sget-object v5, Lcom/connectsdk/core/Util;->T:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "got message body: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 20
    new-instance v6, Ljava/text/SimpleDateFormat;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "EEE, dd MMM yyyy HH:mm:ss z"

    invoke-direct {v6, v8, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v7, "GMT"

    .line 21
    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 22
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 23
    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 24
    :try_start_4
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 25
    :try_start_5
    new-instance v8, Ljava/io/PrintWriter;

    invoke-direct {v8, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    const-string v3, "HTTP/1.1 200 OK"

    .line 26
    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Server: Android/"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " UDAP/2.0 ConnectSDK/1.2.1"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "Cache-Control: no-store, no-cache, must-revalidate"

    .line 28
    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Date: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "Connection: Close"

    .line 30
    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "Content-Length: 0"

    .line 31
    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v8}, Ljava/io/PrintWriter;->println()V

    .line 33
    invoke-virtual {v8}, Ljava/io/PrintWriter;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 34
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 35
    invoke-virtual {v8}, Ljava/io/PrintWriter;->close()V

    .line 36
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V

    .line 37
    :goto_3
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_6

    :catch_3
    move-exception v3

    goto :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_e

    :catch_4
    move-exception v5

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v7, v3

    goto/16 :goto_e

    :catch_5
    move-exception v5

    move-object v7, v3

    :goto_4
    move-object v8, v3

    move-object v3, v5

    .line 38
    :goto_5
    :try_start_8
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 39
    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 40
    invoke-virtual {v8}, Ljava/io/PrintWriter;->close()V

    .line 41
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_3

    :catch_6
    move-exception v1

    .line 42
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 43
    :goto_6
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 44
    new-instance v3, Ljava/io/ByteArrayInputStream;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 45
    new-instance v4, Lcom/connectsdk/service/netcast/NetcastPOSTRequestParser;

    invoke-direct {v4}, Lcom/connectsdk/service/netcast/NetcastPOSTRequestParser;-><init>()V

    .line 46
    :try_start_a
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 47
    invoke-virtual {v1, v3, v4}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_a .. :try_end_a} :catch_8
    .catch Lorg/xml/sax/SAXException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_7

    :catch_7
    move-exception v1

    .line 48
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_7

    :catch_8
    move-exception v1

    .line 49
    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_7

    :catch_9
    move-exception v1

    .line 50
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_7
    const-string v1, "ChannelChanged"

    .line 51
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 52
    invoke-virtual {v4}, Lcom/connectsdk/service/netcast/NetcastPOSTRequestParser;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/connectsdk/service/netcast/NetcastChannelParser;->parseRawChannelData(Lorg/json/JSONObject;)Lcom/connectsdk/core/ChannelInfo;

    move-result-object v2

    .line 53
    sget-object v3, Lcom/connectsdk/core/Util;->T:Ljava/lang/String;

    const-string v4, "Channel Changed: "

    invoke-static {v4}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/connectsdk/core/ChannelInfo;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v3, p0, Lcom/connectsdk/service/netcast/NetcastHttpServer;->subscriptions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/connectsdk/service/command/URLServiceSubscription;

    .line 55
    invoke-virtual {v4}, Lcom/connectsdk/service/command/ServiceCommand;->getTarget()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x0

    .line 56
    :goto_8
    invoke-virtual {v4}, Lcom/connectsdk/service/command/URLServiceSubscription;->getListeners()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 57
    invoke-virtual {v4}, Lcom/connectsdk/service/command/URLServiceSubscription;->getListeners()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/connectsdk/service/capability/listeners/ResponseListener;

    .line 58
    invoke-static {v6, v2}, Lcom/connectsdk/core/Util;->postSuccess(Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_7
    const-string v1, "KeyboardVisible"

    .line 59
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 60
    new-instance v2, Lcom/connectsdk/core/TextInputStatusInfo;

    invoke-direct {v2}, Lcom/connectsdk/core/TextInputStatusInfo;-><init>()V

    .line 61
    invoke-virtual {v4}, Lcom/connectsdk/service/netcast/NetcastPOSTRequestParser;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/connectsdk/core/TextInputStatusInfo;->setRawData(Lorg/json/JSONObject;)V

    .line 62
    :try_start_b
    invoke-virtual {v4}, Lcom/connectsdk/service/netcast/NetcastPOSTRequestParser;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "currentWidget"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const-string v4, "focus"

    .line 63
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_b

    .line 64
    :try_start_c
    invoke-virtual {v2, v3}, Lcom/connectsdk/core/TextInputStatusInfo;->setFocused(Z)V
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_a

    goto :goto_a

    :catch_a
    move-exception v4

    goto :goto_9

    :catch_b
    move-exception v3

    move-object v4, v3

    const/4 v3, 0x0

    .line 65
    :goto_9
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 66
    :goto_a
    sget-object v4, Lcom/connectsdk/core/Util;->T:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KeyboardFocused?: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v3, p0, Lcom/connectsdk/service/netcast/NetcastHttpServer;->subscriptions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/connectsdk/service/command/URLServiceSubscription;

    .line 68
    invoke-virtual {v4}, Lcom/connectsdk/service/command/ServiceCommand;->getTarget()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x0

    .line 69
    :goto_b
    invoke-virtual {v4}, Lcom/connectsdk/service/command/URLServiceSubscription;->getListeners()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_8

    .line 70
    invoke-virtual {v4}, Lcom/connectsdk/service/command/URLServiceSubscription;->getListeners()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/connectsdk/service/capability/listeners/ResponseListener;

    .line 71
    invoke-static {v6, v2}, Lcom/connectsdk/core/Util;->postSuccess(Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_9
    const-string v1, "TextEdited"

    .line 72
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v5, "value"

    if-eqz v3, :cond_a

    .line 73
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 74
    :try_start_d
    invoke-virtual {v4}, Lcom/connectsdk/service/netcast/NetcastPOSTRequestParser;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_c

    goto :goto_c

    :catch_c
    move-exception v1

    .line 75
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v1, v0

    .line 76
    :goto_c
    iget-object v2, p0, Lcom/connectsdk/service/netcast/NetcastHttpServer;->textChangedListener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    invoke-static {v2, v1}, Lcom/connectsdk/core/Util;->postSuccess(Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    const-string v1, "3DMode"

    .line 77
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    :try_start_e
    invoke-virtual {v4}, Lcom/connectsdk/service/netcast/NetcastPOSTRequestParser;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "true"

    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 80
    iget-object v3, p0, Lcom/connectsdk/service/netcast/NetcastHttpServer;->subscriptions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/connectsdk/service/command/URLServiceSubscription;

    .line 81
    invoke-virtual {v4}, Lcom/connectsdk/service/command/ServiceCommand;->getTarget()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, 0x0

    .line 82
    :goto_d
    invoke-virtual {v4}, Lcom/connectsdk/service/command/URLServiceSubscription;->getListeners()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_b

    .line 83
    invoke-virtual {v4}, Lcom/connectsdk/service/command/URLServiceSubscription;->getListeners()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/connectsdk/service/capability/listeners/ResponseListener;

    .line 84
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/connectsdk/core/Util;->postSuccess(Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_d

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :catch_d
    move-exception v1

    .line 85
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    move-object v3, v8

    .line 86
    :goto_e
    :try_start_f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 87
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 88
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V

    .line 89
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_e

    goto :goto_f

    :catch_e
    move-exception v1

    .line 90
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 91
    :goto_f
    throw v0

    :catch_f
    move-exception v0

    .line 92
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 93
    invoke-virtual {p0}, Lcom/connectsdk/service/netcast/NetcastHttpServer;->stop()V

    return-void

    .line 94
    :cond_c
    :goto_10
    invoke-virtual {p0}, Lcom/connectsdk/service/netcast/NetcastHttpServer;->stop()V

    :cond_d
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/connectsdk/service/netcast/NetcastHttpServer;->running:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/connectsdk/service/netcast/NetcastHttpServer;->welcomeSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/connectsdk/service/netcast/NetcastHttpServer;->welcomeSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/connectsdk/service/netcast/NetcastHttpServer;->welcomeSocket:Ljava/net/ServerSocket;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/connectsdk/service/netcast/NetcastHttpServer;->running:Z

    return-void
.end method
