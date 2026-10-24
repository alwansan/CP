.class public final Lcom/shabakaty/downloader/zo0;
.super Landroidx/recyclerview/widget/RecyclerView$e;
.source "DefaultSpinnerAdapter.kt"

# interfaces
.implements Lcom/shabakaty/downloader/oe3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/zo0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$e<",
        "Lcom/shabakaty/downloader/zo0$a;",
        ">;",
        "Lcom/shabakaty/downloader/oe3<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public final b:Lcom/skydoves/powerspinner/PowerSpinnerView;

.field public c:Lcom/shabakaty/downloader/x63;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/x63<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
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

    iput v0, p0, Lcom/shabakaty/downloader/zo0;->a:I

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/zo0;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/zo0;->d:Ljava/util/List;

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
    iget v1, p0, Lcom/shabakaty/downloader/zo0;->a:I

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/zo0;->a:I

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/zo0;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 4
    iget-object v3, p0, Lcom/shabakaty/downloader/zo0;->d:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, p1, v3}, Lcom/skydoves/powerspinner/PowerSpinnerView;->g(ILjava/lang/CharSequence;)V

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/zo0;->c:Lcom/shabakaty/downloader/x63;

    if-eqz v2, :cond_4

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-eq v4, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v3, v4

    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    iget-object v0, p0, Lcom/shabakaty/downloader/zo0;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/shabakaty/downloader/zo0;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 8
    invoke-interface {v2, v1, v4, p1, v0}, Lcom/shabakaty/downloader/x63;->a(ILjava/lang/Object;ILjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public d(Lcom/shabakaty/downloader/x63;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/x63<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/zo0;->c:Lcom/shabakaty/downloader/x63;

    return-void
.end method

.method public e(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zo0;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/zo0;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zo0;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 3

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/zo0$a;

    const-string v0, "holder"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/zo0;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/zo0;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    const-string v1, "item"

    .line 5
    invoke-static {p2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "spinnerView"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v1, p1, Lcom/shabakaty/downloader/zo0$a;->a:Lcom/shabakaty/downloader/qz2;

    iget-object v1, v1, Lcom/shabakaty/downloader/qz2;->t:Ljava/lang/Object;

    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 7
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 9
    invoke-virtual {v0}, Landroid/widget/TextView;->getGravity()I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 10
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result p2

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 11
    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    iget-object p1, p1, Lcom/shabakaty/downloader/zo0$a;->a:Lcom/shabakaty/downloader/qz2;

    .line 13
    iget-object p1, p1, Lcom/shabakaty/downloader/qz2;->s:Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 14
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result p2

    .line 15
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    .line 16
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    .line 17
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v0

    .line 18
    invoke-virtual {p1, p2, v1, v2, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 2

    const-string p2, "parent"

    .line 1
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    .line 3
    invoke-static {p2, p1, v0}, Lcom/shabakaty/downloader/qz2;->j(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shabakaty/downloader/qz2;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/shabakaty/downloader/zo0$a;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/zo0$a;-><init>(Lcom/shabakaty/downloader/qz2;)V

    .line 5
    iget-object v0, p1, Lcom/shabakaty/downloader/qz2;->s:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 6
    new-instance v1, Lcom/shabakaty/downloader/ap0;

    invoke-direct {v1, p2, p0, p1}, Lcom/shabakaty/downloader/ap0;-><init>(Lcom/shabakaty/downloader/zo0$a;Lcom/shabakaty/downloader/zo0;Lcom/shabakaty/downloader/qz2;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
