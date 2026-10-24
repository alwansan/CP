.class public final Lcom/shabakaty/downloader/vx4$a;
.super Lcom/shabakaty/downloader/af2;
.source "UserListDetailsFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/vx4;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Landroidx/recyclerview/widget/n;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/vx4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vx4;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/vx4$a;->r:Lcom/shabakaty/downloader/vx4;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/n;

    new-instance v1, Lcom/shabakaty/downloader/s52;

    iget-object v2, p0, Lcom/shabakaty/downloader/vx4$a;->r:Lcom/shabakaty/downloader/vx4;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext()"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/shabakaty/downloader/ux4;

    iget-object v4, p0, Lcom/shabakaty/downloader/vx4$a;->r:Lcom/shabakaty/downloader/vx4;

    invoke-direct {v3, v4}, Lcom/shabakaty/downloader/ux4;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2, v3}, Lcom/shabakaty/downloader/s52;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/tm1;)V

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/n;-><init>(Landroidx/recyclerview/widget/n$d;)V

    return-object v0
.end method
