.class public final Lcom/shabakaty/downloader/jb$a;
.super Lcom/shabakaty/downloader/af2;
.source "AppSettingsFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/jb;->Z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/hn1<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/jb;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/jb;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/jb$a;->r:Lcom/shabakaty/downloader/jb;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 2
    iget-object p2, p0, Lcom/shabakaty/downloader/jb$a;->r:Lcom/shabakaty/downloader/jb;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/rb;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/ob;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lcom/shabakaty/downloader/ob;-><init>(Lcom/shabakaty/downloader/rb;ILcom/shabakaty/downloader/ud0;)V

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/xk;->h(Lcom/shabakaty/downloader/hn1;)Lcom/shabakaty/downloader/e92;

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/jb$a;->r:Lcom/shabakaty/downloader/jb;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 6
    check-cast p1, Lcom/shabakaty/downloader/ki1;

    .line 7
    iget-object p1, p1, Lcom/shabakaty/downloader/ki1;->S:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/shabakaty/downloader/jb$a;->r:Lcom/shabakaty/downloader/jb;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f100005

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/jb$a;->r:Lcom/shabakaty/downloader/jb;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/rb;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/rb;->l()I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 9
    iget-object v4, p0, Lcom/shabakaty/downloader/jb$a;->r:Lcom/shabakaty/downloader/jb;

    invoke-virtual {v4}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/rb;

    invoke-virtual {v4}, Lcom/shabakaty/downloader/rb;->l()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 10
    invoke-virtual {p2, v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
