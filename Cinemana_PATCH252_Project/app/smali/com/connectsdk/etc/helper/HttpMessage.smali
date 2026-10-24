.class public Lcom/connectsdk/etc/helper/HttpMessage;
.super Ljava/lang/Object;
.source "HttpMessage.java"


# static fields
.field public static final CONTENT_TYPE_APPLICATION_PLIST:Ljava/lang/String; = "application/x-apple-binary-plist"

.field public static final CONTENT_TYPE_HEADER:Ljava/lang/String; = "Content-Type"

.field public static final CONTENT_TYPE_TEXT_XML:Ljava/lang/String; = "text/xml; charset=utf-8"

.field public static final LG_ELECTRONICS:Ljava/lang/String; = "LG Electronics"

.field public static final NEW_LINE:Ljava/lang/String; = "\r\n"

.field public static final SOAP_ACTION:Ljava/lang/String; = "\"urn:schemas-upnp-org:service:AVTransport:1#%s\""

.field public static final SOAP_HEADER:Ljava/lang/String; = "Soapaction"

.field public static final UDAP_USER_AGENT:Ljava/lang/String; = "UDAP/2.0"

.field public static final USER_AGENT:Ljava/lang/String; = "User-Agent"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    .line 1
    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    .line 1
    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDLNAHttpPost(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;
    .locals 2

    const-string v0, "\"urn:schemas-upnp-org:service:AVTransport:1#"

    const-string v1, "\""

    .line 1
    invoke-static {v0, p1, v1}, Lcom/shabakaty/downloader/jp2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p0}, Lcom/connectsdk/etc/helper/HttpMessage;->getHttpPost(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object p0

    const-string v0, "Soapaction"

    .line 3
    invoke-virtual {p0, v0, p1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getDLNAHttpPostRenderControl(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;
    .locals 2

    const-string v0, "\"urn:schemas-upnp-org:service:RenderingControl:1#"

    const-string v1, "\""

    .line 1
    invoke-static {v0, p1, v1}, Lcom/shabakaty/downloader/jp2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p0}, Lcom/connectsdk/etc/helper/HttpMessage;->getHttpPost(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object p0

    const-string v0, "Soapaction"

    .line 3
    invoke-virtual {p0, v0, p1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getHttpDelete(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpDelete;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getHttpGet(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getHttpPost(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p0, "Content-Type"

    const-string v0, "text/xml; charset=utf-8"

    .line 2
    invoke-virtual {v1, p0, v0}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method public static getUDAPHttpGet(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/connectsdk/etc/helper/HttpMessage;->getHttpGet(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object p0

    const-string v0, "User-Agent"

    const-string v1, "UDAP/2.0"

    .line 2
    invoke-virtual {p0, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getUDAPHttpPost(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/connectsdk/etc/helper/HttpMessage;->getHttpPost(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object p0

    const-string v0, "User-Agent"

    const-string v1, "UDAP/2.0"

    .line 2
    invoke-virtual {p0, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
