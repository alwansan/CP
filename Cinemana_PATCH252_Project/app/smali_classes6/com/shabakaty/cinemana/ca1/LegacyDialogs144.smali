.class public final Lcom/shabakaty/cinemana/ca1/LegacyDialogs144;
.super Ljava/lang/Object;
.source "LegacyDialogs144.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)V
    .locals 0

    .line 12
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/LegacyDialogs144;->applyParallel(I)V

    return-void
.end method

.method private static applyParallel(I)V
    .locals 6

    .line 46
    :try_start_0
    const-string v0, "com.shabakaty.downloader.CnmDownloadQueue"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 47
    const-string v1, "setMaxParallel"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 49
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v5

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 50
    :catchall_0
    move-exception p0

    :goto_0
    nop

    .line 51
    return-void
.end method

.method public static showDownloadLimit(Landroid/widget/TextView;)V
    .locals 9

    .line 16
    if-nez p0, :cond_0

    return-void

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 18
    if-nez v0, :cond_1

    return-void

    .line 19
    :cond_1
    const-string v1, "ca1_downloads"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 20
    const-string v3, "parallel"

    const/4 v4, 0x3

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 21
    const/4 v5, 0x5

    const/4 v6, 0x1

    if-lt v3, v6, :cond_2

    if-le v3, v5, :cond_3

    :cond_2
    const/4 v3, 0x3

    .line 22
    :cond_3
    filled-new-array {v3}, [I

    move-result-object v7

    .line 23
    new-array v5, v5, [Ljava/lang/CharSequence;

    const-string v8, "1"

    aput-object v8, v5, v2

    const-string v2, "2"

    aput-object v2, v5, v6

    const/4 v2, 0x2

    const-string v8, "3"

    aput-object v8, v5, v2

    const-string v2, "4"

    aput-object v2, v5, v4

    const/4 v2, 0x4

    const-string v4, "5"

    aput-object v4, v5, v2

    .line 25
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 26
    const-string v0, "\u0639\u062f\u062f \u0627\u0644\u062a\u062d\u0645\u064a\u0644\u0627\u062a"

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 27
    sub-int/2addr v3, v6

    new-instance v0, Lcom/shabakaty/cinemana/ca1/LegacyDialogs144$1;

    invoke-direct {v0, v7}, Lcom/shabakaty/cinemana/ca1/LegacyDialogs144$1;-><init>([I)V

    invoke-virtual {v2, v5, v3, v0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 32
    new-instance v0, Lcom/shabakaty/cinemana/ca1/LegacyDialogs144$2;

    invoke-direct {v0, v7, v1, p0}, Lcom/shabakaty/cinemana/ca1/LegacyDialogs144$2;-><init>([ILandroid/content/SharedPreferences;Landroid/widget/TextView;)V

    const-string p0, "\u062d\u0641\u0638"

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 40
    const-string p0, "\u0625\u0644\u063a\u0627\u0621"

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {v2, p0, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 41
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Dialogs;->style(Landroid/app/AlertDialog;)V

    .line 42
    return-void
.end method
