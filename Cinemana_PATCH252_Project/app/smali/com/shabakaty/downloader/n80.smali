.class public final synthetic Lcom/shabakaty/downloader/n80;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/t80;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/shabakaty/downloader/n80;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/n80;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 1

    iput p2, p0, Lcom/shabakaty/downloader/n80;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/n80;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/q80;)Ljava/lang/Object;
    .locals 39

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget v2, v1, Lcom/shabakaty/downloader/n80;->a:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, v1, Lcom/shabakaty/downloader/n80;->b:Ljava/lang/Object;

    return-object v0

    :pswitch_1
    iget-object v0, v1, Lcom/shabakaty/downloader/n80;->b:Ljava/lang/Object;

    return-object v0

    :goto_0
    iget-object v2, v1, Lcom/shabakaty/downloader/n80;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    const-class v2, Lcom/shabakaty/downloader/ec1;

    invoke-interface {v0, v2}, Lcom/shabakaty/downloader/q80;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/ec1;

    .line 2
    const-class v3, Lcom/shabakaty/downloader/bg0;

    .line 3
    invoke-interface {v0, v3}, Lcom/shabakaty/downloader/q80;->e(Ljava/lang/Class;)Lcom/shabakaty/downloader/np0;

    move-result-object v3

    .line 4
    const-class v4, Lcom/shabakaty/downloader/l6;

    .line 5
    invoke-interface {v0, v4}, Lcom/shabakaty/downloader/q80;->e(Ljava/lang/Class;)Lcom/shabakaty/downloader/np0;

    move-result-object v4

    .line 6
    const-class v5, Lcom/shabakaty/downloader/mc1;

    invoke-interface {v0, v5}, Lcom/shabakaty/downloader/q80;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/mc1;

    .line 7
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ec1;->a()V

    .line 8
    iget-object v11, v2, Lcom/shabakaty/downloader/ec1;->a:Landroid/content/Context;

    .line 9
    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Initializing Firebase Crashlytics "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "18.2.1"

    .line 11
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "FirebaseCrashlytics"

    const/4 v13, 0x0

    .line 12
    invoke-static {v7, v6, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    new-instance v12, Lcom/shabakaty/downloader/jl0;

    invoke-direct {v12, v2}, Lcom/shabakaty/downloader/jl0;-><init>(Lcom/shabakaty/downloader/ec1;)V

    .line 14
    new-instance v15, Lcom/shabakaty/downloader/ux1;

    invoke-direct {v15, v11, v5, v0, v12}, Lcom/shabakaty/downloader/ux1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/shabakaty/downloader/mc1;Lcom/shabakaty/downloader/jl0;)V

    .line 15
    new-instance v6, Lcom/shabakaty/downloader/dg0;

    invoke-direct {v6, v3}, Lcom/shabakaty/downloader/dg0;-><init>(Lcom/shabakaty/downloader/np0;)V

    .line 16
    new-instance v0, Lcom/shabakaty/downloader/o6;

    invoke-direct {v0, v4}, Lcom/shabakaty/downloader/o6;-><init>(Lcom/shabakaty/downloader/np0;)V

    const-string v3, "Crashlytics Exception Handler"

    .line 17
    invoke-static {v3}, Lcom/shabakaty/downloader/b71;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v10

    .line 18
    new-instance v14, Lcom/shabakaty/downloader/zf0;

    .line 19
    new-instance v8, Lcom/shabakaty/downloader/n6;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9}, Lcom/shabakaty/downloader/n6;-><init>(Lcom/shabakaty/downloader/o6;I)V

    .line 20
    new-instance v7, Lcom/shabakaty/downloader/n6;

    const/4 v5, 0x1

    invoke-direct {v7, v0, v5}, Lcom/shabakaty/downloader/n6;-><init>(Lcom/shabakaty/downloader/o6;I)V

    move-object v3, v14

    move-object v4, v2

    const/4 v0, 0x1

    move-object v5, v15

    move-object/from16 v16, v7

    move-object v7, v12

    move-object/from16 v9, v16

    .line 21
    invoke-direct/range {v3 .. v10}, Lcom/shabakaty/downloader/zf0;-><init>(Lcom/shabakaty/downloader/ec1;Lcom/shabakaty/downloader/ux1;Lcom/shabakaty/downloader/bg0;Lcom/shabakaty/downloader/jl0;Lcom/shabakaty/downloader/vn;Lcom/shabakaty/downloader/p6;Ljava/util/concurrent/ExecutorService;)V

    .line 22
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ec1;->a()V

    .line 23
    iget-object v2, v2, Lcom/shabakaty/downloader/ec1;->c:Lcom/shabakaty/downloader/tc1;

    .line 24
    iget-object v2, v2, Lcom/shabakaty/downloader/tc1;->b:Ljava/lang/String;

    .line 25
    invoke-static {v11}, Lcom/shabakaty/downloader/n70;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mapping file ID is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FirebaseCrashlytics"

    const/4 v10, 0x3

    .line 27
    invoke-static {v4, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "FirebaseCrashlytics"

    .line 28
    invoke-static {v4, v3, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    :cond_0
    new-instance v9, Lcom/shabakaty/downloader/ic7;

    invoke-direct {v9, v11}, Lcom/shabakaty/downloader/ic7;-><init>(Landroid/content/Context;)V

    .line 30
    :try_start_0
    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 31
    invoke-virtual {v15}, Lcom/shabakaty/downloader/ux1;->d()Ljava/lang/String;

    move-result-object v8

    .line 32
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v6, 0x0

    .line 33
    invoke-virtual {v3, v7, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 34
    iget v4, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    .line 35
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v3, "0.0"

    :cond_1
    move-object/from16 v21, v3

    .line 36
    new-instance v4, Lcom/shabakaty/downloader/db;

    move-object v3, v4

    move-object/from16 v37, v4

    move-object v4, v2

    const/16 v38, 0x0

    move-object v6, v8

    move-object v0, v8

    move-object/from16 v8, v22

    move-object/from16 v16, v9

    move-object/from16 v9, v21

    move-object/from16 v10, v16

    invoke-direct/range {v3 .. v10}, Lcom/shabakaty/downloader/db;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/ic7;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Installer package name is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "FirebaseCrashlytics"

    const/4 v4, 0x2

    .line 38
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "FirebaseCrashlytics"

    .line 39
    invoke-static {v3, v0, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    const-string v0, "com.google.firebase.crashlytics.startup"

    .line 40
    invoke-static {v0}, Lcom/shabakaty/downloader/b71;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    .line 41
    new-instance v0, Lcom/shabakaty/downloader/wt2;

    const/16 v5, 0x9

    invoke-direct {v0, v5}, Lcom/shabakaty/downloader/wt2;-><init>(I)V

    .line 42
    invoke-virtual {v15}, Lcom/shabakaty/downloader/ux1;->d()Ljava/lang/String;

    move-result-object v5

    .line 43
    new-instance v8, Lcom/shabakaty/downloader/zl2;

    const/16 v6, 0x10

    invoke-direct {v8, v6}, Lcom/shabakaty/downloader/zl2;-><init>(I)V

    .line 44
    new-instance v9, Lcom/shabakaty/downloader/fq1;

    invoke-direct {v9, v8}, Lcom/shabakaty/downloader/fq1;-><init>(Lcom/shabakaty/downloader/zl2;)V

    .line 45
    new-instance v10, Lcom/shabakaty/downloader/sm6;

    invoke-direct {v10, v11, v4}, Lcom/shabakaty/downloader/sm6;-><init>(Landroid/content/Context;I)V

    .line 46
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v7, 0x1

    new-array v13, v7, [Ljava/lang/Object;

    aput-object v2, v13, v38

    const-string v7, "https://firebase-settings.crashlytics.com/spi/v2/platforms/android/gmp/%s/settings"

    invoke-static {v6, v7, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 47
    new-instance v13, Lcom/shabakaty/downloader/tk1;

    invoke-direct {v13, v7, v0}, Lcom/shabakaty/downloader/tk1;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/wt2;)V

    new-array v0, v4, [Ljava/lang/Object;

    .line 48
    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 49
    invoke-virtual {v15, v7}, Lcom/shabakaty/downloader/ux1;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v38

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 50
    invoke-virtual {v15, v7}, Lcom/shabakaty/downloader/ux1;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v16, 0x1

    aput-object v7, v0, v16

    const-string v7, "%s/%s"

    .line 51
    invoke-static {v6, v7, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 52
    sget-object v6, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v15, v6}, Lcom/shabakaty/downloader/ux1;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 53
    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v15, v6}, Lcom/shabakaty/downloader/ux1;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/4 v6, 0x4

    new-array v7, v6, [Ljava/lang/String;

    .line 54
    invoke-static {v11}, Lcom/shabakaty/downloader/n70;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v7, v38

    aput-object v2, v7, v16

    aput-object v21, v7, v4

    const/4 v4, 0x3

    aput-object v22, v7, v4

    .line 55
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v6, :cond_4

    .line 56
    aget-object v6, v7, v1

    if-eqz v6, :cond_3

    move-object/from16 v19, v7

    const-string v7, "-"

    move-object/from16 v20, v14

    const-string v14, ""

    .line 57
    invoke-virtual {v6, v7, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move-object/from16 v19, v7

    move-object/from16 v20, v14

    :goto_2
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v7, v19

    move-object/from16 v14, v20

    const/4 v6, 0x4

    goto :goto_1

    :cond_4
    move-object/from16 v20, v14

    .line 58
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 61
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 62
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6

    invoke-static {v1}, Lcom/shabakaty/downloader/n70;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    if-eqz v5, :cond_7

    const/4 v5, 0x4

    goto :goto_5

    :cond_7
    const/4 v5, 0x1

    .line 64
    :goto_5
    invoke-static {v5}, Lcom/shabakaty/downloader/su;->u(I)I

    move-result v23

    .line 65
    new-instance v7, Lcom/shabakaty/downloader/k34;

    move-object/from16 v4, v20

    move-object v14, v7

    move-object v5, v15

    move-object v15, v2

    move-object/from16 v16, v0

    move-object/from16 v19, v5

    move-object/from16 v20, v1

    invoke-direct/range {v14 .. v23}, Lcom/shabakaty/downloader/k34;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/s12;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 66
    new-instance v1, Lcom/shabakaty/downloader/t24;

    move-object v5, v1

    move-object v6, v11

    move-object v11, v13

    invoke-direct/range {v5 .. v12}, Lcom/shabakaty/downloader/t24;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/k34;Lcom/shabakaty/downloader/zl2;Lcom/shabakaty/downloader/fq1;Lcom/shabakaty/downloader/sm6;Lcom/shabakaty/downloader/tk1;Lcom/shabakaty/downloader/jl0;)V

    .line 67
    iget-object v0, v1, Lcom/shabakaty/downloader/t24;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/shabakaty/downloader/n70;->h(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "existing_instance_identifier"

    const-string v5, ""

    .line 68
    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    iget-object v2, v1, Lcom/shabakaty/downloader/t24;->b:Lcom/shabakaty/downloader/k34;

    iget-object v2, v2, Lcom/shabakaty/downloader/k34;->f:Ljava/lang/String;

    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    if-nez v0, :cond_8

    .line 71
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/t24;->a(I)Lcom/shabakaty/downloader/w24;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 72
    iget-object v2, v1, Lcom/shabakaty/downloader/t24;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 73
    iget-object v2, v1, Lcom/shabakaty/downloader/t24;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/zk4;

    .line 74
    iget-object v0, v0, Lcom/shabakaty/downloader/w24;->a:Lcom/shabakaty/downloader/hb;

    .line 75
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/zk4;->b(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 76
    invoke-static {v2}, Lcom/shabakaty/downloader/kl4;->e(Ljava/lang/Object;)Lcom/shabakaty/downloader/uk4;

    move-result-object v0

    goto :goto_6

    :cond_8
    const/4 v0, 0x3

    .line 77
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/t24;->a(I)Lcom/shabakaty/downloader/w24;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 78
    iget-object v0, v1, Lcom/shabakaty/downloader/t24;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 79
    iget-object v0, v1, Lcom/shabakaty/downloader/t24;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/zk4;

    .line 80
    iget-object v2, v2, Lcom/shabakaty/downloader/w24;->a:Lcom/shabakaty/downloader/hb;

    .line 81
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/zk4;->b(Ljava/lang/Object;)Z

    .line 82
    :cond_9
    iget-object v0, v1, Lcom/shabakaty/downloader/t24;->g:Lcom/shabakaty/downloader/jl0;

    .line 83
    iget-object v2, v0, Lcom/shabakaty/downloader/jl0;->g:Lcom/shabakaty/downloader/zk4;

    .line 84
    iget-object v2, v2, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    .line 85
    iget-object v5, v0, Lcom/shabakaty/downloader/jl0;->c:Ljava/lang/Object;

    monitor-enter v5

    .line 86
    :try_start_1
    iget-object v0, v0, Lcom/shabakaty/downloader/jl0;->d:Lcom/shabakaty/downloader/zk4;

    .line 87
    iget-object v0, v0, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    .line 88
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    sget-object v5, Lcom/shabakaty/downloader/xy4;->a:Ljava/util/concurrent/ExecutorService;

    .line 90
    new-instance v5, Lcom/shabakaty/downloader/zk4;

    invoke-direct {v5}, Lcom/shabakaty/downloader/zk4;-><init>()V

    .line 91
    new-instance v6, Lcom/shabakaty/downloader/vy4;

    invoke-direct {v6, v5}, Lcom/shabakaty/downloader/vy4;-><init>(Lcom/shabakaty/downloader/zk4;)V

    .line 92
    invoke-virtual {v2, v6}, Lcom/shabakaty/downloader/ye7;->d(Lcom/shabakaty/downloader/td0;)Lcom/shabakaty/downloader/uk4;

    .line 93
    invoke-virtual {v0, v6}, Lcom/shabakaty/downloader/ye7;->d(Lcom/shabakaty/downloader/td0;)Lcom/shabakaty/downloader/uk4;

    .line 94
    iget-object v0, v5, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    .line 95
    new-instance v2, Lcom/shabakaty/downloader/s24;

    invoke-direct {v2, v1}, Lcom/shabakaty/downloader/s24;-><init>(Lcom/shabakaty/downloader/t24;)V

    .line 96
    invoke-virtual {v0, v3, v2}, Lcom/shabakaty/downloader/ye7;->n(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/kh4;)Lcom/shabakaty/downloader/uk4;

    move-result-object v0

    .line 97
    :goto_6
    new-instance v2, Lcom/shabakaty/downloader/fc1;

    invoke-direct {v2}, Lcom/shabakaty/downloader/fc1;-><init>()V

    .line 98
    invoke-virtual {v0, v3, v2}, Lcom/shabakaty/downloader/uk4;->e(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/td0;)Lcom/shabakaty/downloader/uk4;

    .line 99
    iget-object v0, v4, Lcom/shabakaty/downloader/zf0;->a:Landroid/content/Context;

    const-string v2, "com.crashlytics.RequireBuildId"

    const/4 v5, 0x1

    .line 100
    invoke-static {v0, v2, v5}, Lcom/shabakaty/downloader/n70;->d(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    move-object/from16 v2, v37

    .line 101
    iget-object v5, v2, Lcom/shabakaty/downloader/db;->b:Ljava/lang/String;

    const-string v6, "The Crashlytics build ID is missing. This occurs when Crashlytics tooling is absent from your app\'s build configuration. Please review Crashlytics onboarding instructions and ensure you have a valid Crashlytics account."

    const-string v7, "FirebaseCrashlytics"

    if-nez v0, :cond_a

    const/4 v0, 0x2

    .line 102
    invoke-static {v7, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v0, "Configured not to require a build ID."

    const/4 v5, 0x0

    .line 103
    invoke-static {v7, v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 104
    :cond_a
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    :goto_7
    const/4 v9, 0x1

    goto :goto_8

    :cond_c
    const-string v0, "."

    .line 105
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, ".     |  | "

    .line 106
    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, ".     |  |"

    .line 107
    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, ".   \\ |  | /"

    .line 109
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, ".    \\    /"

    .line 110
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, ".     \\  /"

    .line 111
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, ".      \\/"

    .line 112
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, ".      /\\"

    .line 116
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, ".     /  \\"

    .line 117
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, ".    /    \\"

    .line 118
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, ".   / |  | \\"

    .line 119
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    :goto_8
    if-eqz v9, :cond_13

    .line 124
    :try_start_2
    new-instance v0, Lcom/shabakaty/downloader/sm6;

    iget-object v5, v4, Lcom/shabakaty/downloader/zf0;->a:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-direct {v0, v5, v6}, Lcom/shabakaty/downloader/sm6;-><init>(Landroid/content/Context;I)V

    .line 125
    new-instance v5, Lcom/shabakaty/downloader/yh1;

    const-string v6, "crash_marker"

    invoke-direct {v5, v6, v0}, Lcom/shabakaty/downloader/yh1;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/sm6;)V

    iput-object v5, v4, Lcom/shabakaty/downloader/zf0;->e:Lcom/shabakaty/downloader/yh1;

    .line 126
    new-instance v5, Lcom/shabakaty/downloader/yh1;

    const-string v6, "initialization_marker"

    invoke-direct {v5, v6, v0}, Lcom/shabakaty/downloader/yh1;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/sm6;)V

    iput-object v5, v4, Lcom/shabakaty/downloader/zf0;->d:Lcom/shabakaty/downloader/yh1;

    .line 127
    new-instance v5, Lcom/shabakaty/downloader/tk1;

    const/16 v6, 0xb

    invoke-direct {v5, v6}, Lcom/shabakaty/downloader/tk1;-><init>(I)V

    .line 128
    new-instance v6, Lcom/shabakaty/downloader/zf0$c;

    invoke-direct {v6, v0}, Lcom/shabakaty/downloader/zf0$c;-><init>(Lcom/shabakaty/downloader/sm6;)V

    .line 129
    new-instance v8, Lcom/shabakaty/downloader/hk2;

    iget-object v9, v4, Lcom/shabakaty/downloader/zf0;->a:Landroid/content/Context;

    invoke-direct {v8, v9, v6}, Lcom/shabakaty/downloader/hk2;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/hk2$b;)V

    .line 130
    new-instance v9, Lcom/shabakaty/downloader/dv3;

    const/16 v10, 0x400

    const/4 v11, 0x1

    new-array v12, v11, [Lcom/shabakaty/downloader/eb4;

    new-instance v13, Lcom/shabakaty/downloader/zq5;

    const/16 v14, 0xa

    const/4 v15, 0x2

    invoke-direct {v13, v14, v15}, Lcom/shabakaty/downloader/zq5;-><init>(II)V

    aput-object v13, v12, v38

    invoke-direct {v9, v10, v12}, Lcom/shabakaty/downloader/dv3;-><init>(I[Lcom/shabakaty/downloader/eb4;)V

    .line 131
    iget-object v10, v4, Lcom/shabakaty/downloader/zf0;->a:Landroid/content/Context;

    iget-object v12, v4, Lcom/shabakaty/downloader/zf0;->g:Lcom/shabakaty/downloader/ux1;

    move-object/from16 v23, v10

    move-object/from16 v24, v12

    move-object/from16 v25, v0

    move-object/from16 v26, v2

    move-object/from16 v27, v8

    move-object/from16 v28, v5

    move-object/from16 v29, v9

    move-object/from16 v30, v1

    .line 132
    invoke-static/range {v23 .. v30}, Lcom/shabakaty/downloader/b24;->d(Landroid/content/Context;Lcom/shabakaty/downloader/ux1;Lcom/shabakaty/downloader/sm6;Lcom/shabakaty/downloader/db;Lcom/shabakaty/downloader/hk2;Lcom/shabakaty/downloader/tk1;Lcom/shabakaty/downloader/eb4;Lcom/shabakaty/downloader/x24;)Lcom/shabakaty/downloader/b24;

    move-result-object v34

    .line 133
    new-instance v9, Lcom/shabakaty/downloader/tf0;

    iget-object v10, v4, Lcom/shabakaty/downloader/zf0;->a:Landroid/content/Context;

    iget-object v12, v4, Lcom/shabakaty/downloader/zf0;->k:Lcom/shabakaty/downloader/hf0;

    iget-object v13, v4, Lcom/shabakaty/downloader/zf0;->g:Lcom/shabakaty/downloader/ux1;

    iget-object v14, v4, Lcom/shabakaty/downloader/zf0;->b:Lcom/shabakaty/downloader/jl0;

    iget-object v15, v4, Lcom/shabakaty/downloader/zf0;->e:Lcom/shabakaty/downloader/yh1;

    iget-object v11, v4, Lcom/shabakaty/downloader/zf0;->l:Lcom/shabakaty/downloader/bg0;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v16, v3

    :try_start_3
    iget-object v3, v4, Lcom/shabakaty/downloader/zf0;->i:Lcom/shabakaty/downloader/p6;

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v12

    move-object/from16 v26, v13

    move-object/from16 v27, v14

    move-object/from16 v28, v0

    move-object/from16 v29, v15

    move-object/from16 v30, v2

    move-object/from16 v31, v5

    move-object/from16 v32, v8

    move-object/from16 v33, v6

    move-object/from16 v35, v11

    move-object/from16 v36, v3

    invoke-direct/range {v23 .. v36}, Lcom/shabakaty/downloader/tf0;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/hf0;Lcom/shabakaty/downloader/ux1;Lcom/shabakaty/downloader/jl0;Lcom/shabakaty/downloader/sm6;Lcom/shabakaty/downloader/yh1;Lcom/shabakaty/downloader/db;Lcom/shabakaty/downloader/tk1;Lcom/shabakaty/downloader/hk2;Lcom/shabakaty/downloader/hk2$b;Lcom/shabakaty/downloader/b24;Lcom/shabakaty/downloader/bg0;Lcom/shabakaty/downloader/p6;)V

    iput-object v9, v4, Lcom/shabakaty/downloader/zf0;->f:Lcom/shabakaty/downloader/tf0;

    .line 134
    iget-object v0, v4, Lcom/shabakaty/downloader/zf0;->d:Lcom/shabakaty/downloader/yh1;

    .line 135
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yh1;->h()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 136
    iget-object v2, v4, Lcom/shabakaty/downloader/zf0;->k:Lcom/shabakaty/downloader/hf0;

    new-instance v3, Lcom/shabakaty/downloader/ag0;

    invoke-direct {v3, v4}, Lcom/shabakaty/downloader/ag0;-><init>(Lcom/shabakaty/downloader/zf0;)V

    .line 137
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/hf0;->b(Ljava/util/concurrent/Callable;)Lcom/shabakaty/downloader/uk4;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 138
    :try_start_4
    invoke-static {v2}, Lcom/shabakaty/downloader/xy4;->a(Lcom/shabakaty/downloader/uk4;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 139
    :try_start_5
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 140
    :catch_0
    iget-object v2, v4, Lcom/shabakaty/downloader/zf0;->f:Lcom/shabakaty/downloader/tf0;

    .line 141
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    .line 142
    iget-object v5, v2, Lcom/shabakaty/downloader/tf0;->d:Lcom/shabakaty/downloader/hf0;

    new-instance v6, Lcom/shabakaty/downloader/wf0;

    invoke-direct {v6, v2}, Lcom/shabakaty/downloader/wf0;-><init>(Lcom/shabakaty/downloader/tf0;)V

    invoke-virtual {v5, v6}, Lcom/shabakaty/downloader/hf0;->b(Ljava/util/concurrent/Callable;)Lcom/shabakaty/downloader/uk4;

    .line 143
    new-instance v5, Lcom/shabakaty/downloader/nf0;

    invoke-direct {v5, v2}, Lcom/shabakaty/downloader/nf0;-><init>(Lcom/shabakaty/downloader/tf0;)V

    .line 144
    new-instance v6, Lcom/shabakaty/downloader/mg0;

    invoke-direct {v6, v5, v1, v3}, Lcom/shabakaty/downloader/mg0;-><init>(Lcom/shabakaty/downloader/mg0$a;Lcom/shabakaty/downloader/x24;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iput-object v6, v2, Lcom/shabakaty/downloader/tf0;->n:Lcom/shabakaty/downloader/mg0;

    .line 145
    invoke-static {v6}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    if-eqz v0, :cond_11

    .line 146
    iget-object v0, v4, Lcom/shabakaty/downloader/zf0;->a:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    .line 147
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_d

    const/4 v9, 0x1

    goto :goto_9

    :cond_d
    const/4 v9, 0x0

    :goto_9
    if-eqz v9, :cond_f

    const-string v2, "connectivity"

    .line 148
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 149
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 150
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_a

    :cond_e
    const/4 v9, 0x0

    goto :goto_b

    :cond_f
    :goto_a
    const/4 v9, 0x1

    :goto_b
    if-eqz v9, :cond_11

    const-string v0, "Crashlytics did not finish previous background initialization. Initializing synchronously."

    const/4 v2, 0x3

    .line 151
    invoke-static {v7, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x0

    .line 152
    invoke-static {v7, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    :cond_10
    invoke-virtual {v4, v1}, Lcom/shabakaty/downloader/zf0;->b(Lcom/shabakaty/downloader/x24;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_d

    :cond_11
    const/4 v0, 0x3

    .line 154
    invoke-static {v7, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "Successfully configured exception handler."

    const/4 v2, 0x0

    .line 155
    invoke-static {v7, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_12
    const/4 v9, 0x1

    goto :goto_e

    :catch_1
    move-exception v0

    goto :goto_c

    :catch_2
    move-exception v0

    move-object/from16 v16, v3

    :goto_c
    const-string v2, "Crashlytics was not started due to an exception during initialization"

    .line 156
    invoke-static {v7, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    .line 157
    iput-object v2, v4, Lcom/shabakaty/downloader/zf0;->f:Lcom/shabakaty/downloader/tf0;

    :goto_d
    const/4 v9, 0x0

    .line 158
    :goto_e
    new-instance v0, Lcom/shabakaty/downloader/gc1;

    invoke-direct {v0, v9, v4, v1}, Lcom/shabakaty/downloader/gc1;-><init>(ZLcom/shabakaty/downloader/zf0;Lcom/shabakaty/downloader/t24;)V

    move-object/from16 v1, v16

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/kl4;->c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/shabakaty/downloader/uk4;

    .line 159
    new-instance v13, Lcom/shabakaty/downloader/hc1;

    invoke-direct {v13, v4}, Lcom/shabakaty/downloader/hc1;-><init>(Lcom/shabakaty/downloader/zf0;)V

    goto :goto_f

    .line 160
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 161
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    :catch_3
    move-exception v0

    move-object v2, v13

    const-string v1, "Error retrieving app package info."

    const-string v3, "FirebaseCrashlytics"

    .line 162
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v13, v2

    :goto_f
    return-object v13

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
