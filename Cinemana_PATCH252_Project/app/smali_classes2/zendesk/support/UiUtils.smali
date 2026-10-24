.class public Lzendesk/support/UiUtils;
.super Ljava/lang/Object;
.source "UiUtils.java"


# static fields
.field public static IMPL:Lzendesk/support/UiUtils;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/UiUtils;

    invoke-direct {v0}, Lzendesk/support/UiUtils;-><init>()V

    sput-object v0, Lzendesk/support/UiUtils;->IMPL:Lzendesk/support/UiUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dismissKeyboard(Landroid/app/Activity;)V
    .locals 1

    .line 1
    sget-object v0, Lzendesk/support/UiUtils;->IMPL:Lzendesk/support/UiUtils;

    invoke-virtual {v0, p0}, Lzendesk/support/UiUtils;->internalDismissKeyboard(Landroid/app/Activity;)V

    return-void
.end method

.method public static dismissKeyboard(Landroid/view/View;)V
    .locals 1

    .line 2
    sget-object v0, Lzendesk/support/UiUtils;->IMPL:Lzendesk/support/UiUtils;

    invoke-virtual {v0, p0}, Lzendesk/support/UiUtils;->internalDismissKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public static resolveColor(ILandroid/content/Context;)I
    .locals 1

    .line 1
    sget-object v0, Lzendesk/support/UiUtils;->IMPL:Lzendesk/support/UiUtils;

    invoke-virtual {v0, p0, p1}, Lzendesk/support/UiUtils;->internalResolveColor(ILandroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static setTint(ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 1

    .line 1
    sget-object v0, Lzendesk/support/UiUtils;->IMPL:Lzendesk/support/UiUtils;

    invoke-virtual {v0, p0, p1, p2}, Lzendesk/support/UiUtils;->internalSetTint(ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-void
.end method

.method public static themeAttributeToColor(ILandroid/content/Context;I)I
    .locals 1

    .line 1
    sget-object v0, Lzendesk/support/UiUtils;->IMPL:Lzendesk/support/UiUtils;

    invoke-virtual {v0, p0, p1, p2}, Lzendesk/support/UiUtils;->internalThemeAttributeToColor(ILandroid/content/Context;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public internalDismissKeyboard(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "UiUtils"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "Cannot dismiss the keyboard when fragment is detached or the activity is null."

    .line 1
    invoke-static {v0, v1, p1}, Lcom/shabakaty/downloader/tk2;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v2, "input_method"

    .line 2
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 3
    instance-of v3, v2, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v3, :cond_2

    .line 4
    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "Cannot hide soft input because window token could not be obtained"

    .line 7
    invoke-static {v0, v1, p1}, Lcom/shabakaty/downloader/tk2;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "Cannot hide soft input because we could not get the InputMethodManager"

    .line 8
    invoke-static {v0, v1, p1}, Lcom/shabakaty/downloader/tk2;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public internalDismissKeyboard(Landroid/view/View;)V
    .locals 4

    const-string v0, "UiUtils"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "Cannot hide soft input because window token could not be obtained"

    .line 9
    invoke-static {v0, v1, p1}, Lcom/shabakaty/downloader/tk2;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 11
    instance-of v3, v2, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v3, :cond_1

    .line 12
    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "Cannot hide soft input because we could not get the InputMethodManager"

    .line 14
    invoke-static {v0, v1, p1}, Lcom/shabakaty/downloader/tk2;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public internalResolveColor(ILandroid/content/Context;)I
    .locals 0

    .line 1
    invoke-static {p2, p1}, Lcom/shabakaty/downloader/ld0;->b(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public internalSetTint(ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "UiUtils"

    const-string p3, "Drawable is null, cannot apply a tint"

    .line 1
    invoke-static {p2, p3, p1}, Lcom/shabakaty/downloader/tk2;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 2
    :cond_0
    invoke-static {p2}, Lcom/shabakaty/downloader/g01;->h(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 4
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    if-eqz p3, :cond_1

    .line 5
    invoke-virtual {p3}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public internalThemeAttributeToColor(ILandroid/content/Context;I)I
    .locals 5

    const-string v0, "UiUtils"

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 2
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const/4 v4, 0x1

    .line 3
    invoke-virtual {v3, p1, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v4, [Ljava/lang/Object;

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "Resource %d not found. Resource is either missing or you are using a non-ui context."

    .line 6
    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    .line 7
    invoke-static {v0, p1, v1}, Lcom/shabakaty/downloader/tk2;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    invoke-static {p3, p2}, Lzendesk/support/UiUtils;->resolveColor(ILandroid/content/Context;)I

    move-result p1

    return p1

    .line 9
    :cond_1
    iget p1, v2, Landroid/util/TypedValue;->resourceId:I

    if-nez p1, :cond_2

    iget p1, v2, Landroid/util/TypedValue;->data:I

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {p1, p2}, Lzendesk/support/UiUtils;->resolveColor(ILandroid/content/Context;)I

    move-result p1

    :goto_0
    return p1

    :cond_3
    :goto_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "themeAttributeId, context, and fallbackColorId are required."

    .line 11
    invoke-static {v0, p2, p1}, Lcom/shabakaty/downloader/tk2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/high16 p1, -0x1000000

    return p1
.end method
