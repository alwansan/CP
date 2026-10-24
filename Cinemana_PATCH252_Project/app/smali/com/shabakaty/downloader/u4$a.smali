.class public final Lcom/shabakaty/downloader/u4$a;
.super Lcom/shabakaty/downloader/af2;
.source "AdvancedSearchFilterDialog.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/u4;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/hn1<",
        "Landroid/view/View;",
        "Landroid/view/MotionEvent;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/u4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/u4;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/u4$a;->r:Lcom/shabakaty/downloader/u4;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/MotionEvent;

    const-string v0, "$noName_0"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "$noName_1"

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/u4$a;->r:Lcom/shabakaty/downloader/u4;

    sget p2, Lcom/shabakaty/downloader/u4;->N:I

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/aj;->K:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 5
    check-cast p1, Lcom/shabakaty/downloader/us0;

    .line 6
    iget-object p1, p1, Lcom/shabakaty/downloader/us0;->M:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->f()V

    .line 7
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
