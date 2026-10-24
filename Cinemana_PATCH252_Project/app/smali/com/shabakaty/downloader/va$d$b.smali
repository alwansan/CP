.class public Lcom/shabakaty/downloader/va$d$b;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/va$d;->n(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/va$d;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/va$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/va$d$b;->r:Lcom/shabakaty/downloader/va$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/va$d$b;->r:Lcom/shabakaty/downloader/va$d;

    iget-object v1, v0, Lcom/shabakaty/downloader/va$d;->X:Lcom/shabakaty/downloader/va;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v2, Lcom/shabakaty/downloader/c35;->a:Ljava/util/WeakHashMap;

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/va$d;->V:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/va$d$b;->r:Lcom/shabakaty/downloader/va$d;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/mi2;->dismiss()V

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/va$d$b;->r:Lcom/shabakaty/downloader/va$d;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/va$d;->t()V

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/va$d$b;->r:Lcom/shabakaty/downloader/va$d;

    .line 8
    invoke-virtual {v0}, Lcom/shabakaty/downloader/mi2;->b()V

    :goto_1
    return-void
.end method
