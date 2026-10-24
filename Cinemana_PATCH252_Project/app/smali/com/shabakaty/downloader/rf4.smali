.class public final synthetic Lcom/shabakaty/downloader/rf4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Ljava/lang/Object;

.field public final synthetic t:I


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/tf4;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/rf4;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/rf4;->s:Ljava/lang/Object;

    iput p2, p0, Lcom/shabakaty/downloader/rf4;->t:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/vx4;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/rf4;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/rf4;->s:Ljava/lang/Object;

    iput p2, p0, Lcom/shabakaty/downloader/rf4;->t:I

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget p1, p0, Lcom/shabakaty/downloader/rf4;->r:I

    const-string v0, "this$0"

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/shabakaty/downloader/rf4;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/tf4;

    iget v1, p0, Lcom/shabakaty/downloader/rf4;->t:I

    sget v2, Lcom/shabakaty/downloader/tf4;->z:I

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 3
    check-cast p1, Lcom/shabakaty/downloader/uk1;

    iget-object p1, p1, Lcom/shabakaty/downloader/uk1;->O:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$e;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyItemChanged(I)V

    :goto_0
    return-void

    .line 4
    :goto_1
    iget-object p1, p0, Lcom/shabakaty/downloader/rf4;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/vx4;

    iget v1, p0, Lcom/shabakaty/downloader/rf4;->t:I

    sget v2, Lcom/shabakaty/downloader/vx4;->y:I

    .line 5
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object p1, p1, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 7
    check-cast p1, Lcom/shabakaty/downloader/fl1;

    iget-object p1, p1, Lcom/shabakaty/downloader/fl1;->P:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    invoke-virtual {p1}, Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;->getBinding()Lcom/shabakaty/downloader/i65;

    move-result-object p1

    iget-object p1, p1, Lcom/shabakaty/downloader/i65;->N:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$e;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyItemChanged(I)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
