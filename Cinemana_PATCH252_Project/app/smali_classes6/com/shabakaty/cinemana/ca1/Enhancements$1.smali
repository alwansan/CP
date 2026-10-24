.class Lcom/shabakaty/cinemana/ca1/Enhancements$1;
.super Landroid/widget/BaseAdapter;
.source "Enhancements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/ca1/Enhancements;->grid(Ljava/lang/Object;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Landroid/content/Context;

.field final synthetic val$exclude:Z

.field final synthetic val$rows:Ljava/util/List;

.field final synthetic val$s:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/content/Context;Ljava/lang/Object;Z)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$1;->val$rows:Ljava/util/List;

    iput-object p2, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$1;->val$c:Landroid/content/Context;

    iput-object p3, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$1;->val$s:Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$1;->val$exclude:Z

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$1;->val$rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$1;->val$rows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 26
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .line 26
    iget-object p2, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$1;->val$rows:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/String;

    const p3, -0xcfc5bc

    if-eqz p2, :cond_0

    new-instance p2, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$1;->val$c:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p1, 0xe

    const/16 v0, 0xc

    invoke-virtual {p2, p1, v0, p1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    const p1, -0xeee6de

    invoke-static {p2, p1, p3}, Lcom/shabakaty/cinemana/ca1/Enhancements;->decorate(Landroid/view/View;II)V

    return-object p2

    :cond_0
    new-instance p2, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$1;->val$c:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-static {p2}, Lcom/shabakaty/cinemana/ca1/I18n161;->applyDir(Landroid/view/View;)V

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v5, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$1;->val$c:Landroid/content/Context;

    const-string v6, "number"

    invoke-static {v2, v6}, Lcom/shabakaty/cinemana/ca1/Enhancements;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/shabakaty/cinemana/ca1/Enhancements;->button(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v7, "selected"

    invoke-static {v2, v7}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const v6, -0x27ded9

    goto :goto_1

    :cond_1
    const v6, -0xebe0d7

    :goto_1
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v7}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const v7, -0x1ed5d0

    goto :goto_2

    :cond_2
    const v7, -0xcfc5bc

    :goto_2
    invoke-static {v5, v6, v7}, Lcom/shabakaty/cinemana/ca1/Enhancements;->decorate(Landroid/view/View;II)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v7, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$1;->val$c:Landroid/content/Context;

    const/16 v8, 0x30

    invoke-static {v7, v8}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result v7

    invoke-direct {v6, v4, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v3, 0x3

    invoke-virtual {v6, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p2, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$1;->val$s:Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$1;->val$exclude:Z

    new-instance v6, Lcom/shabakaty/cinemana/ca1/Enhancements$1$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v3, v2, v4}, Lcom/shabakaty/cinemana/ca1/Enhancements$1$$ExternalSyntheticLambda0;-><init>(Lcom/shabakaty/cinemana/ca1/Enhancements$1;Ljava/lang/Object;Ljava/lang/Object;Z)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_3
    const/4 p3, 0x5

    if-ge p1, p3, :cond_4

    new-instance p3, Landroid/view/View;

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$1;->val$c:Landroid/content/Context;

    invoke-direct {p3, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p2, p3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_4
    return-object p2
.end method

.method synthetic lambda$getView$0$com-shabakaty-cinemana-ca1-Enhancements$1(Ljava/lang/Object;Ljava/lang/Object;ZLandroid/view/View;)V
    .locals 1

    .line 26
    const/4 p4, 0x0

    if-eqz p3, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "selected"

    invoke-static {p2, v0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p4, 0x1

    :goto_0
    invoke-static {p1, p2, p4}, Lcom/shabakaty/cinemana/ca1/Enhancements;->select(Ljava/lang/Object;Ljava/lang/Object;Z)V

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Enhancements$1;->notifyDataSetChanged()V

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->refresh(Ljava/lang/Object;)V

    return-void
.end method
