.class public final Lcom/shabakaty/downloader/or0;
.super Ljava/lang/Object;
.source "context.kt"


# instance fields
.field public final a:Lcom/shabakaty/downloader/md4;

.field public final b:Lcom/shabakaty/downloader/nu2;

.field public final c:Lcom/shabakaty/downloader/qr0;

.field public final d:Lcom/shabakaty/downloader/o20;

.field public final e:Lcom/shabakaty/downloader/l8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/l8<",
            "Lcom/shabakaty/downloader/r8;",
            "Lcom/shabakaty/downloader/qb0<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final f:Lcom/shabakaty/downloader/m93;

.field public final g:Lcom/shabakaty/downloader/oj2;

.field public final h:Lcom/shabakaty/downloader/y41;

.field public final i:Lcom/shabakaty/downloader/nl2;

.field public final j:Lcom/shabakaty/downloader/ge1;

.field public final k:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Lcom/shabakaty/downloader/s20;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Lcom/shabakaty/downloader/b03;

.field public final m:Lcom/shabakaty/downloader/ae0;

.field public final n:Lcom/shabakaty/downloader/o4;

.field public final o:Lcom/shabakaty/downloader/oc3;

.field public final p:Lcom/shabakaty/downloader/t81;

.field public final q:Lcom/shabakaty/downloader/ez2;

.field public final r:Lcom/shabakaty/downloader/yw3;

.field public final s:Lcom/shabakaty/downloader/qc3;

.field public final t:Lcom/shabakaty/downloader/u20;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/qr0;Lcom/shabakaty/downloader/o20;Lcom/shabakaty/downloader/l8;Lcom/shabakaty/downloader/m93;Lcom/shabakaty/downloader/oj2;Lcom/shabakaty/downloader/y41;Lcom/shabakaty/downloader/nl2;Lcom/shabakaty/downloader/ge1;Ljava/lang/Iterable;Lcom/shabakaty/downloader/b03;Lcom/shabakaty/downloader/ae0;Lcom/shabakaty/downloader/o4;Lcom/shabakaty/downloader/oc3;Lcom/shabakaty/downloader/t81;Lcom/shabakaty/downloader/ez2;Lcom/shabakaty/downloader/yw3;Lcom/shabakaty/downloader/qc3;I)V
    .locals 7

    move-object v0, p0

    move-object/from16 v1, p16

    move/from16 v2, p20

    and-int/lit16 v3, v2, 0x2000

    if-eqz v3, :cond_0

    .line 1
    sget-object v3, Lcom/shabakaty/downloader/o4$a;->a:Lcom/shabakaty/downloader/o4$a;

    goto :goto_0

    :cond_0
    move-object/from16 v3, p14

    :goto_0
    and-int/lit16 v4, v2, 0x4000

    if-eqz v4, :cond_1

    .line 2
    sget-object v4, Lcom/shabakaty/downloader/oc3$a;->a:Lcom/shabakaty/downloader/oc3$a;

    goto :goto_1

    :cond_1
    move-object/from16 v4, p15

    :goto_1
    const/high16 v5, 0x10000

    and-int/2addr v5, v2

    if-eqz v5, :cond_2

    .line 3
    sget-object v5, Lcom/shabakaty/downloader/ez2;->b:Lcom/shabakaty/downloader/ez2$a;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v5, Lcom/shabakaty/downloader/ez2$a;->b:Lcom/shabakaty/downloader/fz2;

    goto :goto_2

    :cond_2
    move-object/from16 v5, p17

    :goto_2
    const/high16 v6, 0x40000

    and-int/2addr v2, v6

    if-eqz v2, :cond_3

    .line 5
    sget-object v2, Lcom/shabakaty/downloader/qc3$a;->a:Lcom/shabakaty/downloader/qc3$a;

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    const-string v6, "additionalClassPartsProvider"

    .line 6
    invoke-static {v3, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "platformDependentDeclarationFilter"

    invoke-static {v4, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "extensionRegistryLite"

    invoke-static {v1, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "kotlinTypeChecker"

    invoke-static {v5, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "platformDependentTypeTransformer"

    invoke-static {v2, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v6, p1

    .line 8
    iput-object v6, v0, Lcom/shabakaty/downloader/or0;->a:Lcom/shabakaty/downloader/md4;

    move-object v6, p2

    .line 9
    iput-object v6, v0, Lcom/shabakaty/downloader/or0;->b:Lcom/shabakaty/downloader/nu2;

    move-object v6, p3

    .line 10
    iput-object v6, v0, Lcom/shabakaty/downloader/or0;->c:Lcom/shabakaty/downloader/qr0;

    move-object v6, p4

    .line 11
    iput-object v6, v0, Lcom/shabakaty/downloader/or0;->d:Lcom/shabakaty/downloader/o20;

    move-object v6, p5

    .line 12
    iput-object v6, v0, Lcom/shabakaty/downloader/or0;->e:Lcom/shabakaty/downloader/l8;

    move-object v6, p6

    .line 13
    iput-object v6, v0, Lcom/shabakaty/downloader/or0;->f:Lcom/shabakaty/downloader/m93;

    move-object v6, p7

    .line 14
    iput-object v6, v0, Lcom/shabakaty/downloader/or0;->g:Lcom/shabakaty/downloader/oj2;

    move-object v6, p8

    .line 15
    iput-object v6, v0, Lcom/shabakaty/downloader/or0;->h:Lcom/shabakaty/downloader/y41;

    move-object/from16 v6, p9

    .line 16
    iput-object v6, v0, Lcom/shabakaty/downloader/or0;->i:Lcom/shabakaty/downloader/nl2;

    move-object/from16 v6, p10

    .line 17
    iput-object v6, v0, Lcom/shabakaty/downloader/or0;->j:Lcom/shabakaty/downloader/ge1;

    move-object/from16 v6, p11

    .line 18
    iput-object v6, v0, Lcom/shabakaty/downloader/or0;->k:Ljava/lang/Iterable;

    move-object/from16 v6, p12

    .line 19
    iput-object v6, v0, Lcom/shabakaty/downloader/or0;->l:Lcom/shabakaty/downloader/b03;

    move-object/from16 v6, p13

    .line 20
    iput-object v6, v0, Lcom/shabakaty/downloader/or0;->m:Lcom/shabakaty/downloader/ae0;

    .line 21
    iput-object v3, v0, Lcom/shabakaty/downloader/or0;->n:Lcom/shabakaty/downloader/o4;

    .line 22
    iput-object v4, v0, Lcom/shabakaty/downloader/or0;->o:Lcom/shabakaty/downloader/oc3;

    .line 23
    iput-object v1, v0, Lcom/shabakaty/downloader/or0;->p:Lcom/shabakaty/downloader/t81;

    .line 24
    iput-object v5, v0, Lcom/shabakaty/downloader/or0;->q:Lcom/shabakaty/downloader/ez2;

    move-object/from16 v1, p18

    .line 25
    iput-object v1, v0, Lcom/shabakaty/downloader/or0;->r:Lcom/shabakaty/downloader/yw3;

    .line 26
    iput-object v2, v0, Lcom/shabakaty/downloader/or0;->s:Lcom/shabakaty/downloader/qc3;

    .line 27
    new-instance v1, Lcom/shabakaty/downloader/u20;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/u20;-><init>(Lcom/shabakaty/downloader/or0;)V

    iput-object v1, v0, Lcom/shabakaty/downloader/or0;->t:Lcom/shabakaty/downloader/u20;

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/k93;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;Lcom/shabakaty/downloader/f05;Lcom/shabakaty/downloader/gm;Lcom/shabakaty/downloader/as0;)Lcom/shabakaty/downloader/rr0;
    .locals 11

    const-string v0, "nameResolver"

    move-object v3, p2

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadataVersion"

    move-object/from16 v7, p5

    invoke-static {v7, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/rr0;

    .line 2
    sget-object v10, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    const/4 v9, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v8, p6

    .line 3
    invoke-direct/range {v1 .. v10}, Lcom/shabakaty/downloader/rr0;-><init>(Lcom/shabakaty/downloader/or0;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/bu4;Lcom/shabakaty/downloader/f05;Lcom/shabakaty/downloader/gm;Lcom/shabakaty/downloader/as0;Lcom/shabakaty/downloader/xs4;Ljava/util/List;)V

    return-object v0
.end method

.method public final b(Lcom/shabakaty/downloader/v20;)Lcom/shabakaty/downloader/q20;
    .locals 3

    const-string v0, "classId"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/or0;->t:Lcom/shabakaty/downloader/u20;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2}, Lcom/shabakaty/downloader/u20;->a(Lcom/shabakaty/downloader/u20;Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/n20;I)Lcom/shabakaty/downloader/q20;

    move-result-object p1

    return-object p1
.end method
