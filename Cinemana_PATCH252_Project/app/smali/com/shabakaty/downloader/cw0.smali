.class public final Lcom/shabakaty/downloader/cw0;
.super Lcom/shabakaty/downloader/af2;
.source "DownloadCollectionsFragment.kt"

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
.field public final synthetic r:Lcom/shabakaty/downloader/ew0;

.field public final synthetic s:Lcom/shabakaty/downloader/gz0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ew0;Lcom/shabakaty/downloader/gz0;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/cw0;->r:Lcom/shabakaty/downloader/ew0;

    iput-object p2, p0, Lcom/shabakaty/downloader/cw0;->s:Lcom/shabakaty/downloader/gz0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cw0;->r:Lcom/shabakaty/downloader/ew0;

    iget-object v1, p0, Lcom/shabakaty/downloader/cw0;->s:Lcom/shabakaty/downloader/gz0;

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

    .line 5
    iget-object v4, v1, Lcom/shabakaty/downloader/gz0;->s:Ljava/lang/String;

    .line 6
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x1

    .line 7
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 8
    new-instance v5, Lcom/shabakaty/downloader/bn2;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/shabakaty/downloader/bn2;-><init>(Landroid/content/Context;)V

    const v6, 0x7f12008e

    .line 9
    invoke-virtual {v5, v6}, Lcom/shabakaty/downloader/bn2;->p(I)Lcom/shabakaty/downloader/bn2;

    .line 10
    invoke-virtual {v5, v3}, Lcom/shabakaty/downloader/bn2;->r(Landroid/view/View;)Lcom/shabakaty/downloader/bn2;

    move-result-object v5

    const-string v6, "MaterialAlertDialogBuild\u2026_txt)\n\t\t\t\t.setView(input)"

    invoke-static {v5, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v6, Lcom/shabakaty/downloader/dw0;

    invoke-direct {v6, v2, v3, v0, v1}, Lcom/shabakaty/downloader/dw0;-><init>(Lcom/shabakaty/downloader/lo3;Landroid/widget/EditText;Lcom/shabakaty/downloader/ew0;Lcom/shabakaty/downloader/gz0;)V

    invoke-static {v5, v6}, Lcom/shabakaty/downloader/s45;->k(Lcom/shabakaty/downloader/bn2;Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/bn2;

    const/4 v0, 0x0

    .line 12
    invoke-static {v5, v0, v4}, Lcom/shabakaty/downloader/s45;->h(Lcom/shabakaty/downloader/bn2;Lcom/shabakaty/downloader/rm1;I)Lcom/shabakaty/downloader/bn2;

    .line 13
    invoke-virtual {v5}, Landroidx/appcompat/app/b$a;->j()Landroidx/appcompat/app/b;

    .line 14
    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object v0
.end method
