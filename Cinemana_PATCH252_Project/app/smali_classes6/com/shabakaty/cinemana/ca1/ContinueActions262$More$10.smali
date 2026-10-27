.class Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$10;
.super Ljava/lang/Object;
.source "ContinueActions262.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->begin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;


# direct methods
.method constructor <init>(Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$10;->this$0:Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$10;->this$0:Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;

    iget-boolean v0, v0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->mode:Z

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$10;->this$0:Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;

    iget-object v0, v0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->recycler:Landroid/view/View;

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$10;->this$0:Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;

    iget-object v1, v1, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->recycler:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$10;->this$0:Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;

    iget v2, v2, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->oldPadding:I

    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$10;->this$0:Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;

    iget-object v3, v3, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->bar:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$10;->this$0:Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;

    iget-object v3, v3, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->recycler:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$10;->this$0:Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;

    iget-object v4, v4, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->recycler:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_32
    return-void
.end method
