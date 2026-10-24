.class public final Lcom/shabakaty/downloader/se3;
.super Lcom/shabakaty/downloader/af2;
.source "PowerSpinnerView.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/skydoves/powerspinner/PowerSpinnerView;

.field public final synthetic s:I

.field public final synthetic t:I


# direct methods
.method public constructor <init>(Lcom/skydoves/powerspinner/PowerSpinnerView;II)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/se3;->r:Lcom/skydoves/powerspinner/PowerSpinnerView;

    iput p2, p0, Lcom/shabakaty/downloader/se3;->s:I

    iput p3, p0, Lcom/shabakaty/downloader/se3;->t:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/se3;->r:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 2
    iget-boolean v1, v0, Lcom/skydoves/powerspinner/PowerSpinnerView;->t:Z

    if-nez v1, :cond_4

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lcom/skydoves/powerspinner/PowerSpinnerView;->t:Z

    .line 4
    invoke-static {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->e(Lcom/skydoves/powerspinner/PowerSpinnerView;Z)V

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/se3;->r:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 6
    iget v2, v0, Lcom/skydoves/powerspinner/PowerSpinnerView;->M:I

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_3

    .line 7
    iget-object v2, v0, Lcom/skydoves/powerspinner/PowerSpinnerView;->S:Lcom/skydoves/powerspinner/a;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_2

    if-eq v2, v1, :cond_1

    const/4 v1, 0x2

    if-eq v2, v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, v0, Lcom/skydoves/powerspinner/PowerSpinnerView;->s:Landroid/widget/PopupWindow;

    const v1, 0x7f1300fc

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, v0, Lcom/skydoves/powerspinner/PowerSpinnerView;->s:Landroid/widget/PopupWindow;

    const v1, 0x7f13011f

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, v0, Lcom/skydoves/powerspinner/PowerSpinnerView;->s:Landroid/widget/PopupWindow;

    const v1, 0x7f1300fb

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    .line 11
    :cond_3
    iget-object v0, v0, Lcom/skydoves/powerspinner/PowerSpinnerView;->s:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/se3;->r:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 13
    iget-object v1, v0, Lcom/skydoves/powerspinner/PowerSpinnerView;->s:Landroid/widget/PopupWindow;

    .line 14
    iget v2, p0, Lcom/shabakaty/downloader/se3;->s:I

    iget v3, p0, Lcom/shabakaty/downloader/se3;->t:I

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 15
    iget-object v0, p0, Lcom/shabakaty/downloader/se3;->r:Lcom/skydoves/powerspinner/PowerSpinnerView;

    new-instance v1, Lcom/shabakaty/downloader/re3;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/re3;-><init>(Lcom/shabakaty/downloader/se3;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 16
    :cond_4
    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object v0
.end method
