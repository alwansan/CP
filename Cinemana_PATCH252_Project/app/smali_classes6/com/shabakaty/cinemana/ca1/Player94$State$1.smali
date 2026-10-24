.class Lcom/shabakaty/cinemana/ca1/Player94$State$1;
.super Ljava/lang/Object;
.source "Player94.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/ca1/Player94$State;-><init>(Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shabakaty/cinemana/ca1/Player94$State;


# direct methods
.method constructor <init>(Lcom/shabakaty/cinemana/ca1/Player94$State;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State$1;->this$0:Lcom/shabakaty/cinemana/ca1/Player94$State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onViewDetachedFromWindow$0$com-shabakaty-cinemana-ca1-Player94$State$1()V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State$1;->this$0:Lcom/shabakaty/cinemana/ca1/Player94$State;

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/ca1/Player94$State;->closeReader()V

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 16
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .line 16
    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State$1;->this$0:Lcom/shabakaty/cinemana/ca1/Player94$State;

    iget-object p1, p1, Lcom/shabakaty/cinemana/ca1/Player94$State;->frameProcess:Ljava/lang/Process;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    :cond_0
    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State$1;->this$0:Lcom/shabakaty/cinemana/ca1/Player94$State;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/shabakaty/cinemana/ca1/Player94$State;->live:Z

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State$1;->this$0:Lcom/shabakaty/cinemana/ca1/Player94$State;

    iget v0, p1, Lcom/shabakaty/cinemana/ca1/Player94$State;->generation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/shabakaty/cinemana/ca1/Player94$State;->generation:I

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State$1;->this$0:Lcom/shabakaty/cinemana/ca1/Player94$State;

    iget-object p1, p1, Lcom/shabakaty/cinemana/ca1/Player94$State;->h:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    sget-object p1, Lcom/shabakaty/cinemana/ca1/Player94;->states:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State$1;->this$0:Lcom/shabakaty/cinemana/ca1/Player94$State;

    iget-object v1, v1, Lcom/shabakaty/cinemana/ca1/Player94$State;->view:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State$1;->this$0:Lcom/shabakaty/cinemana/ca1/Player94$State;

    iget-object p1, p1, Lcom/shabakaty/cinemana/ca1/Player94$State;->image:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State$1;->this$0:Lcom/shabakaty/cinemana/ca1/Player94$State;

    iget-object p1, p1, Lcom/shabakaty/cinemana/ca1/Player94$State;->view:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State$1;->this$0:Lcom/shabakaty/cinemana/ca1/Player94$State;

    iget-object v0, v0, Lcom/shabakaty/cinemana/ca1/Player94$State;->box:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State$1;->this$0:Lcom/shabakaty/cinemana/ca1/Player94$State;

    iget-object p1, p1, Lcom/shabakaty/cinemana/ca1/Player94$State;->view:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State$1;->this$0:Lcom/shabakaty/cinemana/ca1/Player94$State;

    iget-object p1, p1, Lcom/shabakaty/cinemana/ca1/Player94$State;->cache:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State$1;->this$0:Lcom/shabakaty/cinemana/ca1/Player94$State;

    iget-object p1, p1, Lcom/shabakaty/cinemana/ca1/Player94$State;->cache:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clear()V

    sget-object p1, Lcom/shabakaty/cinemana/ca1/Player94;->frames:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/shabakaty/cinemana/ca1/Player94$State$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/shabakaty/cinemana/ca1/Player94$State$1$$ExternalSyntheticLambda0;-><init>(Lcom/shabakaty/cinemana/ca1/Player94$State$1;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
