.class public final Lcom/shabakaty/downloader/wi$b;
.super Ljava/lang/Object;
.source "BaseAccountScheme.kt"

# interfaces
.implements Lcom/shabakaty/downloader/j2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/wi;->saveAccount(Ljava/lang/String;)Lcom/shabakaty/downloader/q70;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/wi;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wi;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/wi$b;->a:Lcom/shabakaty/downloader/wi;

    iput-object p2, p0, Lcom/shabakaty/downloader/wi$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    new-instance v0, Landroid/accounts/Account;

    iget-object v1, p0, Lcom/shabakaty/downloader/wi$b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/shabakaty/downloader/wi$b;->a:Lcom/shabakaty/downloader/wi;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/wi;->provideAuthenticator()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/wi$b;->a:Lcom/shabakaty/downloader/wi;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/wi;->getManager()Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    return-void
.end method
