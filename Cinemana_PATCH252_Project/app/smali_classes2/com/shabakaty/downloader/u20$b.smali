.class public final Lcom/shabakaty/downloader/u20$b;
.super Lcom/shabakaty/downloader/af2;
.source "ClassDeserializer.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/u20;-><init>(Lcom/shabakaty/downloader/or0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/u20$a;",
        "Lcom/shabakaty/downloader/q20;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/u20;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/u20;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/u20$b;->r:Lcom/shabakaty/downloader/u20;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p1

    check-cast v0, Lcom/shabakaty/downloader/u20$a;

    const-string v1, "key"

    .line 2
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    .line 3
    iget-object v2, v1, Lcom/shabakaty/downloader/u20$b;->r:Lcom/shabakaty/downloader/u20;

    .line 4
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v3, v0, Lcom/shabakaty/downloader/u20$a;->a:Lcom/shabakaty/downloader/v20;

    .line 6
    iget-object v4, v2, Lcom/shabakaty/downloader/u20;->a:Lcom/shabakaty/downloader/or0;

    .line 7
    iget-object v4, v4, Lcom/shabakaty/downloader/or0;->k:Ljava/lang/Iterable;

    .line 8
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/s20;

    .line 9
    invoke-interface {v5, v3}, Lcom/shabakaty/downloader/s20;->b(Lcom/shabakaty/downloader/v20;)Lcom/shabakaty/downloader/q20;

    move-result-object v6

    if-nez v6, :cond_d

    goto :goto_0

    .line 10
    :cond_0
    sget-object v4, Lcom/shabakaty/downloader/u20;->d:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_6

    .line 11
    :cond_1
    iget-object v0, v0, Lcom/shabakaty/downloader/u20$a;->b:Lcom/shabakaty/downloader/n20;

    if-nez v0, :cond_2

    .line 12
    iget-object v0, v2, Lcom/shabakaty/downloader/u20;->a:Lcom/shabakaty/downloader/or0;

    .line 13
    iget-object v0, v0, Lcom/shabakaty/downloader/or0;->d:Lcom/shabakaty/downloader/o20;

    .line 14
    invoke-interface {v0, v3}, Lcom/shabakaty/downloader/o20;->a(Lcom/shabakaty/downloader/v20;)Lcom/shabakaty/downloader/n20;

    move-result-object v0

    if-nez v0, :cond_2

    goto/16 :goto_6

    .line 15
    :cond_2
    iget-object v4, v0, Lcom/shabakaty/downloader/n20;->a:Lcom/shabakaty/downloader/jw2;

    .line 16
    iget-object v5, v0, Lcom/shabakaty/downloader/n20;->b:Lcom/shabakaty/downloader/ji3;

    .line 17
    iget-object v14, v0, Lcom/shabakaty/downloader/n20;->c:Lcom/shabakaty/downloader/gm;

    .line 18
    iget-object v0, v0, Lcom/shabakaty/downloader/n20;->d:Lcom/shabakaty/downloader/s94;

    .line 19
    invoke-virtual {v3}, Lcom/shabakaty/downloader/v20;->g()Lcom/shabakaty/downloader/v20;

    move-result-object v7

    const-string v8, "name"

    const-string v9, "classId.shortClassName"

    if-eqz v7, :cond_6

    const/4 v10, 0x2

    .line 20
    invoke-static {v2, v7, v6, v10}, Lcom/shabakaty/downloader/u20;->a(Lcom/shabakaty/downloader/u20;Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/n20;I)Lcom/shabakaty/downloader/q20;

    move-result-object v2

    instance-of v7, v2, Lcom/shabakaty/downloader/xr0;

    if-eqz v7, :cond_3

    check-cast v2, Lcom/shabakaty/downloader/xr0;

    goto :goto_1

    :cond_3
    move-object v2, v6

    :goto_1
    if-nez v2, :cond_4

    goto/16 :goto_6

    .line 21
    :cond_4
    invoke-virtual {v3}, Lcom/shabakaty/downloader/v20;->j()Lcom/shabakaty/downloader/hw2;

    move-result-object v3

    invoke-static {v3, v9}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-static {v3, v8}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v2}, Lcom/shabakaty/downloader/xr0;->T0()Lcom/shabakaty/downloader/xr0$a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/shabakaty/downloader/ds0;->m()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_6

    .line 24
    :cond_5
    iget-object v2, v2, Lcom/shabakaty/downloader/xr0;->C:Lcom/shabakaty/downloader/rr0;

    goto/16 :goto_7

    .line 25
    :cond_6
    iget-object v7, v2, Lcom/shabakaty/downloader/u20;->a:Lcom/shabakaty/downloader/or0;

    .line 26
    iget-object v7, v7, Lcom/shabakaty/downloader/or0;->f:Lcom/shabakaty/downloader/m93;

    .line 27
    invoke-virtual {v3}, Lcom/shabakaty/downloader/v20;->h()Lcom/shabakaty/downloader/fi1;

    move-result-object v10

    const-string v11, "classId.packageFqName"

    invoke-static {v10, v11}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v10}, Lcom/shabakaty/downloader/md0;->G(Lcom/shabakaty/downloader/m93;Lcom/shabakaty/downloader/fi1;)Ljava/util/List;

    move-result-object v7

    .line 28
    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lcom/shabakaty/downloader/k93;

    .line 29
    instance-of v12, v11, Lcom/shabakaty/downloader/es0;

    const/4 v13, 0x1

    const/4 v15, 0x0

    if-eqz v12, :cond_9

    check-cast v11, Lcom/shabakaty/downloader/es0;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/v20;->j()Lcom/shabakaty/downloader/hw2;

    move-result-object v12

    invoke-static {v12, v9}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-static {v12, v8}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    check-cast v11, Lcom/shabakaty/downloader/fs0;

    invoke-virtual {v11}, Lcom/shabakaty/downloader/fs0;->s()Lcom/shabakaty/downloader/mr2;

    move-result-object v11

    .line 32
    instance-of v6, v11, Lcom/shabakaty/downloader/ds0;

    if-eqz v6, :cond_7

    check-cast v11, Lcom/shabakaty/downloader/ds0;

    invoke-virtual {v11}, Lcom/shabakaty/downloader/ds0;->m()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, 0x1

    goto :goto_3

    :cond_7
    const/4 v6, 0x0

    :goto_3
    if-eqz v6, :cond_8

    goto :goto_4

    :cond_8
    const/4 v13, 0x0

    :cond_9
    :goto_4
    if-eqz v13, :cond_a

    goto :goto_5

    :cond_a
    const/4 v6, 0x0

    goto :goto_2

    :cond_b
    const/4 v10, 0x0

    .line 33
    :goto_5
    move-object v8, v10

    check-cast v8, Lcom/shabakaty/downloader/k93;

    if-nez v8, :cond_c

    :goto_6
    const/4 v6, 0x0

    goto :goto_8

    .line 34
    :cond_c
    iget-object v7, v2, Lcom/shabakaty/downloader/u20;->a:Lcom/shabakaty/downloader/or0;

    .line 35
    new-instance v10, Lcom/shabakaty/downloader/bu4;

    .line 36
    iget-object v2, v5, Lcom/shabakaty/downloader/ji3;->N:Lcom/shabakaty/downloader/bj3;

    const-string v3, "classProto.typeTable"

    .line 37
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10, v2}, Lcom/shabakaty/downloader/bu4;-><init>(Lcom/shabakaty/downloader/bj3;)V

    .line 38
    sget-object v2, Lcom/shabakaty/downloader/f05;->b:Lcom/shabakaty/downloader/f05$a;

    .line 39
    iget-object v3, v5, Lcom/shabakaty/downloader/ji3;->P:Lcom/shabakaty/downloader/ej3;

    const-string v6, "classProto.versionRequirementTable"

    .line 40
    invoke-static {v3, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/f05$a;->a(Lcom/shabakaty/downloader/ej3;)Lcom/shabakaty/downloader/f05;

    move-result-object v11

    const/4 v13, 0x0

    move-object v9, v4

    move-object v12, v14

    .line 41
    invoke-virtual/range {v7 .. v13}, Lcom/shabakaty/downloader/or0;->a(Lcom/shabakaty/downloader/k93;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;Lcom/shabakaty/downloader/f05;Lcom/shabakaty/downloader/gm;Lcom/shabakaty/downloader/as0;)Lcom/shabakaty/downloader/rr0;

    move-result-object v2

    :goto_7
    move-object v8, v2

    .line 42
    new-instance v6, Lcom/shabakaty/downloader/xr0;

    move-object v7, v6

    move-object v9, v5

    move-object v10, v4

    move-object v11, v14

    move-object v12, v0

    invoke-direct/range {v7 .. v12}, Lcom/shabakaty/downloader/xr0;-><init>(Lcom/shabakaty/downloader/rr0;Lcom/shabakaty/downloader/ji3;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/gm;Lcom/shabakaty/downloader/s94;)V

    :cond_d
    :goto_8
    return-object v6
.end method
