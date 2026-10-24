.class public Lzendesk/belvedere/m$a;
.super Ljava/lang/Object;
.source "KeyboardHelper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/belvedere/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final r:Landroid/app/Activity;

.field public final synthetic s:Lzendesk/belvedere/m;


# direct methods
.method public constructor <init>(Lzendesk/belvedere/m;Landroid/app/Activity;Lcom/shabakaty/downloader/vd2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/belvedere/m$a;->s:Lzendesk/belvedere/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lzendesk/belvedere/m$a;->r:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 1
    iget-object v0, p0, Lzendesk/belvedere/m$a;->s:Lzendesk/belvedere/m;

    iget-object v1, p0, Lzendesk/belvedere/m$a;->r:Landroid/app/Activity;

    invoke-static {v0, v1}, Lzendesk/belvedere/m;->a(Lzendesk/belvedere/m;Landroid/app/Activity;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lzendesk/belvedere/m$a;->s:Lzendesk/belvedere/m;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-lez v0, :cond_0

    .line 4
    iget-object v1, p0, Lzendesk/belvedere/m$a;->s:Lzendesk/belvedere/m;

    .line 5
    iget v2, v1, Lzendesk/belvedere/m;->t:I

    if-eq v2, v0, :cond_0

    .line 6
    iput v0, v1, Lzendesk/belvedere/m;->t:I

    .line 7
    iget-object v1, v1, Lzendesk/belvedere/m;->v:Lzendesk/belvedere/m$c;

    if-eqz v1, :cond_0

    .line 8
    check-cast v1, Lzendesk/belvedere/k;

    .line 9
    iget-object v2, v1, Lzendesk/belvedere/k;->a:Lzendesk/belvedere/l;

    .line 10
    iget-object v2, v2, Lzendesk/belvedere/l;->k:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 11
    invoke-virtual {v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 12
    iget-object v2, v1, Lzendesk/belvedere/k;->a:Lzendesk/belvedere/l;

    .line 13
    iget-object v3, v2, Lzendesk/belvedere/l;->k:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 14
    iget-object v2, v2, Lzendesk/belvedere/l;->e:Landroid/view/View;

    .line 15
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v1, v1, Lzendesk/belvedere/k;->a:Lzendesk/belvedere/l;

    .line 16
    iget-object v1, v1, Lzendesk/belvedere/l;->d:Lzendesk/belvedere/m;

    .line 17
    invoke-virtual {v1}, Lzendesk/belvedere/m;->getKeyboardHeight()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v3, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l(I)V

    .line 18
    :cond_0
    iget-object v1, p0, Lzendesk/belvedere/m$a;->s:Lzendesk/belvedere/m;

    .line 19
    iget-object v1, v1, Lzendesk/belvedere/m;->u:Ljava/util/List;

    if-eqz v1, :cond_2

    if-lez v0, :cond_2

    .line 20
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 21
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 22
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/belvedere/m$b;

    invoke-interface {v1}, Lzendesk/belvedere/m$b;->onKeyboardVisible()V

    goto :goto_0

    .line 23
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 24
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 25
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/belvedere/m$b;

    invoke-interface {v1}, Lzendesk/belvedere/m$b;->onKeyboardDismissed()V

    goto :goto_1

    :cond_4
    return-void
.end method
