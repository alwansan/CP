.class public Lcom/shabakaty/downloader/oy3;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "ScopedConstraintLayout.kt"


# instance fields
.field public J:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/shabakaty/downloader/se0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final getViewScope()Lcom/shabakaty/downloader/se0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/oy3;->J:Ljava/util/concurrent/atomic/AtomicReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/se0;

    :goto_0
    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/oy3;->J:Ljava/util/concurrent/atomic/AtomicReference;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Lcom/shabakaty/downloader/nh3;->c()Lcom/shabakaty/downloader/se0;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/oy3;->J:Ljava/util/concurrent/atomic/AtomicReference;

    goto :goto_2

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/se0;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/shabakaty/downloader/oy3;->J:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/se0;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/shabakaty/downloader/nh3;->t(Lcom/shabakaty/downloader/se0;)Z

    move-result v0

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_6

    .line 5
    :cond_4
    iget-object v0, p0, Lcom/shabakaty/downloader/oy3;->J:Ljava/util/concurrent/atomic/AtomicReference;

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/shabakaty/downloader/nh3;->c()Lcom/shabakaty/downloader/se0;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/oy3;->J:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/se0;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0, v2, v1}, Lcom/shabakaty/downloader/nh3;->e(Lcom/shabakaty/downloader/se0;Ljava/util/concurrent/CancellationException;I)V

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/oy3;->J:Ljava/util/concurrent/atomic/AtomicReference;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/se0;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Lcom/shabakaty/downloader/se0;->B()Lcom/shabakaty/downloader/me0;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {v0, v2, v1, v2}, Lcom/shabakaty/downloader/bp;->d(Lcom/shabakaty/downloader/me0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 3
    :goto_1
    iget-object v0, p0, Lcom/shabakaty/downloader/oy3;->J:Ljava/util/concurrent/atomic/AtomicReference;

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/se0;

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    invoke-interface {v0}, Lcom/shabakaty/downloader/se0;->B()Lcom/shabakaty/downloader/me0;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {v0, v2, v1, v2}, Lcom/shabakaty/downloader/bp;->c(Lcom/shabakaty/downloader/me0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 4
    :goto_2
    iget-object v0, p0, Lcom/shabakaty/downloader/oy3;->J:Ljava/util/concurrent/atomic/AtomicReference;

    if-nez v0, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 5
    :goto_3
    iput-object v2, p0, Lcom/shabakaty/downloader/oy3;->J:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method
