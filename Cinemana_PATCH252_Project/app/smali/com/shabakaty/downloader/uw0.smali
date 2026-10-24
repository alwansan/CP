.class public final Lcom/shabakaty/downloader/uw0;
.super Lcom/shabakaty/downloader/af2;
.source "DownloadItemsFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/bx0;

.field public final synthetic s:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/bx0;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/uw0;->r:Lcom/shabakaty/downloader/bx0;

    iput-object p2, p0, Lcom/shabakaty/downloader/uw0;->s:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uw0;->r:Lcom/shabakaty/downloader/bx0;

    iget-object v1, p0, Lcom/shabakaty/downloader/uw0;->s:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    sget v2, Lcom/shabakaty/downloader/bx0;->z:I

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/lo3;

    invoke-direct {v2}, Lcom/shabakaty/downloader/lo3;-><init>()V

    .line 4
    new-instance v3, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    .line 5
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 6
    new-instance v5, Lcom/shabakaty/downloader/bn2;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/shabakaty/downloader/bn2;-><init>(Landroid/content/Context;)V

    const v6, 0x7f12008e

    .line 7
    invoke-virtual {v5, v6}, Lcom/shabakaty/downloader/bn2;->p(I)Lcom/shabakaty/downloader/bn2;

    .line 8
    invoke-virtual {v5, v3}, Lcom/shabakaty/downloader/bn2;->r(Landroid/view/View;)Lcom/shabakaty/downloader/bn2;

    move-result-object v5

    .line 9
    new-instance v6, Lcom/shabakaty/downloader/rw0;

    invoke-direct {v6, v3, v2, v0, v1}, Lcom/shabakaty/downloader/rw0;-><init>(Landroid/widget/EditText;Lcom/shabakaty/downloader/lo3;Lcom/shabakaty/downloader/bx0;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)V

    const v0, 0x7f1202a7

    invoke-virtual {v5, v0, v6}, Lcom/shabakaty/downloader/bn2;->n(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shabakaty/downloader/bn2;

    move-result-object v0

    const-string v1, "MaterialAlertDialogBuild\u2026\t\t\t)\n\t\t\t\t\t\t}\n\t\t\t\t\t}\n\t\t\t\t}"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 10
    invoke-static {v0, v1, v4}, Lcom/shabakaty/downloader/s45;->h(Lcom/shabakaty/downloader/bn2;Lcom/shabakaty/downloader/rm1;I)Lcom/shabakaty/downloader/bn2;

    .line 11
    invoke-virtual {v0}, Landroidx/appcompat/app/b$a;->j()Landroidx/appcompat/app/b;

    .line 12
    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object v0
.end method
