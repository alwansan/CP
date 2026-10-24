.class public Lcom/shabakaty/downloader/va$a;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/va;->onRestoreInstanceState(Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/va;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/va;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/va$a;->r:Lcom/shabakaty/downloader/va;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/va$a;->r:Lcom/shabakaty/downloader/va;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/va;->getInternalPopup()Lcom/shabakaty/downloader/va$f;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/va$f;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/va$a;->r:Lcom/shabakaty/downloader/va;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/va;->b()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/va$a;->r:Lcom/shabakaty/downloader/va;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    return-void
.end method
