.class Lcom/shabakaty/cinemana/ca1/Download94$State$2;
.super Ljava/lang/Object;
.source "Download94.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/ca1/Download94$State;-><init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shabakaty/cinemana/ca1/Download94$State;

.field final synthetic val$root:Landroid/view/ViewGroup;

.field final synthetic val$rv:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/shabakaty/cinemana/ca1/Download94$State;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$2;->this$0:Lcom/shabakaty/cinemana/ca1/Download94$State;

    iput-object p2, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$2;->val$root:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$2;->val$rv:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 16
    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$2;->this$0:Lcom/shabakaty/cinemana/ca1/Download94$State;

    invoke-virtual {p1}, Lcom/shabakaty/cinemana/ca1/Download94$State;->header()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .line 16
    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$2;->this$0:Lcom/shabakaty/cinemana/ca1/Download94$State;

    iget-object p1, p1, Lcom/shabakaty/cinemana/ca1/Download94$State;->h:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$2;->this$0:Lcom/shabakaty/cinemana/ca1/Download94$State;

    iget-object p1, p1, Lcom/shabakaty/cinemana/ca1/Download94$State;->rvObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$2;->this$0:Lcom/shabakaty/cinemana/ca1/Download94$State;

    iget-object p1, p1, Lcom/shabakaty/cinemana/ca1/Download94$State;->rvObserver:Landroid/view/ViewTreeObserver;

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$2;->this$0:Lcom/shabakaty/cinemana/ca1/Download94$State;

    iget-object v0, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->scrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_0
    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$2;->this$0:Lcom/shabakaty/cinemana/ca1/Download94$State;

    iget-object p1, p1, Lcom/shabakaty/cinemana/ca1/Download94$State;->rootObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$2;->this$0:Lcom/shabakaty/cinemana/ca1/Download94$State;

    iget-object p1, p1, Lcom/shabakaty/cinemana/ca1/Download94$State;->rootObserver:Landroid/view/ViewTreeObserver;

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$2;->this$0:Lcom/shabakaty/cinemana/ca1/Download94$State;

    iget-object v0, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$2;->val$root:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :try_start_0
    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$2;->val$rv:Landroid/view/ViewGroup;

    const-string v0, "H"

    invoke-static {p1, v0}, Lcom/shabakaty/cinemana/ca1/R94;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$2;->this$0:Lcom/shabakaty/cinemana/ca1/Download94$State;

    iget-object v0, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->proxy:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :goto_0
    sget-object p1, Lcom/shabakaty/cinemana/ca1/Download94;->states:Ljava/util/WeakHashMap;

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$2;->val$root:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$2;->this$0:Lcom/shabakaty/cinemana/ca1/Download94$State;

    iget-object p1, p1, Lcom/shabakaty/cinemana/ca1/Download94$State;->headerBar:Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    sget-object p1, Lcom/shabakaty/cinemana/ca1/Download94;->states:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/cinemana/ca1/Download94$State;

    iget-object v1, v1, Lcom/shabakaty/cinemana/ca1/Download94$State;->root:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$2;->this$0:Lcom/shabakaty/cinemana/ca1/Download94$State;

    iget-object p1, p1, Lcom/shabakaty/cinemana/ca1/Download94$State;->headerBar:Landroid/view/ViewGroup;

    const-string v0, "ca1_download_actions95"

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$2;->this$0:Lcom/shabakaty/cinemana/ca1/Download94$State;

    iget-object v0, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->headerBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    return-void
.end method
