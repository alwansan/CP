.class public final Lcom/shabakaty/downloader/vj$a;
.super Ljava/lang/Object;
.source "BaseViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/vj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lcom/shabakaty/downloader/vj;I)V
    .locals 3

    .line 1
    instance-of v0, p0, Lcom/shabakaty/downloader/r9;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eqz v0, :cond_0

    .line 2
    move-object v2, p0

    check-cast v2, Lcom/shabakaty/downloader/r9;

    :cond_0
    if-nez v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {v2, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 4
    :cond_2
    instance-of v0, p0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_6

    if-eqz v0, :cond_3

    .line 5
    move-object v2, p0

    check-cast v2, Landroidx/fragment/app/Fragment;

    :cond_3
    if-nez v2, :cond_4

    goto :goto_0

    .line 6
    :cond_4
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_5

    goto :goto_0

    .line 7
    :cond_5
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_6
    :goto_0
    return-void
.end method

.method public static b(Lcom/shabakaty/downloader/vj;Ljava/lang/String;)V
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/shabakaty/downloader/r9;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz v0, :cond_0

    .line 2
    move-object v1, p0

    check-cast v1, Lcom/shabakaty/downloader/r9;

    :cond_0
    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1, p1}, Lcom/shabakaty/downloader/wt2;->m(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_2
    instance-of v0, p0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_6

    if-eqz v0, :cond_3

    .line 4
    move-object v1, p0

    check-cast v1, Landroidx/fragment/app/Fragment;

    :cond_3
    if-nez v1, :cond_4

    goto :goto_0

    .line 5
    :cond_4
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    .line 6
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_6
    :goto_0
    return-void
.end method
