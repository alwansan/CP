.class public final Lcom/shabakaty/downloader/tf4$a;
.super Lcom/shabakaty/downloader/af2;
.source "SubscriptionsFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/tf4;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/s52;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/tf4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/tf4;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/tf4$a;->r:Lcom/shabakaty/downloader/tf4;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/s52;

    iget-object v1, p0, Lcom/shabakaty/downloader/tf4$a;->r:Lcom/shabakaty/downloader/tf4;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/shabakaty/downloader/sf4;

    iget-object v3, p0, Lcom/shabakaty/downloader/tf4$a;->r:Lcom/shabakaty/downloader/tf4;

    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/sf4;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/s52;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/tm1;)V

    return-object v0
.end method
