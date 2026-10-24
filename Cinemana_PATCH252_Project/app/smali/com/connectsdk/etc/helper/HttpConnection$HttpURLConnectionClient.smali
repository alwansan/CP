.class Lcom/connectsdk/etc/helper/HttpConnection$HttpURLConnectionClient;
.super Lcom/connectsdk/etc/helper/HttpConnection;
.source "HttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/connectsdk/etc/helper/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpURLConnectionClient"
.end annotation


# instance fields
.field private final connection:Ljava/net/HttpURLConnection;

.field private payload:[B

.field private response:Ljava/lang/String;

.field private responseCode:I


# direct methods
.method private constructor <init>(Ljava/net/URI;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/connectsdk/etc/helper/HttpConnection;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/URLConnection;

    check-cast p1, Ljava/net/HttpURLConnection;

    iput-object p1, p0, Lcom/connectsdk/etc/helper/HttpConnection$HttpURLConnectionClient;->connection:Ljava/net/HttpURLConnection;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/net/URI;Lcom/connectsdk/etc/helper/HttpConnection$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/connectsdk/etc/helper/HttpConnection$HttpURLConnectionClient;-><init>(Ljava/net/URI;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/connectsdk/etc/helper/HttpConnection$HttpURLConnectionClient;->payload:[B

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v1, p0, Lcom/connectsdk/etc/helper/HttpConnection$HttpURLConnectionClient;->connection:Ljava/net/HttpURLConnection;

    .line 3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 4
    iget-object v1, p0, Lcom/connectsdk/etc/helper/HttpConnection$HttpURLConnectionClient;->payload:[B

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 5
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 6
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/connectsdk/etc/helper/HttpConnection$HttpURLConnectionClient;->connection:Ljava/net/HttpURLConnection;

    .line 8
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/connectsdk/etc/helper/HttpConnection$HttpURLConnectionClient;->response:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :catch_0
    :try_start_2
    iget-object v0, p0, Lcom/connectsdk/etc/helper/HttpConnection$HttpURLConnectionClient;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcom/connectsdk/etc/helper/HttpConnection$HttpURLConnectionClient;->responseCode:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    iget-object v0, p0, Lcom/connectsdk/etc/helper/HttpConnection$HttpURLConnectionClient;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/connectsdk/etc/helper/HttpConnection$HttpURLConnectionClient;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 17
    throw v0
.end method

.method public getResponseCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/connectsdk/etc/helper/HttpConnection$HttpURLConnectionClient;->responseCode:I

    return v0
.end method

.method public getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/etc/helper/HttpConnection$HttpURLConnectionClient;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getResponseString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/etc/helper/HttpConnection$HttpURLConnectionClient;->response:Ljava/lang/String;

    return-object v0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/etc/helper/HttpConnection$HttpURLConnectionClient;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMethod(Lcom/connectsdk/etc/helper/HttpConnection$Method;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/etc/helper/HttpConnection$HttpURLConnectionClient;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-void
.end method

.method public setPayload(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/connectsdk/etc/helper/HttpConnection$HttpURLConnectionClient;->payload:[B

    .line 2
    iget-object p1, p0, Lcom/connectsdk/etc/helper/HttpConnection$HttpURLConnectionClient;->connection:Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    return-void
.end method

.method public setPayload([B)V
    .locals 1

    .line 3
    iput-object p1, p0, Lcom/connectsdk/etc/helper/HttpConnection$HttpURLConnectionClient;->payload:[B

    .line 4
    iget-object p1, p0, Lcom/connectsdk/etc/helper/HttpConnection$HttpURLConnectionClient;->connection:Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    return-void
.end method
