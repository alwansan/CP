.class public final Lcom/shabakaty/downloader/dw0;
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
.field public final synthetic r:Lcom/shabakaty/downloader/lo3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/lo3<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic s:Landroid/widget/EditText;

.field public final synthetic t:Lcom/shabakaty/downloader/ew0;

.field public final synthetic u:Lcom/shabakaty/downloader/gz0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/lo3;Landroid/widget/EditText;Lcom/shabakaty/downloader/ew0;Lcom/shabakaty/downloader/gz0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/lo3<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/widget/EditText;",
            "Lcom/shabakaty/downloader/ew0;",
            "Lcom/shabakaty/downloader/gz0;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/dw0;->r:Lcom/shabakaty/downloader/lo3;

    iput-object p2, p0, Lcom/shabakaty/downloader/dw0;->s:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/shabakaty/downloader/dw0;->t:Lcom/shabakaty/downloader/ew0;

    iput-object p4, p0, Lcom/shabakaty/downloader/dw0;->u:Lcom/shabakaty/downloader/gz0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/dw0;->r:Lcom/shabakaty/downloader/lo3;

    iget-object v1, p0, Lcom/shabakaty/downloader/dw0;->s:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/dw0;->t:Lcom/shabakaty/downloader/ew0;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/jz0;

    iget-object v1, p0, Lcom/shabakaty/downloader/dw0;->r:Lcom/shabakaty/downloader/lo3;

    iget-object v1, v1, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/shabakaty/downloader/dw0;->u:Lcom/shabakaty/downloader/gz0;

    const-string v3, "text"

    .line 3
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "downloadsCollectionItem"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xk;->e()Lcom/shabakaty/downloader/se0;

    move-result-object v4

    new-instance v7, Lcom/shabakaty/downloader/hz0;

    const/4 v3, 0x0

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/shabakaty/downloader/hz0;-><init>(Lcom/shabakaty/downloader/jz0;Ljava/lang/String;Lcom/shabakaty/downloader/gz0;Lcom/shabakaty/downloader/ud0;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/dw0;->t:Lcom/shabakaty/downloader/ew0;

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 7
    check-cast v0, Lcom/shabakaty/downloader/cj1;

    .line 8
    iget-object v0, v0, Lcom/shabakaty/downloader/cj1;->M:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$e;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    .line 9
    :goto_0
    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object v0
.end method
