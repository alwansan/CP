.class public final synthetic Lcom/shabakaty/downloader/sf4;
.super Lcom/shabakaty/downloader/co1;
.source "SubscriptionsFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/co1;",
        "Lcom/shabakaty/downloader/tm1<",
        "Ljava/lang/Integer;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/shabakaty/downloader/tf4;

    const/4 v1, 0x1

    const-string v4, "showUnsubDialog"

    const-string v5, "showUnsubDialog(I)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/co1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/uq;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/tf4;

    sget v1, Lcom/shabakaty/downloader/tf4;->z:I

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/yf4;

    .line 4
    iget-object v1, v1, Lcom/shabakaty/downloader/yf4;->g:Lcom/shabakaty/downloader/mj;

    .line 5
    invoke-static {v1, p1}, Lcom/shabakaty/downloader/zi2;->b(Lcom/shabakaty/downloader/mj;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v2, Lcom/shabakaty/downloader/bn2;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/bn2;-><init>(Landroid/content/Context;)V

    const v3, 0x7f1202be

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 7
    invoke-virtual {v1}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->c()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/bn2;->q(Ljava/lang/CharSequence;)Lcom/shabakaty/downloader/bn2;

    move-result-object v2

    .line 8
    new-instance v3, Lcom/shabakaty/downloader/rf4;

    invoke-direct {v3, v0, p1}, Lcom/shabakaty/downloader/rf4;-><init>(Lcom/shabakaty/downloader/tf4;I)V

    .line 9
    iget-object p1, v2, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v3, p1, Landroidx/appcompat/app/AlertController$b;->n:Landroid/content/DialogInterface$OnDismissListener;

    .line 10
    new-instance p1, Lcom/shabakaty/downloader/uf4;

    invoke-direct {p1, v0, v1}, Lcom/shabakaty/downloader/uf4;-><init>(Lcom/shabakaty/downloader/tf4;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V

    invoke-static {v2, p1}, Lcom/shabakaty/downloader/s45;->k(Lcom/shabakaty/downloader/bn2;Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/bn2;

    .line 11
    new-instance p1, Lcom/shabakaty/downloader/vf4;

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/vf4;-><init>(Lcom/shabakaty/downloader/tf4;)V

    invoke-static {v2, p1}, Lcom/shabakaty/downloader/s45;->g(Lcom/shabakaty/downloader/bn2;Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/bn2;

    .line 12
    invoke-virtual {v2}, Landroidx/appcompat/app/b$a;->j()Landroidx/appcompat/app/b;

    .line 13
    :goto_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
