.class public final Lcom/shabakaty/downloader/wi$a;
.super Lcom/shabakaty/downloader/af2;
.source "BaseAccountScheme.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/wi;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Landroid/accounts/AccountManager;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/wi;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wi;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/wi$a;->r:Lcom/shabakaty/downloader/wi;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wi$a;->r:Lcom/shabakaty/downloader/wi;

    invoke-static {v0}, Lcom/shabakaty/downloader/wi;->access$getContext$p(Lcom/shabakaty/downloader/wi;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    return-object v0
.end method
