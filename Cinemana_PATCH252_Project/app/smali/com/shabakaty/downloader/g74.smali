.class public abstract Lcom/shabakaty/downloader/g74;
.super Lcom/shabakaty/downloader/wi;
.source "SingleAccountScheme.kt"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/wi;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final clearExistingAccounts()Lcom/shabakaty/downloader/q70;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/g74$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/g74$a;-><init>(Lcom/shabakaty/downloader/g74;)V

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/s70;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/s70;-><init>(Lcom/shabakaty/downloader/j2;)V

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/ay3;->c:Lcom/shabakaty/downloader/wx3;

    .line 4
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/q70;->g(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/q70;

    move-result-object v0

    return-object v0
.end method

.method public removeAccount()Lcom/shabakaty/downloader/q70;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/g74;->clearExistingAccounts()Lcom/shabakaty/downloader/q70;

    move-result-object v0

    return-object v0
.end method

.method public final retrieveAccount()Landroid/accounts/Account;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wi;->getManager()Landroid/accounts/AccountManager;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wi;->provideAuthenticator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    const-string v1, "manager\n      .getAccoun\u2026e(provideAuthenticator())"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/id;->R([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    if-eqz v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Account does not exist."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final retrieveNullableAccount()Landroid/accounts/Account;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wi;->getManager()Landroid/accounts/AccountManager;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wi;->provideAuthenticator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    const-string v1, "manager\n      .getAccoun\u2026e(provideAuthenticator())"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/id;->R([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    return-object v0
.end method

.method public saveAccount(Ljava/lang/String;)Lcom/shabakaty/downloader/q70;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/g74;->clearExistingAccounts()Lcom/shabakaty/downloader/q70;

    move-result-object v0

    .line 2
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/wi;->saveAccount(Ljava/lang/String;)Lcom/shabakaty/downloader/q70;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/q70;->b(Lcom/shabakaty/downloader/c80;)Lcom/shabakaty/downloader/q70;

    move-result-object p1

    return-object p1
.end method
