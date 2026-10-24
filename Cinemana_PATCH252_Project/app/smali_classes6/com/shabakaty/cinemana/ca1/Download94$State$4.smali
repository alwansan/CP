.class Lcom/shabakaty/cinemana/ca1/Download94$State$4;
.super Landroid/widget/ArrayAdapter;
.source "Download94.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/ca1/Download94$State;->begin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shabakaty/cinemana/ca1/Download94$State;


# direct methods
.method constructor <init>(Lcom/shabakaty/cinemana/ca1/Download94$State;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$4;->this$0:Lcom/shabakaty/cinemana/ca1/Download94$State;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 30
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, -0xebded5

    invoke-static {p2}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    instance-of p2, p1, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Landroid/widget/TextView;

    const/4 p3, -0x1

    invoke-static {p3}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 30
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    instance-of p2, p1, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Landroid/widget/TextView;

    const/4 p3, -0x1

    invoke-static {p3}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-object p1
.end method
