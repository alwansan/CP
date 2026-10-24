.class public final Lcom/shabakaty/downloader/st2;
.super Ljava/lang/Object;
.source "MiscBindingAdapter.kt"


# static fields
.field public static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x6

    new-array v1, v0, [Lcom/shabakaty/downloader/x93;

    const/4 v2, 0x0

    .line 1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2
    new-instance v4, Lcom/shabakaty/downloader/x93;

    const-string v5, ""

    invoke-direct {v4, v3, v5}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    const/4 v2, 0x1

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4
    new-instance v4, Lcom/shabakaty/downloader/x93;

    const-string v5, "B"

    invoke-direct {v4, v3, v5}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    const/4 v2, 0x2

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 6
    new-instance v4, Lcom/shabakaty/downloader/x93;

    const-string v5, "C"

    invoke-direct {v4, v3, v5}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    const/4 v2, 0x3

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 8
    new-instance v4, Lcom/shabakaty/downloader/x93;

    const-string v5, "D"

    invoke-direct {v4, v3, v5}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    const/4 v2, 0x4

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 10
    new-instance v4, Lcom/shabakaty/downloader/x93;

    const-string v5, "E"

    invoke-direct {v4, v3, v5}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    const/4 v2, 0x5

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 12
    new-instance v4, Lcom/shabakaty/downloader/x93;

    const-string v5, "F"

    invoke-direct {v4, v3, v5}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    .line 13
    new-instance v2, Ljava/util/HashMap;

    invoke-static {v0}, Lcom/shabakaty/downloader/kf5;->i(I)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/vm2;->t(Ljava/util/Map;[Lcom/shabakaty/downloader/x93;)V

    .line 14
    sput-object v2, Lcom/shabakaty/downloader/st2;->a:Ljava/util/HashMap;

    return-void
.end method

.method public static final a(Lcom/google/android/flexbox/FlexboxLayout;Ljava/util/List;Lcom/shabakaty/downloader/j15;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/flexbox/FlexboxLayout;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ob4;",
            ">;",
            "Lcom/shabakaty/downloader/j15;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "navigator"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_2

    goto/16 :goto_3

    .line 3
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/ob4;

    .line 4
    invoke-static {p1}, Lcom/shabakaty/downloader/m50;->i0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 5
    new-instance v4, Lcom/shabakaty/downloader/st2$a;

    invoke-direct {v4, p2}, Lcom/shabakaty/downloader/st2$a;-><init>(Ljava/lang/Object;)V

    .line 6
    sget-object v5, Lcom/shabakaty/downloader/uj2;->c:Lcom/shabakaty/downloader/uj2$b;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "resources"

    invoke-static {v6, v7}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/shabakaty/downloader/uj2$b;->b(Landroid/content/res/Resources;)Ljava/util/Locale;

    move-result-object v5

    .line 7
    new-instance v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    const v9, 0x7f13000b

    invoke-direct {v6, v7, v1, v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 8
    iget-object v7, v2, Lcom/shabakaty/downloader/ob4;->r:Ljava/lang/String;

    const-string v9, "_name"

    .line 9
    invoke-static {v7, v9}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTransitionName(Ljava/lang/String;)V

    if-eqz v3, :cond_3

    .line 10
    iget-object v3, v2, Lcom/shabakaty/downloader/ob4;->s:Ljava/lang/String;

    .line 11
    invoke-static {v3}, Lcom/shabakaty/downloader/re4;->m0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 12
    :cond_3
    iget-object v3, v2, Lcom/shabakaty/downloader/ob4;->s:Ljava/lang/String;

    .line 13
    invoke-static {v3}, Lcom/shabakaty/downloader/re4;->m0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, ", "

    invoke-static {v3, v7}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    new-instance v3, Lcom/shabakaty/downloader/qt2;

    invoke-direct {v3, v4, v2, v6}, Lcom/shabakaty/downloader/qt2;-><init>(Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ob4;Landroid/widget/TextView;)V

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "locale.language"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "ENGLISH"

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "en"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 16
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 17
    :cond_4
    invoke-virtual {p0, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto/16 :goto_1

    :cond_5
    :goto_3
    return-void
.end method

.method public static final b(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0a0523

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->clearAnimation()V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/rt2;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/rt2;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static final c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClick"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    const/4 p2, 0x0

    const v0, 0x7f0a052f

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/rh2;

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    :goto_0
    if-nez v1, :cond_1

    .line 4
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 5
    check-cast v2, Landroid/view/View;

    .line 6
    invoke-virtual {v2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/rh2;

    .line 7
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    move-object v0, p2

    goto :goto_2

    .line 8
    :cond_2
    invoke-static {v1}, Lcom/shabakaty/downloader/cl3;->e(Lcom/shabakaty/downloader/rh2;)Lcom/shabakaty/downloader/ih2;

    move-result-object v0

    :goto_2
    if-nez v0, :cond_5

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Lcom/shabakaty/downloader/rh2;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/shabakaty/downloader/rh2;

    goto :goto_3

    :cond_3
    move-object v0, p2

    :goto_3
    if-nez v0, :cond_4

    move-object v0, p2

    goto :goto_4

    :cond_4
    invoke-static {v0}, Lcom/shabakaty/downloader/cl3;->e(Lcom/shabakaty/downloader/rh2;)Lcom/shabakaty/downloader/ih2;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 10
    invoke-static {v0}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    .line 11
    :cond_5
    :goto_4
    instance-of v1, v0, Lcom/shabakaty/downloader/dt3$a;

    if-eqz v1, :cond_6

    move-object v0, p2

    .line 12
    :cond_6
    check-cast v0, Lcom/shabakaty/downloader/ih2;

    if-nez v0, :cond_7

    goto :goto_6

    .line 13
    :cond_7
    invoke-static {v0}, Lcom/shabakaty/downloader/nh3;->t(Lcom/shabakaty/downloader/se0;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v4, v0

    goto :goto_5

    :cond_8
    move-object v4, p2

    :goto_5
    if-nez v4, :cond_9

    goto :goto_6

    .line 14
    :cond_9
    new-instance v5, Lcom/shabakaty/downloader/st2$b;

    invoke-direct {v5, v4, p1, p0}, Lcom/shabakaty/downloader/st2$b;-><init>(Lcom/shabakaty/downloader/ih2;Lcom/shabakaty/downloader/mm0;Landroid/view/View;)V

    const-wide/16 v6, 0x4b0

    .line 15
    new-instance v3, Lcom/shabakaty/downloader/lo3;

    invoke-direct {v3}, Lcom/shabakaty/downloader/lo3;-><init>()V

    .line 16
    new-instance p1, Lcom/shabakaty/downloader/vt2;

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/shabakaty/downloader/vt2;-><init>(Lcom/shabakaty/downloader/lo3;Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/tm1;J)V

    .line 17
    new-instance p2, Lcom/shabakaty/downloader/pt2;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/shabakaty/downloader/pt2;-><init>(Lcom/shabakaty/downloader/tm1;I)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    .line 18
    :cond_a
    new-instance p2, Lcom/shabakaty/downloader/ig4;

    invoke-direct {p2, p1, p0}, Lcom/shabakaty/downloader/ig4;-><init>(Lcom/shabakaty/downloader/mm0;Landroid/view/View;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_6
    return-void
.end method

.method public static final d(Lcom/shabakaty/downloader/views/DownloadButton;Landroid/view/View$OnClickListener;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/st2$c;

    invoke-direct {v0, p1, p0}, Lcom/shabakaty/downloader/st2$c;-><init>(Landroid/view/View$OnClickListener;Lcom/shabakaty/downloader/views/DownloadButton;)V

    const-string p1, "onClickListener"

    .line 2
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/views/DownloadButton;->E:Lcom/shabakaty/downloader/tm1;

    return-void
.end method

.method public static final e(Lcom/shabakaty/downloader/views/DownloadButton;Landroid/view/View$OnClickListener;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/st2$d;

    invoke-direct {v0, p1, p0}, Lcom/shabakaty/downloader/st2$d;-><init>(Landroid/view/View$OnClickListener;Lcom/shabakaty/downloader/views/DownloadButton;)V

    const-string p1, "onClickListener"

    .line 2
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/views/DownloadButton;->C:Lcom/shabakaty/downloader/tm1;

    return-void
.end method

.method public static final f(Lcom/shabakaty/downloader/views/DownloadButton;Landroid/view/View$OnClickListener;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/st2$e;

    invoke-direct {v0, p1, p0}, Lcom/shabakaty/downloader/st2$e;-><init>(Landroid/view/View$OnClickListener;Lcom/shabakaty/downloader/views/DownloadButton;)V

    const-string p1, "onClickListener"

    .line 2
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/views/DownloadButton;->B:Lcom/shabakaty/downloader/tm1;

    return-void
.end method

.method public static final g(Lcom/shabakaty/downloader/views/DownloadButton;Landroid/view/View$OnClickListener;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/st2$f;

    invoke-direct {v0, p1, p0}, Lcom/shabakaty/downloader/st2$f;-><init>(Landroid/view/View$OnClickListener;Lcom/shabakaty/downloader/views/DownloadButton;)V

    const-string p1, "onClickListener"

    .line 2
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/views/DownloadButton;->D:Lcom/shabakaty/downloader/tm1;

    return-void
.end method

.method public static final h(Lcom/skydoves/powerspinner/PowerSpinnerView;Ljava/util/List;Ljava/lang/Integer;Lcom/shabakaty/downloader/w63;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/skydoves/powerspinner/PowerSpinnerView;",
            "Ljava/util/List<",
            "+TT;>;",
            "Ljava/lang/Integer;",
            "Lcom/shabakaty/downloader/w63;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 1
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerAdapter()Lcom/shabakaty/downloader/oe3;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/oe3;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    move-object v0, p1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    goto :goto_4

    .line 2
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shabakaty/downloader/nl6;->z(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 5
    :cond_4
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerAdapter()Lcom/shabakaty/downloader/oe3;

    move-result-object v0

    instance-of v0, v0, Lcom/shabakaty/downloader/ch0;

    if-nez v0, :cond_5

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/ch0;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/ch0;-><init>(Lcom/skydoves/powerspinner/PowerSpinnerView;)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerAdapter(Lcom/shabakaty/downloader/oe3;)V

    .line 8
    iget-object v1, v0, Lcom/shabakaty/downloader/ch0;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 9
    iget-object v1, v0, Lcom/shabakaty/downloader/ch0;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    :cond_5
    if-nez p2, :cond_6

    goto :goto_3

    .line 11
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 12
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSelectedIndex()I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_7

    .line 13
    iget-object p2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->v:Lcom/shabakaty/downloader/oe3;

    invoke-interface {p2, p1}, Lcom/shabakaty/downloader/oe3;->c(I)V

    :cond_7
    :goto_3
    if-nez p3, :cond_8

    goto :goto_4

    .line 14
    :cond_8
    new-instance p1, Lcom/shabakaty/downloader/st2$g;

    invoke-direct {p1, p3}, Lcom/shabakaty/downloader/st2$g;-><init>(Lcom/shabakaty/downloader/w63;)V

    invoke-virtual {p0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setOnSpinnerItemSelectedListener(Lcom/shabakaty/downloader/ln1;)V

    :goto_4
    return-void
.end method

.method public static final i(Landroidx/appcompat/widget/SearchView;Lcom/shabakaty/downloader/b73;)V
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v1, Lcom/shabakaty/downloader/lo3;

    invoke-direct {v1}, Lcom/shabakaty/downloader/lo3;-><init>()V

    .line 2
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3
    new-instance v3, Lcom/shabakaty/downloader/st2$h;

    invoke-direct {v3, v1, v2, p1}, Lcom/shabakaty/downloader/st2$h;-><init>(Lcom/shabakaty/downloader/lo3;Landroid/os/Handler;Lcom/shabakaty/downloader/b73;)V

    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$l;)V

    .line 4
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_0
    if-nez p1, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$l;)V

    :cond_1
    return-void
.end method

.method public static final j(Landroid/widget/ProgressBar;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoModel"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->duration:Ljava/lang/String;

    .line 2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_5

    .line 3
    iget-object v0, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->duration:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_5

    .line 5
    iget-object v0, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->status:Lcom/shabakaty/downloader/q25;

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_2

    .line 6
    :cond_2
    iget-wide v2, v0, Lcom/shabakaty/downloader/q25;->x:J

    .line 7
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_2
    if-nez v0, :cond_3

    goto :goto_4

    .line 8
    :cond_3
    iget-object v0, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->status:Lcom/shabakaty/downloader/q25;

    if-nez v0, :cond_4

    goto :goto_3

    .line 9
    :cond_4
    iget-wide v0, v0, Lcom/shabakaty/downloader/q25;->x:J

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 10
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->duration:Ljava/lang/String;

    .line 11
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    div-float/2addr v0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float v0, v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :goto_3
    if-eqz v1, :cond_5

    .line 12
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_5
    :goto_4
    return-void
.end method
