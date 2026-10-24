.class public Lcom/shabakaty/downloader/yn;
.super Lcom/shabakaty/downloader/yd1;
.source "BubbleFlag.java"


# instance fields
.field public t:Landroidx/appcompat/widget/AppCompatImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0d0066

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/shabakaty/downloader/yd1;-><init>(Landroid/content/Context;I)V

    const p1, 0x7f0a00b4

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lcom/shabakaty/downloader/yn;->t:Landroidx/appcompat/widget/AppCompatImageView;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/s50;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yn;->t:Landroidx/appcompat/widget/AppCompatImageView;

    .line 2
    iget p1, p1, Lcom/shabakaty/downloader/s50;->a:I

    .line 3
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/uz1;->a(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    return-void
.end method
