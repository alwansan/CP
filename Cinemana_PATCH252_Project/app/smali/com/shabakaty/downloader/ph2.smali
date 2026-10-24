.class public Lcom/shabakaty/downloader/ph2;
.super Landroid/widget/FrameLayout;
.source "LifecycleFrameLayout.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rh2;


# instance fields
.field public final r:Lcom/shabakaty/downloader/kf2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/shabakaty/downloader/ph2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/oh2;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/oh2;-><init>(Lcom/shabakaty/downloader/ph2;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ph2;->r:Lcom/shabakaty/downloader/kf2;

    return-void
.end method

.method private final getDispatcher()Lcom/shabakaty/downloader/n35;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ph2;->r:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/n35;

    return-object v0
.end method


# virtual methods
.method public getLifecycle()Landroidx/lifecycle/e;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/ph2;->getDispatcher()Lcom/shabakaty/downloader/n35;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/n35;->a:Landroidx/lifecycle/g;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/ph2;->getDispatcher()Lcom/shabakaty/downloader/n35;

    move-result-object v0

    .line 2
    sget-object v1, Landroidx/lifecycle/e$b;->ON_START:Landroidx/lifecycle/e$b;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/n35;->a(Landroidx/lifecycle/e$b;)V

    .line 3
    sget-object v1, Landroidx/lifecycle/e$b;->ON_CREATE:Landroidx/lifecycle/e$b;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/n35;->a(Landroidx/lifecycle/e$b;)V

    .line 4
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/ph2;->getDispatcher()Lcom/shabakaty/downloader/n35;

    move-result-object v0

    .line 2
    sget-object v1, Landroidx/lifecycle/e$b;->ON_STOP:Landroidx/lifecycle/e$b;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/n35;->a(Landroidx/lifecycle/e$b;)V

    .line 3
    sget-object v1, Landroidx/lifecycle/e$b;->ON_DESTROY:Landroidx/lifecycle/e$b;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/n35;->a(Landroidx/lifecycle/e$b;)V

    .line 4
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method
