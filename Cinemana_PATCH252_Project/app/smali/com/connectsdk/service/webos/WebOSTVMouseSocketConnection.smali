.class public Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;
.super Ljava/lang/Object;
.source "WebOSTVMouseSocketConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection$ButtonType;,
        Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection$WebOSTVMouseSocketListener;
    }
.end annotation


# instance fields
.field public customTrustManager:Lcom/connectsdk/service/webos/WebOSTVTrustManager;

.field public listener:Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection$WebOSTVMouseSocketListener;

.field public socketPath:Ljava/lang/String;

.field public ws:Lcom/shabakaty/downloader/w55;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection$WebOSTVMouseSocketListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "got socketPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PtrAndKeyboardFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iput-object p2, p0, Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;->listener:Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection$WebOSTVMouseSocketListener;

    .line 4
    iput-object p1, p0, Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;->socketPath:Ljava/lang/String;

    .line 5
    :try_start_0
    new-instance p1, Ljava/net/URI;

    iget-object p2, p0, Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;->socketPath:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;->connectPointer(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/net/URISyntaxException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public button(Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection$ButtonType;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection$2;->$SwitchMap$com$connectsdk$service$webos$WebOSTVMouseSocketConnection$ButtonType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const-string p1, "NONE"

    goto :goto_0

    :pswitch_0
    const-string p1, "RIGHT"

    goto :goto_0

    :pswitch_1
    const-string p1, "LEFT"

    goto :goto_0

    :pswitch_2
    const-string p1, "DOWN"

    goto :goto_0

    :pswitch_3
    const-string p1, "UP"

    goto :goto_0

    :pswitch_4
    const-string p1, "BACK"

    goto :goto_0

    :pswitch_5
    const-string p1, "HOME"

    .line 2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;->button(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public button(Ljava/lang/String;)V
    .locals 3

    .line 3
    invoke-virtual {p0}, Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;->ws:Lcom/shabakaty/downloader/w55;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type:button\nname:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/w55;->send(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public click()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;->ws:Lcom/shabakaty/downloader/w55;

    const-string v1, "type:click\n\n"

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/w55;->send(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public connectPointer(Ljava/net/URI;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;->ws:Lcom/shabakaty/downloader/w55;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/w55;->close()V

    .line 3
    iput-object v1, p0, Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;->ws:Lcom/shabakaty/downloader/w55;

    .line 4
    :cond_0
    new-instance v0, Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection$1;

    invoke-direct {v0, p0, p1}, Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection$1;-><init>(Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;Ljava/net/URI;)V

    iput-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;->ws:Lcom/shabakaty/downloader/w55;

    :try_start_0
    const-string p1, "TLS"

    .line 5
    invoke-static {p1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p1

    .line 6
    new-instance v0, Lcom/connectsdk/service/webos/WebOSTVTrustManager;

    invoke-direct {v0}, Lcom/connectsdk/service/webos/WebOSTVTrustManager;-><init>()V

    iput-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;->customTrustManager:Lcom/connectsdk/service/webos/WebOSTVTrustManager;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/connectsdk/service/webos/WebOSTVTrustManager;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 7
    invoke-virtual {p1, v1, v2, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 8
    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;->ws:Lcom/shabakaty/downloader/w55;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/w55;->setSocket(Ljava/net/Socket;)V

    .line 9
    iget-object p1, p0, Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;->ws:Lcom/shabakaty/downloader/w55;

    invoke-virtual {p1, v3}, Lcom/shabakaty/downloader/r1;->setConnectionLostTimeout(I)V
    :try_end_0
    .catch Ljava/security/KeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/security/KeyException;->printStackTrace()V

    .line 14
    :goto_0
    iget-object p1, p0, Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;->ws:Lcom/shabakaty/downloader/w55;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/w55;->connect()V

    return-void
.end method

.method public disconnect()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;->ws:Lcom/shabakaty/downloader/w55;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/w55;->close()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;->ws:Lcom/shabakaty/downloader/w55;

    :cond_0
    return-void
.end method

.method public isConnected()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/u55$a;->t:Lcom/shabakaty/downloader/u55$a;

    iget-object v1, p0, Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;->ws:Lcom/shabakaty/downloader/w55;

    if-nez v1, :cond_0

    .line 2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "ws is null"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1}, Lcom/shabakaty/downloader/w55;->getReadyState()Lcom/shabakaty/downloader/u55$a;

    move-result-object v1

    if-eq v1, v0, :cond_1

    .line 4
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "ws state is not ready"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;->ws:Lcom/shabakaty/downloader/w55;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/shabakaty/downloader/w55;->getReadyState()Lcom/shabakaty/downloader/u55$a;

    move-result-object v1

    if-ne v1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public move(DD)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;->ws:Lcom/shabakaty/downloader/w55;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type:move\ndx:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, "\ndy:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, "\ndown:0\n\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/w55;->send(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public move(DDZ)V
    .locals 3

    .line 3
    invoke-virtual {p0}, Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;->ws:Lcom/shabakaty/downloader/w55;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type:move\ndx:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, "\ndy:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, "\ndown:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\n\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/w55;->send(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public scroll(DD)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;->ws:Lcom/shabakaty/downloader/w55;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type:scroll\ndx:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, "\ndy:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, "\n\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/w55;->send(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
