.class public final Lcom/skydoves/powerspinner/PowerSpinnerView$a;
.super Lcom/shabakaty/downloader/af2;
.source "PowerSpinnerView.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skydoves/powerspinner/PowerSpinnerView;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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


# direct methods
.method public constructor <init>(Lcom/skydoves/powerspinner/PowerSpinnerView;)V
    .locals 0

    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$a;->r:Lcom/skydoves/powerspinner/PowerSpinnerView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$a;->r:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 2
    iget-boolean v1, v0, Lcom/skydoves/powerspinner/PowerSpinnerView;->t:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->e(Lcom/skydoves/powerspinner/PowerSpinnerView;Z)V

    .line 4
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$a;->r:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 5
    iget-object v0, v0, Lcom/skydoves/powerspinner/PowerSpinnerView;->s:Landroid/widget/PopupWindow;

    .line 6
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 7
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$a;->r:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 8
    iput-boolean v1, v0, Lcom/skydoves/powerspinner/PowerSpinnerView;->t:Z

    .line 9
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object v0
.end method
