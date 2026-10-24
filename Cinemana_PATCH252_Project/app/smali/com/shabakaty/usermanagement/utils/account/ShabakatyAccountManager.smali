.class public Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;
.super Lcom/shabakaty/usermanagement/data/model/UserScheme;
.source "ShabakatyAccountManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0017\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0006\u001a\u00020\u0004J\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0000R\u0019\u0010\t\u001a\u00020\u00088\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;",
        "Lcom/shabakaty/usermanagement/data/model/UserScheme;",
        "",
        "provideAuthenticator",
        "",
        "containsAccessToken",
        "hasAccount",
        "safeAccess",
        "Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;",
        "configuration",
        "Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;",
        "getConfiguration",
        "()Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;)V",
        "usermanagement_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field public final configuration:Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;->configuration:Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;

    return-void
.end method


# virtual methods
.method public final containsAccessToken()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/g74;->retrieveNullableAccount()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/ne4;->D(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasAccount()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/g74;->retrieveNullableAccount()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public provideAuthenticator()Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;->configuration:Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;->getClientInformation()Lcom/shabakaty/usermanagement/data/model/ClientInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/ClientInformation;->getAccountName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "."

    .line 2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    const-string v2, "com.shabakaty.usermanagement"

    const/4 v3, 0x0

    invoke-static {v2, v0, v3, v3, v1}, Lcom/shabakaty/downloader/re4;->e0(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/m50;->W(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const-string v3, "."

    .line 4
    invoke-static/range {v2 .. v9}, Lcom/shabakaty/downloader/m50;->g0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lcom/shabakaty/downloader/tm1;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final safeAccess()Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
