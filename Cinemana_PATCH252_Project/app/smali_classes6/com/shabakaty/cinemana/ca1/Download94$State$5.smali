.class Lcom/shabakaty/cinemana/ca1/Download94$State$5;
.super Ljava/lang/Object;
.source "Download94.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/ca1/Download94$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shabakaty/cinemana/ca1/Download94$State;


# direct methods
.method constructor <init>(Lcom/shabakaty/cinemana/ca1/Download94$State;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$5;->this$0:Lcom/shabakaty/cinemana/ca1/Download94$State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 37
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$5;->this$0:Lcom/shabakaty/cinemana/ca1/Download94$State;

    iget-boolean v0, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->holding:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$5;->this$0:Lcom/shabakaty/cinemana/ca1/Download94$State;

    iget-boolean v0, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->pending:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$5;->this$0:Lcom/shabakaty/cinemana/ca1/Download94$State;

    iget-object v0, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    const/high16 v1, 0x42900000    # 72.0f

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/Download94;->dp(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$5;->this$0:Lcom/shabakaty/cinemana/ca1/Download94$State;

    iget v1, v1, Lcom/shabakaty/cinemana/ca1/Download94$State;->y:F

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$5;->this$0:Lcom/shabakaty/cinemana/ca1/Download94$State;

    iget-object v2, v2, Lcom/shabakaty/cinemana/ca1/Download94$State;->rv:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, v0

    int-to-float v2, v2

    const/high16 v3, 0x41400000    # 12.0f

    const/4 v4, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$5;->this$0:Lcom/shabakaty/cinemana/ca1/Download94$State;

    iget-object v0, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/shabakaty/cinemana/ca1/Download94;->dp(Landroid/content/Context;F)I

    move-result v0

    neg-int v0, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$5;->this$0:Lcom/shabakaty/cinemana/ca1/Download94$State;

    iget v1, v1, Lcom/shabakaty/cinemana/ca1/Download94$State;->y:F

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$5;->this$0:Lcom/shabakaty/cinemana/ca1/Download94$State;

    iget-object v2, v2, Lcom/shabakaty/cinemana/ca1/Download94$State;->rv:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v0, v2

    cmpl-float v0, v1, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$5;->this$0:Lcom/shabakaty/cinemana/ca1/Download94$State;

    iget-object v0, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/shabakaty/cinemana/ca1/Download94;->dp(Landroid/content/Context;F)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$5;->this$0:Lcom/shabakaty/cinemana/ca1/Download94$State;

    iget-object v1, v1, Lcom/shabakaty/cinemana/ca1/Download94$State;->rv:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4, v0}, Landroid/view/ViewGroup;->scrollBy(II)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$5;->this$0:Lcom/shabakaty/cinemana/ca1/Download94$State;

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->selectAt()V

    :cond_3
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$5;->this$0:Lcom/shabakaty/cinemana/ca1/Download94$State;

    iget-object v0, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->paint:Lcom/shabakaty/cinemana/ca1/Download94$PaintView;

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/ca1/Download94$PaintView;->invalidate()V

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$5;->this$0:Lcom/shabakaty/cinemana/ca1/Download94$State;

    iget-object v0, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->fast:Lcom/shabakaty/cinemana/ca1/Download94$Fast;

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/ca1/Download94$Fast;->invalidate()V

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$5;->this$0:Lcom/shabakaty/cinemana/ca1/Download94$State;

    iget-object v0, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->h:Landroid/os/Handler;

    const-wide/16 v1, 0x18

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_1
    return-void
.end method
