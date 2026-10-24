.class public final Lcom/shabakaty/downloader/rr0;
.super Ljava/lang/Object;
.source "context.kt"


# instance fields
.field public final a:Lcom/shabakaty/downloader/or0;

.field public final b:Lcom/shabakaty/downloader/jw2;

.field public final c:Lcom/shabakaty/downloader/qm0;

.field public final d:Lcom/shabakaty/downloader/bu4;

.field public final e:Lcom/shabakaty/downloader/f05;

.field public final f:Lcom/shabakaty/downloader/gm;

.field public final g:Lcom/shabakaty/downloader/as0;

.field public final h:Lcom/shabakaty/downloader/xs4;

.field public final i:Lcom/shabakaty/downloader/jr2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/or0;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/bu4;Lcom/shabakaty/downloader/f05;Lcom/shabakaty/downloader/gm;Lcom/shabakaty/downloader/as0;Lcom/shabakaty/downloader/xs4;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/or0;",
            "Lcom/shabakaty/downloader/jw2;",
            "Lcom/shabakaty/downloader/qm0;",
            "Lcom/shabakaty/downloader/bu4;",
            "Lcom/shabakaty/downloader/f05;",
            "Lcom/shabakaty/downloader/gm;",
            "Lcom/shabakaty/downloader/as0;",
            "Lcom/shabakaty/downloader/xs4;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/aj3;",
            ">;)V"
        }
    .end annotation

    const-string v0, "components"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containingDeclaration"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionRequirementTable"

    invoke-static {p5, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/rr0;->b:Lcom/shabakaty/downloader/jw2;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/rr0;->c:Lcom/shabakaty/downloader/qm0;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/rr0;->d:Lcom/shabakaty/downloader/bu4;

    .line 6
    iput-object p5, p0, Lcom/shabakaty/downloader/rr0;->e:Lcom/shabakaty/downloader/f05;

    .line 7
    iput-object p6, p0, Lcom/shabakaty/downloader/rr0;->f:Lcom/shabakaty/downloader/gm;

    .line 8
    iput-object p7, p0, Lcom/shabakaty/downloader/rr0;->g:Lcom/shabakaty/downloader/as0;

    .line 9
    new-instance v0, Lcom/shabakaty/downloader/xs4;

    const-string p1, "Deserializer for \""

    .line 10
    invoke-static {p1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {p3}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x22

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    if-nez p7, :cond_0

    const-string p1, "[container not found]"

    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {p7}, Lcom/shabakaty/downloader/as0;->c()Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object p6, p1

    move-object p1, v0

    move-object p2, p0

    move-object p3, p8

    move-object p4, p9

    .line 12
    invoke-direct/range {p1 .. p6}, Lcom/shabakaty/downloader/xs4;-><init>(Lcom/shabakaty/downloader/rr0;Lcom/shabakaty/downloader/xs4;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/rr0;->h:Lcom/shabakaty/downloader/xs4;

    .line 13
    new-instance p1, Lcom/shabakaty/downloader/jr2;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/jr2;-><init>(Lcom/shabakaty/downloader/rr0;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/rr0;->i:Lcom/shabakaty/downloader/jr2;

    return-void
.end method

.method public static synthetic b(Lcom/shabakaty/downloader/rr0;Lcom/shabakaty/downloader/qm0;Ljava/util/List;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;Lcom/shabakaty/downloader/f05;Lcom/shabakaty/downloader/gm;I)Lcom/shabakaty/downloader/rr0;
    .locals 7

    and-int/lit8 p3, p7, 0x4

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    .line 1
    iget-object p3, p0, Lcom/shabakaty/downloader/rr0;->b:Lcom/shabakaty/downloader/jw2;

    move-object v3, p3

    goto :goto_0

    :cond_0
    move-object v3, p4

    :goto_0
    and-int/lit8 p3, p7, 0x8

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/shabakaty/downloader/rr0;->d:Lcom/shabakaty/downloader/bu4;

    move-object v4, p3

    goto :goto_1

    :cond_1
    move-object v4, p4

    :goto_1
    and-int/lit8 p3, p7, 0x10

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/shabakaty/downloader/rr0;->e:Lcom/shabakaty/downloader/f05;

    move-object v5, p3

    goto :goto_2

    :cond_2
    move-object v5, p4

    :goto_2
    and-int/lit8 p3, p7, 0x20

    if-eqz p3, :cond_3

    iget-object p4, p0, Lcom/shabakaty/downloader/rr0;->f:Lcom/shabakaty/downloader/gm;

    :cond_3
    move-object v6, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/shabakaty/downloader/rr0;->a(Lcom/shabakaty/downloader/qm0;Ljava/util/List;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;Lcom/shabakaty/downloader/f05;Lcom/shabakaty/downloader/gm;)Lcom/shabakaty/downloader/rr0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/qm0;Ljava/util/List;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;Lcom/shabakaty/downloader/f05;Lcom/shabakaty/downloader/gm;)Lcom/shabakaty/downloader/rr0;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qm0;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/aj3;",
            ">;",
            "Lcom/shabakaty/downloader/jw2;",
            "Lcom/shabakaty/downloader/bu4;",
            "Lcom/shabakaty/downloader/f05;",
            "Lcom/shabakaty/downloader/gm;",
            ")",
            "Lcom/shabakaty/downloader/rr0;"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v7, p6

    const-string v1, "descriptor"

    move-object v4, p1

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "typeParameterProtos"

    move-object v10, p2

    invoke-static {p2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nameResolver"

    move-object/from16 v3, p3

    invoke-static {v3, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "typeTable"

    move-object/from16 v5, p4

    invoke-static {v5, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "versionRequirementTable"

    move-object/from16 v2, p5

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "metadataVersion"

    invoke-static {v7, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v11, Lcom/shabakaty/downloader/rr0;

    .line 2
    iget-object v6, v0, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    const-string v1, "version"

    .line 3
    invoke-static {v7, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {v7, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget v1, v7, Lcom/shabakaty/downloader/gm;->b:I

    const/4 v8, 0x1

    if-ne v1, v8, :cond_0

    .line 6
    iget v1, v7, Lcom/shabakaty/downloader/gm;->c:I

    const/4 v9, 0x4

    if-lt v1, v9, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    if-eqz v8, :cond_1

    move-object v8, v2

    goto :goto_1

    .line 7
    :cond_1
    iget-object v1, v0, Lcom/shabakaty/downloader/rr0;->e:Lcom/shabakaty/downloader/f05;

    move-object v8, v1

    .line 8
    :goto_1
    iget-object v9, v0, Lcom/shabakaty/downloader/rr0;->g:Lcom/shabakaty/downloader/as0;

    .line 9
    iget-object v12, v0, Lcom/shabakaty/downloader/rr0;->h:Lcom/shabakaty/downloader/xs4;

    move-object v1, v11

    move-object v2, v6

    move-object/from16 v3, p3

    move-object v4, p1

    move-object/from16 v5, p4

    move-object v6, v8

    move-object/from16 v7, p6

    move-object v8, v9

    move-object v9, v12

    move-object v10, p2

    .line 10
    invoke-direct/range {v1 .. v10}, Lcom/shabakaty/downloader/rr0;-><init>(Lcom/shabakaty/downloader/or0;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/bu4;Lcom/shabakaty/downloader/f05;Lcom/shabakaty/downloader/gm;Lcom/shabakaty/downloader/as0;Lcom/shabakaty/downloader/xs4;Ljava/util/List;)V

    return-object v11
.end method
