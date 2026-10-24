.class public final Lcom/shabakaty/downloader/ot4$c;
.super Lcom/shabakaty/downloader/af2;
.source "TypeParameterUpperBoundEraser.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ot4;-><init>(Lcom/shabakaty/downloader/ym3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/ot4$a;",
        "Lcom/shabakaty/downloader/qe2;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ot4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ot4;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/ot4$c;->r:Lcom/shabakaty/downloader/ot4;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p1

    check-cast v0, Lcom/shabakaty/downloader/ot4$a;

    move-object/from16 v1, p0

    .line 2
    iget-object v2, v1, Lcom/shabakaty/downloader/ot4$c;->r:Lcom/shabakaty/downloader/ot4;

    .line 3
    iget-object v3, v0, Lcom/shabakaty/downloader/ot4$a;->a:Lcom/shabakaty/downloader/kt4;

    .line 4
    iget-boolean v4, v0, Lcom/shabakaty/downloader/ot4$a;->b:Z

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/ot4$a;->c:Lcom/shabakaty/downloader/i82;

    .line 6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v12, Lcom/shabakaty/downloader/xz4;->v:Lcom/shabakaty/downloader/xz4;

    iget-object v13, v0, Lcom/shabakaty/downloader/i82;->d:Ljava/util/Set;

    if-eqz v13, :cond_0

    .line 8
    invoke-interface {v3}, Lcom/shabakaty/downloader/kt4;->a()Lcom/shabakaty/downloader/kt4;

    move-result-object v5

    invoke-interface {v13, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 9
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/ot4;->a(Lcom/shabakaty/downloader/i82;)Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    goto/16 :goto_6

    .line 10
    :cond_0
    invoke-interface {v3}, Lcom/shabakaty/downloader/g30;->x()Lcom/shabakaty/downloader/b74;

    move-result-object v5

    const-string v6, "typeParameter.defaultType"

    invoke-static {v5, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "<this>"

    .line 11
    invoke-static {v5, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v5, v5, v6, v13}, Lcom/shabakaty/downloader/hu4;->e(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/qe2;Ljava/util/Set;Ljava/util/Set;)V

    const/16 v5, 0xa

    .line 13
    invoke-static {v6, v5}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-static {v5}, Lcom/shabakaty/downloader/kf5;->i(I)I

    move-result v5

    const/16 v7, 0x10

    if-ge v5, v7, :cond_1

    const/16 v5, 0x10

    .line 14
    :cond_1
    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-direct {v14, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 15
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 16
    move-object v11, v5

    check-cast v11, Lcom/shabakaty/downloader/kt4;

    if-eqz v13, :cond_3

    .line 17
    invoke-interface {v13, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 18
    :cond_2
    invoke-static {v11, v0}, Lcom/shabakaty/downloader/s82;->a(Lcom/shabakaty/downloader/kt4;Lcom/shabakaty/downloader/i82;)Lcom/shabakaty/downloader/qt4;

    move-result-object v5

    move-object v1, v11

    goto :goto_4

    .line 19
    :cond_3
    :goto_1
    iget-object v10, v2, Lcom/shabakaty/downloader/ot4;->b:Lcom/shabakaty/downloader/ym3;

    if-eqz v4, :cond_4

    move-object v9, v0

    goto :goto_2

    .line 20
    :cond_4
    sget-object v5, Lcom/shabakaty/downloader/l82;->r:Lcom/shabakaty/downloader/l82;

    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/i82;->b(Lcom/shabakaty/downloader/l82;)Lcom/shabakaty/downloader/i82;

    move-result-object v5

    move-object v9, v5

    :goto_2
    const-string v5, "typeParameter"

    .line 21
    invoke-static {v3, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v5, v0, Lcom/shabakaty/downloader/i82;->d:Ljava/util/Set;

    if-eqz v5, :cond_5

    invoke-static {v5, v3}, Lcom/shabakaty/downloader/f24;->C(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    goto :goto_3

    :cond_5
    invoke-static {v3}, Lcom/shabakaty/downloader/nl6;->s(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    :goto_3
    move-object/from16 v16, v5

    const/16 v17, 0x0

    const/16 v18, 0x17

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, v0

    move-object/from16 v19, v9

    move-object/from16 v9, v16

    move-object/from16 v20, v10

    move-object/from16 v10, v17

    move-object v1, v11

    move/from16 v11, v18

    invoke-static/range {v5 .. v11}, Lcom/shabakaty/downloader/i82;->a(Lcom/shabakaty/downloader/i82;Lcom/shabakaty/downloader/du4;Lcom/shabakaty/downloader/l82;ZLjava/util/Set;Lcom/shabakaty/downloader/b74;I)Lcom/shabakaty/downloader/i82;

    move-result-object v5

    .line 23
    invoke-virtual {v2, v1, v4, v5}, Lcom/shabakaty/downloader/ot4;->b(Lcom/shabakaty/downloader/kt4;ZLcom/shabakaty/downloader/i82;)Lcom/shabakaty/downloader/qe2;

    move-result-object v5

    const-string v6, "getErasedUpperBound(it, \u2026Parameter(typeParameter))"

    invoke-static {v5, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v7, v19

    move-object/from16 v6, v20

    .line 24
    invoke-virtual {v6, v1, v7, v5}, Lcom/shabakaty/downloader/ym3;->g(Lcom/shabakaty/downloader/kt4;Lcom/shabakaty/downloader/i82;Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qt4;

    move-result-object v5

    .line 25
    :goto_4
    invoke-interface {v1}, Lcom/shabakaty/downloader/kt4;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object v1

    invoke-interface {v14, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p0

    goto :goto_0

    :cond_6
    const-string v1, "map"

    .line 26
    invoke-static {v14, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v1, Lcom/shabakaty/downloader/vs4;

    const/4 v4, 0x0

    invoke-direct {v1, v14, v4}, Lcom/shabakaty/downloader/vs4;-><init>(Ljava/util/Map;Z)V

    .line 28
    invoke-static {v1}, Lcom/shabakaty/downloader/wt4;->e(Lcom/shabakaty/downloader/tt4;)Lcom/shabakaty/downloader/wt4;

    move-result-object v1

    .line 29
    invoke-interface {v3}, Lcom/shabakaty/downloader/kt4;->getUpperBounds()Ljava/util/List;

    move-result-object v3

    const-string v4, "typeParameter.upperBounds"

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/shabakaty/downloader/m50;->Z(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/qe2;

    .line 30
    invoke-virtual {v3}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v4

    invoke-interface {v4}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v4

    instance-of v4, v4, Lcom/shabakaty/downloader/q20;

    if-eqz v4, :cond_7

    .line 31
    iget-object v0, v0, Lcom/shabakaty/downloader/i82;->d:Ljava/util/Set;

    .line 32
    invoke-static {v3, v1, v14, v12, v0}, Lcom/shabakaty/downloader/hu4;->l(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/wt4;Ljava/util/Map;Lcom/shabakaty/downloader/xz4;Ljava/util/Set;)Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    goto :goto_6

    .line 33
    :cond_7
    iget-object v4, v0, Lcom/shabakaty/downloader/i82;->d:Ljava/util/Set;

    if-nez v4, :cond_8

    .line 34
    invoke-static {v2}, Lcom/shabakaty/downloader/nl6;->s(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    .line 35
    :cond_8
    invoke-virtual {v3}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v3

    invoke-interface {v3}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v3

    const-string v5, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.TypeParameterDescriptor"

    invoke-static {v3, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Lcom/shabakaty/downloader/kt4;

    .line 36
    :goto_5
    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 37
    invoke-interface {v3}, Lcom/shabakaty/downloader/kt4;->getUpperBounds()Ljava/util/List;

    move-result-object v3

    const-string v6, "current.upperBounds"

    invoke-static {v3, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/shabakaty/downloader/m50;->Z(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/qe2;

    .line 38
    invoke-virtual {v3}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v6

    invoke-interface {v6}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v6

    instance-of v6, v6, Lcom/shabakaty/downloader/q20;

    if-eqz v6, :cond_9

    .line 39
    iget-object v0, v0, Lcom/shabakaty/downloader/i82;->d:Ljava/util/Set;

    .line 40
    invoke-static {v3, v1, v14, v12, v0}, Lcom/shabakaty/downloader/hu4;->l(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/wt4;Ljava/util/Map;Lcom/shabakaty/downloader/xz4;Ljava/util/Set;)Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    goto :goto_6

    .line 41
    :cond_9
    invoke-virtual {v3}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v3

    invoke-interface {v3}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v3

    invoke-static {v3, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Lcom/shabakaty/downloader/kt4;

    goto :goto_5

    .line 42
    :cond_a
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/ot4;->a(Lcom/shabakaty/downloader/i82;)Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    :goto_6
    return-object v0
.end method
