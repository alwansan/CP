.class public final Lcom/shabakaty/downloader/d2$a;
.super Landroid/view/View$AccessibilityDelegate;
.source "AccessibilityDelegateCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/d2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/d2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/d2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/d2$a;->a:Lcom/shabakaty/downloader/d2;

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/d2$a;->a:Lcom/shabakaty/downloader/d2;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/d2;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/d2$a;->a:Lcom/shabakaty/downloader/d2;

    .line 2
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/d2;->b(Landroid/view/View;)Lcom/shabakaty/downloader/f2;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/f2;->a:Ljava/lang/Object;

    .line 4
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeProvider;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/d2$a;->a:Lcom/shabakaty/downloader/d2;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/d2;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1
    const-class v2, Ljava/lang/Boolean;

    new-instance v3, Lcom/shabakaty/downloader/e2;

    invoke-direct {v3, v1}, Lcom/shabakaty/downloader/e2;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    sget-object v4, Lcom/shabakaty/downloader/c35;->a:Ljava/util/WeakHashMap;

    .line 3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v5, 0x1

    const/16 v7, 0x1c

    if-lt v4, v7, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x0

    if-eqz v8, :cond_1

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isScreenReaderFocusable()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_1

    :cond_1
    const v8, 0x7f0a0490

    .line 5
    invoke-virtual {v0, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    .line 6
    invoke-virtual {v2, v8}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_1

    :cond_2
    move-object v8, v9

    .line 7
    :goto_1
    check-cast v8, Ljava/lang/Boolean;

    if-nez v8, :cond_3

    const/4 v8, 0x0

    goto :goto_2

    .line 8
    :cond_3
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    :goto_2
    if-lt v4, v7, :cond_4

    .line 9
    invoke-virtual {v1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScreenReaderFocusable(Z)V

    goto :goto_3

    .line 10
    :cond_4
    invoke-virtual {v3, v5, v8}, Lcom/shabakaty/downloader/e2;->h(IZ)V

    :goto_3
    const v8, 0x7f0a048b

    if-lt v4, v7, :cond_5

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_6

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isAccessibilityHeading()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto :goto_5

    .line 12
    :cond_6
    invoke-virtual {v0, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    .line 13
    invoke-virtual {v2, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object v9, v5

    .line 14
    :cond_7
    :goto_5
    check-cast v9, Ljava/lang/Boolean;

    if-nez v9, :cond_8

    const/4 v2, 0x0

    goto :goto_6

    .line 15
    :cond_8
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_6
    if-lt v4, v7, :cond_9

    .line 16
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHeading(Z)V

    goto :goto_7

    :cond_9
    const/4 v5, 0x2

    .line 17
    invoke-virtual {v3, v5, v2}, Lcom/shabakaty/downloader/e2;->h(IZ)V

    .line 18
    :goto_7
    invoke-static/range {p1 .. p1}, Lcom/shabakaty/downloader/c35;->i(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v2

    if-lt v4, v7, :cond_a

    .line 19
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPaneTitle(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 20
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v7, "androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY"

    invoke-virtual {v5, v7, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 21
    :goto_8
    new-instance v2, Lcom/shabakaty/downloader/d35;

    const-class v5, Ljava/lang/CharSequence;

    const v7, 0x7f0a0491

    const/16 v8, 0x40

    const/16 v9, 0x1e

    invoke-direct {v2, v7, v5, v8, v9}, Lcom/shabakaty/downloader/d35;-><init>(ILjava/lang/Class;II)V

    .line 22
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/c35$b;->d(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 23
    invoke-virtual {v3, v2}, Lcom/shabakaty/downloader/e2;->l(Ljava/lang/CharSequence;)V

    move-object/from16 v2, p0

    .line 24
    iget-object v5, v2, Lcom/shabakaty/downloader/d2$a;->a:Lcom/shabakaty/downloader/d2;

    invoke-virtual {v5, v0, v3}, Lcom/shabakaty/downloader/d2;->d(Landroid/view/View;Lcom/shabakaty/downloader/e2;)V

    .line 25
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    const/16 v7, 0x1a

    if-ge v4, v7, :cond_11

    .line 26
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v7, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 27
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v8, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 28
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v9, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 29
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const v1, 0x7f0a048a

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    if-eqz v10, :cond_d

    .line 31
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    .line 32
    :goto_9
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v12, v13, :cond_c

    .line 33
    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/ref/WeakReference;

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_b

    .line 34
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_c
    const/4 v12, 0x0

    .line 35
    :goto_a
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_d

    .line 36
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v10, v13}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 37
    :cond_d
    invoke-static {v5}, Lcom/shabakaty/downloader/e2;->d(Ljava/lang/CharSequence;)[Landroid/text/style/ClickableSpan;

    move-result-object v10

    if-eqz v10, :cond_11

    .line 38
    array-length v11, v10

    if-lez v11, :cond_11

    .line 39
    invoke-virtual {v3}, Lcom/shabakaty/downloader/e2;->f()Landroid/os/Bundle;

    move-result-object v11

    const v12, 0x7f0a000f

    const-string v13, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY"

    invoke-virtual {v11, v13, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseArray;

    if-nez v11, :cond_e

    .line 41
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    .line 42
    invoke-virtual {v0, v1, v11}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_e
    const/4 v1, 0x0

    .line 43
    :goto_b
    array-length v12, v10

    if-ge v1, v12, :cond_11

    .line 44
    aget-object v12, v10, v1

    const/4 v13, 0x0

    .line 45
    :goto_c
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v14

    if-ge v13, v14, :cond_10

    .line 46
    invoke-virtual {v11, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/ref/WeakReference;

    invoke-virtual {v14}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/text/style/ClickableSpan;

    .line 47
    invoke-virtual {v12, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 48
    invoke-virtual {v11, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    goto :goto_d

    :cond_f
    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    .line 49
    :cond_10
    sget v12, Lcom/shabakaty/downloader/e2;->d:I

    add-int/lit8 v13, v12, 0x1

    sput v13, Lcom/shabakaty/downloader/e2;->d:I

    .line 50
    :goto_d
    new-instance v13, Ljava/lang/ref/WeakReference;

    aget-object v14, v10, v1

    invoke-direct {v13, v14}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    aget-object v13, v10, v1

    move-object v14, v5

    check-cast v14, Landroid/text/Spanned;

    .line 52
    invoke-virtual {v3, v7}, Lcom/shabakaty/downloader/e2;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v14, v13}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {v3, v8}, Lcom/shabakaty/downloader/e2;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v14, v13}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-virtual {v3, v9}, Lcom/shabakaty/downloader/e2;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v14, v13}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/e2;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_11
    const v1, 0x7f0a0489

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_12

    .line 57
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_12
    const/4 v6, 0x0

    .line 58
    :goto_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_13

    .line 59
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/e2$a;

    invoke-virtual {v3, v1}, Lcom/shabakaty/downloader/e2;->a(Lcom/shabakaty/downloader/e2$a;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_13
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/d2$a;->a:Lcom/shabakaty/downloader/d2;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/d2;->e(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/d2$a;->a:Lcom/shabakaty/downloader/d2;

    invoke-virtual {v0, p1, p2, p3}, Lcom/shabakaty/downloader/d2;->f(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/d2$a;->a:Lcom/shabakaty/downloader/d2;

    invoke-virtual {v0, p1, p2, p3}, Lcom/shabakaty/downloader/d2;->g(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/d2$a;->a:Lcom/shabakaty/downloader/d2;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/d2;->h(Landroid/view/View;I)V

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/d2$a;->a:Lcom/shabakaty/downloader/d2;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/d2;->i(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
