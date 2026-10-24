.class public final Lcom/skydoves/powerspinner/PowerSpinnerView$f$a;
.super Ljava/lang/Object;
.source "PowerSpinnerView.kt"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skydoves/powerspinner/PowerSpinnerView$f;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/skydoves/powerspinner/PowerSpinnerView$f;


# direct methods
.method public constructor <init>(Lcom/skydoves/powerspinner/PowerSpinnerView$f;)V
    .locals 0

    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$f$a;->r:Lcom/skydoves/powerspinner/PowerSpinnerView$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$f$a;->r:Lcom/skydoves/powerspinner/PowerSpinnerView$f;

    iget-object v0, v0, Lcom/skydoves/powerspinner/PowerSpinnerView$f;->r:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getOnSpinnerDismissListener()Lcom/shabakaty/downloader/v63;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/shabakaty/downloader/v63;->onDismiss()V

    :cond_0
    return-void
.end method
