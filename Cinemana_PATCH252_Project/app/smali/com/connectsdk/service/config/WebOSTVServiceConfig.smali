.class public Lcom/connectsdk/service/config/WebOSTVServiceConfig;
.super Lcom/connectsdk/service/config/ServiceConfig;
.source "WebOSTVServiceConfig.java"


# static fields
.field public static final KEY_CERT:Ljava/lang/String; = "serverCertificate"

.field public static final KEY_CLIENT_KEY:Ljava/lang/String; = "clientKey"


# instance fields
.field public cert:Ljava/security/cert/X509Certificate;

.field public clientKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/connectsdk/service/config/ServiceConfig;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/connectsdk/service/config/ServiceConfig;-><init>(Ljava/lang/String;)V

    .line 3
    iput-object p2, p0, Lcom/connectsdk/service/config/WebOSTVServiceConfig;->clientKey:Ljava/lang/String;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/connectsdk/service/config/WebOSTVServiceConfig;->cert:Ljava/security/cert/X509Certificate;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/connectsdk/service/config/ServiceConfig;-><init>(Ljava/lang/String;)V

    .line 9
    iput-object p2, p0, Lcom/connectsdk/service/config/WebOSTVServiceConfig;->clientKey:Ljava/lang/String;

    .line 10
    invoke-direct {p0, p3}, Lcom/connectsdk/service/config/WebOSTVServiceConfig;->loadCertificateFromPEM(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    iput-object p1, p0, Lcom/connectsdk/service/config/WebOSTVServiceConfig;->cert:Ljava/security/cert/X509Certificate;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/connectsdk/service/config/ServiceConfig;-><init>(Ljava/lang/String;)V

    .line 6
    iput-object p2, p0, Lcom/connectsdk/service/config/WebOSTVServiceConfig;->clientKey:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/connectsdk/service/config/WebOSTVServiceConfig;->cert:Ljava/security/cert/X509Certificate;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .line 11
    invoke-direct {p0, p1}, Lcom/connectsdk/service/config/ServiceConfig;-><init>(Lorg/json/JSONObject;)V

    const-string v0, "clientKey"

    .line 12
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/connectsdk/service/config/WebOSTVServiceConfig;->clientKey:Ljava/lang/String;

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/connectsdk/service/config/WebOSTVServiceConfig;->cert:Ljava/security/cert/X509Certificate;

    return-void
.end method

.method private exportCertificateToPEM(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/security/cert/CertificateEncodingException;->printStackTrace()V

    return-object v0
.end method

.method private loadCertificateFromPEM(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 3

    :try_start_0
    const-string v0, "X.509"

    .line 1
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/ByteArrayInputStream;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 3
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getClientKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/config/WebOSTVServiceConfig;->clientKey:Ljava/lang/String;

    return-object v0
.end method

.method public getServerCertificate()Ljava/security/cert/X509Certificate;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/config/WebOSTVServiceConfig;->cert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getServerCertificateInString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/config/WebOSTVServiceConfig;->cert:Ljava/security/cert/X509Certificate;

    invoke-direct {p0, v0}, Lcom/connectsdk/service/config/WebOSTVServiceConfig;->exportCertificateToPEM(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setClientKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/config/WebOSTVServiceConfig;->clientKey:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/connectsdk/service/config/ServiceConfig;->notifyUpdate()V

    return-void
.end method

.method public setServerCertificate(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/connectsdk/service/config/WebOSTVServiceConfig;->loadCertificateFromPEM(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    iput-object p1, p0, Lcom/connectsdk/service/config/WebOSTVServiceConfig;->cert:Ljava/security/cert/X509Certificate;

    .line 4
    invoke-virtual {p0}, Lcom/connectsdk/service/config/ServiceConfig;->notifyUpdate()V

    return-void
.end method

.method public setServerCertificate(Ljava/security/cert/X509Certificate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/config/WebOSTVServiceConfig;->cert:Ljava/security/cert/X509Certificate;

    .line 2
    invoke-virtual {p0}, Lcom/connectsdk/service/config/ServiceConfig;->notifyUpdate()V

    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/connectsdk/service/config/ServiceConfig;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    const-string v1, "clientKey"

    .line 2
    iget-object v2, p0, Lcom/connectsdk/service/config/WebOSTVServiceConfig;->clientKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "serverCertificate"

    .line 3
    iget-object v2, p0, Lcom/connectsdk/service/config/WebOSTVServiceConfig;->cert:Ljava/security/cert/X509Certificate;

    invoke-direct {p0, v2}, Lcom/connectsdk/service/config/WebOSTVServiceConfig;->exportCertificateToPEM(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method
