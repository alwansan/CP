.class public Lcom/shabakaty/downloader/c35$c;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/c35;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public static a(Landroid/view/WindowInsets;Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a0495

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnApplyWindowInsetsListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p0}, Landroid/view/View$OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    :cond_0
    return-void
.end method

.method public static b(Landroid/view/View;Lcom/shabakaty/downloader/x65;Landroid/graphics/Rect;)Lcom/shabakaty/downloader/x65;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/x65;->h()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0, p2}, Landroid/view/View;->computeSystemWindowInsets(Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 3
    invoke-static {p1, p0}, Lcom/shabakaty/downloader/x65;->j(Landroid/view/WindowInsets;Landroid/view/View;)Lcom/shabakaty/downloader/x65;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    return-object p1
.end method

.method public static c(Landroid/view/View;)Lcom/shabakaty/downloader/x65;
    .locals 7

    .line 1
    sget-boolean v0, Lcom/shabakaty/downloader/x65$a;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 3
    :try_start_0
    sget-object v2, Lcom/shabakaty/downloader/x65$a;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4
    sget-object v2, Lcom/shabakaty/downloader/x65$a;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 5
    sget-object v3, Lcom/shabakaty/downloader/x65$a;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 6
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_1

    .line 7
    new-instance v3, Lcom/shabakaty/downloader/x65$d;

    invoke-direct {v3}, Lcom/shabakaty/downloader/x65$d;-><init>()V

    goto :goto_0

    :cond_1
    const/16 v4, 0x1d

    if-lt v3, v4, :cond_2

    .line 8
    new-instance v3, Lcom/shabakaty/downloader/x65$c;

    invoke-direct {v3}, Lcom/shabakaty/downloader/x65$c;-><init>()V

    goto :goto_0

    .line 9
    :cond_2
    new-instance v3, Lcom/shabakaty/downloader/x65$b;

    invoke-direct {v3}, Lcom/shabakaty/downloader/x65$b;-><init>()V

    .line 10
    :goto_0
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v5, v6, v2}, Lcom/shabakaty/downloader/r12;->a(IIII)Lcom/shabakaty/downloader/r12;

    move-result-object v2

    .line 11
    invoke-virtual {v3, v2}, Lcom/shabakaty/downloader/x65$e;->c(Lcom/shabakaty/downloader/r12;)V

    .line 12
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v4, v5, v0}, Lcom/shabakaty/downloader/r12;->a(IIII)Lcom/shabakaty/downloader/r12;

    move-result-object v0

    .line 13
    invoke-virtual {v3, v0}, Lcom/shabakaty/downloader/x65$e;->d(Lcom/shabakaty/downloader/r12;)V

    .line 14
    invoke-virtual {v3}, Lcom/shabakaty/downloader/x65$e;->b()Lcom/shabakaty/downloader/x65;

    move-result-object v0

    .line 15
    iget-object v2, v0, Lcom/shabakaty/downloader/x65;->a:Lcom/shabakaty/downloader/x65$k;

    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/x65$k;->m(Lcom/shabakaty/downloader/x65;)V

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    .line 17
    iget-object v2, v0, Lcom/shabakaty/downloader/x65;->a:Lcom/shabakaty/downloader/x65$k;

    invoke-virtual {v2, p0}, Lcom/shabakaty/downloader/x65$k;->d(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "Failed to get insets from AttachInfo. "

    .line 18
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WindowInsetsCompat"

    invoke-static {v2, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return-object v1
.end method

.method public static d(Landroid/view/View;Lcom/shabakaty/downloader/d63;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    const v0, 0x7f0a048d

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_1

    const p1, 0x7f0a0495

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View$OnApplyWindowInsetsListener;

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void

    .line 5
    :cond_1
    new-instance v0, Lcom/shabakaty/downloader/c35$c$a;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/c35$c$a;-><init>(Landroid/view/View;Lcom/shabakaty/downloader/d63;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method
