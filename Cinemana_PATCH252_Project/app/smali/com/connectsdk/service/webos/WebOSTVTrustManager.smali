.class public Lcom/connectsdk/service/webos/WebOSTVTrustManager;
.super Ljava/lang/Object;
.source "WebOSTVTrustManager.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field public expectedCert:Ljava/security/cert/X509Certificate;

.field public lastCheckedCert:Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object p2, Lcom/connectsdk/core/Util;->T:Ljava/lang/String;

    const-string v0, "Expecting device cert "

    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/connectsdk/service/webos/WebOSTVTrustManager;->expectedCert:Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "(any)"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    .line 2
    array-length p2, p1

    if-lez p2, :cond_3

    const/4 p2, 0x0

    .line 3
    aget-object p1, p1, p2

    .line 4
    iput-object p1, p0, Lcom/connectsdk/service/webos/WebOSTVTrustManager;->lastCheckedCert:Ljava/security/cert/X509Certificate;

    .line 5
    iget-object p2, p0, Lcom/connectsdk/service/webos/WebOSTVTrustManager;->expectedCert:Ljava/security/cert/X509Certificate;

    if-eqz p2, :cond_2

    .line 6
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p2

    .line 7
    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVTrustManager;->expectedCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    .line 8
    sget-object v1, Lcom/connectsdk/core/Util;->T:Ljava/lang/String;

    const-string v2, "Device presented cert "

    invoke-static {v2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "certificate does not match"

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/connectsdk/service/webos/WebOSTVTrustManager;->lastCheckedCert:Ljava/security/cert/X509Certificate;

    .line 12
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "no server certificate"

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getLastCheckedCertificate()Ljava/security/cert/X509Certificate;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVTrustManager;->lastCheckedCert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public setExpectedCertificate(Ljava/security/cert/X509Certificate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/webos/WebOSTVTrustManager;->expectedCert:Ljava/security/cert/X509Certificate;

    return-void
.end method
