.class public final Lcom/shabakaty/cinemana/ca1/AppUpdater133;
.super Ljava/lang/Object;
.source "AppUpdater133.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;
    }
.end annotation


# static fields
.field static final APK_DIR:Ljava/lang/String; = "/storage/emulated/0/Cinemana/work/data/apk"

.field static final BUILD_CUTOFF_UTC:Ljava/lang/String; = "2026-10-05T09:08:00Z"

.field static final MARKER:Ljava/lang/String; = ".target_version"

.field static final PENDING:Ljava/lang/String; = ".pending_install"

.field static final PROVIDER:Ljava/lang/String; = "com.cinemana.pro.provider"

.field static final RELEASE_API:Ljava/lang/String; = "https://api.github.com/repos/alwansan/C1/releases/latest"

.field static final TAG:Ljava/lang/String; = "ca1_update_check135"

.field static final TITLE:Ljava/lang/String; = "\u0627\u0644\u062a\u062d\u0642\u0642 \u0645\u0646 \u062a\u062d\u062f\u064a\u062b\u0627\u062a \u0627\u0644\u062a\u0637\u0628\u064a\u0642"

.field static final busy:Ljava/util/concurrent/atomic/AtomicBoolean;

.field static final worker:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->worker:Ljava/util/concurrent/ExecutorService;

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addAction(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 399
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object p0, v1, v2

    const-string v4, "android.widget.TextView"

    invoke-static {v4, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->make(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p2, v4, v2

    const-string p2, "setText"

    invoke-static {v1, p2, v4}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "primaryTextColor"

    const v4, -0xb0b0c

    invoke-static {p0, p2, v4}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->color(Ljava/lang/Object;Ljava/lang/String;I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p2, v4, v2

    const-string p2, "setTextColor"

    invoke-static {v1, p2, v4}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 p2, 0x41900000    # 18.0f

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p2, v4, v2

    const-string p2, "setTextSize"

    invoke-static {v1, p2, v4}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p2, 0x11

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p2, v4, v2

    const-string p2, "setGravity"

    invoke-static {v1, p2, v4}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p2, 0x10

    invoke-static {p0, p2}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->dp(Ljava/lang/Object;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xe

    invoke-static {p0, v5}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->dp(Ljava/lang/Object;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p0, p2}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->dp(Ljava/lang/Object;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p0, v5}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->dp(Ljava/lang/Object;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x4

    new-array v9, v8, [Ljava/lang/Object;

    aput-object v4, v9, v2

    aput-object v6, v9, v0

    const/4 v4, 0x2

    aput-object v7, v9, v4

    const/4 v6, 0x3

    aput-object v5, v9, v6

    const-string v5, "setPadding"

    invoke-static {v1, v5, v9}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "android.graphics.drawable.GradientDrawable"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5, v7}, Lcom/shabakaty/cinemana/ca1/Continue106;->make(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v7, "cardBackgroundColor"

    const v9, -0xefe1d9

    invoke-static {p0, v7, v9}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->color(Ljava/lang/Object;Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v9, v0, [Ljava/lang/Object;

    aput-object v7, v9, v2

    const-string v7, "setColor"

    invoke-static {v5, v7, v9}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p2}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->dp(Ljava/lang/Object;I)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    new-array v7, v0, [Ljava/lang/Object;

    aput-object p2, v7, v2

    const-string p2, "setCornerRadius"

    invoke-static {v5, p2, v7}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->dp(Ljava/lang/Object;I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v7, "secondaryTextColor"

    const v9, -0x8e7f76

    invoke-static {p0, v7, v9}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->color(Ljava/lang/Object;Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v9, v4, [Ljava/lang/Object;

    aput-object p2, v9, v2

    aput-object v7, v9, v0

    const-string p2, "setStroke"

    invoke-static {v5, p2, v9}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array p2, v0, [Ljava/lang/Object;

    aput-object v5, p2, v2

    const-string v5, "setBackground"

    invoke-static {v1, v5, p2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, -0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v5, -0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v7, v4, [Ljava/lang/Object;

    aput-object p2, v7, v2

    aput-object v5, v7, v0

    const-string p2, "android.widget.LinearLayout$LayoutParams"

    invoke-static {p2, v7}, Lcom/shabakaty/cinemana/ca1/Continue106;->make(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/4 v5, 0x5

    invoke-static {p0, v5}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->dp(Ljava/lang/Object;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p0, v5}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->dp(Ljava/lang/Object;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v3, v5, v2

    aput-object v7, v5, v0

    aput-object v3, v5, v4

    aput-object p0, v5, v6

    const-string p0, "setMargins"

    invoke-static {p2, p0, v5}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array p0, v4, [Ljava/lang/Object;

    aput-object v1, p0, v2

    aput-object p2, p0, v0

    const-string p2, "addView"

    invoke-static {p1, p2, p0}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method static addText(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;IZI)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 398
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object p0, v1, v2

    const-string v4, "android.widget.TextView"

    invoke-static {v4, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->make(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p2, v4, v2

    const-string p2, "setText"

    invoke-static {v1, p2, v4}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "primaryTextColor"

    const v4, -0xb0b0c

    invoke-static {p0, p2, v4}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->color(Ljava/lang/Object;Ljava/lang/String;I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p2, v4, v2

    const-string p2, "setTextColor"

    invoke-static {v1, p2, v4}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    int-to-float p2, p3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    new-array p3, v0, [Ljava/lang/Object;

    aput-object p2, p3, v2

    const-string p2, "setTextSize"

    invoke-static {v1, p2, p3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p2, 0x15

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array p3, v0, [Ljava/lang/Object;

    aput-object p2, p3, v2

    const-string p2, "setGravity"

    invoke-static {v1, p2, p3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x2

    if-eqz p4, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-array p4, p2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, p4, v2

    aput-object p3, p4, v0

    const-string p3, "setTypeface"

    invoke-static {v1, p3, p4}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p3, -0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, -0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    new-array v4, p2, [Ljava/lang/Object;

    aput-object p3, v4, v2

    aput-object p4, v4, v0

    const-string p3, "android.widget.LinearLayout$LayoutParams"

    invoke-static {p3, v4}, Lcom/shabakaty/cinemana/ca1/Continue106;->make(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p0, p5}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->dp(Ljava/lang/Object;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p4, 0x4

    new-array p4, p4, [Ljava/lang/Object;

    aput-object v3, p4, v2

    aput-object v3, p4, v0

    aput-object v3, p4, p2

    const/4 p5, 0x3

    aput-object p0, p4, p5

    const-string p0, "setMargins"

    invoke-static {p3, p0, p4}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array p0, p2, [Ljava/lang/Object;

    aput-object v1, p0, v2

    aput-object p3, p0, v0

    const-string p2, "addView"

    invoke-static {p1, p2, p0}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method static allowedHost(Ljava/lang/String;)Z
    .locals 2

    .line 155
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 156
    :cond_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 157
    const-string v1, "github.com"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "api.github.com"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "raw.githubusercontent.com"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".githubusercontent.com"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method static apkDir()Ljava/io/File;
    .locals 2

    .line 241
    new-instance v0, Ljava/io/File;

    const-string v1, "/storage/emulated/0/Cinemana/work/data/apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static canRequestInstalls(Ljava/lang/Object;)Z
    .locals 4

    .line 295
    const/4 v0, 0x1

    :try_start_0
    const-string v1, "getPackageManager"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "canRequestPackageInstalls"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p0, v0

    return p0

    :catch_0
    move-exception p0

    return v0
.end method

.method static check(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 80
    sget-object v0, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "\u0639\u0645\u0644\u064a\u0629 \u0627\u0644\u062a\u062d\u062f\u064a\u062b \u062c\u0627\u0631\u064a\u0629 \u0628\u0627\u0644\u0641\u0639\u0644"

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->toast(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 81
    :cond_0
    :try_start_0
    const-string v0, "setEnabled"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v3, v4, v1

    invoke-static {p1, v0, v4}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    const-string v0, "setText"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "\u062c\u0627\u0631\u064a \u0627\u0644\u062a\u062d\u0642\u0642 \u0645\u0646 \u0627\u0644\u062a\u062d\u062f\u064a\u062b\u0627\u062a\u2026"

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p2, v0, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 82
    :cond_1
    :goto_0
    sget-object v0, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method

.method public static cleanupAfterUpdate(Ljava/lang/Object;)V
    .locals 5

    .line 285
    :try_start_0
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->apkDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, ".target_version"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v1, "UTF-8"

    invoke-direct {v3, v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 286
    if-nez v1, :cond_1

    const-string v1, "0"

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_2

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->localVersionCode(Ljava/lang/Object;)J

    move-result-wide v3

    cmp-long p0, v3, v1

    if-ltz p0, :cond_2

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->deleteTree(Ljava/io/File;)V

    .line 287
    :cond_2
    goto :goto_1

    .line 285
    :catchall_0
    move-exception p0

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 287
    :catch_0
    move-exception p0

    const-string v0, "updater_cleanup_error135"

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 288
    :goto_1
    return-void
.end method

.method static clearPending()V
    .locals 3

    .line 388
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->apkDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".pending_install"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method static color(Ljava/lang/Object;Ljava/lang/String;I)I
    .locals 5

    instance-of v0, p0, Landroid/content/Context;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->getMode(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, p1, p2}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->updaterRole(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 403
    :cond_0
    :try_start_0
    const-string v0, "getResources"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "getPackageName"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "getIdentifier"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const-string p1, "color"

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 p1, 0x2

    aput-object p0, v3, p1

    invoke-static {v0, v2, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-eqz p0, :cond_1

    const-string p1, "getColor"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-static {v0, p1, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    :cond_1
    return p2
.end method

.method static copy(Ljava/io/File;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 292
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/high16 p1, 0x10000

    new-array p1, p1, [B

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    :goto_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    :goto_3
    :try_start_4
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception p0

    :goto_4
    throw p1
.end method

.method static createDialog(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 396
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "android.app.Dialog"

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->make(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v2

    const-string v1, "setCancelable"

    invoke-static {p0, v1, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method static deleteTree(Ljava/io/File;)V
    .locals 4

    .line 289
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->deleteTree(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    :cond_2
    :goto_1
    return-void
.end method

.method static dismiss(Ljava/lang/Object;)V
    .locals 2

    .line 401
    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "dismiss"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :cond_0
    :goto_0
    return-void
.end method

.method static download(Ljava/lang/Object;Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;)V
    .locals 16

    .line 211
    move-object/from16 v7, p0

    sget-object v0, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x0

    .line 216
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 211
    const/4 v10, 0x1

    invoke-virtual {v0, v8, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u0639\u0645\u0644\u064a\u0629 \u0627\u0644\u062a\u062d\u062f\u064a\u062b \u062c\u0627\u0631\u064a\u0629 \u0628\u0627\u0644\u0641\u0639\u0644"

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->toast(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 212
    :cond_0
    const/4 v0, 0x4

    new-array v11, v0, [Ljava/lang/Object;

    .line 214
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->createDialog(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const/16 v1, 0x16

    const/16 v13, 0x12

    invoke-static {v7, v1, v13}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->makeColumn(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v14

    const-string v3, "\u062c\u0627\u0631\u064a \u062a\u062c\u0647\u064a\u0632 \u0627\u0644\u062a\u062d\u062f\u064a\u062b"

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    const/16 v6, 0xe

    const/16 v4, 0x15

    move-object/from16 v1, p0

    move-object v2, v14

    invoke-static/range {v1 .. v6}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->addText(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;IZI)Ljava/lang/Object;

    .line 215
    const-string v3, "\u062c\u0627\u0631\u064a \u0627\u0644\u062a\u062d\u0642\u0642 \u0645\u0646 \u0627\u0644\u0645\u0644\u0641\u0627\u062a\u2026"

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/16 v4, 0x12

    move-object/from16 v1, p0

    move-object v2, v14

    invoke-static/range {v1 .. v6}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->addText(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;IZI)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "android.widget.ProgressBar"

    const v3, 0x1010078

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v7, v5, v8

    const/4 v6, 0x0

    aput-object v6, v5, v10

    const/4 v6, 0x2

    aput-object v3, v5, v6

    invoke-static {v2, v5}, Lcom/shabakaty/cinemana/ca1/Continue106;->make(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 216
    const-string v3, "setMax"

    const/16 v5, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v15, v10, [Ljava/lang/Object;

    aput-object v5, v15, v8

    invoke-static {v2, v3, v15}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "setProgress"

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v9, v5, v8

    invoke-static {v2, v3, v5}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "android.widget.LinearLayout$LayoutParams"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v7, v13}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->dp(Ljava/lang/Object;I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-array v15, v6, [Ljava/lang/Object;

    aput-object v5, v15, v8

    aput-object v13, v15, v10

    invoke-static {v3, v15}, Lcom/shabakaty/cinemana/ca1/Continue106;->make(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v5, "setMargins"

    invoke-static {v7, v0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->dp(Ljava/lang/Object;I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v15, 0x10

    invoke-static {v7, v15}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->dp(Ljava/lang/Object;I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v9, v0, v8

    aput-object v13, v0, v10

    aput-object v9, v0, v6

    aput-object v15, v0, v4

    invoke-static {v3, v5, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "addView"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v2, v5, v8

    aput-object v3, v5, v10

    invoke-static {v14, v0, v5}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string v0, "\u0625\u062e\u0641\u0627\u0621"

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v14, v0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->addAction(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    new-instance v3, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda15;

    invoke-direct {v3, v12}, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda15;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v3}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->setClick(Ljava/lang/Object;Ljava/lang/Runnable;)V

    invoke-static {v12, v14}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->showDialog(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v12, v11, v8

    aput-object v1, v11, v10

    aput-object v2, v11, v6

    aput-object v0, v11, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "updater_progress_ui135"

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 219
    :goto_0
    sget-object v0, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda16;

    move-object/from16 v2, p1

    invoke-direct {v1, v7, v2, v11}, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda16;-><init>(Ljava/lang/Object;Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 239
    return-void
.end method

.method static downloadApk(Ljava/lang/Object;Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;[Ljava/lang/Object;)Ljava/io/File;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 261
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->apkDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot create "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 262
    :cond_1
    :goto_0
    iget-object v3, v1, Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;->apkName:Ljava/lang/String;

    iget-wide v4, v1, Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;->releaseId:J

    invoke-static {v3, v4, v5}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->safeApkName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ".part"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "cannot replace stale apk"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_3
    :goto_1
    iget-object v0, v1, Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;->apkUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->open(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v3

    const/16 v0, 0x3a98

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const v0, 0xafc8

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v0, "Accept"

    const-string v6, "application/octet-stream"

    invoke-virtual {v3, v0, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "User-Agent"

    const-string v6, "Cinemana-Updater/135"

    invoke-virtual {v3, v0, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v6, 0xc8

    if-lt v0, v6, :cond_c

    const/16 v6, 0x12c

    if-ge v0, v6, :cond_c

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentLengthLong()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gtz v0, :cond_4

    iget-wide v6, v1, Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;->size:J

    .line 265
    :cond_4
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/high16 v0, 0x10000

    new-array v0, v0, [B

    const/4 v12, -0x1

    move-wide v13, v8

    .line 266
    :goto_2
    :try_start_0
    invoke-virtual {v10, v0}, Ljava/io/InputStream;->read([B)I

    move-result v15

    if-ltz v15, :cond_8

    if-nez v15, :cond_5

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    invoke-virtual {v11, v0, v8, v15}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v8, v15

    add-long/2addr v13, v8

    const-wide/16 v8, 0x0

    cmp-long v15, v6, v8

    if-lez v15, :cond_7

    const-wide/16 v8, 0x64

    mul-long v16, v13, v8

    div-long v8, v16, v6

    move-wide/from16 v16, v6

    const-wide/16 v6, 0x64

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    if-eq v6, v12, :cond_6

    new-instance v7, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda5;

    invoke-direct {v7, v2, v6}, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda5;-><init>([Ljava/lang/Object;I)V

    invoke-static {v7}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->post(Ljava/lang/Runnable;)V

    move v12, v6

    :cond_6
    move-wide/from16 v6, v16

    goto :goto_3

    :cond_7
    move-wide/from16 v16, v6

    :goto_3
    const-wide/16 v8, 0x0

    goto :goto_2

    :cond_8
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    :try_start_1
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    :goto_4
    :try_start_2
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    :goto_5
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 268
    iget-wide v6, v1, Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;->size:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_a

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    iget-wide v8, v1, Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;->size:J

    cmp-long v0, v6, v8

    if-nez v0, :cond_9

    goto :goto_6

    :cond_9
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size mismatch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v1, Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;->size:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_6
    invoke-virtual {v5, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {v5, v4}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->copy(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_b
    new-instance v0, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda6;

    invoke-direct {v0, v2}, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda6;-><init>([Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->post(Ljava/lang/Runnable;)V

    return-object v4

    .line 267
    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_3
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    :goto_7
    :try_start_4
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    :goto_8
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v1

    .line 264
    :cond_c
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static dp(Ljava/lang/Object;I)I
    .locals 3

    .line 404
    :try_start_0
    const-string v0, "getResources"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getDisplayMetrics"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "density"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    int-to-float v0, p1

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    const/4 v0, 0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    return p1
.end method

.method static fetchRelease()Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api.github.com/repos/alwansan/C1/releases/latest?t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->requestText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->parseRelease(Ljava/lang/String;)Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;

    move-result-object v0

    return-object v0
.end method

.method static fileProviderUri(Ljava/lang/Object;Ljava/io/File;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 324
    move-object/from16 v1, p0

    const-string v2, "/"

    const-string v3, "encode"

    const-string v4, "com.cinemana.pro.provider"

    const-string v0, "androidx.core.content.FileProvider"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 325
    nop

    .line 326
    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    :try_start_0
    const-string v0, "getUriForFile"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v1, v9, v8

    aput-object v4, v9, v7

    aput-object p1, v9, v6

    invoke-static {v5, v0, v9}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    move-object v9, v0

    .line 327
    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    array-length v10, v5

    move v11, v8

    :goto_0
    const-string v0, "android.net.Uri"

    if-ge v11, v10, :cond_7

    aget-object v12, v5, v11

    .line 329
    :try_start_1
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v13

    invoke-static {v13}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v13

    if-nez v13, :cond_0

    move-object/from16 v16, v5

    goto/16 :goto_4

    .line 330
    :cond_0
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v13

    .line 331
    array-length v14, v13

    if-ne v14, v6, :cond_6

    const-class v14, Ljava/lang/String;

    aget-object v15, v13, v7

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    aget-object v13, v13, v8

    invoke-virtual {v13, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    move-object/from16 v16, v5

    goto/16 :goto_4

    .line 332
    :cond_1
    invoke-virtual {v12, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v13, v6, [Ljava/lang/Object;

    aput-object v1, v13, v8

    aput-object v4, v13, v7

    const/4 v14, 0x0

    invoke-virtual {v12, v14, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_2

    move-object/from16 v16, v5

    goto/16 :goto_4

    .line 333
    :cond_2
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    :goto_1
    if-eqz v13, :cond_5

    invoke-virtual {v13}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v14

    array-length v15, v14

    move v6, v8

    :goto_2
    if-ge v6, v15, :cond_4

    aget-object v8, v14, v6

    .line 334
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 335
    array-length v1, v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v16, v5

    const/4 v5, 0x1

    if-ne v1, v5, :cond_3

    :try_start_2
    const-class v1, Ljava/io/File;

    const/4 v5, 0x0

    aget-object v7, v7, v5

    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 336
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v5, v1

    invoke-virtual {v8, v12, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    return-object v1

    .line 333
    :cond_3
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v5, v16

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto :goto_2

    :cond_4
    move-object/from16 v16, v5

    invoke-virtual {v13}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v1, p0

    move-object/from16 v5, v16

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto :goto_1

    .line 339
    :catch_1
    move-exception v0

    goto :goto_4

    :cond_5
    :goto_3
    move-object/from16 v16, v5

    goto :goto_4

    .line 331
    :cond_6
    move-object/from16 v16, v5

    goto :goto_4

    .line 339
    :catch_2
    move-exception v0

    goto :goto_3

    .line 327
    :goto_4
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p0

    move-object/from16 v5, v16

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto/16 :goto_0

    .line 343
    :cond_7
    :try_start_3
    const-string v1, "android.os.Environment"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v5, "getExternalStorageDirectory"

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v1, v5, v7}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 344
    new-instance v5, Ljava/io/File;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    .line 345
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 346
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v6, 0x1

    add-int/2addr v1, v6

    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 347
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const-string v6, "."

    const/4 v8, 0x0

    aput-object v6, v7, v8

    invoke-static {v5, v3, v7}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 348
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v1, 0x1

    aput-object v2, v6, v1

    invoke-static {v0, v3, v6}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 349
    const-string v1, "android.net.Uri$Builder"

    const/4 v3, 0x0

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v1, v6}, Lcom/shabakaty/cinemana/ca1/Continue106;->make(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 350
    const-string v3, "scheme"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const-string v6, "content"

    const/4 v8, 0x0

    aput-object v6, v7, v8

    invoke-static {v1, v3, v7}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "authority"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v7, v6

    invoke-static {v1, v3, v7}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "encodedPath"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    invoke-static {v1, v3, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    const-string v0, "build"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz v0, :cond_8

    return-object v0

    .line 353
    :catch_3
    move-exception v0

    :cond_8
    nop

    .line 354
    throw v9
.end method

.method static grantInstaller(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 373
    if-nez p1, :cond_0

    return-void

    .line 374
    :cond_0
    :try_start_0
    const-string v0, "activityInfo"

    invoke-static {p1, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "grantUriPermission"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object p2, v3, v1

    const/4 p1, 0x2

    aput-object v2, v3, p1

    invoke-static {p0, v0, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 375
    :cond_1
    :goto_0
    return-void
.end method

.method static install(Ljava/lang/Object;Ljava/io/File;)V
    .locals 3

    .line 300
    if-eqz p1, :cond_4

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 301
    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->writePending(Ljava/io/File;)V

    .line 302
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->canRequestInstalls(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->openInstallPermission(Ljava/lang/Object;)V

    return-void

    .line 303
    :cond_0
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->fileProviderUri(Ljava/lang/Object;Ljava/io/File;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 304
    nop

    .line 306
    :try_start_1
    const-string v1, "android.intent.action.VIEW"

    invoke-static {p0, v0, v1}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->launchInstaller(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->clearPending()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "updater_install_view_action138"

    invoke-static {v2, v1}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->log(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 308
    :goto_0
    :try_start_3
    const-string v2, "android.intent.action.INSTALL_PACKAGE"

    invoke-static {p0, v0, v2}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->launchInstaller(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->clearPending()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    move-exception v0

    :try_start_4
    const-string v2, "updater_install_package_action138"

    invoke-static {v2, v0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    if-nez v1, :cond_2

    move-object v1, v0

    .line 309
    :cond_2
    if-eqz v1, :cond_3

    :goto_1
    goto :goto_2

    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v0, "no package installer activity"

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_2
    throw v1

    .line 300
    :cond_4
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "update apk missing"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 310
    :catch_2
    move-exception v0

    .line 311
    const-string v1, "updater_install_error138"

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 312
    if-eqz p1, :cond_5

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->writePending(Ljava/io/File;)V

    .line 313
    :cond_5
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->showInstallFailure(Ljava/lang/Object;Ljava/io/File;)V

    .line 315
    return-void
.end method

.method static installedApkSha(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 191
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "getApplicationInfo"

    invoke-static {p0, v1, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "sourceDir"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->sha256(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method static isNewRelease(Ljava/lang/Object;Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;)Z
    .locals 6

    .line 134
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->localVersionCode(Ljava/lang/Object;)J

    move-result-wide v0

    .line 135
    iget-wide v2, p1, Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;->versionCodeHint:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_1

    iget-wide p0, p1, Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;->versionCodeHint:J

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    return v3

    .line 137
    :cond_1
    :try_start_0
    iget-object v0, p1, Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;->sha256:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 138
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->installedApkSha(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 139
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;->sha256:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    return v4

    .line 141
    :catch_0
    move-exception p0

    :cond_2
    nop

    .line 142
    iget-object p0, p1, Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;->updatedAt:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "2026-10-05T09:08:00Z"

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p1, p1, Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;->updatedAt:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-gtz p0, :cond_3

    return v4

    .line 143
    :cond_3
    return v3
.end method

.method static synthetic lambda$check$2(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Object;Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;)V
    .locals 0

    .line 87
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->restoreRow(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p0, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 88
    if-nez p2, :cond_0

    const-string p0, "\u0627\u0644\u062a\u0637\u0628\u064a\u0642 \u0645\u062d\u062f\u062b"

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\u0623\u0646\u062a \u062a\u0633\u062a\u062e\u062f\u0645 \u0623\u062d\u062f\u062b \u0625\u0635\u062f\u0627\u0631 \u0628\u0627\u0644\u0641\u0639\u0644."

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p0, p1}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->showInfo(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_0
    invoke-static {p3, p4}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->showUpdate(Ljava/lang/Object;Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;)V

    .line 90
    :goto_0
    return-void
.end method

.method static synthetic lambda$check$3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 93
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->restoreRow(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p0, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string p0, "\u062a\u0639\u0630\u0631 \u0627\u0644\u062a\u062d\u0642\u0642 \u0645\u0646 \u0627\u0644\u062a\u062d\u062f\u064a\u062b"

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\u062a\u0639\u0630\u0631 \u0642\u0631\u0627\u0621\u0629 \u0623\u062d\u062f\u062b \u0625\u0635\u062f\u0627\u0631 \u0645\u0646 GitHub Releases. \u062a\u062d\u0642\u0642 \u0645\u0646 \u0627\u0644\u0625\u0646\u062a\u0631\u0646\u062a \u0648\u062d\u0627\u0648\u0644 \u0645\u0631\u0629 \u0623\u062e\u0631\u0649."

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p0, p1}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->showInfo(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$check$4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 84
    :try_start_0
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->fetchRelease()Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;

    move-result-object v5

    .line 85
    invoke-static {p0, v5}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->isNewRelease(Ljava/lang/Object;Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;)Z

    move-result v3

    .line 86
    new-instance v6, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda0;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Object;Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;)V

    invoke-static {v6}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    const-string v1, "updater_check_error135"

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 93
    new-instance v0, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2, p0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->post(Ljava/lang/Runnable;)V

    .line 95
    :goto_0
    return-void
.end method

.method static synthetic lambda$download$10([Ljava/lang/Object;)V
    .locals 4

    .line 227
    const/4 v0, 0x1

    :try_start_0
    aget-object v1, p0, v0

    if-eqz v1, :cond_0

    aget-object p0, p0, v0

    const-string v1, "setText"

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "0%"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {p0, v1, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic lambda$download$11([Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;)V
    .locals 2

    .line 233
    sget-object v0, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    aget-object p0, p0, v1

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->dismiss(Ljava/lang/Object;)V

    invoke-static {p1, p2}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->install(Ljava/lang/Object;Ljava/io/File;)V

    return-void
.end method

.method static synthetic lambda$download$12([Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 236
    sget-object v0, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    aget-object p0, p0, v1

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->dismiss(Ljava/lang/Object;)V

    const-string p0, "\u062a\u0639\u0630\u0631 \u062a\u062c\u0647\u064a\u0632 \u0627\u0644\u062a\u062d\u062f\u064a\u062b"

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\u0644\u0645 \u064a\u0643\u062a\u0645\u0644 \u062a\u0646\u0632\u064a\u0644 \u0623\u0648 \u0627\u0644\u062a\u062d\u0642\u0642 \u0645\u0646 \u0645\u0644\u0641 \u0627\u0644\u062a\u062d\u062f\u064a\u062b. \u062d\u0627\u0648\u0644 \u0645\u0631\u0629 \u0623\u062e\u0631\u0649."

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->showInfo(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$download$13(Ljava/lang/Object;Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;[Ljava/lang/Object;)V
    .locals 3

    .line 220
    nop

    .line 222
    :try_start_0
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->reusableApk(Ljava/lang/Object;Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;)Ljava/io/File;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_0

    .line 224
    nop

    .line 225
    new-instance v1, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda10;

    invoke-direct {v1, p2}, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda10;-><init>([Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->post(Ljava/lang/Runnable;)V

    .line 226
    goto :goto_0

    .line 227
    :cond_0
    new-instance v0, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda11;

    invoke-direct {v0, p2}, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda11;-><init>([Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->post(Ljava/lang/Runnable;)V

    .line 228
    invoke-static {p0, p1, p2}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->downloadApk(Ljava/lang/Object;Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;[Ljava/lang/Object;)Ljava/io/File;

    move-result-object v0

    .line 230
    :goto_0
    invoke-static {p0, v0, p1}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->verifyApk(Ljava/lang/Object;Ljava/io/File;Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;)J

    move-result-wide v1

    .line 231
    invoke-static {v1, v2}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->writeMarker(J)V

    .line 232
    nop

    .line 233
    new-instance p1, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda12;

    invoke-direct {p1, p2, p0, v0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda12;-><init>([Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;)V

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    goto :goto_1

    .line 234
    :catch_0
    move-exception p1

    .line 235
    const-string v0, "updater_download_error135"

    invoke-static {v0, p1}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 236
    new-instance p1, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda13;

    invoke-direct {p1, p2, p0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda13;-><init>([Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->post(Ljava/lang/Runnable;)V

    .line 238
    :goto_1
    return-void
.end method

.method static synthetic lambda$download$8(Ljava/lang/Object;)V
    .locals 0

    .line 217
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->dismiss(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$download$9([Ljava/lang/Object;)V
    .locals 4

    .line 225
    const/16 v0, 0x64

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->progress([Ljava/lang/Object;I)V

    const/4 v0, 0x1

    :try_start_0
    aget-object v1, p0, v0

    if-eqz v1, :cond_0

    aget-object p0, p0, v0

    const-string v1, "setText"

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "\u062a\u0645 \u0627\u0644\u0639\u062b\u0648\u0631 \u0639\u0644\u0649 \u0645\u0644\u0641 \u0627\u0644\u062a\u062d\u062f\u064a\u062b \u0627\u0644\u0645\u062d\u0645\u0651\u0644"

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {p0, v1, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic lambda$downloadApk$14([Ljava/lang/Object;I)V
    .locals 0

    .line 266
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->progress([Ljava/lang/Object;I)V

    return-void
.end method

.method static synthetic lambda$downloadApk$15([Ljava/lang/Object;)V
    .locals 1

    .line 268
    const/16 v0, 0x64

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->progress([Ljava/lang/Object;I)V

    return-void
.end method

.method static synthetic lambda$profile$1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 64
    invoke-static {p0, p1, p2}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->check(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$setClick$18(Ljava/lang/Runnable;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 402
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "onClick"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    const-string p0, "toString"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "UpdaterAction135"

    return-object p0

    :cond_1
    const-string p0, "hashCode"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "equals"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    aget-object p2, p3, p0

    if-ne p1, p2, :cond_3

    const/4 p0, 0x1

    :cond_3
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$showInfo$7(Ljava/lang/Object;)V
    .locals 0

    .line 206
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->dismiss(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$showInstallFailure$16(Ljava/lang/Object;Ljava/io/File;Ljava/lang/Object;)V
    .locals 0

    .line 383
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->dismiss(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-static {p2, p1}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->install(Ljava/lang/Object;Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$showInstallFailure$17(Ljava/lang/Object;)V
    .locals 0

    .line 383
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->dismiss(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$showUpdate$5(Ljava/lang/Object;)V
    .locals 0

    .line 201
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->dismiss(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$showUpdate$6(Ljava/lang/Object;Ljava/lang/Object;Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;)V
    .locals 0

    .line 201
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->dismiss(Ljava/lang/Object;)V

    invoke-static {p1, p2}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->download(Ljava/lang/Object;Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;)V

    return-void
.end method

.method static synthetic lambda$static$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "app-updater135"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method static lastLongField(Ljava/lang/String;Ljava/lang/String;J)J
    .locals 2

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\\\"\\s*:\\s*(\\d+)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-wide p2
.end method

.method static lastStringField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 182
    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->stringPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method static launchInstaller(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 358
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string p2, "android.content.Intent"

    invoke-static {p2, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->make(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 359
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v2

    const-string v4, "application/vnd.android.package-archive"

    aput-object v4, v3, v0

    const-string v4, "setDataAndType"

    invoke-static {p2, v4, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const v3, 0x10000001

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    aput-object v3, v4, v2

    const-string v3, "addFlags"

    invoke-static {p2, v3, v4}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    :try_start_0
    const-string v3, "android.content.ClipData"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "newRawUri"

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "Cinemana update"

    aput-object v6, v5, v2

    aput-object p1, v5, v0

    invoke-static {v3, v4, v5}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "setClipData"

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v3, v5, v2

    invoke-static {p2, v4, v5}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 362
    :goto_0
    const-string v3, "getPackageManager"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 364
    const/high16 v4, 0x10000

    :try_start_1
    const-string v5, "queryIntentActivities"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    aput-object p2, v7, v2

    aput-object v6, v7, v0

    invoke-static {v3, v5, v7}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 365
    instance-of v6, v5, Ljava/lang/Iterable;

    if-eqz v6, :cond_0

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-static {p0, v6, p1}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->grantInstaller(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 366
    :catch_1
    move-exception v5

    :cond_0
    nop

    .line 367
    :try_start_2
    const-string v5, "resolveActivity"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    aput-object v4, v1, v0

    invoke-static {v3, v5, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    const/4 v1, 0x0

    .line 368
    :goto_2
    invoke-static {p0, v1, p1}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->grantInstaller(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 369
    new-array p1, v0, [Ljava/lang/Object;

    aput-object p2, p1, v2

    const-string p2, "startActivity"

    invoke-static {p0, p2, p1}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method static localVersionCode(Ljava/lang/Object;)J
    .locals 5

    .line 187
    :try_start_0
    const-string v0, "getPackageManager"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "getPackageName"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "getPackageInfo"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v1

    const/4 p0, 0x1

    aput-object v3, v4, p0

    invoke-static {v0, v2, v4}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "versionCode"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 188
    :catch_0
    move-exception p0

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method static log(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 4

    .line 407
    :try_start_0
    const-string v0, "com.shabakaty.cinemana.ca1.Enhancements"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "log"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string p0, "app updater"

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 p0, 0x2

    aput-object p1, v2, p0

    invoke-static {v0, v1, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :goto_0
    return-void
.end method

.method static longField(Ljava/lang/String;Ljava/lang/String;J)J
    .locals 2

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\\\"\\s*:\\s*(\\d+)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-nez p1, :cond_0

    return-wide p2

    :cond_0
    const/4 p1, 0x1

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    return-wide p2
.end method

.method static makeColumn(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 397
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v3, "android.widget.LinearLayout"

    invoke-static {v3, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->make(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    aput-object v3, v4, v2

    const-string v3, "setOrientation"

    invoke-static {v1, v3, v4}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->dp(Ljava/lang/Object;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, p2}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->dp(Ljava/lang/Object;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->dp(Ljava/lang/Object;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p2}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->dp(Ljava/lang/Object;I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v2

    aput-object v4, v5, v0

    const/4 v3, 0x2

    aput-object p1, v5, v3

    const/4 p1, 0x3

    aput-object p2, v5, p1

    const-string p1, "setPadding"

    invoke-static {v1, p1, v5}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "android.graphics.drawable.GradientDrawable"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/shabakaty/cinemana/ca1/Continue106;->make(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "cardBackgroundColor"

    const v3, -0xefe1d9

    invoke-static {p0, p2, v3}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->color(Ljava/lang/Object;Ljava/lang/String;I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p2, v3, v2

    const-string p2, "setColor"

    invoke-static {p1, p2, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p2, 0x14

    invoke-static {p0, p2}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->dp(Ljava/lang/Object;I)I

    move-result p0

    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p0, p2, v2

    const-string p0, "setCornerRadius"

    invoke-static {p1, p0, p2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array p0, v0, [Ljava/lang/Object;

    aput-object p1, p0, v2

    const-string p1, "setBackground"

    invoke-static {v1, p1, p0}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method static open(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 175
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string p0, "https"

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 176
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-object p0

    .line 175
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "https required"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static openInstallPermission(Ljava/lang/Object;)V
    .locals 6

    .line 393
    :try_start_0
    const-string v0, "getPackageName"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.net.Uri"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "parse"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-static {v2, v3, v5}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "android.content.Intent"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    aput-object v5, v3, v1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->make(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "addFlags"

    const/high16 v3, 0x10000000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v3, v5, v1

    invoke-static {v0, v2, v5}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "startActivity"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-static {p0, v2, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0627\u0633\u0645\u062d \u0644\u0644\u062a\u0637\u0628\u064a\u0642 \u0628\u062a\u062b\u0628\u064a\u062a \u0627\u0644\u062a\u062d\u062f\u064a\u062b\u0627\u062a. \u0645\u0644\u0641 APK \u0645\u062d\u0641\u0648\u0638 \u0648\u0644\u0646 \u064a\u0639\u0627\u062f \u062a\u0646\u0632\u064a\u0644\u0647."

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->toast(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "updater_install_permission135"

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    const-string v0, "\u0627\u0644\u0633\u0645\u0627\u062d \u0628\u0627\u0644\u062a\u062b\u0628\u064a\u062a"

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u0641\u0639\u0651\u0644 \u0625\u0630\u0646 \u062a\u062b\u0628\u064a\u062a \u0627\u0644\u062a\u0637\u0628\u064a\u0642\u0627\u062a \u063a\u064a\u0631 \u0627\u0644\u0645\u0639\u0631\u0648\u0641\u0629 \u0644\u062a\u0637\u0628\u064a\u0642 Cinemana\u060c \u062b\u0645 \u0623\u0639\u062f \u0627\u0644\u0645\u062d\u0627\u0648\u0644\u0629. \u0645\u0644\u0641 \u0627\u0644\u062a\u062d\u062f\u064a\u062b \u0645\u062d\u0641\u0648\u0638 \u0648\u0644\u0646 \u064a\u064f\u0646\u0632\u0651\u0644 \u0645\u0646 \u062c\u062f\u064a\u062f."

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->showInfo(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static parseRelease(Ljava/lang/String;)Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 108
    new-instance v0, Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;

    invoke-direct {v0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;-><init>()V

    .line 109
    const-string v1, "id"

    const-wide/16 v2, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->longField(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;->releaseId:J

    .line 110
    const-string v1, "tag_name"

    const-string v4, ""

    invoke-static {p0, v1, v4}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->stringField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;->tag:Ljava/lang/String;

    .line 111
    const-string v1, "name"

    iget-object v5, v0, Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;->tag:Ljava/lang/String;

    invoke-static {p0, v1, v5}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->stringField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;->name:Ljava/lang/String;

    .line 112
    const-string v1, "published_at"

    invoke-static {p0, v1, v4}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->stringField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "updated_at"

    invoke-static {p0, v5, v1}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->stringField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;->updatedAt:Ljava/lang/String;

    .line 114
    const-string v1, "\\\"browser_download_url\\\"\\s*:\\s*\\\"([^\\\"]+\\.apk(?:\\?[^\\\"]*)?)\\\""

    const/4 v5, 0x2

    invoke-static {v1, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 115
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 116
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;->apkUrl:Ljava/lang/String;

    .line 117
    new-instance v6, Ljava/net/URL;

    iget-object v7, v0, Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;->apkUrl:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 118
    const-string v7, "https"

    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->allowedHost(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 119
    invoke-virtual {v6}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 120
    const/16 v7, 0x2f

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 121
    if-ltz v7, :cond_0

    add-int/2addr v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    :cond_0
    const-string v5, "UTF-8"

    invoke-static {v6, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;->apkName:Ljava/lang/String;

    .line 122
    iget-object v5, v0, Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;->apkName:Ljava/lang/String;

    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->versionCodeHint(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;->versionCodeHint:J

    .line 124
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    add-int/lit16 v5, v5, -0xa28

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    add-int/lit8 v1, v1, 0x64

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 125
    const-string v1, "size"

    invoke-static {p0, v1, v2, v3}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->lastLongField(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;->size:J

    .line 126
    const-string v1, "digest"

    invoke-static {p0, v1, v4}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->lastStringField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 127
    const-string v1, "sha256:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 128
    :cond_1
    const-string v1, "[0-9a-f]{64}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object p0, v0, Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;->sha256:Ljava/lang/String;

    .line 129
    :cond_2
    iget-wide v4, v0, Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;->releaseId:J

    cmp-long p0, v4, v2

    if-lez p0, :cond_3

    iget-object p0, v0, Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;->apkUrl:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    .line 130
    return-object v0

    .line 129
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string v0, "invalid release payload"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 118
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "untrusted apk host"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 115
    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string v0, "release has no apk asset"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static post(Ljava/lang/Runnable;)V
    .locals 5

    .line 405
    :try_start_0
    const-string v0, "android.os.Looper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getMainLooper"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "android.os.Handler"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v1, v4}, Lcom/shabakaty/cinemana/ca1/Continue106;->make(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "post"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    invoke-static {v0, v1, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    return-void
.end method

.method public static profile(Ljava/lang/Object;)V
    .locals 7

    .line 53
    const-string v0, "findViewWithTag"

    if-nez p0, :cond_0

    return-void

    .line 54
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->cleanupAfterUpdate(Ljava/lang/Object;)V

    .line 55
    const-string v1, "getContext"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 56
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "ca1_update_check135"

    aput-object v5, v4, v2

    invoke-static {p0, v0, v4}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 57
    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "ca1_update_check135_title"

    aput-object v6, v5, v2

    invoke-static {p0, v0, v5}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 58
    if-nez v4, :cond_1

    .line 59
    const-string p0, "updater_profile_row_missing136"

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "static updater row missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 60
    return-void

    .line 62
    :cond_1
    if-eqz p0, :cond_2

    const-string v0, "setText"

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "\u0627\u0644\u062a\u062d\u0642\u0642 \u0645\u0646 \u062a\u062d\u062f\u064a\u062b\u0627\u062a \u0627\u0644\u062a\u0637\u0628\u064a\u0642"

    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {p0, v0, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_2
    nop

    .line 64
    new-instance v0, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda14;

    invoke-direct {v0, v1, v4, p0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda14;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v4, v0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->setClick(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 65
    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->resumePendingInstall(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    goto :goto_0

    .line 66
    :catch_0
    move-exception p0

    .line 67
    const-string v0, "updater_profile_error136"

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 69
    :goto_0
    return-void
.end method

.method static progress([Ljava/lang/Object;I)V
    .locals 6

    .line 271
    const/4 v0, 0x1

    :try_start_0
    aget-object v1, p0, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    aget-object v1, p0, v0

    const-string v3, "setText"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v4, v5, v2

    invoke-static {v1, v3, v5}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v1, 0x2

    aget-object v3, p0, v1

    if-eqz v3, :cond_1

    aget-object p0, p0, v1

    const-string v1, "setProgress"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-static {p0, v1, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :cond_1
    :goto_0
    return-void
.end method

.method static requestText(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 161
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->open(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p0

    .line 162
    const-string v0, "GET"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v0, 0x3a98

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 163
    const-string v0, "Accept"

    const-string v1, "application/vnd.github+json"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v0, "X-GitHub-Api-Version"

    const-string v1, "2022-11-28"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v0, "Cache-Control"

    const-string v1, "no-cache"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v0, "User-Agent"

    const-string v1, "Cinemana-Updater/135"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_2

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_2

    .line 168
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 169
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_1

    if-lez v3, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 170
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 171
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p0

    .line 170
    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_2
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v1

    .line 167
    :cond_2
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static restoreRow(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 99
    :try_start_0
    const-string v0, "setEnabled"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {p0, v0, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string p0, "setText"

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "\u0627\u0644\u062a\u062d\u0642\u0642 \u0645\u0646 \u062a\u062d\u062f\u064a\u062b\u0627\u062a \u0627\u0644\u062a\u0637\u0628\u064a\u0642"

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {p1, p0, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 100
    :cond_0
    :goto_0
    return-void
.end method

.method static resumePendingInstall(Ljava/lang/Object;)V
    .locals 8

    .line 390
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->apkDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".pending_install"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->canRequestInstalls(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->apkDir()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void

    :cond_2
    const-string v2, "getPackageManager"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v4}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "getPackageArchiveInfo"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v3

    const/4 v5, 0x1

    aput-object v6, v7, v5

    invoke-static {v2, v4, v7}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void

    :cond_3
    const-string v4, "getPackageName"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v4, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "packageName"

    invoke-static {v2, v4}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "versionCode"

    invoke-static {v2, v5}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->localVersionCode(Ljava/lang/Object;)J

    move-result-wide v2

    cmp-long v2, v5, v2

    if-gtz v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->install(Ljava/lang/Object;Ljava/io/File;)V

    goto :goto_3

    :cond_5
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void

    :cond_6
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_7
    :goto_2
    return-void

    :catch_0
    move-exception p0

    const-string v0, "updater_resume_pending135"

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 391
    :goto_3
    return-void
.end method

.method static reusableApk(Ljava/lang/Object;Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;)Ljava/io/File;
    .locals 7

    .line 247
    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->targetFile(Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;)Ljava/io/File;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 250
    :cond_0
    :try_start_0
    iget-wide v3, p1, Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;->size:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    iget-wide v5, p1, Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;->size:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "cached size mismatch"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 251
    :cond_2
    :goto_0
    invoke-static {p0, v0, p1}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->verifyApk(Ljava/lang/Object;Ljava/io/File;Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    return-object v0

    .line 253
    :catch_0
    move-exception p0

    .line 254
    const-string p1, "updater_cached_apk_invalid135"

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 255
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 256
    :goto_1
    return-object v2
.end method

.method static safeApkName(Ljava/lang/String;J)Ljava/lang/String;
    .locals 3

    .line 242
    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    const-string v0, "[\\\\/:*?\"<>|]"

    const-string v1, "_"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "Cinemana-update-"

    if-nez v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method static setClick(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 402
    const-string v0, "android.view.View$OnClickListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    new-instance v0, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v1, v3, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v4

    const-string p1, "setOnClickListener"

    invoke-static {p0, p1, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static setIntField(Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    if-nez p0, :cond_0

    return-void

    .line 73
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 74
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 75
    :catch_0
    move-exception v1

    .line 73
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 77
    :cond_1
    return-void
.end method

.method static sha256(Ljava/io/File;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 291
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/high16 p0, 0x10000

    new-array p0, p0, [B

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_1

    if-lez v2, :cond_0

    invoke-virtual {v0, p0, v3, v2}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    array-length v1, v0

    move v2, v3

    :goto_1
    if-ge v2, v1, :cond_2

    aget-byte v4, v0, v2

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v3

    const-string v4, "%02x"

    invoke-static {v5, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw p0
.end method

.method static showDialog(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 400
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "setContentView"

    invoke-static {p0, p1, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "show"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "getWindow"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string p1, "android.graphics.drawable.ColorDrawable"

    invoke-static {p1, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->make(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string p1, "setBackgroundDrawable"

    invoke-static {p0, p1, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v2

    aput-object v4, v5, v0

    const-string v1, "setLayout"

    invoke-static {p0, v1, v5}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x50

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v4, v0, [Ljava/lang/Object;

    aput-object v1, v4, v2

    const-string v1, "setGravity"

    invoke-static {p0, v1, v4}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x3f0ccccd    # 0.55f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    new-array v4, v0, [Ljava/lang/Object;

    aput-object v1, v4, v2

    const-string v1, "setDimAmount"

    invoke-static {p0, v1, v4}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getAttributes"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v4}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :try_start_0
    const-string v4, "width"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, v4, p1}, Lcom/shabakaty/cinemana/ca1/Continue106;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "height"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, p1, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "setAttributes"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v2

    invoke-static {p0, p1, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :cond_0
    :goto_0
    return-void
.end method

.method static showInfo(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 206
    :try_start_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->createDialog(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x16

    const/16 v2, 0x12

    invoke-static {p0, v1, v2}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->makeColumn(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    const/4 v7, 0x1

    const/16 v8, 0xe

    const/16 v6, 0x15

    move-object v3, p0

    move-object v4, v1

    move-object v5, p1

    invoke-static/range {v3 .. v8}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->addText(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;IZI)Ljava/lang/Object;

    const/4 v7, 0x0

    const/16 v8, 0x12

    const/16 v6, 0x10

    move-object v3, p0

    move-object v4, v1

    move-object v5, p2

    invoke-static/range {v3 .. v8}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->addText(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;IZI)Ljava/lang/Object;

    const-string p1, "\u0625\u063a\u0644\u0627\u0642"

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->addAction(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    new-instance v2, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda9;

    invoke-direct {v2, v0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Object;)V

    invoke-static {p1, v2}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->setClick(Ljava/lang/Object;Ljava/lang/Runnable;)V

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->showDialog(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p0, p2}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->toast(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    :goto_0
    return-void
.end method

.method static showInstallFailure(Ljava/lang/Object;Ljava/io/File;)V
    .locals 12

    .line 378
    if-nez p1, :cond_0

    const-string v0, "/storage/emulated/0/Cinemana/work/data/apk"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 379
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u062a\u0639\u0630\u0631 \u0641\u062a\u062d \u0648\u0627\u062c\u0647\u0629 Android \u0644\u062a\u062b\u0628\u064a\u062a \u0627\u0644\u062a\u062d\u062f\u064a\u062b \u062a\u0644\u0642\u0627\u0626\u064a\u064b\u0627.\n\n\u064a\u0645\u0643\u0646\u0643 \u062a\u062b\u0628\u064a\u062a \u0645\u0644\u0641 APK \u064a\u062f\u0648\u064a\u064b\u0627 \u0645\u0646 \u0627\u0644\u0645\u0633\u0627\u0631:\n"

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n\u0644\u0646 \u064a\u064f\u0639\u0627\u062f \u062a\u0646\u0632\u064a\u0644 \u0627\u0644\u0645\u0644\u0641 \u0639\u0646\u062f \u0625\u0639\u0627\u062f\u0629 \u0627\u0644\u0645\u062d\u0627\u0648\u0644\u0629."

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 381
    :try_start_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->createDialog(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x16

    const/16 v3, 0x12

    invoke-static {p0, v2, v3}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->makeColumn(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v11

    const-string v7, "\u062a\u0639\u0630\u0631 \u0641\u062a\u062d \u0627\u0644\u0645\u062b\u0628\u062a"

    invoke-static {v7}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    const/16 v10, 0xe

    const/16 v8, 0x15

    move-object v5, p0

    move-object v6, v11

    invoke-static/range {v5 .. v10}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->addText(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;IZI)Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0x12

    const/16 v5, 0x10

    move-object v2, p0

    move-object v3, v11

    invoke-static/range {v2 .. v7}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->addText(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;IZI)Ljava/lang/Object;

    .line 382
    const-string v2, "\u0625\u0639\u0627\u062f\u0629 \u0627\u0644\u0645\u062d\u0627\u0648\u0644\u0629"

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v11, v2}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->addAction(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "\u0625\u063a\u0644\u0627\u0642"

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v11, v3}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->addAction(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 383
    new-instance v4, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda17;

    invoke-direct {v4, v1, p1, p0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda17;-><init>(Ljava/lang/Object;Ljava/io/File;Ljava/lang/Object;)V

    invoke-static {v2, v4}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->setClick(Ljava/lang/Object;Ljava/lang/Runnable;)V

    new-instance p1, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda18;

    invoke-direct {p1, v1}, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda18;-><init>(Ljava/lang/Object;)V

    invoke-static {v3, p1}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->setClick(Ljava/lang/Object;Ljava/lang/Runnable;)V

    invoke-static {v1, v11}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->showDialog(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0645\u0644\u0641 \u0627\u0644\u062a\u062d\u062f\u064a\u062b \u0645\u062d\u0641\u0648\u0638 \u0641\u064a: "

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->toast(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    :goto_1
    return-void
.end method

.method static showUpdate(Ljava/lang/Object;Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;)V
    .locals 9

    .line 196
    :try_start_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->createDialog(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x16

    const/16 v2, 0x12

    invoke-static {p0, v1, v2}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->makeColumn(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    .line 197
    const-string v5, "\u064a\u062a\u0648\u0641\u0631 \u062a\u062d\u062f\u064a\u062b \u062c\u062f\u064a\u062f"

    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    const/16 v8, 0x10

    const/16 v6, 0x16

    move-object v3, p0

    move-object v4, v1

    invoke-static/range {v3 .. v8}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->addText(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;IZI)Ljava/lang/Object;

    .line 198
    iget-object v2, p1, Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;->name:Ljava/lang/String;

    :goto_0
    move-object v5, v2

    goto :goto_1

    :cond_0
    iget-object v2, p1, Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;->tag:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;->tag:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v2, p1, Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;->apkName:Ljava/lang/String;

    goto :goto_0

    .line 199
    :goto_1
    const/4 v7, 0x0

    const/16 v8, 0x12

    const/16 v6, 0x11

    move-object v3, p0

    move-object v4, v1

    invoke-static/range {v3 .. v8}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->addText(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;IZI)Ljava/lang/Object;

    .line 200
    const-string v2, "\u0625\u063a\u0644\u0627\u0642"

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->addAction(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "\u062a\u062d\u062f\u064a\u062b"

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v1, v3}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->addAction(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 201
    new-instance v4, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v4}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->setClick(Ljava/lang/Object;Ljava/lang/Runnable;)V

    new-instance v2, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0, p0, p1}, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;)V

    invoke-static {v3, v2}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->setClick(Ljava/lang/Object;Ljava/lang/Runnable;)V

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->showDialog(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    goto :goto_2

    :catch_0
    move-exception p1

    const-string v0, "updater_dialog_error135"

    invoke-static {v0, p1}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    const-string p1, "\u064a\u062a\u0648\u0641\u0631 \u062a\u062d\u062f\u064a\u062b \u062c\u062f\u064a\u062f"

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->toast(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    :goto_2
    return-void
.end method

.method static stringField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 181
    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->stringPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method static stringPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 2

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\\\"\\s*:\\s*\\\"((?:\\\\.|[^\\\"])*)\\\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    return-object p0
.end method

.method static targetFile(Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;)Ljava/io/File;
    .locals 5

    .line 244
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->apkDir()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;->apkName:Ljava/lang/String;

    iget-wide v3, p0, Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;->releaseId:J

    invoke-static {v2, v3, v4}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->safeApkName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static toast(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5

    .line 406
    :try_start_0
    const-string v0, "android.widget.Toast"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "makeText"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v2

    const/4 p0, 0x1

    aput-object p1, v4, p0

    const/4 p0, 0x2

    aput-object v3, v4, p0

    invoke-static {v0, v1, v4}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "show"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :goto_0
    return-void
.end method

.method static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 180
    const-string v0, "\\/"

    const-string v1, "/"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\\""

    const-string v1, "\""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\n"

    const-string v1, "\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\\\"

    const-string v1, "\\"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static verifyApk(Ljava/lang/Object;Ljava/io/File;Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 274
    iget-object v0, p2, Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;->sha256:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;->sha256:Ljava/lang/String;

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->sha256(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "sha256 mismatch"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 275
    :cond_1
    :goto_0
    const-string v0, "getPackageManager"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const/4 p1, 0x1

    aput-object v2, v3, p1

    const-string p1, "getPackageArchiveInfo"

    invoke-static {v0, p1, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 276
    const-string v0, "getPackageName"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "packageName"

    invoke-static {p1, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 277
    const-string v0, "versionCode"

    invoke-static {p1, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->localVersionCode(Ljava/lang/Object;)J

    move-result-wide p0

    iget-wide v2, p2, Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;->versionCodeHint:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const-string v3, "/"

    if-lez v2, :cond_3

    iget-wide v4, p2, Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;->versionCodeHint:J

    cmp-long v2, v0, v4

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "version hint mismatch "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v0, p2, Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;->versionCodeHint:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    cmp-long p2, v0, p0

    if-lez p2, :cond_4

    return-wide v0

    :cond_4
    new-instance p2, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "release is not newer "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 276
    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "package mismatch"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 275
    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string p1, "invalid apk"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static versionCodeHint(Ljava/lang/String;)J
    .locals 3

    .line 147
    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    .line 148
    :cond_0
    const-string v2, "(?:^|[_.-])(\\d{5,10})(?=[_.-]|$)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 149
    nop

    .line 150
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    .line 151
    :cond_1
    return-wide v0
.end method

.method static writeMarker(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 280
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->apkDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "apk dir"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    const-string v4, ".target_version"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v0, "UTF-8"

    invoke-direct {v1, v2, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    throw p0
.end method

.method static writePending(Ljava/io/File;)V
    .locals 5

    .line 387
    :try_start_0
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->apkDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    const-string v4, ".pending_install"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v0, "UTF-8"

    invoke-direct {v1, v2, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    const-string v0, "updater_pending_write135"

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
