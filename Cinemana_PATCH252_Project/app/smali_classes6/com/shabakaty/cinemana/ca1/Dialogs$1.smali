.class Lcom/shabakaty/cinemana/ca1/Dialogs$1;
.super Landroid/widget/BaseAdapter;
.source "Dialogs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/ca1/Dialogs;->style(Landroid/app/AlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Landroid/content/Context;

.field final synthetic val$original:Landroid/widget/ListAdapter;


# direct methods
.method constructor <init>(Landroid/widget/ListAdapter;Landroid/content/Context;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/Dialogs$1;->val$original:Landroid/widget/ListAdapter;

    iput-object p2, p0, Lcom/shabakaty/cinemana/ca1/Dialogs$1;->val$c:Landroid/content/Context;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Dialogs$1;->val$original:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Dialogs$1;->val$original:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Dialogs$1;->val$original:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 7
    instance-of p3, p2, Landroid/widget/TextView;

    if-eqz p3, :cond_0

    check-cast p2, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/widget/TextView;

    iget-object p3, p0, Lcom/shabakaty/cinemana/ca1/Dialogs$1;->val$c:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/ca1/Dialogs$1;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, -0x110e0c

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41600000    # 14.0f

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 p1, 0x15

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Dialogs$1;->val$c:Landroid/content/Context;

    const/16 p3, 0x12

    invoke-static {p1, p3}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result p1

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Dialogs$1;->val$c:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, p3, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Dialogs$1;->val$c:Landroid/content/Context;

    const/16 p3, 0x30

    invoke-static {p1, p3}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    new-instance p1, Landroid/graphics/drawable/RippleDrawable;

    const p3, 0x33e12a30

    invoke-static {p3}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result p3

    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0xebe3dc

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 v1, 0x0

    invoke-direct {p1, p3, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object p2
.end method
