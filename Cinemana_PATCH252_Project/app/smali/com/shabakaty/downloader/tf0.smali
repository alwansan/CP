.class public Lcom/shabakaty/downloader/tf0;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"


# static fields
.field public static final synthetic r:I


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/shabakaty/downloader/jl0;

.field public final c:Lcom/shabakaty/downloader/yh1;

.field public final d:Lcom/shabakaty/downloader/hf0;

.field public final e:Lcom/shabakaty/downloader/ux1;

.field public final f:Lcom/shabakaty/downloader/sm6;

.field public final g:Lcom/shabakaty/downloader/db;

.field public final h:Lcom/shabakaty/downloader/hk2$b;

.field public final i:Lcom/shabakaty/downloader/hk2;

.field public final j:Lcom/shabakaty/downloader/bg0;

.field public final k:Ljava/lang/String;

.field public final l:Lcom/shabakaty/downloader/p6;

.field public final m:Lcom/shabakaty/downloader/b24;

.field public n:Lcom/shabakaty/downloader/mg0;

.field public final o:Lcom/shabakaty/downloader/zk4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/zk4<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Lcom/shabakaty/downloader/zk4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/zk4<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Lcom/shabakaty/downloader/zk4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/zk4<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/shabakaty/downloader/hf0;Lcom/shabakaty/downloader/ux1;Lcom/shabakaty/downloader/jl0;Lcom/shabakaty/downloader/sm6;Lcom/shabakaty/downloader/yh1;Lcom/shabakaty/downloader/db;Lcom/shabakaty/downloader/tk1;Lcom/shabakaty/downloader/hk2;Lcom/shabakaty/downloader/hk2$b;Lcom/shabakaty/downloader/b24;Lcom/shabakaty/downloader/bg0;Lcom/shabakaty/downloader/p6;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p8, Lcom/shabakaty/downloader/zk4;

    invoke-direct {p8}, Lcom/shabakaty/downloader/zk4;-><init>()V

    iput-object p8, p0, Lcom/shabakaty/downloader/tf0;->o:Lcom/shabakaty/downloader/zk4;

    .line 3
    new-instance p8, Lcom/shabakaty/downloader/zk4;

    invoke-direct {p8}, Lcom/shabakaty/downloader/zk4;-><init>()V

    iput-object p8, p0, Lcom/shabakaty/downloader/tf0;->p:Lcom/shabakaty/downloader/zk4;

    .line 4
    new-instance p8, Lcom/shabakaty/downloader/zk4;

    invoke-direct {p8}, Lcom/shabakaty/downloader/zk4;-><init>()V

    iput-object p8, p0, Lcom/shabakaty/downloader/tf0;->q:Lcom/shabakaty/downloader/zk4;

    .line 5
    new-instance p8, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p8, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 6
    iput-object p1, p0, Lcom/shabakaty/downloader/tf0;->a:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lcom/shabakaty/downloader/tf0;->d:Lcom/shabakaty/downloader/hf0;

    .line 8
    iput-object p3, p0, Lcom/shabakaty/downloader/tf0;->e:Lcom/shabakaty/downloader/ux1;

    .line 9
    iput-object p4, p0, Lcom/shabakaty/downloader/tf0;->b:Lcom/shabakaty/downloader/jl0;

    .line 10
    iput-object p5, p0, Lcom/shabakaty/downloader/tf0;->f:Lcom/shabakaty/downloader/sm6;

    .line 11
    iput-object p6, p0, Lcom/shabakaty/downloader/tf0;->c:Lcom/shabakaty/downloader/yh1;

    .line 12
    iput-object p7, p0, Lcom/shabakaty/downloader/tf0;->g:Lcom/shabakaty/downloader/db;

    .line 13
    iput-object p9, p0, Lcom/shabakaty/downloader/tf0;->i:Lcom/shabakaty/downloader/hk2;

    .line 14
    iput-object p10, p0, Lcom/shabakaty/downloader/tf0;->h:Lcom/shabakaty/downloader/hk2$b;

    .line 15
    iput-object p12, p0, Lcom/shabakaty/downloader/tf0;->j:Lcom/shabakaty/downloader/bg0;

    .line 16
    iget-object p1, p7, Lcom/shabakaty/downloader/db;->g:Lcom/shabakaty/downloader/ic7;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ic7;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/tf0;->k:Ljava/lang/String;

    .line 17
    iput-object p13, p0, Lcom/shabakaty/downloader/tf0;->l:Lcom/shabakaty/downloader/p6;

    .line 18
    iput-object p11, p0, Lcom/shabakaty/downloader/tf0;->m:Lcom/shabakaty/downloader/b24;

    return-void
.end method

.method public static a(Lcom/shabakaty/downloader/tf0;)V
    .locals 35

    move-object/from16 v0, p0

    .line 1
    invoke-static/range {p0 .. p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    .line 3
    div-long/2addr v1, v3

    .line 4
    new-instance v3, Lcom/shabakaty/downloader/mp;

    iget-object v4, v0, Lcom/shabakaty/downloader/tf0;->e:Lcom/shabakaty/downloader/ux1;

    invoke-direct {v3, v4}, Lcom/shabakaty/downloader/mp;-><init>(Lcom/shabakaty/downloader/ux1;)V

    .line 5
    sget-object v3, Lcom/shabakaty/downloader/mp;->b:Ljava/lang/String;

    const-string v4, "Opening a new session with ID "

    .line 6
    invoke-static {v4, v3}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v11, "FirebaseCrashlytics"

    const/4 v5, 0x3

    .line 7
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 8
    invoke-static {v11, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 9
    invoke-static {v11, v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10
    :cond_0
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const-string v13, "18.2.1"

    const/4 v6, 0x0

    aput-object v13, v5, v6

    const-string v6, "Crashlytics Android SDK/%s"

    .line 11
    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 12
    iget-object v5, v0, Lcom/shabakaty/downloader/tf0;->e:Lcom/shabakaty/downloader/ux1;

    iget-object v6, v0, Lcom/shabakaty/downloader/tf0;->g:Lcom/shabakaty/downloader/db;

    iget-object v8, v0, Lcom/shabakaty/downloader/tf0;->k:Ljava/lang/String;

    .line 13
    iget-object v15, v5, Lcom/shabakaty/downloader/ux1;->c:Ljava/lang/String;

    .line 14
    iget-object v9, v6, Lcom/shabakaty/downloader/db;->e:Ljava/lang/String;

    iget-object v10, v6, Lcom/shabakaty/downloader/db;->f:Ljava/lang/String;

    .line 15
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ux1;->c()Ljava/lang/String;

    move-result-object v18

    iget-object v5, v6, Lcom/shabakaty/downloader/db;->c:Ljava/lang/String;

    const/16 v21, 0x4

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    .line 16
    :goto_0
    invoke-static {v5}, Lcom/shabakaty/downloader/su;->u(I)I

    move-result v19

    .line 17
    new-instance v5, Lcom/shabakaty/downloader/th;

    move-object v14, v5

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    move-object/from16 v20, v8

    invoke-direct/range {v14 .. v20}, Lcom/shabakaty/downloader/th;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 18
    iget-object v6, v0, Lcom/shabakaty/downloader/tf0;->a:Landroid/content/Context;

    .line 19
    sget-object v15, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget-object v14, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 20
    invoke-static {v6}, Lcom/shabakaty/downloader/n70;->l(Landroid/content/Context;)Z

    move-result v6

    .line 21
    new-instance v8, Lcom/shabakaty/downloader/vh;

    invoke-direct {v8, v15, v14, v6}, Lcom/shabakaty/downloader/vh;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 22
    iget-object v6, v0, Lcom/shabakaty/downloader/tf0;->a:Landroid/content/Context;

    .line 23
    new-instance v9, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockCount()I

    move-result v10

    move-object/from16 v17, v14

    move-object/from16 v16, v15

    int-to-long v14, v10

    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v9, v9

    mul-long v28, v14, v9

    .line 25
    sget-object v9, Lcom/shabakaty/downloader/n70$a;->r:Lcom/shabakaty/downloader/n70$a;

    sget-object v15, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 26
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x2

    .line 27
    invoke-static {v11, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "Architecture#getValue()::Build.CPU_ABI returned null or empty"

    const/4 v14, 0x0

    .line 28
    invoke-static {v11, v10, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 29
    :cond_2
    invoke-virtual {v15, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .line 30
    sget-object v14, Lcom/shabakaty/downloader/n70$a;->s:Ljava/util/Map;

    check-cast v14, Ljava/util/HashMap;

    invoke-virtual {v14, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shabakaty/downloader/n70$a;

    if-nez v10, :cond_3

    goto :goto_1

    :cond_3
    move-object v9, v10

    .line 31
    :cond_4
    :goto_1
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    .line 32
    sget-object v14, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 33
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v25

    .line 34
    invoke-static {}, Lcom/shabakaty/downloader/n70;->i()J

    move-result-wide v26

    .line 35
    invoke-static {v6}, Lcom/shabakaty/downloader/n70;->k(Landroid/content/Context;)Z

    move-result v30

    .line 36
    invoke-static {v6}, Lcom/shabakaty/downloader/n70;->e(Landroid/content/Context;)I

    move-result v31

    sget-object v10, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v9, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 37
    new-instance v6, Lcom/shabakaty/downloader/uh;

    move-object/from16 v22, v6

    move-object/from16 v24, v14

    move-object/from16 v32, v10

    move-object/from16 v33, v9

    invoke-direct/range {v22 .. v33}, Lcom/shabakaty/downloader/uh;-><init>(ILjava/lang/String;IJJZILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v18, v9

    .line 38
    iget-object v9, v0, Lcom/shabakaty/downloader/tf0;->j:Lcom/shabakaty/downloader/bg0;

    move-object/from16 v19, v10

    .line 39
    new-instance v10, Lcom/shabakaty/downloader/sh;

    invoke-direct {v10, v5, v8, v6}, Lcom/shabakaty/downloader/sh;-><init>(Lcom/shabakaty/downloader/sc4$a;Lcom/shabakaty/downloader/sc4$c;Lcom/shabakaty/downloader/sc4$b;)V

    const/4 v8, 0x0

    move-object v5, v9

    move-object v6, v3

    move-object/from16 v20, v11

    move-object/from16 v11, v18

    move-object/from16 v18, v14

    const/4 v14, 0x0

    move-wide v8, v1

    move-object/from16 v34, v19

    .line 40
    invoke-interface/range {v5 .. v10}, Lcom/shabakaty/downloader/bg0;->d(Ljava/lang/String;Ljava/lang/String;JLcom/shabakaty/downloader/sc4;)V

    .line 41
    iget-object v5, v0, Lcom/shabakaty/downloader/tf0;->i:Lcom/shabakaty/downloader/hk2;

    invoke-virtual {v5, v3}, Lcom/shabakaty/downloader/hk2;->a(Ljava/lang/String;)V

    .line 42
    iget-object v0, v0, Lcom/shabakaty/downloader/tf0;->m:Lcom/shabakaty/downloader/b24;

    .line 43
    iget-object v5, v0, Lcom/shabakaty/downloader/b24;->a:Lcom/shabakaty/downloader/fg0;

    .line 44
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v6, Lcom/shabakaty/downloader/eg0;->a:Ljava/nio/charset/Charset;

    .line 46
    new-instance v6, Lcom/shabakaty/downloader/gg$b;

    invoke-direct {v6}, Lcom/shabakaty/downloader/gg$b;-><init>()V

    .line 47
    iput-object v13, v6, Lcom/shabakaty/downloader/gg$b;->a:Ljava/lang/String;

    .line 48
    iget-object v7, v5, Lcom/shabakaty/downloader/fg0;->c:Lcom/shabakaty/downloader/db;

    iget-object v7, v7, Lcom/shabakaty/downloader/db;->a:Ljava/lang/String;

    const-string v8, "Null gmpAppId"

    .line 49
    invoke-static {v7, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    iput-object v7, v6, Lcom/shabakaty/downloader/gg$b;->b:Ljava/lang/String;

    .line 51
    iget-object v7, v5, Lcom/shabakaty/downloader/fg0;->b:Lcom/shabakaty/downloader/ux1;

    .line 52
    invoke-virtual {v7}, Lcom/shabakaty/downloader/ux1;->c()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Null installationUuid"

    .line 53
    invoke-static {v7, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    iput-object v7, v6, Lcom/shabakaty/downloader/gg$b;->d:Ljava/lang/String;

    .line 55
    iget-object v7, v5, Lcom/shabakaty/downloader/fg0;->c:Lcom/shabakaty/downloader/db;

    iget-object v7, v7, Lcom/shabakaty/downloader/db;->e:Ljava/lang/String;

    const-string v8, "Null buildVersion"

    .line 56
    invoke-static {v7, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    iput-object v7, v6, Lcom/shabakaty/downloader/gg$b;->e:Ljava/lang/String;

    .line 58
    iget-object v7, v5, Lcom/shabakaty/downloader/fg0;->c:Lcom/shabakaty/downloader/db;

    iget-object v7, v7, Lcom/shabakaty/downloader/db;->f:Ljava/lang/String;

    const-string v8, "Null displayVersion"

    .line 59
    invoke-static {v7, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    iput-object v7, v6, Lcom/shabakaty/downloader/gg$b;->f:Ljava/lang/String;

    .line 61
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v6, Lcom/shabakaty/downloader/gg$b;->c:Ljava/lang/Integer;

    .line 62
    new-instance v7, Lcom/shabakaty/downloader/mg$b;

    invoke-direct {v7}, Lcom/shabakaty/downloader/mg$b;-><init>()V

    invoke-virtual {v7, v14}, Lcom/shabakaty/downloader/mg$b;->b(Z)Lcom/shabakaty/downloader/eg0$e$b;

    .line 63
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v7, Lcom/shabakaty/downloader/mg$b;->c:Ljava/lang/Long;

    const-string v1, "Null identifier"

    .line 64
    invoke-static {v3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    iput-object v3, v7, Lcom/shabakaty/downloader/mg$b;->b:Ljava/lang/String;

    .line 66
    sget-object v2, Lcom/shabakaty/downloader/fg0;->f:Ljava/lang/String;

    const-string v3, "Null generator"

    .line 67
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    iput-object v2, v7, Lcom/shabakaty/downloader/mg$b;->a:Ljava/lang/String;

    .line 69
    iget-object v2, v5, Lcom/shabakaty/downloader/fg0;->b:Lcom/shabakaty/downloader/ux1;

    .line 70
    iget-object v2, v2, Lcom/shabakaty/downloader/ux1;->c:Ljava/lang/String;

    .line 71
    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    iget-object v1, v5, Lcom/shabakaty/downloader/fg0;->c:Lcom/shabakaty/downloader/db;

    iget-object v1, v1, Lcom/shabakaty/downloader/db;->e:Ljava/lang/String;

    const-string v3, "Null version"

    .line 73
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    iget-object v3, v5, Lcom/shabakaty/downloader/fg0;->c:Lcom/shabakaty/downloader/db;

    iget-object v3, v3, Lcom/shabakaty/downloader/db;->f:Ljava/lang/String;

    .line 75
    iget-object v8, v5, Lcom/shabakaty/downloader/fg0;->b:Lcom/shabakaty/downloader/ux1;

    .line 76
    invoke-virtual {v8}, Lcom/shabakaty/downloader/ux1;->c()Ljava/lang/String;

    move-result-object v26

    .line 77
    iget-object v8, v5, Lcom/shabakaty/downloader/fg0;->c:Lcom/shabakaty/downloader/db;

    iget-object v8, v8, Lcom/shabakaty/downloader/db;->g:Lcom/shabakaty/downloader/ic7;

    invoke-virtual {v8}, Lcom/shabakaty/downloader/ic7;->a()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    const-string v9, "Unity"

    move-object/from16 v28, v8

    move-object/from16 v27, v9

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v27, v8

    move-object/from16 v28, v9

    .line 78
    :goto_2
    new-instance v8, Lcom/shabakaty/downloader/ng;

    const/16 v25, 0x0

    const/16 v29, 0x0

    move-object/from16 v21, v8

    move-object/from16 v22, v2

    move-object/from16 v23, v1

    move-object/from16 v24, v3

    invoke-direct/range {v21 .. v29}, Lcom/shabakaty/downloader/ng;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/eg0$e$a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/ng$a;)V

    .line 79
    iput-object v8, v7, Lcom/shabakaty/downloader/mg$b;->f:Lcom/shabakaty/downloader/eg0$e$a;

    .line 80
    iget-object v1, v5, Lcom/shabakaty/downloader/fg0;->a:Landroid/content/Context;

    .line 81
    invoke-static {v1}, Lcom/shabakaty/downloader/n70;->l(Landroid/content/Context;)Z

    move-result v1

    .line 82
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, ""

    if-nez v12, :cond_6

    const-string v3, " platform"

    goto :goto_3

    :cond_6
    move-object v3, v2

    :goto_3
    if-nez v1, :cond_7

    const-string v8, " jailbroken"

    .line 83
    invoke-static {v3, v8}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 84
    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 85
    new-instance v3, Lcom/shabakaty/downloader/ah;

    .line 86
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 87
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/16 v19, 0x0

    move-object/from16 v9, v17

    move-object/from16 v10, v18

    move-object v14, v3

    move-object/from16 p0, v15

    move-object/from16 v13, v16

    move v15, v8

    move/from16 v18, v1

    invoke-direct/range {v14 .. v19}, Lcom/shabakaty/downloader/ah;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcom/shabakaty/downloader/ah$a;)V

    .line 88
    iput-object v3, v7, Lcom/shabakaty/downloader/mg$b;->h:Lcom/shabakaty/downloader/eg0$e$e;

    .line 89
    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v8, 0x7

    if-eqz v3, :cond_8

    goto :goto_4

    .line 91
    :cond_8
    sget-object v3, Lcom/shabakaty/downloader/fg0;->e:Ljava/util/Map;

    move-object/from16 v9, p0

    invoke-virtual {v9, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_9

    goto :goto_4

    .line 92
    :cond_9
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 93
    :goto_4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v3

    .line 94
    invoke-static {}, Lcom/shabakaty/downloader/n70;->i()J

    move-result-wide v13

    .line 95
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v4

    move-object/from16 p0, v6

    move-object v9, v7

    int-to-long v6, v4

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    move-object v4, v2

    int-to-long v1, v1

    mul-long v6, v6, v1

    .line 96
    iget-object v1, v5, Lcom/shabakaty/downloader/fg0;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/shabakaty/downloader/n70;->k(Landroid/content/Context;)Z

    move-result v1

    .line 97
    iget-object v2, v5, Lcom/shabakaty/downloader/fg0;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/shabakaty/downloader/n70;->e(Landroid/content/Context;)I

    move-result v2

    .line 98
    new-instance v5, Lcom/shabakaty/downloader/pg$b;

    invoke-direct {v5}, Lcom/shabakaty/downloader/pg$b;-><init>()V

    .line 99
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v5, Lcom/shabakaty/downloader/pg$b;->a:Ljava/lang/Integer;

    .line 100
    iput-object v10, v5, Lcom/shabakaty/downloader/pg$b;->b:Ljava/lang/String;

    .line 101
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v5, Lcom/shabakaty/downloader/pg$b;->c:Ljava/lang/Integer;

    .line 102
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v5, Lcom/shabakaty/downloader/pg$b;->d:Ljava/lang/Long;

    .line 103
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v5, Lcom/shabakaty/downloader/pg$b;->e:Ljava/lang/Long;

    .line 104
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v5, Lcom/shabakaty/downloader/pg$b;->f:Ljava/lang/Boolean;

    .line 105
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v5, Lcom/shabakaty/downloader/pg$b;->g:Ljava/lang/Integer;

    move-object/from16 v1, v34

    .line 106
    iput-object v1, v5, Lcom/shabakaty/downloader/pg$b;->h:Ljava/lang/String;

    .line 107
    iput-object v11, v5, Lcom/shabakaty/downloader/pg$b;->i:Ljava/lang/String;

    .line 108
    invoke-virtual {v5}, Lcom/shabakaty/downloader/pg$b;->a()Lcom/shabakaty/downloader/eg0$e$c;

    move-result-object v1

    .line 109
    iput-object v1, v9, Lcom/shabakaty/downloader/mg$b;->i:Lcom/shabakaty/downloader/eg0$e$c;

    .line 110
    iput-object v12, v9, Lcom/shabakaty/downloader/mg$b;->k:Ljava/lang/Integer;

    .line 111
    invoke-virtual {v9}, Lcom/shabakaty/downloader/mg$b;->a()Lcom/shabakaty/downloader/eg0$e;

    move-result-object v1

    move-object/from16 v2, p0

    .line 112
    iput-object v1, v2, Lcom/shabakaty/downloader/gg$b;->g:Lcom/shabakaty/downloader/eg0$e;

    .line 113
    invoke-virtual {v2}, Lcom/shabakaty/downloader/gg$b;->a()Lcom/shabakaty/downloader/eg0;

    move-result-object v1

    .line 114
    iget-object v0, v0, Lcom/shabakaty/downloader/b24;->b:Lcom/shabakaty/downloader/kg0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    move-object v2, v1

    check-cast v2, Lcom/shabakaty/downloader/gg;

    .line 116
    iget-object v2, v2, Lcom/shabakaty/downloader/gg;->h:Lcom/shabakaty/downloader/eg0$e;

    if-nez v2, :cond_a

    const/4 v0, 0x3

    move-object/from16 v3, v20

    .line 117
    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "Could not get session for report"

    const/4 v1, 0x0

    .line 118
    invoke-static {v3, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :cond_a
    move-object/from16 v3, v20

    .line 119
    invoke-virtual {v2}, Lcom/shabakaty/downloader/eg0$e;->g()Ljava/lang/String;

    move-result-object v5

    .line 120
    :try_start_0
    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/kg0;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/kg0;->h(Ljava/io/File;)Ljava/io/File;

    .line 121
    sget-object v6, Lcom/shabakaty/downloader/kg0;->i:Lcom/shabakaty/downloader/gg0;

    invoke-virtual {v6, v1}, Lcom/shabakaty/downloader/gg0;->h(Lcom/shabakaty/downloader/eg0;)Ljava/lang/String;

    move-result-object v1

    .line 122
    new-instance v6, Ljava/io/File;

    const-string v7, "report"

    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6, v1}, Lcom/shabakaty/downloader/kg0;->k(Ljava/io/File;Ljava/lang/String;)V

    .line 123
    new-instance v1, Ljava/io/File;

    const-string v6, "start-time"

    invoke-direct {v1, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v2}, Lcom/shabakaty/downloader/eg0$e;->i()J

    move-result-wide v6

    .line 125
    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v8, Lcom/shabakaty/downloader/kg0;->g:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :try_start_1
    invoke-virtual {v2, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-wide/16 v8, 0x3e8

    mul-long v6, v6, v8

    .line 127
    invoke-virtual {v1, v6, v7}, Ljava/io/File;->setLastModified(J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 129
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "Could not persist report for session "

    .line 130
    invoke-static {v1, v5}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 131
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 132
    invoke-static {v3, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    :goto_6
    return-void

    .line 133
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing required properties:"

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Lcom/shabakaty/downloader/tf0;)Lcom/shabakaty/downloader/uk4;
    .locals 12

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "FirebaseCrashlytics"

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    sget-object v2, Lcom/shabakaty/downloader/lf0;->b:Lcom/shabakaty/downloader/lf0;

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/tf0;->g()Ljava/io/File;

    move-result-object v3

    .line 5
    invoke-virtual {v3, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    new-array v2, v3, [Ljava/io/File;

    .line 6
    :cond_0
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    const/4 v6, 0x0

    .line 7
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v7, 0x1

    :try_start_1
    const-string v11, "com.google.firebase.crash.FirebaseCrash"

    .line 8
    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v11, 0x1

    goto :goto_1

    :catch_0
    const/4 v11, 0x0

    :goto_1
    if-eqz v11, :cond_1

    :try_start_2
    const-string v7, "Skipping logging Crashlytics event to Firebase, FirebaseCrash exists"

    .line 9
    invoke-static {v0, v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10
    invoke-static {v6}, Lcom/shabakaty/downloader/kl4;->e(Ljava/lang/Object;)Lcom/shabakaty/downloader/uk4;

    move-result-object v7

    goto :goto_2

    .line 11
    :cond_1
    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "Logging app exception event to Firebase Analytics"

    .line 12
    invoke-static {v0, v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    :cond_2
    new-instance v8, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v8, v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    .line 14
    new-instance v7, Lcom/shabakaty/downloader/mf0;

    invoke-direct {v7, p0, v9, v10}, Lcom/shabakaty/downloader/mf0;-><init>(Lcom/shabakaty/downloader/tf0;J)V

    invoke-static {v8, v7}, Lcom/shabakaty/downloader/kl4;->c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/shabakaty/downloader/uk4;

    move-result-object v7

    .line 15
    :goto_2
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    const-string v7, "Could not parse app exception timestamp from file "

    .line 16
    invoke-static {v7}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 17
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 18
    invoke-static {v0, v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    :goto_3
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 20
    :cond_3
    invoke-static {v1}, Lcom/shabakaty/downloader/kl4;->f(Ljava/util/Collection;)Lcom/shabakaty/downloader/uk4;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c(ZLcom/shabakaty/downloader/x24;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tf0;->m:Lcom/shabakaty/downloader/b24;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/b24;->f()Ljava/util/List;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "FirebaseCrashlytics"

    if-gt v1, p1, :cond_1

    .line 3
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "No open sessions to be closed."

    .line 4
    invoke-static {v4, p1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void

    .line 5
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6
    check-cast p2, Lcom/shabakaty/downloader/t24;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/t24;->b()Lcom/shabakaty/downloader/r24;

    move-result-object p2

    invoke-interface {p2}, Lcom/shabakaty/downloader/r24;->a()Lcom/shabakaty/downloader/ja1;

    move-result-object p2

    iget-boolean p2, p2, Lcom/shabakaty/downloader/ja1;->b:Z

    if-eqz p2, :cond_2

    .line 7
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/tf0;->j(Ljava/lang/String;)V

    .line 8
    :cond_2
    iget-object p2, p0, Lcom/shabakaty/downloader/tf0;->j:Lcom/shabakaty/downloader/bg0;

    invoke-interface {p2, v1}, Lcom/shabakaty/downloader/bg0;->c(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "Finalizing native report for session "

    .line 9
    invoke-static {p2, v1}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 10
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 11
    invoke-static {v4, p2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    :cond_3
    iget-object p2, p0, Lcom/shabakaty/downloader/tf0;->j:Lcom/shabakaty/downloader/bg0;

    .line 13
    invoke-interface {p2, v1}, Lcom/shabakaty/downloader/bg0;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/pw2;

    move-result-object p2

    .line 14
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No minidump data found for session "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 16
    invoke-static {v4, p2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    iget-object p2, p0, Lcom/shabakaty/downloader/tf0;->j:Lcom/shabakaty/downloader/bg0;

    invoke-interface {p2, v1}, Lcom/shabakaty/downloader/bg0;->a(Ljava/lang/String;)V

    :cond_4
    const/4 p2, 0x0

    if-eqz p1, :cond_5

    .line 18
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_5
    move-object p1, v3

    .line 19
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/tf0;->m:Lcom/shabakaty/downloader/b24;

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    .line 21
    div-long/2addr v5, v7

    .line 22
    iget-object v0, v0, Lcom/shabakaty/downloader/b24;->b:Lcom/shabakaty/downloader/kg0;

    .line 23
    new-instance v1, Lcom/shabakaty/downloader/hg0;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/hg0;-><init>(Ljava/lang/String;)V

    .line 24
    iget-object p1, v0, Lcom/shabakaty/downloader/kg0;->b:Ljava/io/File;

    .line 25
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/kg0;->d(Ljava/io/File;Ljava/io/FileFilter;)Ljava/util/List;

    move-result-object p1

    .line 26
    sget-object v1, Lcom/shabakaty/downloader/kg0;->j:Ljava/util/Comparator;

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 27
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v7, 0x8

    if-gt v1, v7, :cond_6

    goto :goto_2

    .line 28
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v7, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 29
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    .line 30
    invoke-static {v8}, Lcom/shabakaty/downloader/kg0;->j(Ljava/io/File;)V

    goto :goto_1

    .line 31
    :cond_7
    invoke-interface {p1, p2, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 32
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/File;

    const-string v1, "Finalizing report for session "

    .line 33
    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 35
    invoke-static {v4, v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    :cond_8
    sget-object v1, Lcom/shabakaty/downloader/kg0;->k:Ljava/io/FilenameFilter;

    invoke-static {p2, v1}, Lcom/shabakaty/downloader/kg0;->e(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/util/List;

    move-result-object v1

    .line 37
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v1, "Session "

    .line 38
    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " has no events."

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 40
    invoke-static {v4, v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 41
    :cond_9
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 42
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 43
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    const/4 v7, 0x0

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    .line 44
    :try_start_0
    sget-object v9, Lcom/shabakaty/downloader/kg0;->i:Lcom/shabakaty/downloader/gg0;

    invoke-static {v8}, Lcom/shabakaty/downloader/kg0;->i(Ljava/io/File;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 45
    :try_start_1
    new-instance v9, Landroid/util/JsonReader;

    new-instance v11, Ljava/io/StringReader;

    invoke-direct {v11, v10}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v11}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 46
    :try_start_2
    invoke-static {v9}, Lcom/shabakaty/downloader/gg0;->d(Landroid/util/JsonReader;)Lcom/shabakaty/downloader/eg0$e$d;

    move-result-object v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    :try_start_3
    invoke-virtual {v9}, Landroid/util/JsonReader;->close()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 48
    :try_start_4
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v7, :cond_c

    .line 49
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "event"

    .line 50
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    if-eqz v7, :cond_b

    const/4 v7, 0x1

    goto :goto_5

    :cond_b
    const/4 v7, 0x0

    :goto_5
    if-eqz v7, :cond_a

    :cond_c
    const/4 v7, 0x1

    goto :goto_4

    :catchall_0
    move-exception v10

    .line 51
    :try_start_5
    invoke-virtual {v9}, Landroid/util/JsonReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v9

    :try_start_6
    invoke-virtual {v10, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v10
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :catch_0
    move-exception v9

    .line 52
    :try_start_7
    new-instance v10, Ljava/io/IOException;

    invoke-direct {v10, v9}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v10
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    move-exception v9

    .line 53
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not add event to report for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 54
    invoke-static {v4, v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 55
    :cond_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "Could not parse event files for session "

    .line 56
    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {v4, v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 58
    :cond_e
    new-instance v1, Ljava/io/File;

    const-string v8, "user"

    invoke-direct {v1, p2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 60
    :try_start_8
    invoke-static {v1}, Lcom/shabakaty/downloader/kg0;->i(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_7

    :catch_2
    move-exception v1

    const-string v8, "Could not read user ID file in "

    .line 61
    invoke-static {v8}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 62
    invoke-static {v4, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_f
    move-object v1, v3

    .line 63
    :goto_7
    new-instance v8, Ljava/io/File;

    const-string v9, "report"

    invoke-direct {v8, p2, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v7, :cond_10

    .line 64
    iget-object v9, v0, Lcom/shabakaty/downloader/kg0;->c:Ljava/io/File;

    goto :goto_8

    :cond_10
    iget-object v9, v0, Lcom/shabakaty/downloader/kg0;->d:Ljava/io/File;

    .line 65
    :goto_8
    :try_start_9
    sget-object v10, Lcom/shabakaty/downloader/kg0;->i:Lcom/shabakaty/downloader/gg0;

    .line 66
    invoke-static {v8}, Lcom/shabakaty/downloader/kg0;->i(Ljava/io/File;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/shabakaty/downloader/gg0;->g(Ljava/lang/String;)Lcom/shabakaty/downloader/eg0;

    move-result-object v11

    .line 67
    invoke-virtual {v11, v5, v6, v7, v1}, Lcom/shabakaty/downloader/eg0;->j(JZLjava/lang/String;)Lcom/shabakaty/downloader/eg0;

    move-result-object v1

    .line 68
    new-instance v7, Lcom/shabakaty/downloader/zz1;

    invoke-direct {v7, v2}, Lcom/shabakaty/downloader/zz1;-><init>(Ljava/util/List;)V

    .line 69
    move-object v2, v1

    check-cast v2, Lcom/shabakaty/downloader/gg;

    .line 70
    iget-object v2, v2, Lcom/shabakaty/downloader/gg;->h:Lcom/shabakaty/downloader/eg0$e;

    if-eqz v2, :cond_12

    .line 71
    invoke-virtual {v1}, Lcom/shabakaty/downloader/eg0;->i()Lcom/shabakaty/downloader/eg0$b;

    move-result-object v2

    check-cast v1, Lcom/shabakaty/downloader/gg;

    .line 72
    iget-object v1, v1, Lcom/shabakaty/downloader/gg;->h:Lcom/shabakaty/downloader/eg0$e;

    .line 73
    invoke-virtual {v1}, Lcom/shabakaty/downloader/eg0$e;->l()Lcom/shabakaty/downloader/eg0$e$b;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/mg$b;

    .line 74
    iput-object v7, v1, Lcom/shabakaty/downloader/mg$b;->j:Lcom/shabakaty/downloader/zz1;

    .line 75
    invoke-virtual {v1}, Lcom/shabakaty/downloader/mg$b;->a()Lcom/shabakaty/downloader/eg0$e;

    move-result-object v1

    .line 76
    check-cast v2, Lcom/shabakaty/downloader/gg$b;

    .line 77
    iput-object v1, v2, Lcom/shabakaty/downloader/gg$b;->g:Lcom/shabakaty/downloader/eg0$e;

    .line 78
    invoke-virtual {v2}, Lcom/shabakaty/downloader/gg$b;->a()Lcom/shabakaty/downloader/eg0;

    move-result-object v1

    .line 79
    move-object v2, v1

    check-cast v2, Lcom/shabakaty/downloader/gg;

    .line 80
    iget-object v2, v2, Lcom/shabakaty/downloader/gg;->h:Lcom/shabakaty/downloader/eg0$e;

    if-nez v2, :cond_11

    goto :goto_9

    .line 81
    :cond_11
    new-instance v7, Ljava/io/File;

    .line 82
    invoke-static {v9}, Lcom/shabakaty/downloader/kg0;->h(Ljava/io/File;)Ljava/io/File;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/eg0$e;->g()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v9, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v10, v1}, Lcom/shabakaty/downloader/gg0;->h(Lcom/shabakaty/downloader/eg0;)Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-static {v7, v1}, Lcom/shabakaty/downloader/kg0;->k(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_9

    .line 85
    :cond_12
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Reports without sessions cannot have events added to them."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :catch_3
    move-exception v1

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not synthesize final report file for "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-static {v4, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    :cond_13
    :goto_9
    invoke-static {p2}, Lcom/shabakaty/downloader/kg0;->j(Ljava/io/File;)V

    const/4 v2, 0x2

    goto/16 :goto_3

    .line 89
    :cond_14
    iget-object p1, v0, Lcom/shabakaty/downloader/kg0;->f:Lcom/shabakaty/downloader/x24;

    .line 90
    check-cast p1, Lcom/shabakaty/downloader/t24;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/t24;->b()Lcom/shabakaty/downloader/r24;

    move-result-object p1

    invoke-interface {p1}, Lcom/shabakaty/downloader/r24;->b()Lcom/shabakaty/downloader/c24;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-virtual {v0}, Lcom/shabakaty/downloader/kg0;->c()Ljava/util/List;

    move-result-object p1

    .line 92
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x4

    if-gt p2, v0, :cond_15

    goto :goto_b

    .line 93
    :cond_15
    invoke-virtual {p1, v0, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 94
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_16

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/File;

    .line 95
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    goto :goto_a

    :cond_16
    :goto_b
    return-void
.end method

.method public final d(J)V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/tf0;->g()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".ae"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "FirebaseCrashlytics"

    const-string v0, "Could not create app exception marker file."

    .line 2
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public e(Lcom/shabakaty/downloader/x24;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tf0;->d:Lcom/shabakaty/downloader/hf0;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/hf0;->a()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/tf0;->h()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "FirebaseCrashlytics"

    if-eqz v0, :cond_0

    const-string p1, "Skipping session finalization because a crash has already occurred."

    .line 3
    invoke-static {v3, p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    :cond_0
    const/4 v0, 0x2

    .line 4
    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    const-string v4, "Finalizing previously open sessions."

    .line 5
    invoke-static {v3, v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    :cond_1
    :try_start_0
    invoke-virtual {p0, v5, p1}, Lcom/shabakaty/downloader/tf0;->c(ZLcom/shabakaty/downloader/x24;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Closed all previously open sessions."

    .line 8
    invoke-static {v3, p1, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return v5

    :catch_0
    move-exception p1

    const-string v0, "Unable to finalize previously open sessions."

    .line 9
    invoke-static {v3, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tf0;->m:Lcom/shabakaty/downloader/b24;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/b24;->f()Ljava/util/List;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public g()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tf0;->f:Lcom/shabakaty/downloader/sm6;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/sm6;->b()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tf0;->n:Lcom/shabakaty/downloader/mg0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/mg0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i(Lcom/shabakaty/downloader/uk4;)Lcom/shabakaty/downloader/uk4;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/uk4<",
            "Lcom/shabakaty/downloader/hb;",
            ">;)",
            "Lcom/shabakaty/downloader/uk4<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tf0;->m:Lcom/shabakaty/downloader/b24;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/b24;->b:Lcom/shabakaty/downloader/kg0;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/kg0;->c()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string p1, "No crash reports are available to be sent."

    const/4 v0, 0x2

    const-string v2, "FirebaseCrashlytics"

    .line 4
    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FirebaseCrashlytics"

    .line 5
    invoke-static {v0, p1, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/tf0;->o:Lcom/shabakaty/downloader/zk4;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/zk4;->b(Ljava/lang/Object;)Z

    .line 7
    invoke-static {v1}, Lcom/shabakaty/downloader/kl4;->e(Ljava/lang/Object;)Lcom/shabakaty/downloader/uk4;

    move-result-object p1

    return-object p1

    .line 8
    :cond_1
    sget-object v0, Lcom/shabakaty/downloader/rk2;->a:Lcom/shabakaty/downloader/rk2;

    const-string v2, "Crash reports are available to be sent."

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/rk2;->d(Ljava/lang/String;)V

    .line 9
    iget-object v2, p0, Lcom/shabakaty/downloader/tf0;->b:Lcom/shabakaty/downloader/jl0;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/jl0;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "Automatic data collection is enabled. Allowing upload."

    const/4 v2, 0x3

    const-string v3, "FirebaseCrashlytics"

    .line 10
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "FirebaseCrashlytics"

    .line 11
    invoke-static {v2, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/tf0;->o:Lcom/shabakaty/downloader/zk4;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zk4;->b(Ljava/lang/Object;)Z

    .line 13
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/shabakaty/downloader/kl4;->e(Ljava/lang/Object;)Lcom/shabakaty/downloader/uk4;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v1, "Automatic data collection is disabled."

    .line 14
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/rk2;->b(Ljava/lang/String;)V

    const-string v1, "Notifying that unsent reports are available."

    .line 15
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/rk2;->d(Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcom/shabakaty/downloader/tf0;->o:Lcom/shabakaty/downloader/zk4;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/zk4;->b(Ljava/lang/Object;)Z

    .line 17
    iget-object v1, p0, Lcom/shabakaty/downloader/tf0;->b:Lcom/shabakaty/downloader/jl0;

    .line 18
    iget-object v2, v1, Lcom/shabakaty/downloader/jl0;->c:Ljava/lang/Object;

    monitor-enter v2

    .line 19
    :try_start_0
    iget-object v1, v1, Lcom/shabakaty/downloader/jl0;->d:Lcom/shabakaty/downloader/zk4;

    .line 20
    iget-object v1, v1, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    .line 21
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    new-instance v2, Lcom/shabakaty/downloader/qf0;

    invoke-direct {v2, p0}, Lcom/shabakaty/downloader/qf0;-><init>(Lcom/shabakaty/downloader/tf0;)V

    .line 23
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/ye7;->m(Lcom/shabakaty/downloader/kh4;)Lcom/shabakaty/downloader/uk4;

    move-result-object v1

    const-string v2, "Waiting for send/deleteUnsentReports to be called."

    .line 24
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/rk2;->b(Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/shabakaty/downloader/tf0;->p:Lcom/shabakaty/downloader/zk4;

    .line 26
    iget-object v0, v0, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    .line 27
    sget-object v2, Lcom/shabakaty/downloader/xy4;->a:Ljava/util/concurrent/ExecutorService;

    .line 28
    new-instance v2, Lcom/shabakaty/downloader/zk4;

    invoke-direct {v2}, Lcom/shabakaty/downloader/zk4;-><init>()V

    .line 29
    new-instance v3, Lcom/shabakaty/downloader/vy4;

    invoke-direct {v3, v2}, Lcom/shabakaty/downloader/vy4;-><init>(Lcom/shabakaty/downloader/zk4;)V

    .line 30
    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/uk4;->d(Lcom/shabakaty/downloader/td0;)Lcom/shabakaty/downloader/uk4;

    .line 31
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/ye7;->d(Lcom/shabakaty/downloader/td0;)Lcom/shabakaty/downloader/uk4;

    .line 32
    iget-object v0, v2, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    .line 33
    :goto_0
    new-instance v1, Lcom/shabakaty/downloader/tf0$a;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/tf0$a;-><init>(Lcom/shabakaty/downloader/tf0;Lcom/shabakaty/downloader/uk4;)V

    .line 34
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/uk4;->m(Lcom/shabakaty/downloader/kh4;)Lcom/shabakaty/downloader/uk4;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 35
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final j(Ljava/lang/String;)V
    .locals 12

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_7

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/tf0;->a:Landroid/content/Context;

    const-string v2, "activity"

    .line 3
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManager;->getHistoricalProcessExitReasons(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_8

    .line 6
    new-instance v3, Lcom/shabakaty/downloader/hk2;

    iget-object v4, p0, Lcom/shabakaty/downloader/tf0;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/shabakaty/downloader/tf0;->h:Lcom/shabakaty/downloader/hk2$b;

    invoke-direct {v3, v4, v5, p1}, Lcom/shabakaty/downloader/hk2;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/hk2$b;Ljava/lang/String;)V

    .line 7
    new-instance v4, Lcom/shabakaty/downloader/tk1;

    const/16 v5, 0xb

    invoke-direct {v4, v5}, Lcom/shabakaty/downloader/tk1;-><init>(I)V

    .line 8
    new-instance v5, Lcom/shabakaty/downloader/os2;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/tf0;->g()Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/shabakaty/downloader/os2;-><init>(Ljava/io/File;)V

    const-string v6, "Failed to close user metadata file."

    .line 9
    invoke-virtual {v5, p1}, Lcom/shabakaty/downloader/os2;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 10
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    goto :goto_1

    .line 12
    :cond_0
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :try_start_1
    invoke-static {v7}, Lcom/shabakaty/downloader/n70;->n(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/shabakaty/downloader/os2;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    invoke-static {v7, v6}, Lcom/shabakaty/downloader/n70;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :catch_0
    move-exception v5

    goto :goto_0

    :catchall_1
    move-exception p1

    goto/16 :goto_5

    :catch_1
    move-exception v5

    move-object v7, v1

    :goto_0
    :try_start_2
    const-string v8, "Error deserializing user metadata."

    const-string v9, "FirebaseCrashlytics"

    .line 15
    invoke-static {v9, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 16
    invoke-static {v7, v6}, Lcom/shabakaty/downloader/n70;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    .line 18
    :goto_1
    iget-object v6, v4, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    check-cast v6, Lcom/shabakaty/downloader/xd2;

    .line 19
    monitor-enter v6

    .line 20
    :try_start_3
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 21
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 22
    invoke-virtual {v6, v9}, Lcom/shabakaty/downloader/xd2;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 23
    iget-object v10, v6, Lcom/shabakaty/downloader/xd2;->a:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    iget v11, v6, Lcom/shabakaty/downloader/xd2;->b:I

    if-lt v10, v11, :cond_2

    iget-object v10, v6, Lcom/shabakaty/downloader/xd2;->a:Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 24
    :cond_2
    :goto_3
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 25
    iget-object v10, v6, Lcom/shabakaty/downloader/xd2;->a:Ljava/util/Map;

    if-nez v8, :cond_3

    const-string v8, ""

    goto :goto_4

    :cond_3
    invoke-virtual {v6, v8}, Lcom/shabakaty/downloader/xd2;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_4
    invoke-interface {v10, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 26
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Custom attribute key must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    if-lez v7, :cond_6

    .line 27
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignored "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " entries when adding custom keys. Maximum allowable: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v6, Lcom/shabakaty/downloader/xd2;->b:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "FirebaseCrashlytics"

    .line 28
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 29
    :cond_6
    monitor-exit v6

    .line 30
    iget-object v1, p0, Lcom/shabakaty/downloader/tf0;->m:Lcom/shabakaty/downloader/b24;

    .line 31
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationExitInfo;

    .line 32
    invoke-virtual {v1, p1, v0, v3, v4}, Lcom/shabakaty/downloader/b24;->g(Ljava/lang/String;Landroid/app/ApplicationExitInfo;Lcom/shabakaty/downloader/hk2;Lcom/shabakaty/downloader/tk1;)V

    goto :goto_7

    :catchall_2
    move-exception p1

    .line 33
    monitor-exit v6

    throw p1

    :catchall_3
    move-exception p1

    move-object v1, v7

    :goto_5
    move-object v7, v1

    .line 34
    :goto_6
    invoke-static {v7, v6}, Lcom/shabakaty/downloader/n70;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 35
    throw p1

    :cond_7
    const-string p1, "ANR feature enabled, but device is API "

    .line 36
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/bl3;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    const-string v2, "FirebaseCrashlytics"

    .line 37
    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "FirebaseCrashlytics"

    .line 38
    invoke-static {v0, p1, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_7
    return-void
.end method
