.class public final Lcom/shabakaty/cinemana/ca1/Drawer105;
.super Ljava/lang/Object;


# direct methods
.method public static visible(Landroid/view/View;)Z
    .locals 3

    const-string v0, "inner_episodes_constraint"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Native98;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    :cond_0
    return v1
.end method
