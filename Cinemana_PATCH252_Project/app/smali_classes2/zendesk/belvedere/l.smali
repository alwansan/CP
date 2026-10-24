.class public Lzendesk/belvedere/l;
.super Landroid/widget/PopupWindow;
.source "ImageStreamUi.java"

# interfaces
.implements Lzendesk/belvedere/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/belvedere/l$b;
    }
.end annotation


# static fields
.field public static final synthetic m:I


# instance fields
.field public final a:Lzendesk/belvedere/j;

.field public final b:Lzendesk/belvedere/d;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lzendesk/belvedere/m;

.field public e:Landroid/view/View;

.field public f:Landroid/view/View;

.field public g:Landroid/view/View;

.field public h:Lzendesk/belvedere/FloatingActionMenu;

.field public i:Landroidx/recyclerview/widget/RecyclerView;

.field public j:Landroidx/appcompat/widget/Toolbar;

.field public k:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public l:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lzendesk/belvedere/c;Lzendesk/belvedere/a$c;)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p4

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 1
    invoke-direct {v1, v0, v3, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    const/4 v5, 0x2

    .line 2
    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    const/4 v6, 0x1

    .line 3
    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 4
    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 5
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v1, v7}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    const v7, 0x7f0a00a5

    .line 7
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v1, Lzendesk/belvedere/l;->e:Landroid/view/View;

    const v7, 0x7f0a0143

    .line 8
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v1, Lzendesk/belvedere/l;->f:Landroid/view/View;

    const v7, 0x7f0a0223

    .line 9
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v7, v1, Lzendesk/belvedere/l;->i:Landroidx/recyclerview/widget/RecyclerView;

    const v7, 0x7f0a0225

    .line 10
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/Toolbar;

    iput-object v7, v1, Lzendesk/belvedere/l;->j:Landroidx/appcompat/widget/Toolbar;

    const v7, 0x7f0a0226

    .line 11
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v1, Lzendesk/belvedere/l;->g:Landroid/view/View;

    const v7, 0x7f0a0224

    .line 12
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    const v7, 0x7f0a01dc

    .line 13
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lzendesk/belvedere/FloatingActionMenu;

    iput-object v7, v1, Lzendesk/belvedere/l;->h:Lzendesk/belvedere/FloatingActionMenu;

    move-object/from16 v7, p1

    .line 14
    iput-object v7, v1, Lzendesk/belvedere/l;->l:Landroid/app/Activity;

    .line 15
    new-instance v7, Lzendesk/belvedere/d;

    invoke-direct {v7}, Lzendesk/belvedere/d;-><init>()V

    iput-object v7, v1, Lzendesk/belvedere/l;->b:Lzendesk/belvedere/d;

    .line 16
    invoke-virtual/range {p3 .. p3}, Lzendesk/belvedere/c;->Z1()Lzendesk/belvedere/m;

    move-result-object v8

    iput-object v8, v1, Lzendesk/belvedere/l;->d:Lzendesk/belvedere/m;

    .line 17
    iget-object v8, v2, Lzendesk/belvedere/a$c;->u:Ljava/util/List;

    .line 18
    iput-object v8, v1, Lzendesk/belvedere/l;->c:Ljava/util/List;

    .line 19
    new-instance v9, Lzendesk/belvedere/h;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v9, v0, v2}, Lzendesk/belvedere/h;-><init>(Landroid/content/Context;Lzendesk/belvedere/a$c;)V

    .line 20
    new-instance v0, Lzendesk/belvedere/j;

    move-object/from16 v2, p3

    invoke-direct {v0, v9, v1, v2}, Lzendesk/belvedere/j;-><init>(Lcom/shabakaty/downloader/lz1;Lzendesk/belvedere/i;Lzendesk/belvedere/c;)V

    iput-object v0, v1, Lzendesk/belvedere/l;->a:Lzendesk/belvedere/j;

    .line 21
    iget-boolean v2, v9, Lzendesk/belvedere/h;->f:Z

    if-nez v2, :cond_6

    .line 22
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x18

    if-lt v2, v10, :cond_0

    .line 23
    iget-object v2, v1, Lzendesk/belvedere/l;->l:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v1, Lzendesk/belvedere/l;->l:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 24
    :cond_0
    iget-object v2, v1, Lzendesk/belvedere/l;->l:Landroid/app/Activity;

    .line 25
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->keyboard:I

    if-eq v2, v6, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    goto :goto_1

    .line 26
    :cond_2
    iget-object v2, v1, Lzendesk/belvedere/l;->l:Landroid/app/Activity;

    const-string v10, "accessibility"

    invoke-virtual {v2, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v2, :cond_4

    const/16 v10, 0x2f

    .line 27
    invoke-virtual {v2, v10}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 28
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    :cond_3
    :goto_1
    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v2, 0x1

    .line 29
    :goto_4
    iget-object v10, v1, Lzendesk/belvedere/l;->e:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0006

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 30
    new-instance v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-direct {v11, v10, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    .line 31
    iget-object v10, v1, Lzendesk/belvedere/l;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 32
    iget-object v10, v1, Lzendesk/belvedere/l;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v10, v6}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 33
    iget-object v10, v1, Lzendesk/belvedere/l;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v10, v6}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 34
    iget-object v10, v1, Lzendesk/belvedere/l;->i:Landroidx/recyclerview/widget/RecyclerView;

    const/high16 v11, 0x100000

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setDrawingCacheQuality(I)V

    .line 35
    new-instance v10, Landroidx/recyclerview/widget/i;

    invoke-direct {v10}, Landroidx/recyclerview/widget/i;-><init>()V

    .line 36
    invoke-virtual {v10, v4}, Landroidx/recyclerview/widget/d0;->setSupportsChangeAnimations(Z)V

    .line 37
    iget-object v11, v1, Lzendesk/belvedere/l;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v11, v10}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$j;)V

    .line 38
    iget-object v10, v1, Lzendesk/belvedere/l;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v10, v7}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 39
    iget-object v7, v1, Lzendesk/belvedere/l;->j:Landroidx/appcompat/widget/Toolbar;

    const v10, 0x7f08006d

    invoke-virtual {v7, v10}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 40
    iget-object v7, v1, Lzendesk/belvedere/l;->j:Landroidx/appcompat/widget/Toolbar;

    const v10, 0x7f120049

    invoke-virtual {v7, v10}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(I)V

    .line 41
    iget-object v7, v1, Lzendesk/belvedere/l;->j:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 42
    iget-object v7, v1, Lzendesk/belvedere/l;->j:Landroidx/appcompat/widget/Toolbar;

    new-instance v10, Lcom/shabakaty/downloader/pz1;

    invoke-direct {v10, v1, v2}, Lcom/shabakaty/downloader/pz1;-><init>(Lzendesk/belvedere/l;Z)V

    invoke-virtual {v7, v10}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v7, v1, Lzendesk/belvedere/l;->g:Landroid/view/View;

    .line 44
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    const/4 v10, 0x0

    if-eqz v7, :cond_7

    .line 45
    new-instance v11, Lzendesk/belvedere/l$b;

    xor-int/lit8 v12, v2, 0x1

    invoke-direct {v11, v1, v12, v10}, Lzendesk/belvedere/l$b;-><init>(Lzendesk/belvedere/l;ZLcom/shabakaty/downloader/pz1;)V

    invoke-virtual {v7, v11}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->b(Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;)V

    .line 46
    :cond_7
    iget-object v7, v1, Lzendesk/belvedere/l;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v11, v1, Lzendesk/belvedere/l;->e:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f070055

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v11, v11

    sget-object v12, Lcom/shabakaty/downloader/c35;->a:Ljava/util/WeakHashMap;

    .line 47
    invoke-virtual {v7, v11}, Landroid/view/View;->setElevation(F)V

    .line 48
    iget-object v7, v1, Lzendesk/belvedere/l;->e:Landroid/view/View;

    invoke-static {v7}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v7

    iput-object v7, v1, Lzendesk/belvedere/l;->k:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 49
    new-instance v11, Lcom/shabakaty/downloader/qz1;

    invoke-direct {v11, v1}, Lcom/shabakaty/downloader/qz1;-><init>(Lzendesk/belvedere/l;)V

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "BottomSheetBehavior"

    const-string v13, "BottomSheetBehavior now supports multiple callbacks. `setBottomSheetCallback()` removes all existing callbacks, including ones set internally by library authors, which may result in unintended behavior. This may change in the future. Please use `addBottomSheetCallback()` and `removeBottomSheetCallback()` instead to set your own callbacks."

    .line 50
    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v12, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->P:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 52
    iget-object v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->P:Ljava/util/ArrayList;

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/shabakaty/downloader/cz4;->b(Landroid/view/View;Z)V

    if-nez v2, :cond_8

    .line 54
    iget-object v7, v1, Lzendesk/belvedere/l;->k:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v11, v1, Lzendesk/belvedere/l;->e:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    iget-object v12, v1, Lzendesk/belvedere/l;->d:Lzendesk/belvedere/m;

    invoke-virtual {v12}, Lzendesk/belvedere/m;->getKeyboardHeight()I

    move-result v12

    add-int/2addr v12, v11

    invoke-virtual {v7, v12}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l(I)V

    .line 55
    iget-object v7, v1, Lzendesk/belvedere/l;->k:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v11, 0x4

    invoke-virtual {v7, v11}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m(I)V

    .line 56
    iget-object v7, v1, Lzendesk/belvedere/l;->d:Lzendesk/belvedere/m;

    new-instance v11, Lzendesk/belvedere/k;

    invoke-direct {v11, v1}, Lzendesk/belvedere/k;-><init>(Lzendesk/belvedere/l;)V

    invoke-virtual {v7, v11}, Lzendesk/belvedere/m;->setKeyboardHeightListener(Lzendesk/belvedere/m$c;)V

    goto :goto_5

    .line 57
    :cond_8
    iget-object v7, v1, Lzendesk/belvedere/l;->k:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 58
    iput-boolean v6, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Z

    const/4 v11, 0x3

    .line 59
    invoke-virtual {v7, v11}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m(I)V

    .line 60
    iget-object v7, v1, Lzendesk/belvedere/l;->l:Landroid/app/Activity;

    sget v11, Lzendesk/belvedere/m;->x:I

    .line 61
    invoke-virtual {v7}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 62
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "input_method"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v11, :cond_9

    .line 63
    invoke-virtual {v7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v11, v7, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 64
    :cond_9
    :goto_5
    iget-object v7, v1, Lzendesk/belvedere/l;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 65
    iget-object v7, v1, Lzendesk/belvedere/l;->e:Landroid/view/View;

    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 66
    iget-object v7, v1, Lzendesk/belvedere/l;->l:Landroid/app/Activity;

    .line 67
    iget-object v11, v1, Lzendesk/belvedere/l;->f:Landroid/view/View;

    new-instance v12, Lcom/shabakaty/downloader/rz1;

    invoke-direct {v12, v1, v8, v7}, Lcom/shabakaty/downloader/rz1;-><init>(Lzendesk/belvedere/l;Ljava/util/List;Landroid/app/Activity;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 68
    iget-object v7, v9, Lzendesk/belvedere/h;->a:Lcom/shabakaty/downloader/oz1;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 70
    iget-object v7, v7, Lcom/shabakaty/downloader/oz1;->b:Lcom/shabakaty/downloader/iz1;

    .line 71
    iget-object v11, v7, Lcom/shabakaty/downloader/iz1;->a:Landroid/content/Context;

    if-nez v11, :cond_a

    move-object v7, v10

    goto :goto_7

    .line 72
    :cond_a
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1d

    if-lt v11, v12, :cond_b

    const-string v12, "datetaken"

    goto :goto_6

    :cond_b
    const-string v12, "date_modified"

    :goto_6
    const/16 v13, 0x1a

    const/16 v14, 0x1f4

    if-lt v11, v13, :cond_c

    .line 73
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    const-string v13, "android:query-arg-limit"

    .line 74
    invoke-virtual {v11, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-array v13, v6, [Ljava/lang/String;

    aput-object v12, v13, v4

    const-string v12, "android:query-arg-sort-columns"

    .line 75
    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v12, "android:query-arg-sort-direction"

    .line 76
    invoke-virtual {v11, v12, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    iget-object v7, v7, Lcom/shabakaty/downloader/iz1;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v12, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v13, Lcom/shabakaty/downloader/iz1;->b:[Ljava/lang/String;

    invoke-virtual {v7, v12, v13, v11, v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    goto :goto_7

    .line 78
    :cond_c
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v13, v5, [Ljava/lang/Object;

    aput-object v12, v13, v4

    .line 79
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v13, v6

    const-string v12, "%s DESC LIMIT %s"

    invoke-static {v11, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 80
    iget-object v7, v7, Lcom/shabakaty/downloader/iz1;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v16, Lcom/shabakaty/downloader/iz1;->b:[Ljava/lang/String;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    :goto_7
    if-eqz v7, :cond_e

    .line 81
    :goto_8
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_e

    const-string v11, "external"

    const-string v12, "_id"

    .line 82
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 83
    invoke-static {v11, v12, v13}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v17

    const-string v11, "_size"

    .line 84
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    const-string v11, "width"

    .line 85
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    const-string v11, "height"

    .line 86
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    const-string v11, "_display_name"

    .line 87
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "image/jpeg"

    .line 88
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_d

    const-string v13, "."

    .line 89
    invoke-virtual {v11, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    if-eq v13, v3, :cond_d

    .line 90
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v12

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v11, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :cond_d
    move-object/from16 v19, v12

    .line 91
    new-instance v12, Lcom/shabakaty/downloader/tp2;

    const/4 v15, 0x0

    move-object v14, v12

    move-object/from16 v16, v17

    move-object/from16 v18, v11

    invoke-direct/range {v14 .. v25}, Lcom/shabakaty/downloader/tp2;-><init>(Ljava/io/File;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJJ)V

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v0

    .line 92
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 93
    throw v0

    :cond_e
    if-eqz v7, :cond_f

    .line 94
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 95
    :cond_f
    iget-object v7, v9, Lzendesk/belvedere/h;->d:Ljava/util/List;

    iget-object v11, v9, Lzendesk/belvedere/h;->c:Ljava/util/List;

    invoke-virtual {v9, v7, v11}, Lzendesk/belvedere/h;->c(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 96
    invoke-virtual {v9, v8, v7}, Lzendesk/belvedere/h;->c(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 97
    iget-object v8, v0, Lzendesk/belvedere/j;->a:Lcom/shabakaty/downloader/lz1;

    check-cast v8, Lzendesk/belvedere/h;

    .line 98
    iget-object v9, v8, Lzendesk/belvedere/h;->c:Ljava/util/List;

    .line 99
    iget-object v11, v0, Lzendesk/belvedere/j;->b:Lzendesk/belvedere/i;

    .line 100
    invoke-virtual {v8, v5}, Lzendesk/belvedere/h;->b(I)Lcom/shabakaty/downloader/cp2;

    move-result-object v5

    if-eqz v5, :cond_10

    const/4 v5, 0x1

    goto :goto_9

    :cond_10
    const/4 v5, 0x0

    .line 101
    :goto_9
    iget-object v8, v0, Lzendesk/belvedere/j;->d:Lzendesk/belvedere/d$b;

    check-cast v11, Lzendesk/belvedere/l;

    if-nez v2, :cond_11

    .line 102
    iget-object v2, v11, Lzendesk/belvedere/l;->d:Lzendesk/belvedere/m;

    invoke-virtual {v2}, Lzendesk/belvedere/m;->getInputTrap()Landroid/widget/EditText;

    move-result-object v2

    .line 103
    new-instance v12, Lcom/shabakaty/downloader/vd2;

    invoke-direct {v12, v2}, Lcom/shabakaty/downloader/vd2;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v2, v12}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 104
    :cond_11
    iget-object v2, v11, Lzendesk/belvedere/l;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 105
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 106
    iget-object v3, v11, Lzendesk/belvedere/l;->e:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v5, :cond_12

    .line 107
    iget-object v2, v11, Lzendesk/belvedere/l;->b:Lzendesk/belvedere/d;

    .line 108
    new-instance v3, Lcom/shabakaty/downloader/kz1;

    new-instance v5, Lzendesk/belvedere/e;

    invoke-direct {v5, v8}, Lzendesk/belvedere/e;-><init>(Lzendesk/belvedere/d$b;)V

    const v12, 0x7f0d002e

    const v13, 0x7f08006a

    invoke-direct {v3, v12, v13, v5, v10}, Lcom/shabakaty/downloader/kz1;-><init>(IILandroid/view/View$OnClickListener;Lzendesk/belvedere/e;)V

    .line 109
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v5, v2, Lzendesk/belvedere/d;->b:Ljava/util/List;

    invoke-virtual {v2, v3, v5}, Lzendesk/belvedere/d;->f(Ljava/util/List;Ljava/util/List;)V

    .line 111
    :cond_12
    iget-object v2, v11, Lzendesk/belvedere/l;->b:Lzendesk/belvedere/d;

    iget-object v3, v11, Lzendesk/belvedere/l;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 112
    new-instance v5, Ljava/util/ArrayList;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 113
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shabakaty/downloader/tp2;

    .line 114
    iget-object v12, v10, Lcom/shabakaty/downloader/tp2;->v:Ljava/lang/String;

    if-eqz v12, :cond_13

    const-string v13, "image"

    .line 115
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 116
    new-instance v12, Lzendesk/belvedere/g;

    invoke-direct {v12, v8, v10}, Lzendesk/belvedere/g;-><init>(Lzendesk/belvedere/d$b;Lcom/shabakaty/downloader/tp2;)V

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 117
    :cond_13
    new-instance v12, Lzendesk/belvedere/f;

    invoke-direct {v12, v8, v10, v3}, Lzendesk/belvedere/f;-><init>(Lzendesk/belvedere/d$b;Lcom/shabakaty/downloader/tp2;Landroid/content/Context;)V

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 118
    :cond_14
    iget-object v3, v2, Lzendesk/belvedere/d;->a:Ljava/util/List;

    invoke-virtual {v2, v3, v5}, Lzendesk/belvedere/d;->f(Ljava/util/List;Ljava/util/List;)V

    .line 119
    iget-object v2, v11, Lzendesk/belvedere/l;->b:Lzendesk/belvedere/d;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, v2, Lzendesk/belvedere/d;->b:Ljava/util/List;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 121
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 122
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shabakaty/downloader/tp2;

    .line 123
    iget-object v8, v8, Lcom/shabakaty/downloader/tp2;->t:Landroid/net/Uri;

    .line 124
    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 125
    :cond_15
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shabakaty/downloader/jz1;

    .line 126
    iget-object v9, v8, Lcom/shabakaty/downloader/jz1;->c:Lcom/shabakaty/downloader/tp2;

    .line 127
    iget-object v9, v9, Lcom/shabakaty/downloader/tp2;->t:Landroid/net/Uri;

    .line 128
    invoke-virtual {v5, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 129
    iput-boolean v9, v8, Lcom/shabakaty/downloader/jz1;->d:Z

    goto :goto_c

    .line 130
    :cond_16
    iget-object v5, v2, Lzendesk/belvedere/d;->a:Ljava/util/List;

    invoke-virtual {v2, v5, v3}, Lzendesk/belvedere/d;->f(Ljava/util/List;Ljava/util/List;)V

    .line 131
    iget-object v2, v11, Lzendesk/belvedere/l;->b:Lzendesk/belvedere/d;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    .line 132
    iget-object v2, v0, Lzendesk/belvedere/j;->c:Lzendesk/belvedere/c;

    .line 133
    iget-object v2, v2, Lzendesk/belvedere/c;->s:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 134
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzendesk/belvedere/c$b;

    if-eqz v3, :cond_17

    .line 135
    invoke-interface {v3}, Lzendesk/belvedere/c$b;->onVisible()V

    goto :goto_d

    .line 136
    :cond_18
    iget-object v2, v0, Lzendesk/belvedere/j;->a:Lcom/shabakaty/downloader/lz1;

    check-cast v2, Lzendesk/belvedere/h;

    .line 137
    invoke-virtual {v2}, Lzendesk/belvedere/h;->a()Lcom/shabakaty/downloader/cp2;

    move-result-object v3

    if-eqz v3, :cond_19

    iget-object v2, v2, Lzendesk/belvedere/h;->a:Lcom/shabakaty/downloader/oz1;

    const-string v3, "com.google.android.apps.photos"

    .line 138
    iget-object v2, v2, Lcom/shabakaty/downloader/oz1;->a:Landroid/content/Context;

    .line 139
    :try_start_1
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v5, 0x80

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_e

    :catch_0
    const/4 v2, 0x0

    :goto_e
    if-eqz v2, :cond_19

    const/4 v2, 0x1

    goto :goto_f

    :cond_19
    const/4 v2, 0x0

    :goto_f
    if-eqz v2, :cond_1a

    .line 140
    new-instance v2, Lcom/shabakaty/downloader/mz1;

    invoke-direct {v2, v0}, Lcom/shabakaty/downloader/mz1;-><init>(Lzendesk/belvedere/j;)V

    .line 141
    iget-object v3, v0, Lzendesk/belvedere/j;->b:Lzendesk/belvedere/i;

    check-cast v3, Lzendesk/belvedere/l;

    .line 142
    iget-object v3, v3, Lzendesk/belvedere/l;->h:Lzendesk/belvedere/FloatingActionMenu;

    if-eqz v3, :cond_1a

    const v5, 0x7f08006e

    const v7, 0x7f0a009a

    const v8, 0x7f12003e

    .line 143
    invoke-virtual {v3, v5, v7, v8, v2}, Lzendesk/belvedere/FloatingActionMenu;->a(IIILandroid/view/View$OnClickListener;)V

    .line 144
    :cond_1a
    iget-object v2, v0, Lzendesk/belvedere/j;->a:Lcom/shabakaty/downloader/lz1;

    check-cast v2, Lzendesk/belvedere/h;

    .line 145
    invoke-virtual {v2}, Lzendesk/belvedere/h;->a()Lcom/shabakaty/downloader/cp2;

    move-result-object v2

    if-eqz v2, :cond_1b

    const/4 v4, 0x1

    :cond_1b
    if-eqz v4, :cond_1c

    .line 146
    new-instance v2, Lcom/shabakaty/downloader/nz1;

    invoke-direct {v2, v0}, Lcom/shabakaty/downloader/nz1;-><init>(Lzendesk/belvedere/j;)V

    .line 147
    iget-object v3, v0, Lzendesk/belvedere/j;->b:Lzendesk/belvedere/i;

    check-cast v3, Lzendesk/belvedere/l;

    .line 148
    iget-object v3, v3, Lzendesk/belvedere/l;->h:Lzendesk/belvedere/FloatingActionMenu;

    if-eqz v3, :cond_1c

    const v4, 0x7f08006f

    const v5, 0x7f0a0099

    const v6, 0x7f12003d

    .line 149
    invoke-virtual {v3, v4, v5, v6, v2}, Lzendesk/belvedere/FloatingActionMenu;->a(IIILandroid/view/View$OnClickListener;)V

    .line 150
    :cond_1c
    iget-object v2, v0, Lzendesk/belvedere/j;->b:Lzendesk/belvedere/i;

    iget-object v0, v0, Lzendesk/belvedere/j;->a:Lcom/shabakaty/downloader/lz1;

    check-cast v0, Lzendesk/belvedere/h;

    .line 151
    iget-object v0, v0, Lzendesk/belvedere/h;->c:Ljava/util/List;

    .line 152
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    check-cast v2, Lzendesk/belvedere/l;

    invoke-virtual {v2, v0}, Lzendesk/belvedere/l;->c(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/cp2;Lzendesk/belvedere/c;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/cp2;->t:Landroid/content/Intent;

    iget p1, p1, Lcom/shabakaty/downloader/cp2;->s:I

    invoke-virtual {p2, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final b(F)V
    .locals 8

    .line 1
    iget-object v0, p0, Lzendesk/belvedere/l;->j:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lzendesk/belvedere/l;->j:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040128

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/cz4;->a(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v4

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iget-object v4, p0, Lzendesk/belvedere/l;->l:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 4
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {v4}, Landroid/view/Window;->getStatusBarColor()I

    move-result v6

    if-ne v6, v1, :cond_2

    .line 6
    new-instance v6, Landroid/animation/ArgbEvaluator;

    invoke-direct {v6}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-static {v6, v7}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 8
    new-instance v1, Lzendesk/belvedere/l$a;

    invoke-direct {v1, p0, v4, v0}, Lzendesk/belvedere/l$a;-><init>(Lzendesk/belvedere/l;Landroid/view/Window;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v4, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_2
    :goto_1
    const/16 v0, 0x17

    if-lt v5, v0, :cond_4

    .line 11
    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_3

    const/16 p1, 0x2000

    .line 12
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_2

    .line 13
    :cond_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public c(I)V
    .locals 5

    const v0, 0x7f120040

    if-lez p1, :cond_0

    .line 1
    iget-object v1, p0, Lzendesk/belvedere/l;->l:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lzendesk/belvedere/l;->j:Landroidx/appcompat/widget/Toolbar;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    const-string p1, "%s (%d)"

    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lzendesk/belvedere/l;->j:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    :goto_0
    return-void
.end method

.method public dismiss()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lzendesk/belvedere/l;->b(F)V

    .line 3
    iget-object v1, p0, Lzendesk/belvedere/l;->a:Lzendesk/belvedere/j;

    .line 4
    iget-object v2, v1, Lzendesk/belvedere/j;->c:Lzendesk/belvedere/c;

    const/4 v3, 0x0

    .line 5
    iput-object v3, v2, Lzendesk/belvedere/c;->u:Lzendesk/belvedere/l;

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v2, v4, v4, v0}, Lzendesk/belvedere/c;->c2(IIF)V

    .line 7
    iget-object v0, v1, Lzendesk/belvedere/j;->c:Lzendesk/belvedere/c;

    .line 8
    iput-object v3, v0, Lzendesk/belvedere/c;->y:Lcom/shabakaty/downloader/vq;

    .line 9
    iget-object v0, v0, Lzendesk/belvedere/c;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 10
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/belvedere/c$b;

    if-eqz v1, :cond_0

    .line 11
    invoke-interface {v1}, Lzendesk/belvedere/c$b;->onDismissed()V

    goto :goto_0

    :cond_1
    return-void
.end method
