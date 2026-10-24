.class public final Lcom/shabakaty/downloader/ib2;
.super Lcom/shabakaty/downloader/x;
.source "JvmBuiltInsPackageFragmentProvider.kt"


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/ae2;Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/b03;Lcom/shabakaty/downloader/o4;Lcom/shabakaty/downloader/oc3;Lcom/shabakaty/downloader/qr0;Lcom/shabakaty/downloader/ez2;Lcom/shabakaty/downloader/yw3;)V
    .locals 22

    move-object/from16 v15, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const-string v0, "additionalClassPartsProvider"

    move-object/from16 v14, p5

    invoke-static {v14, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "platformDependentDeclarationFilter"

    move-object/from16 v12, p6

    invoke-static {v12, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinTypeChecker"

    move-object/from16 v6, p8

    invoke-static {v6, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p3}, Lcom/shabakaty/downloader/x;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/ke2;Lcom/shabakaty/downloader/nu2;)V

    .line 2
    new-instance v3, Lcom/shabakaty/downloader/or0;

    move-object v0, v3

    .line 3
    new-instance v5, Lcom/shabakaty/downloader/wr0;

    move-object v4, v5

    invoke-direct {v5, v15}, Lcom/shabakaty/downloader/wr0;-><init>(Lcom/shabakaty/downloader/m93;)V

    .line 4
    new-instance v7, Lcom/shabakaty/downloader/m8;

    move-object v5, v7

    sget-object v13, Lcom/shabakaty/downloader/jo;->m:Lcom/shabakaty/downloader/jo;

    move-object/from16 v11, p4

    invoke-direct {v7, v2, v11, v13}, Lcom/shabakaty/downloader/m8;-><init>(Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/b03;Lcom/shabakaty/downloader/d14;)V

    .line 5
    sget-object v7, Lcom/shabakaty/downloader/oj2$a;->a:Lcom/shabakaty/downloader/oj2$a;

    .line 6
    sget-object v8, Lcom/shabakaty/downloader/y41;->a:Lcom/shabakaty/downloader/y41;

    .line 7
    sget-object v9, Lcom/shabakaty/downloader/nl2$a;->a:Lcom/shabakaty/downloader/nl2$a;

    .line 8
    sget-object v10, Lcom/shabakaty/downloader/ge1$a;->a:Lcom/shabakaty/downloader/ge1$a;

    move-object/from16 p2, v3

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/shabakaty/downloader/s20;

    const/16 v16, 0x0

    .line 9
    new-instance v6, Lcom/shabakaty/downloader/io;

    invoke-direct {v6, v1, v2}, Lcom/shabakaty/downloader/io;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/nu2;)V

    aput-object v6, v3, v16

    .line 10
    new-instance v6, Lcom/shabakaty/downloader/va2;

    const/4 v11, 0x0

    const/4 v12, 0x4

    invoke-direct {v6, v1, v2, v11, v12}, Lcom/shabakaty/downloader/va2;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/tm1;I)V

    const/4 v11, 0x1

    aput-object v6, v3, v11

    .line 11
    invoke-static {v3}, Lcom/shabakaty/downloader/iq6;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 12
    sget v3, Lcom/shabakaty/downloader/ae0;->a:I

    sget-object v3, Lcom/shabakaty/downloader/ae0$a;->b:Lcom/shabakaty/downloader/ae0;

    move-object v6, v13

    move-object v13, v3

    .line 13
    iget-object v3, v6, Lcom/shabakaty/downloader/d14;->a:Lcom/shabakaty/downloader/t81;

    move-object/from16 v16, v3

    const/16 v19, 0x0

    const/high16 v20, 0x40000

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v12, p2

    move-object/from16 v3, p7

    move-object/from16 v6, p0

    move-object/from16 v21, v12

    move-object/from16 v12, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move-object/from16 v17, p8

    move-object/from16 v18, p9

    .line 14
    invoke-direct/range {v0 .. v20}, Lcom/shabakaty/downloader/or0;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/qr0;Lcom/shabakaty/downloader/o20;Lcom/shabakaty/downloader/l8;Lcom/shabakaty/downloader/m93;Lcom/shabakaty/downloader/oj2;Lcom/shabakaty/downloader/y41;Lcom/shabakaty/downloader/nl2;Lcom/shabakaty/downloader/ge1;Ljava/lang/Iterable;Lcom/shabakaty/downloader/b03;Lcom/shabakaty/downloader/ae0;Lcom/shabakaty/downloader/o4;Lcom/shabakaty/downloader/oc3;Lcom/shabakaty/downloader/t81;Lcom/shabakaty/downloader/ez2;Lcom/shabakaty/downloader/yw3;Lcom/shabakaty/downloader/qc3;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    .line 15
    iput-object v1, v0, Lcom/shabakaty/downloader/x;->d:Lcom/shabakaty/downloader/or0;

    return-void
.end method


# virtual methods
.method public d(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/es0;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/x;->b:Lcom/shabakaty/downloader/ke2;

    .line 2
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/ke2;->b(Lcom/shabakaty/downloader/fi1;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/x;->a:Lcom/shabakaty/downloader/md4;

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/x;->c:Lcom/shabakaty/downloader/nu2;

    const/4 v3, 0x0

    .line 5
    invoke-static {p1, v1, v2, v0, v3}, Lcom/shabakaty/downloader/oo;->U0(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/nu2;Ljava/io/InputStream;Z)Lcom/shabakaty/downloader/oo;

    move-result-object p1

    :goto_0
    return-object p1
.end method
