.class public final Lcom/shabakaty/cinemana/ca1/StartupUpdate160;
.super Ljava/lang/Object;
.source "StartupUpdate160.java"


# static fields
.field static final KEY_NEVER:Ljava/lang/String; = "never_show"

.field static final PREFS:Ljava/lang/String; = "ca1_startup_update160"

.field static pending:Z

.field static final running:Ljava/util/concurrent/atomic/AtomicBoolean;

.field static started:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/shabakaty/cinemana/ca1/StartupUpdate160;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    sput v0, Lcom/shabakaty/cinemana/ca1/StartupUpdate160;->started:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/shabakaty/cinemana/ca1/StartupUpdate160;->pending:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(Landroid/app/Activity;)V
    .locals 6

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ca1_startup_update160"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "never_show"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/shabakaty/cinemana/ca1/StartupUpdate160;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/shabakaty/cinemana/ca1/StartupUpdate160$Worker;

    invoke-direct {v1, p0}, Lcom/shabakaty/cinemana/ca1/StartupUpdate160$Worker;-><init>(Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/StartupUpdate160;->finish()V

    :cond_0
    return-void
.end method

.method static finish()V
    .locals 2

    sget-object v0, Lcom/shabakaty/cinemana/ca1/StartupUpdate160;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public static lifecycleResumed(Landroid/app/Activity;)V
    .locals 1

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/shabakaty/cinemana/ca1/StartupUpdate160;->pending:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/shabakaty/cinemana/ca1/StartupUpdate160;->pending:Z

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/StartupUpdate160;->check(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public static lifecycleStarted(Landroid/app/Activity;)V
    .locals 1

    sget v0, Lcom/shabakaty/cinemana/ca1/StartupUpdate160;->started:I

    if-nez v0, :cond_0

    const/4 p0, 0x1

    sput-boolean p0, Lcom/shabakaty/cinemana/ca1/StartupUpdate160;->pending:Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/shabakaty/cinemana/ca1/StartupUpdate160;->started:I

    return-void
.end method

.method public static lifecycleStopped(Landroid/app/Activity;)V
    .locals 1

    sget v0, Lcom/shabakaty/cinemana/ca1/StartupUpdate160;->started:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/shabakaty/cinemana/ca1/StartupUpdate160;->started:I

    return-void

    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/shabakaty/cinemana/ca1/StartupUpdate160;->started:I

    return-void
.end method

.method static neverAgain(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "ca1_startup_update160"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "never_show"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static openManual(Landroid/app/Activity;)V
    .locals 5

    :try_start_0
    instance-of v0, p0, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;->m0()Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    move-result-object v1

    const v2, 0x7f0a0306

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/px2;->setSelectedItemId(I)V

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/shabakaty/cinemana/ca1/StartupUpdate160$Trigger;

    invoke-direct {v2, p0}, Lcom/shabakaty/cinemana/ca1/StartupUpdate160$Trigger;-><init>(Landroid/app/Activity;)V

    const-wide/16 v3, 0x258

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->check(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const/4 v1, 0x0

    invoke-static {p0, v1, v1}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->check(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method static showPrompt(Landroid/app/Activity;Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;)V
    .locals 10

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->createDialog(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    const/16 v2, 0x16

    const/16 v3, 0x12

    invoke-static {p0, v2, v3}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->makeColumn(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const-string v5, "\u0647\u0646\u0627\u0643 \u062a\u062d\u062f\u064a\u062b"

    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x16

    const/4 v7, 0x1

    const/16 v8, 0x11

    move-object v3, p0

    move-object v4, v2

    invoke-static/range {v3 .. v8}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->addText(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;IZI)Ljava/lang/Object;

    new-instance v3, Landroid/widget/CheckBox;

    invoke-direct {v3, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    const-string v4, "\u0644\u0627 \u062a\u0639\u0631\u0636 \u062b\u0627\u0646\u064a\u0629"

    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setTextSize(F)V

    const-string v4, "primaryTextColor"

    const v5, -0xb0b0c

    invoke-static {p0, v4, v5}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->color(Ljava/lang/Object;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setTextColor(I)V

    const v4, 0x800005

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setGravity(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x6

    invoke-static {p0, v7}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->dp(Ljava/lang/Object;I)I

    move-result v7

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v7, "\u0644\u0627\u062d\u0642\u064b\u0627"

    invoke-static {v7}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v4, v7}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->addAction(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v8, "\u062a\u062d\u062f\u064a\u062b"

    invoke-static {v8}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v4, v8}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->addAction(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v4, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/shabakaty/cinemana/ca1/StartupUpdate160$Later;

    invoke-direct {v1, v0, p0, v3}, Lcom/shabakaty/cinemana/ca1/StartupUpdate160$Later;-><init>(Landroid/app/Dialog;Landroid/app/Activity;Landroid/widget/CheckBox;)V

    invoke-static {v7, v1}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->setClick(Ljava/lang/Object;Ljava/lang/Runnable;)V

    new-instance v1, Lcom/shabakaty/cinemana/ca1/StartupUpdate160$UpdateAction;

    invoke-direct {v1, v0, p0}, Lcom/shabakaty/cinemana/ca1/StartupUpdate160$UpdateAction;-><init>(Landroid/app/Dialog;Landroid/app/Activity;)V

    invoke-static {v4, v1}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->setClick(Ljava/lang/Object;Ljava/lang/Runnable;)V

    invoke-static {v0, v2}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->showDialog(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    :cond_0
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/StartupUpdate160;->finish()V

    return-void
.end method
