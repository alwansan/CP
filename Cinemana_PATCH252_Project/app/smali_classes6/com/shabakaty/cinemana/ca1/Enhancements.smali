.class public final Lcom/shabakaty/cinemana/ca1/Enhancements;
.super Ljava/lang/Object;
.source "Enhancements.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/cinemana/ca1/Enhancements$DragList;,
        Lcom/shabakaty/cinemana/ca1/Enhancements$State;
    }
.end annotation


# static fields
.field static final LOOKUPS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final MAIN:Landroid/os/Handler;

.field static final NAMES:Ljava/util/concurrent/ExecutorService;

.field static final ROOTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final STATES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/cinemana/ca1/Enhancements$State;",
            ">;"
        }
    .end annotation
.end field

.field static app:Landroid/content/Context;

.field static descending:Z

.field static mode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Enhancements;->MAIN:Landroid/os/Handler;

    .line 29
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Enhancements;->STATES:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Enhancements;->ROOTS:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Enhancements;->LOOKUPS:Ljava/util/Set;

    .line 31
    new-instance v0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda4;-><init>()V

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Enhancements;->NAMES:Ljava/util/concurrent/ExecutorService;

    .line 34
    const/4 v0, 0x0

    sput v0, Lcom/shabakaty/cinemana/ca1/Enhancements;->mode:I

    sput-boolean v0, Lcom/shabakaty/cinemana/ca1/Enhancements;->descending:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyRange(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 6

    .line 25
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->scope(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "number"

    invoke-static {v2, v3}, Lcom/shabakaty/cinemana/ca1/Enhancements;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/Enhancements;->num(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-ltz v4, :cond_0

    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, p2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gtz v3, :cond_0

    xor-int/lit8 v3, p3, 0x1

    invoke-static {p0, v2, v3}, Lcom/shabakaty/cinemana/ca1/Enhancements;->select(Ljava/lang/Object;Ljava/lang/Object;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method static bg(I)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 13
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 p0, 0x41200000    # 10.0f

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method public static bulk(Ljava/lang/Object;)V
    .locals 7

    .line 19
    :try_start_0
    const-string v0, "search"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    const-string v2, "\u0627\u0644\u0628\u062d\u062b \u0628\u0631\u0642\u0645 \u0627\u0644\u062d\u0644\u0642\u0629 \u0628\u0627\u0644\u0636\u0628\u0637"

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v2, 0x108004f

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setCompoundDrawablePadding(I)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/Enhancements;->hideSearchButton(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "\u0627\u0644\u062a\u062d\u062f\u064a\u062f \u0627\u0644\u0645\u062a\u0639\u062f\u062f \u0648\u0627\u0644\u0627\u0633\u062a\u062b\u0646\u0627\u0621"

    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/shabakaty/cinemana/ca1/Enhancements;->button(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0x26

    invoke-static {v5, v6}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, -0x1

    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x6

    invoke-static {v5, v6}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v3, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Landroid/widget/EditText;)V

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "list"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, v1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->drag(Landroid/widget/ListView;Ljava/lang/Object;Ljava/util/List;Z)V

    invoke-static {p0, v3}, Lcom/shabakaty/cinemana/ca1/Enhancements;->styleBulk(Ljava/lang/Object;Landroid/widget/Button;)V

    const-string p0, "bulk_controls"

    const-string v0, "search_visible=true advanced_selection=true"

    invoke-static {p0, v0, v2}, Lcom/shabakaty/cinemana/ca1/Enhancements;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "bulk_controls_error"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static button(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Button;
    .locals 3

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->ink(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    const/16 v2, 0xc

    invoke-static {p0, v2}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/widget/Button;->setPadding(IIII)V

    const v1, -0xebe0d7

    const v2, -0xcfc5bc

    invoke-static {v0, v1, v2}, Lcom/shabakaty/cinemana/ca1/Enhancements;->decorate(Landroid/view/View;II)V

    return-object v0
.end method

.method static varargs call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 7
    const/4 v0, 0x0

    :try_start_0
    instance-of v1, p0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    array-length v7, p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v6, v7, :cond_2

    const/4 v6, 0x1

    :try_start_1
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    instance-of v6, p0, Ljava/lang/Class;

    if-eqz v6, :cond_1

    move-object v6, v0

    goto :goto_2

    :cond_1
    move-object v6, p0

    :goto_2
    invoke-virtual {v5, v6, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_0
    move-exception v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p2, "call_error"

    invoke-static {p2, p1, p0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-object v0
.end method

.method public static card(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->cardBase(Landroid/view/View;)V

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Ui7;->card(Landroid/view/View;)V

    return-void
.end method

.method public static cardBase(Landroid/view/View;)V
    .locals 11

    .line 84
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    const/high16 v2, 0x41300000    # 11.0f

    if-nez v1, :cond_1

    const v0, -0xeee6de

    const v1, -0xcfc5bc

    invoke-static {p0, v0, v1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->decorate(Landroid/view/View;II)V

    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    check-cast p0, Landroid/widget/TextView;

    const v0, -0x382f28

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void

    .line 85
    :cond_1
    const-string v3, "check"

    invoke-static {v1, v3}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_3

    const v7, -0xdbe4e0

    goto :goto_1

    :cond_3
    const v7, -0xebe3dc

    :goto_1
    if-eqz v6, :cond_4

    const v6, -0x27ded9

    goto :goto_2

    :cond_4
    const v6, -0xd6cbc1

    :goto_2
    invoke-static {p0, v7, v6}, Lcom/shabakaty/cinemana/ca1/Enhancements;->decorate(Landroid/view/View;II)V

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-eqz v6, :cond_5

    const/16 v7, 0x3c

    invoke-static {v0, v7}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result v7

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    const/4 v6, 0x4

    invoke-static {v0, v6}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result v6

    const/4 v7, 0x2

    invoke-static {v0, v7}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result v8

    const/4 v9, 0x6

    invoke-static {v0, v9}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result v10

    invoke-static {v0, v7}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {p0, v6, v8, v10, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 87
    const-string p0, "title"

    invoke-static {v1, p0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const-string v6, "sub"

    invoke-static {v1, v6}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const/high16 v7, 0x41400000    # 12.0f

    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const v7, -0x110e0c

    invoke-static {v7}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v0, v9}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result v7

    invoke-static {v0, v9}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {p0, v7, v5, v8, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 p0, 0x41200000    # 10.0f

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setTextSize(F)V

    const p0, -0x645950

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result p0

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v0, v9}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result p0

    invoke-static {v0, v4}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v0, v9}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v6, p0, v4, v0, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 88
    const-string p0, "quality"

    invoke-static {v1, p0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    const v0, -0xe2d8cf

    const v1, -0xcbbeb3

    invoke-static {p0, v0, v1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->decorate(Landroid/view/View;II)V

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setTextSize(F)V

    if-eqz v3, :cond_6

    const p0, -0x1ed5d0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :cond_6
    goto :goto_3

    :catch_0
    move-exception p0

    const-string v0, "card_style_error"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method static compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 40
    sget v0, Lcom/shabakaty/cinemana/ca1/Enhancements;->mode:I

    const-string v1, "season"

    const-string v2, "episodeNumber"

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p2}, Lcom/shabakaty/cinemana/ca1/Enhancements;->work(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/shabakaty/cinemana/ca1/Enhancements;->work(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :pswitch_0
    const-string v0, "special"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->natural(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :pswitch_1
    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :pswitch_2
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->date(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->date(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :pswitch_3
    invoke-static {p0, v2}, Lcom/shabakaty/cinemana/ca1/Enhancements;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2}, Lcom/shabakaty/cinemana/ca1/Enhancements;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-static {v0, v3}, Lcom/shabakaty/cinemana/ca1/Enhancements;->natural(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_1
    if-nez v0, :cond_0

    invoke-static {p0, p2}, Lcom/shabakaty/cinemana/ca1/Enhancements;->work(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/shabakaty/cinemana/ca1/Enhancements;->work(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->natural(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_1
    if-nez v0, :cond_2

    invoke-static {p0, v2}, Lcom/shabakaty/cinemana/ca1/Enhancements;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v2}, Lcom/shabakaty/cinemana/ca1/Enhancements;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->natural(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_2
    if-nez v0, :cond_3

    const-string p2, "rootEpisode"

    invoke-static {p0, p2}, Lcom/shabakaty/cinemana/ca1/Enhancements;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/shabakaty/cinemana/ca1/Enhancements;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/shabakaty/cinemana/ca1/Enhancements;->natural(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_3
    if-nez v0, :cond_4

    const-string p2, "id"

    invoke-static {p0, p2}, Lcom/shabakaty/cinemana/ca1/Enhancements;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2}, Lcom/shabakaty/cinemana/ca1/Enhancements;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->natural(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_4
    sget-boolean p0, Lcom/shabakaty/cinemana/ca1/Enhancements;->descending:Z

    if-eqz p0, :cond_5

    neg-int v0, v0

    :cond_5
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static date(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .line 39
    const-string v0, "lastUpdated"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "u"

    invoke-static {p0, v2}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v2, p0, Ljava/util/List;

    if-eqz v2, :cond_1

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method static decorate(Landroid/view/View;II)V
    .locals 1

    .line 58
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/shabakaty/cinemana/ca1/Enhancements;->surface(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public static downloads(Landroid/view/View;)V
    .locals 5

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Download94;->install(Landroid/view/View;)V

    .line 43
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->installSortHeader(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/cinemana/ca1/Enhancements;->app:Landroid/content/Context;

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->initLog(Landroid/content/Context;)V

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Enhancements;->loadNames()V

    sget-object v1, Lcom/shabakaty/cinemana/ca1/Enhancements;->app:Landroid/content/Context;

    const-string v2, "ca1_sort"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "mode"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/shabakaty/cinemana/ca1/Enhancements;->mode:I

    sget-object v1, Lcom/shabakaty/cinemana/ca1/Enhancements;->app:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "descending"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/shabakaty/cinemana/ca1/Enhancements;->descending:Z

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v1, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0}, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda8;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "anchor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p0, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "sort_install"

    invoke-static {v1, p0, v0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static dp(Landroid/content/Context;I)I
    .locals 0

    .line 12
    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method static drag(Landroid/widget/ListView;Ljava/lang/Object;Ljava/util/List;Z)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ListView;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 27
    move-object/from16 v14, p0

    const/4 v0, 0x1

    new-array v8, v0, [Z

    const/4 v7, 0x0

    aput-boolean v7, v8, v7

    new-array v9, v0, [Z

    aput-boolean v0, v9, v7

    const/4 v1, 0x2

    new-array v10, v1, [F

    fill-array-data v10, :array_0

    new-array v11, v1, [F

    fill-array-data v11, :array_1

    const/4 v1, -0x1

    filled-new-array {v1}, [I

    move-result-object v12

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v13

    new-array v15, v0, [Ljava/lang/Runnable;

    const/4 v1, 0x0

    aput-object v1, v15, v7

    new-array v6, v0, [Ljava/lang/Runnable;

    aput-object v1, v6, v7

    new-instance v16, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda15;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v10

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object v5, v13

    move-object/from16 v17, v6

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda15;-><init>(Landroid/widget/ListView;[FLjava/util/List;Ljava/lang/Object;Ljava/util/Set;[Z)V

    new-instance v6, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda16;

    move-object v0, v6

    move-object v1, v8

    move-object/from16 v2, p0

    move-object v3, v10

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda16;-><init>([ZLandroid/widget/ListView;[FLjava/lang/Runnable;[Ljava/lang/Runnable;)V

    aput-object v6, v17, v7

    new-instance v7, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda17;

    move-object v0, v7

    move-object v1, v10

    move-object v2, v11

    move-object v3, v12

    move-object/from16 v4, p0

    move-object v5, v13

    move-object v6, v15

    move-object v15, v7

    move-object/from16 v7, p1

    move/from16 v10, p3

    move-object/from16 v11, p2

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    invoke-direct/range {v0 .. v13}, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda17;-><init>([F[F[ILandroid/widget/ListView;Ljava/util/Set;[Ljava/lang/Runnable;Ljava/lang/Object;[Z[ZZLjava/util/List;Ljava/lang/Runnable;[Ljava/lang/Runnable;)V

    instance-of v0, v14, Lcom/shabakaty/cinemana/ca1/Enhancements$DragList;

    if-eqz v0, :cond_0

    move-object v0, v14

    check-cast v0, Lcom/shabakaty/cinemana/ca1/Enhancements$DragList;

    iput-object v15, v0, Lcom/shabakaty/cinemana/ca1/Enhancements$DragList;->controller:Landroid/view/View$OnTouchListener;

    goto :goto_0

    :cond_0
    invoke-virtual {v14, v15}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 5
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static grid(Ljava/lang/Object;Z)V
    .locals 9

    .line 26
    const-string v0, "context"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->scope(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    const-string v7, "season"

    invoke-static {v6, v7}, Lcom/shabakaty/cinemana/ca1/Enhancements;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u0627\u0644\u0645\u0648\u0633\u0645 "

    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v5, v3

    move-object v4, v7

    :cond_0
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_2

    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v2, Lcom/shabakaty/cinemana/ca1/Enhancements$DragList;

    invoke-direct {v2, v0}, Lcom/shabakaty/cinemana/ca1/Enhancements$DragList;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/shabakaty/cinemana/ca1/Enhancements$1;

    invoke-direct {v4, v1, v0, p0, p1}, Lcom/shabakaty/cinemana/ca1/Enhancements$1;-><init>(Ljava/util/List;Landroid/content/Context;Ljava/lang/Object;Z)V

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-static {v2, p0, v1, p1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->drag(Landroid/widget/ListView;Ljava/lang/Object;Ljava/util/List;Z)V

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_4

    const-string v5, "\u0627\u0633\u062a\u062b\u0646\u0627\u0621 \u0627\u0644\u062d\u0644\u0642\u0627\u062a \u00b7 \u0627\u0633\u062d\u0628 \u0628\u0639\u062f \u0627\u0644\u0636\u063a\u0637 \u0627\u0644\u0645\u0637\u0648\u0644"

    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_4
    const-string v5, "\u062a\u062d\u062f\u064a\u062f \u0627\u0644\u062d\u0644\u0642\u0627\u062a \u00b7 \u0627\u0633\u062d\u0628 \u0628\u0639\u062f \u0627\u0644\u0636\u063a\u0637 \u0627\u0644\u0645\u0637\u0648\u0644"

    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v4, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    const-string p0, "\u062a\u0645"

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Dialogs;->style(Landroid/app/AlertDialog;)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v4, v0

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    mul-double v4, v4, v6

    double-to-int v0, v4

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Landroid/view/Window;->setLayout(II)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exclude="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " rows="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "selection_grid"

    invoke-static {p1, p0, v3}, Lcom/shabakaty/cinemana/ca1/Enhancements;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static hideSearchButton(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ca1_download_actions95"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ca1_delete94"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ca1_sort"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 20
    instance-of v0, p0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->hideSearchButton(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method static initLog(Landroid/content/Context;)V
    .locals 4

    .line 8
    :try_start_0
    const-string v0, "com.shabakaty.cinemana.ca1.BatchLog"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "init"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/shabakaty/cinemana/ca1/Enhancements;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "CA1_BATCH"

    const-string v1, "Log initialization"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static install(Ljava/lang/Object;Landroid/view/View;)V
    .locals 4

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Enhancements;->app:Landroid/content/Context;

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->initLog(Landroid/content/Context;)V

    sget-object v0, Lcom/shabakaty/cinemana/ca1/Enhancements;->app:Landroid/content/Context;

    const-string v1, "ca1_sort"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "mode"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/shabakaty/cinemana/ca1/Enhancements;->mode:I

    sget-object v0, Lcom/shabakaty/cinemana/ca1/Enhancements;->app:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "descending"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/shabakaty/cinemana/ca1/Enhancements;->descending:Z

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Enhancements;->loadNames()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "root="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v3, "entry_install"

    invoke-static {v3, v0, v1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p0, p1, v2}, Lcom/shabakaty/cinemana/ca1/Enhancements;->tick(Ljava/lang/Object;Landroid/view/View;I)V

    return-void
.end method

.method static installSortHeader(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Download94;->install(Landroid/view/View;)V

    return-void
.end method

.method static synthetic lambda$bulk$2(Ljava/lang/Object;Landroid/content/DialogInterface;I)V
    .locals 3

    .line 19
    rem-int/lit8 p1, p2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez p1, :cond_1

    if-lt p2, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->range(Ljava/lang/Object;Z)V

    goto :goto_2

    :cond_1
    if-lt p2, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->grid(Ljava/lang/Object;Z)V

    :goto_2
    return-void
.end method

.method static synthetic lambda$bulk$3(Ljava/lang/Object;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 3

    .line 19
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "busy"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p1, "\u0627\u0644\u062a\u062d\u062f\u064a\u062f \u0627\u0644\u0645\u062a\u0639\u062f\u062f"

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "\u0627\u0633\u062a\u062b\u0646\u0627\u0621 \u0646\u0637\u0627\u0642 \u0627\u0644\u062d\u0644\u0642\u0627\u062a"

    invoke-static {p2}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "\u0627\u0633\u062a\u062b\u0646\u0627\u0621 \u0627\u0644\u062d\u0644\u0642\u0627\u062a \u0628\u0627\u0644\u0645\u0631\u0628\u0639\u0627\u062a"

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u062a\u062d\u062f\u064a\u062f \u0646\u0637\u0627\u0642 \u0627\u0644\u062d\u0644\u0642\u0627\u062a"

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u062a\u062d\u062f\u064a\u062f \u0627\u0644\u062d\u0644\u0642\u0627\u062a \u0628\u0627\u0644\u0645\u0631\u0628\u0639\u0627\u062a"

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2, p2, v0}, [Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Dialogs;->show(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic lambda$downloads$15(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 43
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->sortPopup(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method static synthetic lambda$drag$10([F[F[ILandroid/widget/ListView;Ljava/util/Set;[Ljava/lang/Runnable;Ljava/lang/Object;[Z[ZZLjava/util/List;Ljava/lang/Runnable;[Ljava/lang/Runnable;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 14

    .line 27
    move-object/from16 v11, p3

    invoke-virtual/range {p14 .. p14}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/4 v12, 0x0

    aput v0, p0, v12

    invoke-virtual/range {p14 .. p14}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    const/4 v1, 0x1

    aput v0, p0, v1

    invoke-virtual/range {p14 .. p14}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    goto/16 :goto_0

    :pswitch_0
    aget-boolean v0, p7, v12

    if-eqz v0, :cond_1

    invoke-interface/range {p11 .. p11}, Ljava/lang/Runnable;->run()V

    return v1

    :cond_1
    aget v0, p0, v12

    aget v2, p1, v12

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_2

    aget v0, p0, v1

    aget v1, p1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    :cond_2
    aget-object v0, p5, v12

    if-eqz v0, :cond_0

    invoke-virtual {v11, v0}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_1
    aget-object v0, p5, v12

    if-eqz v0, :cond_3

    invoke-virtual {v11, v0}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_3
    aget-object v0, p12, v12

    invoke-virtual {v11, v0}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    aget-boolean v0, p7, v12

    aput-boolean v12, p7, v12

    if-eqz v0, :cond_0

    invoke-static/range {p6 .. p6}, Lcom/shabakaty/cinemana/ca1/Enhancements;->refresh(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exclude="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v4, p9

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " count="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface/range {p4 .. p4}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "selection_drag"

    invoke-static {v3, v0, v2}, Lcom/shabakaty/cinemana/ca1/Enhancements;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :pswitch_2
    move/from16 v4, p9

    aget v0, p0, v12

    aput v0, p1, v12

    aget v0, p0, v1

    aput v0, p1, v1

    aget v0, p0, v12

    float-to-int v0, v0

    aget v1, p0, v1

    float-to-int v1, v1

    invoke-virtual {v11, v0, v1}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v0

    aput v0, p2, v12

    invoke-interface/range {p4 .. p4}, Ljava/util/Set;->clear()V

    new-instance v13, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda14;

    move-object v0, v13

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object/from16 v5, p10

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object v8, p0

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    invoke-direct/range {v0 .. v10}, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda14;-><init>(Ljava/lang/Object;[Z[ZZLjava/util/List;[ILandroid/widget/ListView;[FLjava/lang/Runnable;[Ljava/lang/Runnable;)V

    aput-object v13, p5, v12

    aget-object v0, p5, v12

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v11, v0, v1, v2}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    aget-boolean v0, p7, v12

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic lambda$drag$7(Landroid/widget/ListView;[FLjava/util/List;Ljava/lang/Object;Ljava/util/Set;[Z)V
    .locals 7

    .line 27
    const/4 v0, 0x0

    aget v1, p1, v0

    float-to-int v1, v1

    const/4 v2, 0x1

    aget v2, p1, v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v1

    if-gez v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    if-nez p2, :cond_1

    const-string p1, "rows"

    invoke-static {p3, p1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-nez v3, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    aget v5, p1, v0

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_2

    aget v5, p1, v0

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v2, :cond_5

    invoke-interface {p4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    aget-boolean p1, p5, v0

    invoke-static {p3, v2, p1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->select(Ljava/lang/Object;Ljava/lang/Object;Z)V

    if-nez p2, :cond_4

    const-string p0, "refresh"

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p3, p0, p1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Landroid/widget/BaseAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_5
    :goto_2
    return-void
.end method

.method static synthetic lambda$drag$8([ZLandroid/widget/ListView;[FLjava/lang/Runnable;[Ljava/lang/Runnable;)V
    .locals 7

    .line 27
    const/4 v0, 0x0

    aget-boolean p0, p0, v0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 v1, 0x30

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result p0

    const/4 v1, 0x1

    aget v2, p2, v1

    int-to-float v3, p0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x41e00000    # 28.0f

    cmpg-float v6, v2, v3

    if-gez v6, :cond_1

    invoke-virtual {p1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object p0

    aget p2, p2, v1

    sub-float p2, v3, p2

    div-float/2addr p2, v3

    invoke-static {v4, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    mul-float p2, p2, v5

    float-to-int p2, p2

    add-int/lit8 p2, p2, 0x8

    invoke-static {p0, p2}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result p0

    neg-int p0, p0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeight()I

    move-result v6

    sub-int/2addr v6, p0

    int-to-float v6, v6

    cmpl-float v2, v2, v6

    if-lez v2, :cond_2

    invoke-virtual {p1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v2

    aget p2, p2, v1

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    sub-int/2addr v1, p0

    int-to-float p0, v1

    sub-float/2addr p2, p0

    div-float/2addr p2, v3

    invoke-static {v4, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    mul-float p0, p0, v5

    float-to-int p0, p0

    add-int/lit8 p0, p0, 0x8

    invoke-static {v2, p0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->scrollListBy(I)V

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_3
    aget-object p0, p4, v0

    const-wide/16 p2, 0x20

    invoke-virtual {p1, p0, p2, p3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic lambda$drag$9(Ljava/lang/Object;[Z[ZZLjava/util/List;[ILandroid/widget/ListView;[FLjava/lang/Runnable;[Ljava/lang/Runnable;)V
    .locals 12

    .line 27
    move-object v0, p0

    move-object/from16 v1, p6

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "busy"

    invoke-static {p0, v3}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, p1, v2

    xor-int/lit8 v4, p3, 0x1

    aput-boolean v4, p2, v2

    if-nez p4, :cond_1

    const-string v4, "rows"

    invoke-static {p0, v4}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    aget v4, p5, v2

    if-ltz v4, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    aget v4, p5, v2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-nez v4, :cond_1

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aget v5, p5, v2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v5, "selected"

    invoke-static {v0, v5}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v3

    aput-boolean v0, p2, v2

    :cond_1
    invoke-virtual/range {p6 .. p6}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->performHapticFeedback(I)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v8, 0x3

    aget v9, p7, v2

    aget v10, p7, v3

    const/4 v11, 0x0

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    invoke-interface/range {p8 .. p8}, Ljava/lang/Runnable;->run()V

    aget-object v0, p9, v2

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic lambda$grid$6(Ljava/lang/Object;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 26
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->refresh(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$range$4(Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/Object;ZLandroid/app/AlertDialog;Landroid/view/View;)V
    .locals 2

    .line 24
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lcom/shabakaty/cinemana/ca1/Enhancements;->num(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->num(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "!"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2, p5, p1, p3}, Lcom/shabakaty/cinemana/ca1/Enhancements;->applyRange(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    invoke-static {p2}, Lcom/shabakaty/cinemana/ca1/Enhancements;->refresh(Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exclude="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " from="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " to="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " matches="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    const-string p2, "selection_range"

    invoke-static {p2, p0, p1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p4}, Landroid/app/AlertDialog;->dismiss()V

    return-void

    :cond_1
    :goto_0
    const-string p1, "\u0627\u0643\u062a\u0628 \u0646\u0637\u0627\u0642\u064b\u0627 \u0635\u062d\u064a\u062d\u064b\u0627\u060c \u0645\u062b\u0644 5 \u0625\u0644\u0649 17"

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic lambda$range$5(Landroid/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/Object;ZLandroid/content/DialogInterface;)V
    .locals 7

    .line 24
    const/4 p5, -0x1

    invoke-virtual {p0, p5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p5

    new-instance v6, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda5;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda5;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/Object;ZLandroid/app/AlertDialog;)V

    invoke-virtual {p5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$resolveName$12()V
    .locals 0

    .line 33
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Enhancements;->sortAll()V

    return-void
.end method

.method static synthetic lambda$resolveName$13(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 10

    .line 33
    const-string v0, "root="

    :try_start_0
    const-string v1, "com.shabakaty.cinemana.ca1.BatchDownload"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "await"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p0, :cond_0

    const-string v3, "b"

    new-array v7, v5, [Ljava/lang/Object;

    aput-object p1, v7, v6

    invoke-static {p0, v3, v7}, Lcom/shabakaty/cinemana/ca1/Enhancements;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_0
    sget-object v7, Lcom/shabakaty/cinemana/ca1/Enhancements;->app:Landroid/content/Context;

    const-string v8, "z"

    invoke-static {v7, v8}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "a"

    invoke-static {v7, v8}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "A"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    const-string v9, "max-age=900"

    aput-object v9, v3, v5

    invoke-static {v7, v8, v3}, Lcom/shabakaty/cinemana/ca1/Enhancements;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_0
    aput-object v3, v4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v4, v5

    invoke-static {v1, v2, v4}, Lcom/shabakaty/cinemana/ca1/Enhancements;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz p0, :cond_1

    const-string v3, "unwrap"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-static {v1, v3, v4}, Lcom/shabakaty/cinemana/ca1/Enhancements;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const-string v1, "enTitle"

    if-eqz p0, :cond_2

    :try_start_1
    const-string p0, "c"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, p0, v3}, Lcom/shabakaty/cinemana/ca1/Enhancements;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v3, "en"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move-object p0, v1

    goto :goto_1

    :cond_3
    const-string p0, "arTitle"

    :goto_1
    invoke-static {v2, p0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v2, v1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_4
    const-string v1, "null"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/shabakaty/cinemana/ca1/Enhancements;->ROOTS:Ljava/util/Map;

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/cinemana/ca1/Enhancements;->app:Landroid/content/Context;

    if-eqz v1, :cond_5

    const-string v2, "ca1_work_names"

    invoke-virtual {v1, v2, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5
    const-string v1, "work_name_resolved"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " title="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Lcom/shabakaty/cinemana/ca1/Enhancements;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p0, Lcom/shabakaty/cinemana/ca1/Enhancements;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "No root work title"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "work_name_error"

    invoke-static {v0, p1, p0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method static synthetic lambda$sortPopup$16(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sput p0, Lcom/shabakaty/cinemana/ca1/Enhancements;->mode:I

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Enhancements;->sortAll()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$sortPopup$17(ZLandroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 0

    .line 54
    sput-boolean p0, Lcom/shabakaty/cinemana/ca1/Enhancements;->descending:Z

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Enhancements;->sortAll()V

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method static synthetic lambda$static$11(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "CA1-work-names"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method static synthetic lambda$tick$0(ZLjava/lang/Object;Landroid/view/View;)V
    .locals 3

    .line 17
    if-eqz p0, :cond_0

    :try_start_0
    const-string p0, "com.shabakaty.cinemana.ca1.BatchDownload"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "lambda$install$7"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {p0, v0, v1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "entry_open_error"

    const-string p2, ""

    invoke-static {p1, p2, p0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic lambda$tick$1(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .line 17
    add-int/lit8 p2, p2, 0x1

    invoke-static {p0, p1, p2}, Lcom/shabakaty/cinemana/ca1/Enhancements;->tick(Ljava/lang/Object;Landroid/view/View;I)V

    return-void
.end method

.method static synthetic lambda$transform$14(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 36
    invoke-static {p1, p2, p0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)I

    move-result p0

    return p0
.end method

.method static loadNames()V
    .locals 4

    .line 32
    sget-object v0, Lcom/shabakaty/cinemana/ca1/Enhancements;->app:Landroid/content/Context;

    if-eqz v0, :cond_1

    const-string v1, "ca1_work_names"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/shabakaty/cinemana/ca1/Enhancements;->ROOTS:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method static log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9

    .line 9
    :try_start_0
    const-string v0, "com.shabakaty.cinemana.ca1.BatchLog"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "event"

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const-class v4, Ljava/lang/Throwable;

    const/4 v8, 0x3

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "enhancements"

    aput-object v2, v1, v5

    aput-object p0, v1, v6

    aput-object p1, v1, v7

    aput-object p2, v1, v8

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CA1_BATCH"

    invoke-static {p1, p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method static natural(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 37
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->num(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->num(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "!"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static num(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-char v3, p0, v2

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    if-gez v3, :cond_0

    const-string p0, "!"

    return-object p0

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_2

    const-string p0, ""

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method static parents(Landroid/view/View;)Ljava/lang/String;
    .locals 4

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static profile(Landroid/view/View;)V
    .locals 6

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->profile(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->profile(Ljava/lang/Object;)V

    .line 91
    const-string v0, "profile_share"

    const-string v1, "profile_discover_more"

    const-string v2, "profile_app_help_item"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v3, v2, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "help share discover removed"

    const/4 v0, 0x0

    const-string v1, "profile_cleanup"

    invoke-static {v1, p0, v0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 6
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p2, "field_error"

    invoke-static {p2, p1, p0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static range(Ljava/lang/Object;Z)V
    .locals 12

    .line 24
    const-string v0, "context"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x14

    invoke-static {v0, v2}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result v3

    const/16 v4, 0x8

    invoke-static {v0, v4}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result v5

    invoke-static {v0, v2}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v0, v4}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v1, v3, v5, v2, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->search(Landroid/content/Context;)Landroid/widget/EditText;

    move-result-object v8

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->search(Landroid/content/Context;)Landroid/widget/EditText;

    move-result-object v9

    const-string v2, "\u0645\u0646 \u0631\u0642\u0645 \u0627\u0644\u062d\u0644\u0642\u0629"

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const-string v2, "\u0625\u0644\u0649 \u0631\u0642\u0645 \u0627\u0644\u062d\u0644\u0642\u0629"

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x30

    invoke-static {v0, v3}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result v4

    const/4 v5, -0x1

    invoke-direct {v2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v0, v3}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    const-string v0, "\u0627\u0633\u062a\u062b\u0646\u0627\u0621 \u0646\u0637\u0627\u0642 \u062d\u0644\u0642\u0627\u062a"

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "\u062a\u062d\u062f\u064a\u062f \u0646\u0637\u0627\u0642 \u062d\u0644\u0642\u0627\u062a"

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u062a\u0646\u0641\u064a\u0630"

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u0625\u0644\u063a\u0627\u0621"

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda3;

    move-object v6, v1

    move-object v7, v0

    move-object v10, p0

    move v11, p1

    invoke-direct/range {v6 .. v11}, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda3;-><init>(Landroid/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/Object;Z)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Dialogs;->style(Landroid/app/AlertDialog;)V

    return-void
.end method

.method static recycler(Landroid/view/View;)Landroid/view/View;
    .locals 3

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "androidx.recyclerview.widget.RecyclerView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->recycler(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method static refresh(Ljava/lang/Object;)V
    .locals 3

    .line 22
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "refresh"

    invoke-static {p0, v2, v1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "prioritize"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static resolveName(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 33
    const-string v0, "rootSeries"

    invoke-static {p1, v0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "rootEpisode"

    invoke-static {p1, v0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "nb"

    invoke-static {p1, v0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    if-nez p0, :cond_2

    sget-object p1, Lcom/shabakaty/cinemana/ca1/Enhancements;->app:Landroid/content/Context;

    if-eqz p1, :cond_4

    :cond_2
    sget-object p1, Lcom/shabakaty/cinemana/ca1/Enhancements;->ROOTS:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lcom/shabakaty/cinemana/ca1/Enhancements;->LOOKUPS:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/shabakaty/cinemana/ca1/Enhancements;->NAMES:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, v0}, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda12;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method static scope(Ljava/lang/Object;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 21
    const-string v0, "episodes"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "filter"

    invoke-static {p0, v2}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "all"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "*"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "null"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "season"

    invoke-static {v2, v3}, Lcom/shabakaty/cinemana/ca1/Enhancements;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method static search(Landroid/content/Context;)Landroid/widget/EditText;
    .locals 4

    .line 14
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    const/4 v1, -0x1

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    const v1, -0x55554e

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    const-string v1, "\u0627\u0644\u0628\u062d\u062b \u0628\u0631\u0642\u0645 \u0627\u0644\u062d\u0644\u0642\u0629 \u0628\u0627\u0644\u0636\u0628\u0637"

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v1, 0x108004f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const/16 v1, 0x8

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCompoundDrawablePadding(I)V

    const v1, -0xe8e0d9

    const v3, -0xcfc5bc

    invoke-static {p0, v1, v3}, Lcom/shabakaty/cinemana/ca1/Enhancements;->surface(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v1, 0xc

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result v3

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, v3, v2, p0, v2}, Landroid/widget/EditText;->setPadding(IIII)V

    return-object v0
.end method

.method public static season(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->seasonBase(Ljava/lang/Object;Landroid/view/View;)V

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Ui7;->season(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public static seasonBase(Ljava/lang/Object;Landroid/view/View;)V
    .locals 3

    .line 45
    const-string p0, "ca1_season_search"

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->recycler(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    instance-of v0, p0, Landroid/widget/EditText;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    check-cast p0, Landroid/widget/EditText;

    const/4 v0, -0x1

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setTextColor(I)V

    const v0, -0x55554e

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    const v0, 0x108004f

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v2, v2}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    new-instance v0, Lcom/shabakaty/cinemana/ca1/Enhancements$2;

    invoke-direct {v0, p1}, Lcom/shabakaty/cinemana/ca1/Enhancements$2;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const-string p0, "season_search_install"

    const-string p1, "ready"

    :goto_0
    invoke-static {p0, p1, v1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :goto_1
    const-string p0, "season_search_error"

    const-string p1, "controls_missing"

    goto :goto_0
.end method

.method static select(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 2

    .line 23
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "busy"

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "submitted"

    invoke-static {p1, v0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "existing"

    invoke-static {p1, v0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "selected"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/shabakaty/cinemana/ca1/Enhancements;->put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static sortAll()V
    .locals 4

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/shabakaty/cinemana/ca1/Enhancements;->STATES:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "d41"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/cinemana/ca1/Enhancements$State;

    invoke-static {v2, v1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->update(Ljava/lang/Object;Lcom/shabakaty/cinemana/ca1/Enhancements$State;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/shabakaty/cinemana/ca1/Enhancements;->app:Landroid/content/Context;

    if-eqz v0, :cond_2

    const-string v1, "ca1_sort"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mode"

    sget v2, Lcom/shabakaty/cinemana/ca1/Enhancements;->mode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "descending"

    sget-boolean v2, Lcom/shabakaty/cinemana/ca1/Enhancements;->descending:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/shabakaty/cinemana/ca1/Enhancements;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " descending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/shabakaty/cinemana/ca1/Enhancements;->descending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "sort_changed"

    invoke-static {v2, v0, v1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static sortPopup(Landroid/content/Context;Landroid/view/View;)V
    .locals 17

    .line 48
    move-object/from16 v0, p0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/I18n161;->applyDir(Landroid/view/View;)V

    const/16 v3, 0xc

    invoke-static {v0, v3}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result v4

    const/16 v5, 0xa

    invoke-static {v0, v5}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result v6

    invoke-static {v0, v3}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result v7

    invoke-static {v0, v3}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v4, v6, v7, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const v3, -0xebe3dc

    const v4, -0xcbbeb3

    invoke-static {v1, v3, v4}, Lcom/shabakaty/cinemana/ca1/Enhancements;->decorate(Landroid/view/View;II)V

    .line 49
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v7, "\u062a\u0631\u062a\u064a\u0628 \u0627\u0644\u062a\u0646\u0632\u064a\u0644\u0627\u062a"

    invoke-static {v7}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v7, -0x1

    invoke-static {v7}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v8, 0x41600000    # 14.0f

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextSize(F)V

    const v8, 0x800003

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v9, 0x8

    invoke-static {v0, v9}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v6, v11, v11, v11, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 50
    new-instance v6, Landroid/widget/RadioGroup;

    invoke-direct {v6, v0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    const-string v10, "\u0627\u0644\u0645\u0648\u0633\u0645"

    invoke-static {v10}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "\u062e\u0627\u0635"

    invoke-static {v12}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "\u0627\u0633\u0645 \u0627\u0644\u0639\u0645\u0644"

    invoke-static {v13}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "\u0627\u0644\u062d\u0644\u0642\u0629"

    invoke-static {v14}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "\u0627\u0644\u062a\u0627\u0631\u064a\u062e"

    invoke-static {v15}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    filled-new-array {v13, v14, v15, v10, v12}, [Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    :goto_0
    const/4 v13, 0x2

    if-ge v12, v8, :cond_1

    new-instance v14, Landroid/widget/RadioButton;

    invoke-direct {v14, v0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/RadioButton;->setId(I)V

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    aget-object v15, v10, v12

    invoke-virtual {v14, v15}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const/high16 v15, 0x41500000    # 13.0f

    invoke-virtual {v14, v15}, Landroid/widget/RadioButton;->setTextSize(F)V

    const v15, -0x221c18

    invoke-static {v15}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/RadioButton;->setTextColor(I)V

    new-instance v15, Landroid/content/res/ColorStateList;

    new-array v13, v13, [[I

    const v16, 0x10100a0

    filled-new-array/range {v16 .. v16}, [I

    move-result-object v16

    aput-object v16, v13, v11

    new-array v8, v11, [I

    aput-object v8, v13, v2

    const v8, -0x1ed5d0

    const v3, -0x7f6f62

    filled-new-array {v8, v3}, [I

    move-result-object v3

    invoke-direct {v15, v13, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v14, v15}, Landroid/widget/RadioButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    new-instance v3, Landroid/widget/RadioGroup$LayoutParams;

    const/16 v8, 0x24

    invoke-static {v0, v8}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result v8

    invoke-direct {v3, v7, v8}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v14, v3}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v3, Lcom/shabakaty/cinemana/ca1/Enhancements;->mode:I

    if-ne v3, v12, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v14, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    add-int/lit8 v12, v12, 0x1

    const v3, -0xebe3dc

    const/4 v8, 0x5

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 51
    new-instance v3, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda10;

    invoke-direct {v3}, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda10;-><init>()V

    invoke-virtual {v6, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 52
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v0, v2}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v0, v9}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result v7

    invoke-static {v0, v5}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v6, v11, v7, v11, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/PopupWindow;

    const/16 v6, 0xf0

    invoke-static {v0, v6}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result v6

    const/4 v7, -0x2

    invoke-direct {v5, v1, v6, v7, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    invoke-virtual {v5, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    const v1, -0xebe3dc

    invoke-static {v0, v1, v4}, Lcom/shabakaty/cinemana/ca1/Enhancements;->surface(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0, v9}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 54
    const/4 v1, 0x0

    :goto_2
    const/4 v6, 0x3

    if-ge v1, v13, :cond_5

    if-ne v1, v2, :cond_2

    const/4 v7, 0x1

    goto :goto_3

    :cond_2
    const/4 v7, 0x0

    :goto_3
    if-eqz v7, :cond_3

    const-string v8, "\u2193 \u062a\u0646\u0627\u0632\u0644\u064a"

    invoke-static {v8}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_3
    const-string v8, "\u2191 \u062a\u0635\u0627\u0639\u062f\u064a"

    invoke-static {v8}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_4
    invoke-static {v0, v8}, Lcom/shabakaty/cinemana/ca1/Enhancements;->button(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v8

    sget-boolean v9, Lcom/shabakaty/cinemana/ca1/Enhancements;->descending:Z

    if-ne v9, v7, :cond_4

    const v9, -0x27ded9

    goto :goto_5

    :cond_4
    const v9, -0xe2d8cf

    :goto_5
    invoke-static {v8, v9, v4}, Lcom/shabakaty/cinemana/ca1/Enhancements;->decorate(Landroid/view/View;II)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v10, 0x26

    invoke-static {v0, v10}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result v10

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v9, v11, v10, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-static {v0, v6}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result v10

    invoke-static {v0, v6}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v9, v10, v11, v6, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v3, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda11;

    invoke-direct {v6, v7, v5}, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda11;-><init>(ZLandroid/widget/PopupWindow;)V

    invoke-virtual {v8, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 55
    :cond_5
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result v0

    move-object/from16 v1, p1

    invoke-virtual {v5, v1, v11, v0, v6}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    const-string v0, "header native_canva_panel"

    const/4 v1, 0x0

    const-string v2, "sort_popup"

    invoke-static {v2, v0, v1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    return-void
.end method

.method static str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 10
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static styleBulk(Ljava/lang/Object;Landroid/widget/Button;)V
    .locals 16

    .line 71
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "search"

    invoke-static {v0, v2}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const v5, -0xf4eee8

    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/16 v6, 0xc

    invoke-static {v3, v6}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result v7

    const/16 v8, 0x8

    invoke-static {v3, v8}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result v8

    invoke-static {v3, v6}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result v6

    const/16 v9, 0xa

    invoke-static {v3, v9}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v4, v7, v8, v6, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 72
    const v6, -0xe8e0d9

    const v7, -0xcfc5bc

    invoke-static {v2, v6, v7}, Lcom/shabakaty/cinemana/ca1/Enhancements;->decorate(Landroid/view/View;II)V

    const/high16 v8, 0x41500000    # 13.0f

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setTextSize(F)V

    const v8, -0x645950

    invoke-static {v8}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 73
    const-string v2, "\u0627\u062e\u062a\u064a\u0627\u0631 \u0645\u062a\u0642\u062f\u0645"

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "allButton"

    invoke-static {v0, v2}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 74
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x1

    invoke-static {v10}, Lcom/shabakaty/cinemana/ca1/I18n161;->applyDir(Landroid/view/View;)V

    .line 75
    const/4 v12, 0x2

    new-array v13, v12, [Landroid/widget/Button;

    const/4 v14, 0x0

    aput-object v1, v13, v14

    aput-object v2, v13, v11

    const/4 v2, 0x0

    :goto_0
    const/high16 v15, 0x41400000    # 12.0f

    if-ge v2, v12, :cond_1

    aget-object v12, v13, v2

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x24

    invoke-static {v3, v5}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v8, v14, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v5, 0x3

    invoke-static {v3, v5}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result v6

    const/4 v14, 0x6

    invoke-static {v3, v14}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result v7

    invoke-static {v3, v5}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result v5

    invoke-static {v3, v14}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result v14

    invoke-virtual {v8, v6, v7, v5, v14}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v10, v12, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v12, v15}, Landroid/widget/Button;->setTextSize(F)V

    if-ne v12, v1, :cond_0

    const v8, -0x27ded9

    goto :goto_1

    :cond_0
    const v8, -0xcfc5bc

    :goto_1
    const v5, -0xebe3dc

    invoke-static {v12, v5, v8}, Lcom/shabakaty/cinemana/ca1/Enhancements;->decorate(Landroid/view/View;II)V

    add-int/lit8 v2, v2, 0x1

    const v5, -0xf4eee8

    const v6, -0xe8e0d9

    const v7, -0xcfc5bc

    const v8, -0x645950

    const/4 v12, 0x2

    const/4 v14, 0x0

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v11

    invoke-virtual {v4, v10, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 77
    const-string v1, "clearButton"

    const-string v2, "closeButton"

    const-string v4, "seasonButton"

    const-string v5, "qualityButton"

    filled-new-array {v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v14, 0x0

    :goto_2
    const/4 v2, 0x4

    if-ge v14, v2, :cond_3

    aget-object v2, v1, v14

    invoke-static {v0, v2}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const v4, -0xe8e0d9

    const v5, -0xcfc5bc

    invoke-static {v2, v4, v5}, Lcom/shabakaty/cinemana/ca1/Enhancements;->decorate(Landroid/view/View;II)V

    instance-of v5, v2, Landroid/widget/TextView;

    if-eqz v5, :cond_2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 78
    :cond_3
    const-string v1, "list"

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const v5, -0xf4eee8

    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v3, v2}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 79
    const-string v1, "progress"

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, -0x645950

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41300000    # 11.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 80
    const-string v1, "summary"

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, -0x382f28

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const v2, -0xefe7df

    const v3, -0xcfc5bc

    invoke-static {v1, v2, v3}, Lcom/shabakaty/cinemana/ca1/Enhancements;->decorate(Landroid/view/View;II)V

    .line 81
    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, -0x27ded9

    invoke-static {v0, v1, v1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->decorate(Landroid/view/View;II)V

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 82
    const-string v0, "native_controls compact_cards dark_surfaces red_accents"

    const/4 v1, 0x0

    const-string v2, "ui_canva_applied"

    invoke-static {v2, v0, v1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    return-void
.end method

.method static surface(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;
    .locals 3

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v1, 0x6

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-static {p0, p2}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(Landroid/content/Context;I)I

    move-result p2

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/shabakaty/cinemana/ca1/Enhancements;->dp(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-object v0
.end method

.method static tick(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 11

    .line 17
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "getView"

    invoke-static {p0, v2, v1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "ca1_batch_download"

    invoke-virtual {v2, v4, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "c2"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/shabakaty/cinemana/ca1/Enhancements;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "v"

    invoke-static {v2, v4, v3}, Lcom/shabakaty/cinemana/ca1/Enhancements;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v4}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "a"

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/shabakaty/cinemana/ca1/Enhancements;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/util/List;

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    move-object v7, v4

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    const-string v8, "2"

    const-string v9, "kind"

    invoke-static {v3, v9}, Lcom/shabakaty/cinemana/ca1/Enhancements;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v10, "h"

    invoke-static {v2, v10}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/shabakaty/cinemana/ca1/Enhancements;->resolveName(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    if-eqz v1, :cond_5

    if-eqz v8, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setEnabled(Z)V

    if-eqz v7, :cond_4

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_4
    const v2, 0x3f19999a    # 0.6f

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    new-instance v2, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda6;

    invoke-direct {v2, v7, p0}, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda6;-><init>(ZLjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    if-eqz p2, :cond_6

    rem-int/lit8 v2, p2, 0xa

    if-nez v2, :cond_a

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "attempt="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " found="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v1, :cond_7

    const/4 v7, 0x1

    goto :goto_3

    :cond_7
    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " kind="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3, v9}, Lcom/shabakaty/cinemana/ca1/Enhancements;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " id="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "nb"

    invoke-static {v3, v7}, Lcom/shabakaty/cinemana/ca1/Enhancements;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " episodes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v5, :cond_8

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_4

    :cond_8
    const/4 v3, -0x1

    :goto_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " visible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " shown="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v0, 0x1

    :cond_9
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " parents="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->parents(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "entry_visibility"

    invoke-static {v2, v0, v1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    new-instance v0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2}, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static transform(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;
    .locals 5

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dz0"

    const-string v2, "ez0"

    const-string v3, "zv0"

    const-string v4, "d41"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "d"

    invoke-static {p0, v2}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-object v1, Lcom/shabakaty/cinemana/ca1/Enhancements;->STATES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/cinemana/ca1/Enhancements$State;

    if-nez v2, :cond_1

    new-instance v2, Lcom/shabakaty/cinemana/ca1/Enhancements$State;

    invoke-direct {v2}, Lcom/shabakaty/cinemana/ca1/Enhancements$State;-><init>()V

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-boolean p0, v2, Lcom/shabakaty/cinemana/ca1/Enhancements$State;->updating:Z

    if-nez p0, :cond_2

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p0, v2, Lcom/shabakaty/cinemana/ca1/Enhancements$State;->base:Ljava/util/List;

    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, v2, Lcom/shabakaty/cinemana/ca1/Enhancements$State;->query:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "episodeNummer"

    invoke-static {v1, v2}, Lcom/shabakaty/cinemana/ca1/Enhancements;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->num(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->num(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->num(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/util/HashMap;

    sget-object v0, Lcom/shabakaty/cinemana/ca1/Enhancements;->ROOTS:Ljava/util/Map;

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "rootEpisode"

    invoke-static {v1, v2}, Lcom/shabakaty/cinemana/ca1/Enhancements;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "title"

    invoke-static {v1, v3}, Lcom/shabakaty/cinemana/ca1/Enhancements;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->resolveName(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_8
    new-instance v0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda13;

    invoke-direct {v0, p1}, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda13;-><init>(Ljava/util/Map;)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_9
    return-object p0

    :cond_a
    :goto_2
    return-object p1
.end method

.method static update(Ljava/lang/Object;Lcom/shabakaty/cinemana/ca1/Enhancements$State;)V
    .locals 5

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/shabakaty/cinemana/ca1/Enhancements$State;->updating:Z

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "e"

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/shabakaty/cinemana/ca1/Enhancements$State;->base:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v3, v0, v1

    invoke-static {p0, v2, v0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p1, Lcom/shabakaty/cinemana/ca1/Enhancements$State;->updating:Z

    return-void

    :catchall_0
    move-exception p0

    iput-boolean v1, p1, Lcom/shabakaty/cinemana/ca1/Enhancements$State;->updating:Z

    throw p0
.end method

.method static work(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 38
    const-string v0, "rootEpisode"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const-string p1, "title"

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "s"

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method
