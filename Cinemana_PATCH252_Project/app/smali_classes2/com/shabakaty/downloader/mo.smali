.class public final Lcom/shabakaty/downloader/mo;
.super Ljava/lang/Object;
.source "BuiltInsLoaderImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/lo;


# instance fields
.field public final b:Lcom/shabakaty/downloader/qo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/qo;

    invoke-direct {v0}, Lcom/shabakaty/downloader/qo;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/mo;->b:Lcom/shabakaty/downloader/qo;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/nu2;Ljava/lang/Iterable;Lcom/shabakaty/downloader/oc3;Lcom/shabakaty/downloader/o4;Z)Lcom/shabakaty/downloader/m93;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/md4;",
            "Lcom/shabakaty/downloader/nu2;",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/shabakaty/downloader/s20;",
            ">;",
            "Lcom/shabakaty/downloader/oc3;",
            "Lcom/shabakaty/downloader/o4;",
            "Z)",
            "Lcom/shabakaty/downloader/m93;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v0, "storageManager"

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builtInsModule"

    invoke-static {v2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classDescriptorFactories"

    move-object/from16 v11, p3

    invoke-static {v11, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "platformDependentDeclarationFilter"

    move-object/from16 v15, p4

    invoke-static {v15, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalClassPartsProvider"

    move-object/from16 v14, p5

    invoke-static {v14, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/tb4;->m:Ljava/util/Set;

    .line 2
    new-instance v3, Lcom/shabakaty/downloader/mo$a;

    move-object/from16 v13, p0

    iget-object v4, v13, Lcom/shabakaty/downloader/mo;->b:Lcom/shabakaty/downloader/qo;

    invoke-direct {v3, v4}, Lcom/shabakaty/downloader/mo$a;-><init>(Ljava/lang/Object;)V

    const-string v4, "packageFqNames"

    .line 3
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v10, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v10, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 6
    check-cast v4, Lcom/shabakaty/downloader/fi1;

    .line 7
    sget-object v5, Lcom/shabakaty/downloader/jo;->m:Lcom/shabakaty/downloader/jo;

    invoke-virtual {v5, v4}, Lcom/shabakaty/downloader/jo;->a(Lcom/shabakaty/downloader/fi1;)Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual {v3, v5}, Lcom/shabakaty/downloader/mo$a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/InputStream;

    if-eqz v6, :cond_0

    move/from16 v7, p6

    .line 9
    invoke-static {v4, v1, v2, v6, v7}, Lcom/shabakaty/downloader/oo;->U0(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/nu2;Ljava/io/InputStream;Z)Lcom/shabakaty/downloader/oo;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Resource not found in classpath: "

    invoke-static {v1, v5}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_1
    new-instance v9, Lcom/shabakaty/downloader/n93;

    move-object v6, v9

    invoke-direct {v9, v10}, Lcom/shabakaty/downloader/n93;-><init>(Ljava/util/Collection;)V

    .line 12
    new-instance v7, Lcom/shabakaty/downloader/b03;

    move-object v12, v7

    invoke-direct {v7, v1, v2}, Lcom/shabakaty/downloader/b03;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/nu2;)V

    .line 13
    new-instance v8, Lcom/shabakaty/downloader/or0;

    move-object v0, v8

    .line 14
    sget-object v3, Lcom/shabakaty/downloader/qr0$a;->a:Lcom/shabakaty/downloader/qr0$a;

    .line 15
    new-instance v5, Lcom/shabakaty/downloader/wr0;

    move-object v4, v5

    invoke-direct {v5, v9}, Lcom/shabakaty/downloader/wr0;-><init>(Lcom/shabakaty/downloader/m93;)V

    .line 16
    new-instance v5, Lcom/shabakaty/downloader/m8;

    move-object/from16 p6, v5

    sget-object v11, Lcom/shabakaty/downloader/jo;->m:Lcom/shabakaty/downloader/jo;

    move-object/from16 v16, v8

    move-object/from16 v8, p6

    invoke-direct {v8, v2, v7, v11}, Lcom/shabakaty/downloader/m8;-><init>(Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/b03;Lcom/shabakaty/downloader/d14;)V

    .line 17
    sget-object v7, Lcom/shabakaty/downloader/oj2$a;->a:Lcom/shabakaty/downloader/oj2$a;

    .line 18
    sget-object v8, Lcom/shabakaty/downloader/y41;->a:Lcom/shabakaty/downloader/y41;

    move-object/from16 v21, v16

    .line 19
    sget-object v16, Lcom/shabakaty/downloader/nl2$a;->a:Lcom/shabakaty/downloader/nl2$a;

    move-object/from16 v22, v9

    move-object/from16 v9, v16

    .line 20
    sget-object v16, Lcom/shabakaty/downloader/ge1$a;->a:Lcom/shabakaty/downloader/ge1$a;

    move-object/from16 v23, v10

    move-object/from16 v10, v16

    .line 21
    sget-object v16, Lcom/shabakaty/downloader/ae0$a;->b:Lcom/shabakaty/downloader/ae0;

    move-object/from16 v13, v16

    .line 22
    iget-object v11, v11, Lcom/shabakaty/downloader/d14;->a:Lcom/shabakaty/downloader/t81;

    move-object/from16 v16, v11

    const/16 v17, 0x0

    .line 23
    new-instance v11, Lcom/shabakaty/downloader/zw3;

    move-object/from16 v18, v11

    sget-object v2, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    invoke-direct {v11, v1, v2}, Lcom/shabakaty/downloader/zw3;-><init>(Lcom/shabakaty/downloader/md4;Ljava/lang/Iterable;)V

    const/16 v19, 0x0

    const/high16 v20, 0x50000

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v11, p3

    move-object/from16 v14, p5

    move-object/from16 v15, p4

    .line 24
    invoke-direct/range {v0 .. v20}, Lcom/shabakaty/downloader/or0;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/qr0;Lcom/shabakaty/downloader/o20;Lcom/shabakaty/downloader/l8;Lcom/shabakaty/downloader/m93;Lcom/shabakaty/downloader/oj2;Lcom/shabakaty/downloader/y41;Lcom/shabakaty/downloader/nl2;Lcom/shabakaty/downloader/ge1;Ljava/lang/Iterable;Lcom/shabakaty/downloader/b03;Lcom/shabakaty/downloader/ae0;Lcom/shabakaty/downloader/o4;Lcom/shabakaty/downloader/oc3;Lcom/shabakaty/downloader/t81;Lcom/shabakaty/downloader/ez2;Lcom/shabakaty/downloader/yw3;Lcom/shabakaty/downloader/qc3;I)V

    .line 25
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/oo;

    move-object/from16 v2, v21

    .line 26
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/fs0;->T0(Lcom/shabakaty/downloader/or0;)V

    goto :goto_1

    :cond_2
    return-object v22
.end method
