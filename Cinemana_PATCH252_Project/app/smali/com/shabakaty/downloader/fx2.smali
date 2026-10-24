.class public final Lcom/shabakaty/downloader/fx2;
.super Ljava/lang/Object;
.source "Navigation.java"


# direct methods
.method public static a(Landroid/view/View;)Landroidx/navigation/NavController;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/fx2;->b(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not have a NavController set"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Landroid/view/View;)Landroidx/navigation/NavController;
    .locals 3

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    const v1, 0x7f0a02fd

    .line 1
    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 2
    instance-of v2, v1, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 3
    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavController;

    goto :goto_1

    .line 4
    :cond_0
    instance-of v2, v1, Landroidx/navigation/NavController;

    if-eqz v2, :cond_1

    .line 5
    check-cast v1, Landroidx/navigation/NavController;

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_2

    return-object v1

    .line 6
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 7
    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_3

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_3
    move-object p0, v0

    goto :goto_0

    :cond_4
    return-object v0
.end method
