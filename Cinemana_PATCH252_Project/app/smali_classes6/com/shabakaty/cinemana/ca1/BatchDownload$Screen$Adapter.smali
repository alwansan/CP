.class final Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter;
.super Landroid/widget/BaseAdapter;
.source "BatchDownload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;


# direct methods
.method constructor <init>(Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    iget-object v0, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    iget-object v0, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->rows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 237
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    iget-object v0, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->rows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/String;

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .line 238
    iget-object p3, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    iget-object p3, p3, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->rows:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p3, p1, Ljava/lang/String;

    const-string v0, ""

    if-eqz p3, :cond_1

    instance-of p3, p2, Landroid/widget/TextView;

    if-eqz p3, :cond_0

    check-cast p2, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    const/16 p3, 0xc

    invoke-virtual {p2, v0, p3}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object p2

    :goto_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    const/16 p3, 0x1c

    invoke-virtual {p1, p3}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dp(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setHeight(I)V

    const p1, -0x1e1e18

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    const p3, -0xd3d3cc

    invoke-virtual {p1, p3}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->bg(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p2}, Lcom/shabakaty/cinemana/ca1/Enhancements;->card(Landroid/view/View;)V

    return-object p2

    .line 239
    :cond_1
    check-cast p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;

    const/4 p3, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;

    goto/16 :goto_1

    :cond_2
    new-instance p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    invoke-direct {p2, v2}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;-><init>(Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    iget-object v3, v3, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;->row:Landroid/widget/LinearLayout;

    iget-object v2, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;->row:Landroid/widget/LinearLayout;

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/I18n161;->applyDir(Landroid/view/View;)V

    iget-object v2, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;->row:Landroid/widget/LinearLayout;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v2, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;->row:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dp(I)I

    move-result v3

    iget-object v5, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dp(I)I

    move-result v5

    invoke-virtual {v2, v3, v1, v5, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v2, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;->row:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    iget-object v5, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    const/16 v6, 0x40

    invoke-virtual {v5, v6}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dp(I)I

    move-result v5

    const/4 v6, -0x1

    invoke-direct {v3, v6, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    new-instance v2, Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    iget-object v3, v3, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v2, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;->check:Landroid/widget/CheckBox;

    iget-object v2, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;->check:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    iget-object v3, v3, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->accent(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;->row:Landroid/widget/LinearLayout;

    iget-object v3, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;->check:Landroid/widget/CheckBox;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    const/16 v7, 0x28

    invoke-virtual {v6, v7}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dp(I)I

    move-result v6

    iget-object v7, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    const/16 v8, 0x2c

    invoke-virtual {v7, v8}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dp(I)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    iget-object v3, v3, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;->info:Landroid/widget/LinearLayout;

    iget-object v2, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;->info:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v2, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;->info:Landroid/widget/LinearLayout;

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/I18n161;->applyDir(Landroid/view/View;)V

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    const/16 v3, 0xd

    invoke-virtual {v2, v0, v3}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;->title:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;->title:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    invoke-virtual {v3, v4}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dp(I)I

    move-result v3

    iget-object v5, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    invoke-virtual {v5, v4}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dp(I)I

    move-result v5

    invoke-virtual {v2, v3, v1, v5, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;->title:Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v2, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;->title:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v2, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;->info:Landroid/widget/LinearLayout;

    iget-object v3, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;->title:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    const/16 v3, 0xa

    invoke-virtual {v2, v0, v3}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;->sub:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;->sub:Landroid/widget/TextView;

    const v3, -0x434339

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;->sub:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    invoke-virtual {v3, v4}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dp(I)I

    move-result v3

    iget-object v5, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    invoke-virtual {v5, v4}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dp(I)I

    move-result v4

    invoke-virtual {v2, v3, v1, v4, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;->sub:Landroid/widget/TextView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v2, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;->sub:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v2, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;->info:Landroid/widget/LinearLayout;

    iget-object v3, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;->sub:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;->row:Landroid/widget/LinearLayout;

    iget-object v3, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;->info:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    invoke-virtual {v2, v0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;->quality:Landroid/widget/Button;

    iget-object v2, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;->quality:Landroid/widget/Button;

    const/high16 v3, 0x41300000    # 11.0f

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextSize(F)V

    iget-object v2, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;->row:Landroid/widget/LinearLayout;

    iget-object v3, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;->quality:Landroid/widget/Button;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    const/16 v6, 0x44

    invoke-virtual {v5, v6}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dp(I)I

    move-result v5

    iget-object v6, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    const/16 v7, 0x24

    invoke-virtual {v6, v7}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dp(I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;->row:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 242
    :goto_1
    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    iget-boolean v3, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->selected:Z

    if-eqz v3, :cond_3

    const v3, -0xcbdcd8

    goto :goto_2

    :cond_3
    const v3, -0xdadad4

    :goto_2
    invoke-virtual {v2, v3}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->bg(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    iget-boolean v3, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->selected:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    invoke-virtual {v3, p3}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dp(I)I

    move-result v3

    const v4, -0x46c9c2

    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_4
    iget-object v3, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;->row:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;->check:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;->check:Landroid/widget/CheckBox;

    iget-boolean v3, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->selected:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v2, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;->check:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    iget-boolean v3, v3, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->busy:Z

    if-nez v3, :cond_5

    iget-boolean v3, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->submitted:Z

    if-nez v3, :cond_5

    iget-boolean v3, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->existing:Z

    if-nez v3, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v2, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;->check:Landroid/widget/CheckBox;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u062a\u062d\u062f\u064a\u062f \u0627\u0644\u062d\u0644\u0642\u0629 "

    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;->check:Landroid/widget/CheckBox;

    new-instance v3, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter$$ExternalSyntheticLambda0;-><init>(Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter;Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;->row:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter$$ExternalSyntheticLambda1;-><init>(Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter;Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;->info:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter$$ExternalSyntheticLambda2;-><init>(Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter;Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;->title:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    invoke-virtual {v2, p1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->effective(Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;)Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;

    move-result-object v2

    iget-object v3, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->variants:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    goto :goto_4

    :cond_6
    iget-object v3, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->variants:Ljava/util/List;

    iget-object v4, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->variants:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, p3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;

    iget v3, v3, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->height:I

    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u0645"

    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->season:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u00b7 \u0627\u0644\u062d\u0644\u0642\u0629 "

    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->number:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-lez v3, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " \u00b7 \u0627\u0644\u0623\u0639\u0644\u0649 "

    invoke-static {v6}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "p"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_7
    move-object v3, v0

    :goto_5
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->error:Ljava/lang/String;

    if-eqz v4, :cond_8

    const-string v4, "\u062a\u0639\u0630\u0631 \u0627\u0644\u062c\u0644\u0628\u061b \u0623\u0639\u062f \u0627\u0644\u0645\u062d\u0627\u0648\u0644\u0629"

    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_8
    iget-boolean v4, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->loading:Z

    if-eqz v4, :cond_9

    const-string v4, "\u062c\u0627\u0631\u064d \u0642\u0631\u0627\u0621\u0629 \u0627\u0644\u062c\u0648\u062f\u0627\u062a"

    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_9
    if-nez v2, :cond_a

    const-string v4, "\u0644\u0627 \u062a\u0648\u062c\u062f \u062c\u0648\u062f\u0629"

    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_a
    iget-boolean v4, v2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->probing:Z

    if-eqz v4, :cond_b

    const-string v4, "\u062c\u0627\u0631\u064d \u0642\u0631\u0627\u0621\u0629 \u0627\u0644\u062d\u062c\u0645"

    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_b
    iget-wide v4, v2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->size:J

    invoke-static {v4, v5}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->bytes(J)Ljava/lang/String;

    move-result-object v4

    :goto_6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->manual:I

    if-ltz v4, :cond_c

    const-string v4, " \u00b7 \u0641\u0631\u062f\u064a"

    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_c
    move-object v4, v0

    :goto_7
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->existing:Z

    if-eqz v4, :cond_d

    const-string v0, " \u00b7 \u0645\u0648\u062c\u0648\u062f"

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_d
    iget-boolean v4, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->submitted:Z

    if-eqz v4, :cond_e

    const-string v0, " \u00b7 \u0623\u064f\u0631\u0633\u0644"

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_e
    :goto_8
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;->sub:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;->quality:Landroid/widget/Button;

    iget-boolean v3, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->loading:Z

    if-eqz v3, :cond_f

    const-string v2, "\u2026"

    goto :goto_9

    :cond_f
    if-nez v2, :cond_10

    const-string v2, "\u0625\u0639\u0627\u062f\u0629"

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_10
    iget-object v2, v2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->label:Ljava/lang/String;

    :goto_9
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;->quality:Landroid/widget/Button;

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    iget-boolean v2, v2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->busy:Z

    if-nez v2, :cond_11

    iget-boolean v2, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->submitted:Z

    if-nez v2, :cond_11

    iget-boolean v2, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->loading:Z

    if-nez v2, :cond_11

    goto :goto_a

    :cond_11
    const/4 p3, 0x0

    :goto_a
    invoke-virtual {v0, p3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p3, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;->quality:Landroid/widget/Button;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u062c\u0648\u062f\u0629 \u0627\u0644\u062d\u0644\u0642\u0629 "

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p3, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;->quality:Landroid/widget/Button;

    new-instance v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter$$ExternalSyntheticLambda3;-><init>(Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter;Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;)V

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;->row:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->card(Landroid/view/View;)V

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 237
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 0

    .line 237
    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$getView$0$com-shabakaty-cinemana-ca1-BatchDownload$Screen$Adapter(Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 242
    iget-boolean p2, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->selected:Z

    if-eq p2, p3, :cond_0

    iget-object p2, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    invoke-virtual {p2, p1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->toggle(Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$getView$1$com-shabakaty-cinemana-ca1-BatchDownload$Screen$Adapter(Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;Landroid/view/View;)V
    .locals 0

    .line 242
    iget-object p2, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    invoke-virtual {p2, p1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->toggle(Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;)V

    return-void
.end method

.method synthetic lambda$getView$2$com-shabakaty-cinemana-ca1-BatchDownload$Screen$Adapter(Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;Landroid/view/View;)V
    .locals 0

    .line 242
    iget-object p2, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    invoke-virtual {p2, p1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->toggle(Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;)V

    return-void
.end method

.method synthetic lambda$getView$3$com-shabakaty-cinemana-ca1-BatchDownload$Screen$Adapter(Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;Landroid/view/View;)V
    .locals 0

    .line 243
    iget-object p2, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    invoke-virtual {p2, p1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->quality(Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;)V

    return-void
.end method
