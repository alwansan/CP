.class public Lcom/shabakaty/downloader/fo4;
.super Lcom/shabakaty/downloader/i;
.source "ToolbarOnDestinationChangedListener.java"


# instance fields
.field public final w:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/appcompat/widget/Toolbar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;Lcom/shabakaty/downloader/m9;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/shabakaty/downloader/i;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/m9;)V

    .line 2
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/fo4;->w:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fo4;->w:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 4
    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(I)V

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    .line 5
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/hq4;->a(Landroid/view/ViewGroup;Lcom/shabakaty/downloader/dq4;)V

    :cond_1
    return-void
.end method

.method public k(Landroidx/navigation/NavController;Landroidx/navigation/c;Landroid/os/Bundle;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fo4;->w:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p1, Landroidx/navigation/NavController;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    instance-of v0, p2, Lcom/shabakaty/downloader/re1;

    if-eqz v0, :cond_1

    goto/16 :goto_6

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/i;->t:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/w73;

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/shabakaty/downloader/i;->t:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_3

    if-nez v0, :cond_3

    .line 7
    iget-object p1, p1, Landroidx/navigation/NavController;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 8
    :cond_3
    iget-object p1, p2, Landroidx/navigation/c;->v:Ljava/lang/CharSequence;

    const/4 v2, 0x1

    if-eqz p1, :cond_6

    .line 9
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "\\{(.+?)\\}"

    .line 10
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 11
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 12
    :goto_1
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 13
    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    if-eqz p3, :cond_4

    .line 14
    invoke-virtual {p3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, ""

    .line 15
    invoke-virtual {v4, v3, v6}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 16
    invoke-virtual {p3, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 17
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " to fill label "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 18
    :cond_5
    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 19
    iget-object p1, p0, Lcom/shabakaty/downloader/fo4;->w:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 20
    :cond_6
    iget-object p1, p0, Lcom/shabakaty/downloader/i;->s:Ljava/util/Set;

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/xx2;->a(Landroidx/navigation/c;Ljava/util/Set;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez v0, :cond_7

    if-eqz p1, :cond_7

    .line 21
    invoke-virtual {p0, v1, p2}, Lcom/shabakaty/downloader/fo4;->a(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_6

    :cond_7
    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_2

    :cond_8
    const/4 p1, 0x0

    .line 22
    :goto_2
    iget-object p3, p0, Lcom/shabakaty/downloader/i;->u:Lcom/shabakaty/downloader/n01;

    if-nez p3, :cond_9

    .line 23
    new-instance p3, Lcom/shabakaty/downloader/n01;

    iget-object v0, p0, Lcom/shabakaty/downloader/i;->r:Landroid/content/Context;

    invoke-direct {p3, v0}, Lcom/shabakaty/downloader/n01;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/shabakaty/downloader/i;->u:Lcom/shabakaty/downloader/n01;

    const/4 p3, 0x0

    goto :goto_3

    :cond_9
    const/4 p3, 0x1

    .line 24
    :goto_3
    iget-object v0, p0, Lcom/shabakaty/downloader/i;->u:Lcom/shabakaty/downloader/n01;

    if-eqz p1, :cond_a

    const v1, 0x7f1201d1

    goto :goto_4

    :cond_a
    const v1, 0x7f1201d0

    :goto_4
    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/fo4;->a(Landroid/graphics/drawable/Drawable;I)V

    if-eqz p1, :cond_b

    const/4 p1, 0x0

    goto :goto_5

    :cond_b
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_5
    if-eqz p3, :cond_d

    .line 25
    iget-object p3, p0, Lcom/shabakaty/downloader/i;->u:Lcom/shabakaty/downloader/n01;

    .line 26
    iget p3, p3, Lcom/shabakaty/downloader/n01;->i:F

    .line 27
    iget-object v0, p0, Lcom/shabakaty/downloader/i;->v:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_c

    .line 28
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 29
    :cond_c
    iget-object v0, p0, Lcom/shabakaty/downloader/i;->u:Lcom/shabakaty/downloader/n01;

    const/4 v1, 0x2

    new-array v1, v1, [F

    aput p3, v1, p2

    aput p1, v1, v2

    const-string p1, "progress"

    invoke-static {v0, p1, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/i;->v:Landroid/animation/ValueAnimator;

    .line 30
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_6

    .line 31
    :cond_d
    iget-object p2, p0, Lcom/shabakaty/downloader/i;->u:Lcom/shabakaty/downloader/n01;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/n01;->setProgress(F)V

    :goto_6
    return-void
.end method
