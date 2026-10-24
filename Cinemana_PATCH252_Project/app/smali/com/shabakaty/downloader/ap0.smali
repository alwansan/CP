.class public final Lcom/shabakaty/downloader/ap0;
.super Ljava/lang/Object;
.source "DefaultSpinnerAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/zo0$a;

.field public final synthetic s:Lcom/shabakaty/downloader/zo0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/zo0$a;Lcom/shabakaty/downloader/zo0;Lcom/shabakaty/downloader/qz2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/ap0;->r:Lcom/shabakaty/downloader/zo0$a;

    iput-object p2, p0, Lcom/shabakaty/downloader/ap0;->s:Lcom/shabakaty/downloader/zo0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/ap0;->r:Lcom/shabakaty/downloader/zo0$a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ap0;->s:Lcom/shabakaty/downloader/zo0;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/zo0;->c(I)V

    :cond_2
    return-void
.end method
