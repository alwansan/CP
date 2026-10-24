.class public final Lcom/shabakaty/downloader/ch0;
.super Landroidx/recyclerview/widget/RecyclerView$e;
.source "CustomSpinnerAdapter.kt"

# interfaces
.implements Lcom/shabakaty/downloader/oe3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ch0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$e<",
        "Lcom/shabakaty/downloader/ch0$a<",
        "TT;>;>;",
        "Lcom/shabakaty/downloader/oe3<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:I

.field public final b:Lcom/skydoves/powerspinner/PowerSpinnerView;

.field public c:Lcom/shabakaty/downloader/x63;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/x63<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/skydoves/powerspinner/PowerSpinnerView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$e;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSelectedIndex()I

    move-result v0

    iput v0, p0, Lcom/shabakaty/downloader/ch0;->a:I

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/ch0;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ch0;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 5

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 1
    :cond_0
    iget v1, p0, Lcom/shabakaty/downloader/ch0;->a:I

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/ch0;->a:I

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/ch0;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 4
    iget-object v3, p0, Lcom/shabakaty/downloader/ch0;->d:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/skydoves/powerspinner/PowerSpinnerView;->g(ILjava/lang/CharSequence;)V

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/ch0;->c:Lcom/shabakaty/downloader/x63;

    if-nez v2, :cond_1

    goto :goto_3

    .line 6
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-eq v4, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v3, v4

    :goto_1
    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    iget-object v0, p0, Lcom/shabakaty/downloader/ch0;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 7
    :goto_2
    iget-object v0, p0, Lcom/shabakaty/downloader/ch0;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 8
    invoke-interface {v2, v1, v4, p1, v0}, Lcom/shabakaty/downloader/x63;->a(ILjava/lang/Object;ILjava/lang/Object;)V

    :goto_3
    return-void
.end method

.method public d(Lcom/shabakaty/downloader/x63;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/x63<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ch0;->c:Lcom/shabakaty/downloader/x63;

    return-void
.end method

.method public e(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ch0;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ch0;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ch0;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 5

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/ch0$a;

    const-string v0, "holder"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ch0;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/ch0;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    const-string v2, "spinnerView"

    .line 5
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 7
    iget-object v3, p1, Lcom/shabakaty/downloader/ch0$a;->a:Lcom/shabakaty/downloader/qz2;

    iget-object v3, v3, Lcom/shabakaty/downloader/qz2;->t:Ljava/lang/Object;

    check-cast v3, Landroidx/appcompat/widget/AppCompatTextView;

    .line 8
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 10
    invoke-virtual {v1}, Landroid/widget/TextView;->getGravity()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 11
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 12
    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    .line 14
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v1

    .line 15
    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 16
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v0, Lcom/shabakaty/downloader/bh0;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/bh0;-><init>(Lcom/shabakaty/downloader/ch0;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 1

    const-string p2, "parent"

    .line 1
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/shabakaty/downloader/qz2;->j(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shabakaty/downloader/qz2;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/shabakaty/downloader/ch0$a;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/ch0$a;-><init>(Lcom/shabakaty/downloader/qz2;)V

    return-object p2
.end method
