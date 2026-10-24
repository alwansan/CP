.class public final Lcom/shabakaty/downloader/ju2;
.super Ljava/lang/Object;
.source "moduleByClassLoader.kt"


# static fields
.field public static final a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lcom/shabakaty/downloader/q55;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/shabakaty/downloader/mv3;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ju2;->a:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public static final a(Ljava/lang/Class;)Lcom/shabakaty/downloader/mv3;
    .locals 52
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/shabakaty/downloader/mv3;"
        }
    .end annotation

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static/range {p0 .. p0}, Lcom/shabakaty/downloader/qo3;->d(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/q55;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/q55;-><init>(Ljava/lang/ClassLoader;)V

    .line 3
    sget-object v2, Lcom/shabakaty/downloader/ju2;->a:Ljava/util/concurrent/ConcurrentMap;

    move-object v3, v2

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/mv3;

    if-nez v4, :cond_0

    .line 5
    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v4

    :cond_1
    :goto_0
    const-string v2, "classLoader"

    .line 6
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v2, Lcom/shabakaty/downloader/zp3;

    invoke-direct {v2, v0}, Lcom/shabakaty/downloader/zp3;-><init>(Ljava/lang/ClassLoader;)V

    .line 8
    new-instance v13, Lcom/shabakaty/downloader/zp3;

    const-class v3, Lcom/shabakaty/downloader/qv4;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-string v4, "Unit::class.java.classLoader"

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v13, v3}, Lcom/shabakaty/downloader/zp3;-><init>(Ljava/lang/ClassLoader;)V

    .line 9
    new-instance v5, Lcom/shabakaty/downloader/gp3;

    invoke-direct {v5, v0}, Lcom/shabakaty/downloader/gp3;-><init>(Ljava/lang/ClassLoader;)V

    const-string v3, "runtime module for "

    .line 10
    invoke-static {v3, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 11
    sget-object v9, Lcom/shabakaty/downloader/kv3;->b:Lcom/shabakaty/downloader/kv3;

    .line 12
    sget-object v6, Lcom/shabakaty/downloader/nv3;->a:Lcom/shabakaty/downloader/nv3;

    const-string v3, "kotlinClassFinder"

    .line 13
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "jvmBuiltInsKotlinClassFinder"

    invoke-static {v13, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "javaClassFinder"

    invoke-static {v5, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "moduleName"

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "errorReporter"

    invoke-static {v9, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "javaSourceElementFactory"

    invoke-static {v6, v8}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v12, Lcom/shabakaty/downloader/yj2;

    const-string v7, "RuntimeModuleData"

    invoke-direct {v12, v7}, Lcom/shabakaty/downloader/yj2;-><init>(Ljava/lang/String;)V

    .line 15
    new-instance v11, Lcom/shabakaty/downloader/xa2;

    sget-object v7, Lcom/shabakaty/downloader/xa2$a;->r:Lcom/shabakaty/downloader/xa2$a;

    invoke-direct {v11, v12, v7}, Lcom/shabakaty/downloader/xa2;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/xa2$a;)V

    .line 16
    new-instance v10, Lcom/shabakaty/downloader/qu2;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v14, 0x3c

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3e

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/hw2;->D(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v15

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x38

    move-object v14, v10

    move-object/from16 v16, v12

    move-object/from16 v17, v11

    invoke-direct/range {v14 .. v20}, Lcom/shabakaty/downloader/qu2;-><init>(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/zd2;Ljava/util/Map;Lcom/shabakaty/downloader/hw2;I)V

    .line 17
    iget-object v0, v12, Lcom/shabakaty/downloader/yj2;->a:Lcom/shabakaty/downloader/v64;

    invoke-interface {v0}, Lcom/shabakaty/downloader/v64;->lock()V

    const/4 v15, 0x0

    .line 18
    :try_start_0
    iget-object v0, v11, Lcom/shabakaty/downloader/zd2;->a:Lcom/shabakaty/downloader/qu2;

    if-nez v0, :cond_7

    .line 19
    iput-object v10, v11, Lcom/shabakaty/downloader/zd2;->a:Lcom/shabakaty/downloader/qu2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 20
    iget-object v0, v12, Lcom/shabakaty/downloader/yj2;->a:Lcom/shabakaty/downloader/v64;

    invoke-interface {v0}, Lcom/shabakaty/downloader/v64;->unlock()V

    const-string v0, "moduleDescriptor"

    .line 21
    invoke-static {v10, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v7, Lcom/shabakaty/downloader/za2;

    const/4 v14, 0x1

    invoke-direct {v7, v10, v14}, Lcom/shabakaty/downloader/za2;-><init>(Lcom/shabakaty/downloader/nu2;Z)V

    const-string v14, "computation"

    .line 23
    invoke-static {v7, v14}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object v7, v11, Lcom/shabakaty/downloader/xa2;->f:Lcom/shabakaty/downloader/rm1;

    .line 25
    new-instance v14, Lcom/shabakaty/downloader/bs0;

    move-object v7, v14

    invoke-direct {v14}, Lcom/shabakaty/downloader/bs0;-><init>()V

    move-object/from16 v35, v1

    .line 26
    new-instance v1, Lcom/shabakaty/downloader/w74;

    move-object/from16 v29, v0

    move-object v0, v14

    move-object v14, v1

    invoke-direct {v1}, Lcom/shabakaty/downloader/w74;-><init>()V

    move-object/from16 p0, v7

    .line 27
    new-instance v7, Lcom/shabakaty/downloader/b03;

    invoke-direct {v7, v12, v10}, Lcom/shabakaty/downloader/b03;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/nu2;)V

    move-object/from16 v16, v11

    .line 28
    sget-object v11, Lcom/shabakaty/downloader/r93$a;->a:Lcom/shabakaty/downloader/r93$a;

    move-object v15, v11

    .line 29
    invoke-static {v5, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "module"

    invoke-static {v10, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v30, v14

    const-string v14, "storageManager"

    invoke-static {v12, v14}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v31, v14

    const-string v14, "notFoundClasses"

    invoke-static {v7, v14}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v32, v14

    const-string v14, "reflectKotlinClassFinder"

    invoke-static {v2, v14}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v33, v14

    const-string v14, "deserializedDescriptorResolver"

    invoke-static {v0, v14}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v8}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "singleModuleClassResolver"

    invoke-static {v1, v8}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "packagePartProvider"

    invoke-static {v11, v8}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v11, Lcom/shabakaty/downloader/w8;

    move-object/from16 v20, v11

    sget-object v8, Lcom/shabakaty/downloader/k82;->d:Lcom/shabakaty/downloader/k82$b;

    .line 31
    sget-object v8, Lcom/shabakaty/downloader/k82;->e:Lcom/shabakaty/downloader/k82;

    move-object/from16 v25, v8

    .line 32
    invoke-direct {v11, v12, v8}, Lcom/shabakaty/downloader/w8;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/k82;)V

    move-object/from16 v36, v1

    .line 33
    new-instance v1, Lcom/shabakaty/downloader/y72;

    move-object/from16 v37, v0

    move-object v0, v3

    move-object v3, v1

    .line 34
    sget-object v17, Lcom/shabakaty/downloader/k64;->a:Lcom/shabakaty/downloader/k64;

    move-object/from16 v18, v4

    move-object v4, v8

    move-object/from16 v8, v17

    move-object/from16 v34, v0

    sget-object v0, Lcom/shabakaty/downloader/x72;->a:Lcom/shabakaty/downloader/x72;

    move-object/from16 v38, v1

    move-object v1, v10

    move-object v10, v0

    .line 35
    sget-object v17, Lcom/shabakaty/downloader/v72$a;->a:Lcom/shabakaty/downloader/v72$a;

    move-object/from16 v40, v6

    move-object v6, v11

    move-object/from16 v39, v16

    move-object/from16 v11, v17

    move-object/from16 v41, v9

    new-instance v9, Lcom/shabakaty/downloader/zw3;

    move-object/from16 v42, v3

    move-object v3, v12

    move-object v12, v9

    move-object/from16 v43, v0

    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    invoke-direct {v9, v3, v0}, Lcom/shabakaty/downloader/zw3;-><init>(Lcom/shabakaty/downloader/md4;Ljava/lang/Iterable;)V

    .line 36
    sget-object v16, Lcom/shabakaty/downloader/ph4$a;->a:Lcom/shabakaty/downloader/ph4$a;

    sget-object v9, Lcom/shabakaty/downloader/nl2$a;->a:Lcom/shabakaty/downloader/nl2$a;

    move-object/from16 v17, v9

    move-object/from16 v44, v9

    .line 37
    new-instance v9, Lcom/shabakaty/downloader/jq3;

    move-object/from16 v19, v9

    invoke-direct {v9, v1, v7}, Lcom/shabakaty/downloader/jq3;-><init>(Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/b03;)V

    .line 38
    new-instance v9, Lcom/shabakaty/downloader/d64;

    move-object/from16 v21, v9

    move-object/from16 v45, v7

    .line 39
    new-instance v7, Lcom/shabakaty/downloader/j82;

    move-object/from16 v46, v13

    sget-object v13, Lcom/shabakaty/downloader/z72$a;->a:Lcom/shabakaty/downloader/z72$a;

    move-object/from16 v23, v13

    invoke-direct {v7, v13}, Lcom/shabakaty/downloader/j82;-><init>(Lcom/shabakaty/downloader/z72;)V

    .line 40
    invoke-direct {v9, v6, v4, v7}, Lcom/shabakaty/downloader/d64;-><init>(Lcom/shabakaty/downloader/w8;Lcom/shabakaty/downloader/k82;Lcom/shabakaty/downloader/j82;)V

    .line 41
    sget-object v22, Lcom/shabakaty/downloader/w62$a;->a:Lcom/shabakaty/downloader/w62$a;

    sget-object v4, Lcom/shabakaty/downloader/ez2;->b:Lcom/shabakaty/downloader/ez2$a;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v7, Lcom/shabakaty/downloader/ez2$a;->b:Lcom/shabakaty/downloader/fz2;

    move-object/from16 v24, v7

    .line 43
    new-instance v4, Lcom/shabakaty/downloader/pr0;

    move-object/from16 v26, v4

    invoke-direct {v4}, Lcom/shabakaty/downloader/pr0;-><init>()V

    const/16 v27, 0x0

    const/high16 v28, 0x800000

    move-object/from16 v13, v18

    move-object v4, v3

    move-object/from16 v18, v40

    move-object v6, v2

    move-object/from16 v40, v41

    move-object/from16 v41, v0

    move-object/from16 v0, v44

    move-object/from16 v9, v40

    move-object/from16 v44, v46

    move-object/from16 v46, v0

    move-object v0, v13

    move-object/from16 v13, v18

    move-object/from16 v18, v1

    move-object/from16 v47, v2

    move-object v2, v3

    move-object/from16 v51, v7

    move-object/from16 v50, v14

    move-object/from16 v14, v30

    move-object/from16 v48, v32

    move-object/from16 v49, v33

    move-object/from16 v3, v42

    move-object/from16 v7, p0

    move-object/from16 v30, v0

    move-object/from16 v0, v31

    .line 44
    invoke-direct/range {v3 .. v28}, Lcom/shabakaty/downloader/y72;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/u62;Lcom/shabakaty/downloader/ae2;Lcom/shabakaty/downloader/bs0;Lcom/shabakaty/downloader/k64;Lcom/shabakaty/downloader/y41;Lcom/shabakaty/downloader/x72;Lcom/shabakaty/downloader/v72;Lcom/shabakaty/downloader/yw3;Lcom/shabakaty/downloader/c82;Lcom/shabakaty/downloader/ku2;Lcom/shabakaty/downloader/r93;Lcom/shabakaty/downloader/ph4;Lcom/shabakaty/downloader/nl2;Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/jq3;Lcom/shabakaty/downloader/w8;Lcom/shabakaty/downloader/d64;Lcom/shabakaty/downloader/w62;Lcom/shabakaty/downloader/z72;Lcom/shabakaty/downloader/ez2;Lcom/shabakaty/downloader/k82;Lcom/shabakaty/downloader/o72;Lcom/shabakaty/downloader/sj4;I)V

    .line 45
    new-instance v3, Lcom/shabakaty/downloader/zf2;

    move-object/from16 v4, v38

    invoke-direct {v3, v4}, Lcom/shabakaty/downloader/zf2;-><init>(Lcom/shabakaty/downloader/y72;)V

    move-object/from16 v4, v34

    .line 46
    invoke-static {v1, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v7, v45

    move-object/from16 v4, v48

    invoke-static {v7, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "lazyJavaPackageFragmentProvider"

    invoke-static {v3, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v13, v47

    move-object/from16 v5, v49

    invoke-static {v13, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v12, v37

    move-object/from16 v11, v50

    invoke-static {v12, v11}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v6, v30

    move-object/from16 v5, v40

    invoke-static {v5, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v8, Lcom/shabakaty/downloader/s62;

    invoke-direct {v8, v13, v12}, Lcom/shabakaty/downloader/s62;-><init>(Lcom/shabakaty/downloader/ae2;Lcom/shabakaty/downloader/bs0;)V

    .line 48
    new-instance v9, Lcom/shabakaty/downloader/am;

    invoke-direct {v9, v1, v7, v2, v13}, Lcom/shabakaty/downloader/am;-><init>(Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/b03;Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/ae2;)V

    .line 49
    sget-object v10, Lcom/shabakaty/downloader/qr0$a;->a:Lcom/shabakaty/downloader/qr0$a;

    .line 50
    sget v14, Lcom/shabakaty/downloader/ae0;->a:I

    sget-object v15, Lcom/shabakaty/downloader/ae0$a;->b:Lcom/shabakaty/downloader/ae0;

    .line 51
    invoke-static {v2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {v10, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classDataFinder"

    invoke-static {v8, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotationAndConstantLoader"

    invoke-static {v9, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageFragmentProvider"

    invoke-static {v3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lookupTracker"

    move-object/from16 v4, v46

    invoke-static {v4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contractDeserializer"

    invoke-static {v15, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinTypeChecker"

    move-object/from16 v6, v51

    invoke-static {v6, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v1}, Lcom/shabakaty/downloader/qu2;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object v0

    instance-of v14, v0, Lcom/shabakaty/downloader/xa2;

    if-eqz v14, :cond_2

    check-cast v0, Lcom/shabakaty/downloader/xa2;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 53
    :goto_1
    new-instance v14, Lcom/shabakaty/downloader/or0;

    .line 54
    sget-object v21, Lcom/shabakaty/downloader/oj2$a;->a:Lcom/shabakaty/downloader/oj2$a;

    sget-object v24, Lcom/shabakaty/downloader/g72;->a:Lcom/shabakaty/downloader/g72;

    if-nez v0, :cond_3

    .line 55
    sget-object v16, Lcom/shabakaty/downloader/o4$a;->a:Lcom/shabakaty/downloader/o4$a;

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xa2;->Q()Lcom/shabakaty/downloader/ab2;

    move-result-object v16

    :goto_2
    move-object/from16 v28, v16

    if-nez v0, :cond_4

    .line 56
    sget-object v0, Lcom/shabakaty/downloader/oc3$b;->a:Lcom/shabakaty/downloader/oc3$b;

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xa2;->Q()Lcom/shabakaty/downloader/ab2;

    move-result-object v0

    :goto_3
    move-object/from16 v29, v0

    .line 57
    sget-object v0, Lcom/shabakaty/downloader/vb2;->a:Lcom/shabakaty/downloader/vb2;

    .line 58
    sget-object v30, Lcom/shabakaty/downloader/vb2;->b:Lcom/shabakaty/downloader/t81;

    .line 59
    new-instance v0, Lcom/shabakaty/downloader/zw3;

    move-object/from16 v32, v0

    move-object/from16 v50, v11

    move-object/from16 v11, v41

    invoke-direct {v0, v2, v11}, Lcom/shabakaty/downloader/zw3;-><init>(Lcom/shabakaty/downloader/md4;Ljava/lang/Iterable;)V

    const/16 v33, 0x0

    const/high16 v34, 0x40000

    move-object v0, v14

    move-object/from16 v27, v15

    move-object v15, v2

    move-object/from16 v16, v1

    move-object/from16 v17, v10

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v3

    move-object/from16 v22, v5

    move-object/from16 v23, v4

    move-object/from16 v25, v11

    move-object/from16 v26, v7

    move-object/from16 v31, v6

    .line 60
    invoke-direct/range {v14 .. v34}, Lcom/shabakaty/downloader/or0;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/qr0;Lcom/shabakaty/downloader/o20;Lcom/shabakaty/downloader/l8;Lcom/shabakaty/downloader/m93;Lcom/shabakaty/downloader/oj2;Lcom/shabakaty/downloader/y41;Lcom/shabakaty/downloader/nl2;Lcom/shabakaty/downloader/ge1;Ljava/lang/Iterable;Lcom/shabakaty/downloader/b03;Lcom/shabakaty/downloader/ae0;Lcom/shabakaty/downloader/o4;Lcom/shabakaty/downloader/oc3;Lcom/shabakaty/downloader/t81;Lcom/shabakaty/downloader/ez2;Lcom/shabakaty/downloader/yw3;Lcom/shabakaty/downloader/qc3;I)V

    const-string v4, "<set-?>"

    .line 61
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iput-object v0, v12, Lcom/shabakaty/downloader/bs0;->a:Lcom/shabakaty/downloader/or0;

    .line 63
    new-instance v14, Lcom/shabakaty/downloader/ag6;

    move-object/from16 v5, v43

    invoke-direct {v14, v3, v5}, Lcom/shabakaty/downloader/ag6;-><init>(Lcom/shabakaty/downloader/zf2;Lcom/shabakaty/downloader/x72;)V

    .line 64
    invoke-static {v14, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v3, v36

    .line 65
    iput-object v14, v3, Lcom/shabakaty/downloader/w74;->a:Lcom/shabakaty/downloader/ag6;

    .line 66
    new-instance v15, Lcom/shabakaty/downloader/ib2;

    .line 67
    invoke-virtual/range {v39 .. v39}, Lcom/shabakaty/downloader/xa2;->Q()Lcom/shabakaty/downloader/ab2;

    move-result-object v8

    invoke-virtual/range {v39 .. v39}, Lcom/shabakaty/downloader/xa2;->Q()Lcom/shabakaty/downloader/ab2;

    move-result-object v9

    .line 68
    new-instance v5, Lcom/shabakaty/downloader/zw3;

    invoke-direct {v5, v2, v11}, Lcom/shabakaty/downloader/zw3;-><init>(Lcom/shabakaty/downloader/md4;Ljava/lang/Iterable;)V

    move-object v3, v15

    move-object v4, v2

    move-object v2, v5

    move-object/from16 v5, v44

    move-object v11, v6

    move-object v6, v1

    move-object/from16 p0, v0

    move-object/from16 v0, v50

    move-object/from16 v47, v13

    move-object v13, v12

    move-object v12, v2

    .line 69
    invoke-direct/range {v3 .. v12}, Lcom/shabakaty/downloader/ib2;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/ae2;Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/b03;Lcom/shabakaty/downloader/o4;Lcom/shabakaty/downloader/oc3;Lcom/shabakaty/downloader/qr0;Lcom/shabakaty/downloader/ez2;Lcom/shabakaty/downloader/yw3;)V

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/shabakaty/downloader/qu2;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 70
    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/qu2;->U0([Lcom/shabakaty/downloader/qu2;)V

    .line 71
    new-instance v3, Lcom/shabakaty/downloader/g90;

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/shabakaty/downloader/o93;

    .line 72
    iget-object v6, v14, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    check-cast v6, Lcom/shabakaty/downloader/zf2;

    aput-object v6, v5, v4

    aput-object v15, v5, v2

    .line 73
    invoke-static {v5}, Lcom/shabakaty/downloader/iq6;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v4, "CompositeProvider@RuntimeModuleData for "

    .line 74
    invoke-static {v4, v1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 75
    invoke-direct {v3, v2, v4}, Lcom/shabakaty/downloader/g90;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const-string v2, "providerForModuleContent"

    .line 76
    invoke-static {v3, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iput-object v3, v1, Lcom/shabakaty/downloader/qu2;->y:Lcom/shabakaty/downloader/m93;

    .line 78
    invoke-static {v13, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    new-instance v0, Lcom/shabakaty/downloader/mv3;

    .line 80
    new-instance v1, Lcom/shabakaty/downloader/tk1;

    move-object/from16 v2, v47

    invoke-direct {v1, v13, v2}, Lcom/shabakaty/downloader/tk1;-><init>(Lcom/shabakaty/downloader/bs0;Lcom/shabakaty/downloader/zp3;)V

    move-object/from16 v2, p0

    const/4 v3, 0x0

    .line 81
    invoke-direct {v0, v2, v1, v3}, Lcom/shabakaty/downloader/mv3;-><init>(Lcom/shabakaty/downloader/or0;Lcom/shabakaty/downloader/tk1;Lcom/shabakaty/downloader/nn0;)V

    .line 82
    :goto_4
    :try_start_1
    sget-object v1, Lcom/shabakaty/downloader/ju2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v3, v1

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v4, v35

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_5

    return-object v0

    .line 83
    :cond_5
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/mv3;

    if-eqz v3, :cond_6

    return-object v3

    .line 84
    :cond_6
    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v35, v4

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 85
    throw v0

    :cond_7
    move-object v1, v10

    move-object/from16 v39, v11

    move-object v2, v12

    move-object v3, v15

    .line 86
    :try_start_2
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Built-ins module is already set: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v39

    .line 87
    iget-object v5, v5, Lcom/shabakaty/downloader/zd2;->a:Lcom/shabakaty/downloader/qu2;

    .line 88
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " (attempting to reset to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v2, v12

    move-object v3, v15

    .line 89
    :goto_5
    :try_start_3
    iget-object v1, v2, Lcom/shabakaty/downloader/yj2;->b:Lcom/shabakaty/downloader/yj2$f;

    check-cast v1, Lcom/shabakaty/downloader/yj2$f$a;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/yj2$f$a;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception v0

    .line 90
    iget-object v1, v2, Lcom/shabakaty/downloader/yj2;->a:Lcom/shabakaty/downloader/v64;

    invoke-interface {v1}, Lcom/shabakaty/downloader/v64;->unlock()V

    throw v0
.end method
