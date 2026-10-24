.class public final Lcom/shabakaty/downloader/bw0;
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

    iput-object p1, p0, Lcom/shabakaty/downloader/bw0;->r:Lcom/shabakaty/downloader/ew0;

    iput-object p2, p0, Lcom/shabakaty/downloader/bw0;->s:Lcom/shabakaty/downloader/gz0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/bw0;->r:Lcom/shabakaty/downloader/ew0;

    iget-object v1, p0, Lcom/shabakaty/downloader/bw0;->s:Lcom/shabakaty/downloader/gz0;

    .line 2
    new-instance v2, Lcom/shabakaty/downloader/bn2;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/bn2;-><init>(Landroid/content/Context;)V

    const v3, 0x7f1200d1

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/bn2;->p(I)Lcom/shabakaty/downloader/bn2;

    const v3, 0x7f1201aa

    .line 3
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/bn2;->k(I)Lcom/shabakaty/downloader/bn2;

    .line 4
    new-instance v3, Lcom/shabakaty/downloader/qh0;

    invoke-direct {v3, v0, v1}, Lcom/shabakaty/downloader/qh0;-><init>(Lcom/shabakaty/downloader/ew0;Lcom/shabakaty/downloader/gz0;)V

    const v0, 0x7f1202bc

    invoke-virtual {v2, v0, v3}, Lcom/shabakaty/downloader/bn2;->n(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shabakaty/downloader/bn2;

    move-result-object v0

    .line 5
    sget-object v1, Lcom/shabakaty/downloader/rh0;->t:Lcom/shabakaty/downloader/rh0;

    const v2, 0x7f1202a6

    invoke-virtual {v0, v2, v1}, Lcom/shabakaty/downloader/bn2;->l(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shabakaty/downloader/bn2;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroidx/appcompat/app/b$a;->j()Landroidx/appcompat/app/b;

    .line 7
    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object v0
.end method
