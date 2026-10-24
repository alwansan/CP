.class public Lcom/shabakaty/downloader/va$d$c;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/va$d;->n(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field public final synthetic s:Lcom/shabakaty/downloader/va$d;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/va$d;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/va$d$c;->s:Lcom/shabakaty/downloader/va$d;

    iput-object p2, p0, Lcom/shabakaty/downloader/va$d$c;->r:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/va$d$c;->s:Lcom/shabakaty/downloader/va$d;

    iget-object v0, v0, Lcom/shabakaty/downloader/va$d;->X:Lcom/shabakaty/downloader/va;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/va$d$c;->r:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method
