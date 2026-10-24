.class public final Lcom/shabakaty/downloader/g74$a;
.super Ljava/lang/Object;
.source "SingleAccountScheme.kt"

# interfaces
.implements Lcom/shabakaty/downloader/j2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/g74;->clearExistingAccounts()Lcom/shabakaty/downloader/q70;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/g74;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/g74;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/g74$a;->a:Lcom/shabakaty/downloader/g74;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/g74$a;->a:Lcom/shabakaty/downloader/g74;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/wi;->getManager()Landroid/accounts/AccountManager;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/g74$a;->a:Lcom/shabakaty/downloader/g74;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/wi;->provideAuthenticator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    const-string v1, "manager\n          .getAc\u2026e(provideAuthenticator())"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 4
    iget-object v4, p0, Lcom/shabakaty/downloader/g74$a;->a:Lcom/shabakaty/downloader/g74;

    invoke-virtual {v4}, Lcom/shabakaty/downloader/wi;->getManager()Landroid/accounts/AccountManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5, v5}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
