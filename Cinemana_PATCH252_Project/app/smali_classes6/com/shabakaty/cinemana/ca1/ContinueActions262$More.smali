.class final Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;
.super Ljava/lang/Object;
.source "ContinueActions262.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/ca1/ContinueActions262;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "More"
.end annotation


# instance fields
.field adapter:Ljava/lang/Object;

.field bar:Landroid/widget/LinearLayout;

.field count:Landroid/widget/TextView;

.field fallback:Landroid/widget/ImageButton;

.field menu:Landroid/view/Menu;

.field mode:Z

.field oldPadding:I

.field recycler:Landroid/view/View;

.field final root:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final selected:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->selected:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->root:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method attach()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->root:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_b

    return-void

    :cond_b
    const-string v1, "RecyclerView"

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->recycler:Landroid/view/View;

    if-eqz v1, :cond_da

    const-string v2, "getAdapter"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->adapter:Ljava/lang/Object;

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->recycler:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->oldPadding:I

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    const-string v2, "Toolbar"

    invoke-static {v1, v2}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_e2

    const-string v2, "\u062d\u0630\u0641 \u0645\u0646 \u0623\u0643\u0645\u0644 \u0627\u0644\u0645\u0634\u0627\u0647\u062f\u0629"

    const v4, 0x108003c

    if-eqz v1, :cond_65

    :try_start_39
    const-string v0, "getMenu"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v5}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Menu;

    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->menu:Landroid/view/Menu;

    const v1, 0x262106

    invoke-interface {v0, v1}, Landroid/view/Menu;->removeItem(I)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->menu:Landroid/view/Menu;

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    new-instance v1, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$1;

    invoke-direct {v1, p0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$1;-><init>(Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_d0

    :cond_65
    new-instance v1, Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->fallback:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->fallback:Landroid/widget/ImageButton;

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->fallback:Landroid/widget/ImageButton;

    const/16 v2, 0x1e

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->fallback:Landroid/widget/ImageButton;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0x30

    invoke-static {v5, v6}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->dp(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->dp(Landroid/content/Context;I)I

    move-result v7

    invoke-direct {v4, v5, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->fallback:Landroid/widget/ImageButton;

    new-instance v2, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$2;

    invoke-direct {v2, p0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$2;-><init>(Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->recycler:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget v4, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->oldPadding:I

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->dp(Landroid/content/Context;I)I

    move-result v0

    add-int/2addr v4, v0

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->recycler:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    iget-object v5, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->recycler:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v4, v0, v5}, Landroid/view/View;->setPadding(IIII)V

    :goto_d0
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->adapter:Ljava/lang/Object;

    const-string v1, "notifyDataSetChanged"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e8

    :cond_da
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing continue list"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_e2} :catch_e2

    :catch_e2
    move-exception v0

    const-string v1, "continue_more_toolbar262"

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_e8
    return-void
.end method

.method begin()V
    .locals 9

    iget-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->mode:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->confirm()V

    return-void

    :cond_8
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->root:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_114

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->recycler:Landroid/view/View;

    if-nez v1, :cond_1a

    goto/16 :goto_114

    :cond_1a
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->mode:Z

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->bar:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->bar:Landroid/widget/LinearLayout;

    const/16 v3, 0x23

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->count:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->count:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->bar:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->count:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->bar:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$3;

    invoke-direct {v4, p0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$3;-><init>(Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;)V

    const-string v5, "\u062a\u062d\u062f\u064a\u062f \u0627\u0644\u0643\u0644"

    invoke-virtual {p0, v2, v5, v4}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->button(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v4

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$4;

    invoke-direct {v4, p0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$4;-><init>(Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;)V

    const-string v5, "\u0625\u0644\u063a\u0627\u0621 \u062a\u062d\u062f\u064a\u062f \u0627\u0644\u0643\u0644"

    invoke-virtual {p0, v2, v5, v4}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->button(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v4

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$5;

    invoke-direct {v4, p0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$5;-><init>(Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;)V

    const-string v5, "\u062a\u062d\u062f\u064a\u062f \u0639\u0645\u0644"

    invoke-virtual {p0, v2, v5, v4}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->button(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v4

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->bar:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$6;

    invoke-direct {v4, p0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$6;-><init>(Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;)V

    const-string v5, "\u062a\u062d\u062f\u064a\u062f \u0645\u0648\u0633\u0645"

    invoke-virtual {p0, v2, v5, v4}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->button(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v4

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$7;

    invoke-direct {v4, p0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$7;-><init>(Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;)V

    const-string v5, "\u062a\u062d\u062f\u064a\u062f \u0646\u0637\u0627\u0642"

    invoke-virtual {p0, v2, v5, v4}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->button(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v4

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->bar:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$8;

    invoke-direct {v4, p0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$8;-><init>(Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;)V

    const-string v5, "\u062d\u0630\u0641 \u0627\u0644\u0645\u062d\u062f\u062f"

    invoke-virtual {p0, v2, v5, v4}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->button(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v4

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$9;

    invoke-direct {v4, p0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$9;-><init>(Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;)V

    const-string v5, "\u0625\u0644\u063a\u0627\u0621"

    invoke-virtual {p0, v2, v5, v4}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->button(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v2

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->bar:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->bar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->bringToFront()V

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->bar:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$10;

    invoke-direct {v1, p0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$10;-><init>(Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->update()V

    :cond_114
    :goto_114
    return-void
.end method

.method button(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;
    .locals 1

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41400000    # 12.0f

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextSize(F)V

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method chooseScope(Z)V
    .locals 7

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->items()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->access$200(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "season"

    invoke-static {v2, v4}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->access$100(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " \u2014 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\u0627\u0644\u0645\u0648\u0633\u0645"

    invoke-static {v6}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v4}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_63
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->root:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "\u0627\u062e\u062a\u0631 \u0627\u0644\u0639\u0645\u0644 \u0648\u0627\u0644\u0645\u0648\u0633\u0645"

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    new-instance v3, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$12;

    invoke-direct {v3, p0, v1, p1}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$12;-><init>(Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;Ljava/util/List;Z)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "\u0625\u0644\u063a\u0627\u0621"

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method chooseWork()V
    .locals 4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->items()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->access$200(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->access$100(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_23
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->root:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "\u062a\u062d\u062f\u064a\u062f \u0639\u0645\u0644"

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    new-instance v3, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$11;

    invoke-direct {v3, p0, v1}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$11;-><init>(Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;Ljava/util/List;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u0625\u0644\u063a\u0627\u0621"

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method confirm()V
    .locals 4

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->selected:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->selected:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->root:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u062d\u0630\u0641 \u0645\u0646 \u0623\u0643\u0645\u0644 \u0627\u0644\u0645\u0634\u0627\u0647\u062f\u0629"

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u062d\u0630\u0641 \u0627\u0644\u0639\u0646\u0627\u0635\u0631 \u0627\u0644\u0645\u062d\u062f\u062f\u0629 \u0645\u0646 \u0633\u062c\u0644 \u0627\u0644\u0645\u0634\u0627\u0647\u062f\u0629\u061f"

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u062d\u0630\u0641"

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$13;

    invoke-direct {v3, p0, v0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$13;-><init>(Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;Ljava/util/Set;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u0625\u0644\u063a\u0627\u0621"

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method detach()V
    .locals 2

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->end()V

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->menu:Landroid/view/Menu;

    if-eqz v0, :cond_d

    const v1, 0x262106

    invoke-interface {v0, v1}, Landroid/view/Menu;->removeItem(I)V

    :cond_d
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->root:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->fallback:Landroid/widget/ImageButton;

    if-eqz v1, :cond_22

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->adapter:Ljava/lang/Object;

    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->recycler:Landroid/view/View;

    return-void
.end method

.method end()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->mode:Z

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->selected:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->clear()V

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->root:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->bar:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1d

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1d
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->bar:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->recycler:Landroid/view/View;

    if-eqz v1, :cond_4b

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget v3, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->oldPadding:I

    iget-object v4, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->fallback:Landroid/widget/ImageButton;

    if-nez v4, :cond_2f

    goto :goto_3b

    :cond_2f
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->recycler:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v4, 0x30

    invoke-static {v0, v4}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->dp(Landroid/content/Context;I)I

    move-result v0

    :goto_3b
    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->recycler:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    iget-object v4, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->recycler:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_4b
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->update()V

    return-void
.end method

.method items()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->adapter:Ljava/lang/Object;

    const-string v1, "a"

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_1a

    new-instance v1, Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    return-object v1

    :catch_14
    move-exception v0

    const-string v1, "continue_items262"

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method refresh()V
    .locals 6

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-class v1, Lcom/shabakaty/cinemana/ca1/Continue106;

    monitor-enter v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_4c

    :try_start_8
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->items()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/shabakaty/cinemana/ca1/Continue106;->entries:Ljava/util/Map;

    const-string v5, "nb"

    invoke-static {v3, v5}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_49

    :try_start_2d
    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->adapter:Ljava/lang/Object;

    const-string v2, "e"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->selected:Ljava/util/LinkedHashSet;

    sget-object v1, Lcom/shabakaty/cinemana/ca1/Continue106;->entries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->retainAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->update()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_48} :catch_4c

    goto :goto_52

    :catchall_49
    move-exception v0

    :try_start_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    :try_start_4b
    throw v0
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4c} :catch_4c

    :catch_4c
    move-exception v0

    const-string v1, "continue_more_refresh262"

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_52
    return-void
.end method

.method toggle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->selected:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->selected:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_d
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->update()V

    return-void
.end method

.method update()V
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->count:Landroid/widget/TextView;

    if-eqz v0, :cond_27

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0627\u0644\u0645\u062d\u062f\u062f"

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->selected:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_27
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->access$000()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/cinemana/ca1/ContinueActions262$Bound;

    invoke-virtual {v1}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$Bound;->paint()V

    goto :goto_38

    :cond_48
    return-void
.end method
