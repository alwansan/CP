.class public Landroidx/fragment/app/c;
.super Landroidx/fragment/app/z;
.source "DefaultSpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/c$d;,
        Landroidx/fragment/app/c$b;,
        Landroidx/fragment/app/c$c;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/fragment/app/z;-><init>(Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/util/List;Z)V
    .locals 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/fragment/app/z$d;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v6, p2

    .line 1
    sget-object v8, Landroidx/fragment/app/z$d$c;->t:Landroidx/fragment/app/z$d$c;

    sget-object v9, Landroidx/fragment/app/z$d$c;->s:Landroidx/fragment/app/z$d$c;

    .line 2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v10, v1

    move-object v11, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/z$d;

    .line 3
    iget-object v4, v1, Landroidx/fragment/app/z$d;->c:Landroidx/fragment/app/Fragment;

    .line 4
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v4}, Landroidx/fragment/app/z$d$c;->j(Landroid/view/View;)Landroidx/fragment/app/z$d$c;

    move-result-object v4

    .line 5
    iget-object v5, v1, Landroidx/fragment/app/z$d;->a:Landroidx/fragment/app/z$d$c;

    .line 6
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-eqz v5, :cond_2

    if-eq v5, v3, :cond_1

    if-eq v5, v2, :cond_2

    const/4 v2, 0x3

    if-eq v5, v2, :cond_2

    goto :goto_0

    :cond_1
    if-eq v4, v9, :cond_0

    move-object v11, v1

    goto :goto_0

    :cond_2
    if-ne v4, v9, :cond_0

    if-nez v10, :cond_0

    move-object v10, v1

    goto :goto_0

    .line 7
    :cond_3
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/z$d;

    .line 11
    new-instance v2, Lcom/shabakaty/downloader/iv;

    invoke-direct {v2}, Lcom/shabakaty/downloader/iv;-><init>()V

    .line 12
    invoke-virtual {v1}, Landroidx/fragment/app/z$d;->d()V

    .line 13
    iget-object v3, v1, Landroidx/fragment/app/z$d;->e:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v3, Landroidx/fragment/app/c$b;

    invoke-direct {v3, v1, v2, v6}, Landroidx/fragment/app/c$b;-><init>(Landroidx/fragment/app/z$d;Lcom/shabakaty/downloader/iv;Z)V

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v2, Lcom/shabakaty/downloader/iv;

    invoke-direct {v2}, Lcom/shabakaty/downloader/iv;-><init>()V

    .line 16
    invoke-virtual {v1}, Landroidx/fragment/app/z$d;->d()V

    .line 17
    iget-object v3, v1, Landroidx/fragment/app/z$d;->e:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v3, Landroidx/fragment/app/c$d;

    if-eqz v6, :cond_4

    if-ne v1, v10, :cond_5

    goto :goto_2

    :cond_4
    if-ne v1, v11, :cond_5

    :goto_2
    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    .line 19
    :goto_3
    invoke-direct {v3, v1, v2, v6, v4}, Landroidx/fragment/app/c$d;-><init>(Landroidx/fragment/app/z$d;Lcom/shabakaty/downloader/iv;ZZ)V

    .line 20
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance v2, Landroidx/fragment/app/c$a;

    invoke-direct {v2, v7, v14, v1}, Landroidx/fragment/app/c$a;-><init>(Landroidx/fragment/app/c;Ljava/util/List;Landroidx/fragment/app/z$d;)V

    .line 22
    iget-object v1, v1, Landroidx/fragment/app/z$d;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 23
    :cond_6
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 24
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v5, v1

    :cond_7
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/c$d;

    .line 25
    invoke-virtual {v1}, Landroidx/fragment/app/c$c;->b()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_4

    .line 26
    :cond_8
    iget-object v2, v1, Landroidx/fragment/app/c$d;->c:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/c$d;->c(Ljava/lang/Object;)Lcom/shabakaty/downloader/bl1;

    move-result-object v2

    .line 27
    iget-object v3, v1, Landroidx/fragment/app/c$d;->e:Ljava/lang/Object;

    .line 28
    invoke-virtual {v1, v3}, Landroidx/fragment/app/c$d;->c(Ljava/lang/Object;)Lcom/shabakaty/downloader/bl1;

    move-result-object v3

    const-string v4, " returned Transition "

    const-string v16, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    if-eqz v2, :cond_a

    if-eqz v3, :cond_a

    if-ne v2, v3, :cond_9

    goto :goto_5

    .line 29
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static/range {v16 .. v16}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 30
    iget-object v3, v1, Landroidx/fragment/app/c$c;->a:Landroidx/fragment/app/z$d;

    .line 31
    iget-object v3, v3, Landroidx/fragment/app/z$d;->c:Landroidx/fragment/app/Fragment;

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroidx/fragment/app/c$d;->c:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " which uses a different Transition  type than its shared element transition "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroidx/fragment/app/c$d;->e:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_5
    if-eqz v2, :cond_b

    goto :goto_6

    :cond_b
    move-object v2, v3

    :goto_6
    if-nez v5, :cond_c

    move-object v5, v2

    goto :goto_4

    :cond_c
    if-eqz v2, :cond_7

    if-ne v5, v2, :cond_d

    goto :goto_4

    .line 33
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static/range {v16 .. v16}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 34
    iget-object v3, v1, Landroidx/fragment/app/c$c;->a:Landroidx/fragment/app/z$d;

    .line 35
    iget-object v3, v3, Landroidx/fragment/app/z$d;->c:Landroidx/fragment/app/Fragment;

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-object v1, v1, Landroidx/fragment/app/c$d;->c:Ljava/lang/Object;

    .line 38
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " which uses a different Transition  type than other Fragments."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const-string v4, "FragmentManager"

    if-nez v5, :cond_10

    .line 39
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/c$d;

    .line 40
    iget-object v2, v1, Landroidx/fragment/app/c$c;->a:Landroidx/fragment/app/z$d;

    .line 41
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v15, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-virtual {v1}, Landroidx/fragment/app/c$c;->a()V

    goto :goto_7

    :cond_f
    move-object v10, v8

    move-object/from16 v24, v12

    move-object/from16 v29, v14

    move-object v8, v15

    move-object v12, v4

    goto/16 :goto_1d

    .line 43
    :cond_10
    new-instance v3, Landroid/view/View;

    .line 44
    iget-object v0, v7, Landroidx/fragment/app/z;->a:Landroid/view/ViewGroup;

    .line 45
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v24, v12

    .line 49
    new-instance v12, Lcom/shabakaty/downloader/ad;

    invoke-direct {v12}, Lcom/shabakaty/downloader/ad;-><init>()V

    .line 50
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 p1, v2

    move-object/from16 v2, v16

    move-object/from16 v26, v17

    const/16 v27, 0x0

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object v3, v10

    move-object v4, v11

    :goto_8
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1a

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v28, v9

    move-object/from16 v9, v18

    check-cast v9, Landroidx/fragment/app/c$d;

    .line 51
    iget-object v9, v9, Landroidx/fragment/app/c$d;->e:Ljava/lang/Object;

    if-eqz v9, :cond_11

    const/16 v18, 0x1

    goto :goto_9

    :cond_11
    const/16 v18, 0x0

    :goto_9
    if-eqz v18, :cond_19

    if-eqz v3, :cond_19

    if-eqz v4, :cond_19

    .line 52
    invoke-virtual {v5, v9}, Lcom/shabakaty/downloader/bl1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 53
    invoke-virtual {v5, v2}, Lcom/shabakaty/downloader/bl1;->y(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 54
    iget-object v2, v4, Landroidx/fragment/app/z$d;->c:Landroidx/fragment/app/Fragment;

    .line 55
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v18, v5

    .line 56
    iget-object v5, v3, Landroidx/fragment/app/z$d;->c:Landroidx/fragment/app/Fragment;

    .line 57
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v29, v14

    .line 58
    iget-object v14, v3, Landroidx/fragment/app/z$d;->c:Landroidx/fragment/app/Fragment;

    .line 59
    invoke-virtual {v14}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    move-result-object v14

    const/16 v19, 0x0

    move-object/from16 v30, v8

    move-object/from16 v31, v13

    const/4 v8, 0x0

    .line 60
    :goto_a
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v8, v13, :cond_13

    .line 61
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    move-object/from16 v19, v14

    const/4 v14, -0x1

    if-eq v13, v14, :cond_12

    .line 62
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_12
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v14, v19

    goto :goto_a

    .line 63
    :cond_13
    iget-object v5, v4, Landroidx/fragment/app/z$d;->c:Landroidx/fragment/app/Fragment;

    .line 64
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    move-result-object v8

    if-nez v6, :cond_14

    .line 65
    iget-object v5, v3, Landroidx/fragment/app/z$d;->c:Landroidx/fragment/app/Fragment;

    .line 66
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Lcom/shabakaty/downloader/y44;

    .line 67
    iget-object v5, v4, Landroidx/fragment/app/z$d;->c:Landroidx/fragment/app/Fragment;

    .line 68
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Lcom/shabakaty/downloader/y44;

    goto :goto_b

    .line 69
    :cond_14
    iget-object v5, v3, Landroidx/fragment/app/z$d;->c:Landroidx/fragment/app/Fragment;

    .line 70
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Lcom/shabakaty/downloader/y44;

    .line 71
    iget-object v5, v4, Landroidx/fragment/app/z$d;->c:Landroidx/fragment/app/Fragment;

    .line 72
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Lcom/shabakaty/downloader/y44;

    .line 73
    :goto_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v13, 0x0

    :goto_c
    if-ge v13, v5, :cond_15

    .line 74
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 75
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move/from16 v20, v5

    move-object/from16 v5, v19

    check-cast v5, Ljava/lang/String;

    .line 76
    invoke-virtual {v12, v14, v5}, Lcom/shabakaty/downloader/m64;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v13, v13, 0x1

    move/from16 v5, v20

    goto :goto_c

    .line 77
    :cond_15
    new-instance v13, Lcom/shabakaty/downloader/ad;

    invoke-direct {v13}, Lcom/shabakaty/downloader/ad;-><init>()V

    .line 78
    iget-object v5, v3, Landroidx/fragment/app/z$d;->c:Landroidx/fragment/app/Fragment;

    .line 79
    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v7, v13, v5}, Landroidx/fragment/app/c;->k(Ljava/util/Map;Landroid/view/View;)V

    .line 80
    invoke-static {v13, v2}, Lcom/shabakaty/downloader/gm2;->k(Ljava/util/Map;Ljava/util/Collection;)Z

    .line 81
    invoke-virtual {v13}, Lcom/shabakaty/downloader/ad;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 82
    invoke-static {v12, v5}, Lcom/shabakaty/downloader/gm2;->k(Ljava/util/Map;Ljava/util/Collection;)Z

    .line 83
    new-instance v14, Lcom/shabakaty/downloader/ad;

    invoke-direct {v14}, Lcom/shabakaty/downloader/ad;-><init>()V

    .line 84
    iget-object v5, v4, Landroidx/fragment/app/z$d;->c:Landroidx/fragment/app/Fragment;

    .line 85
    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v7, v14, v5}, Landroidx/fragment/app/c;->k(Ljava/util/Map;Landroid/view/View;)V

    .line 86
    invoke-static {v14, v8}, Lcom/shabakaty/downloader/gm2;->k(Ljava/util/Map;Ljava/util/Collection;)Z

    .line 87
    invoke-virtual {v12}, Lcom/shabakaty/downloader/ad;->values()Ljava/util/Collection;

    move-result-object v5

    .line 88
    invoke-static {v14, v5}, Lcom/shabakaty/downloader/gm2;->k(Ljava/util/Map;Ljava/util/Collection;)Z

    .line 89
    invoke-static {v12, v14}, Landroidx/fragment/app/y;->n(Lcom/shabakaty/downloader/ad;Lcom/shabakaty/downloader/ad;)V

    .line 90
    invoke-virtual {v12}, Lcom/shabakaty/downloader/ad;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v7, v13, v5}, Landroidx/fragment/app/c;->l(Lcom/shabakaty/downloader/ad;Ljava/util/Collection;)V

    .line 91
    invoke-virtual {v12}, Lcom/shabakaty/downloader/ad;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v7, v14, v5}, Landroidx/fragment/app/c;->l(Lcom/shabakaty/downloader/ad;Ljava/util/Collection;)V

    .line 92
    invoke-virtual {v12}, Lcom/shabakaty/downloader/m64;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 93
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 94
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    move-object/from16 v5, p1

    move-object v6, v1

    move-object/from16 v32, v12

    move-object v8, v15

    move-object/from16 v35, v17

    move-object v15, v0

    move-object v12, v11

    move-object/from16 v0, v16

    move-object/from16 v11, v18

    goto/16 :goto_f

    .line 95
    :cond_16
    iget-object v4, v4, Landroidx/fragment/app/z$d;->c:Landroidx/fragment/app/Fragment;

    iget-object v3, v3, Landroidx/fragment/app/z$d;->c:Landroidx/fragment/app/Fragment;

    const/4 v5, 0x1

    .line 96
    invoke-static {v4, v3, v6, v13, v5}, Landroidx/fragment/app/y;->c(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLcom/shabakaty/downloader/ad;Z)V

    .line 97
    iget-object v5, v7, Landroidx/fragment/app/z;->a:Landroid/view/ViewGroup;

    .line 98
    new-instance v4, Landroidx/fragment/app/g;

    move-object v3, v0

    move-object v0, v4

    move-object v6, v1

    move-object/from16 v1, p0

    move-object/from16 v32, v12

    move-object/from16 v12, p1

    move-object/from16 p1, v2

    move-object v2, v11

    move-object/from16 v33, v11

    move-object/from16 v34, v15

    move-object/from16 v11, v16

    move-object v15, v3

    move-object v3, v10

    move-object/from16 v36, v10

    move-object/from16 v35, v17

    move-object v10, v4

    move/from16 v4, p2

    move-object/from16 v37, v11

    move-object/from16 v38, v12

    move-object/from16 v11, v18

    move-object v12, v5

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/g;-><init>(Landroidx/fragment/app/c;Landroidx/fragment/app/z$d;Landroidx/fragment/app/z$d;ZLcom/shabakaty/downloader/ad;)V

    invoke-static {v12, v10}, Lcom/shabakaty/downloader/h73;->a(Landroid/view/View;Ljava/lang/Runnable;)Lcom/shabakaty/downloader/h73;

    .line 99
    invoke-virtual {v13}, Lcom/shabakaty/downloader/ad;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 100
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x0

    move-object/from16 v1, p1

    .line 101
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 102
    invoke-virtual {v13, v1}, Lcom/shabakaty/downloader/m64;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 103
    invoke-virtual {v11, v9, v1}, Lcom/shabakaty/downloader/bl1;->t(Ljava/lang/Object;Landroid/view/View;)V

    move-object/from16 v26, v1

    goto :goto_d

    :cond_17
    const/4 v0, 0x0

    .line 104
    :goto_d
    invoke-virtual {v14}, Lcom/shabakaty/downloader/ad;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 105
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    .line 106
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 107
    invoke-virtual {v14, v0}, Lcom/shabakaty/downloader/m64;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_18

    .line 108
    iget-object v1, v7, Landroidx/fragment/app/z;->a:Landroid/view/ViewGroup;

    .line 109
    new-instance v2, Landroidx/fragment/app/h;

    move-object/from16 v5, v38

    invoke-direct {v2, v7, v11, v0, v5}, Landroidx/fragment/app/h;-><init>(Landroidx/fragment/app/c;Lcom/shabakaty/downloader/bl1;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/h73;->a(Landroid/view/View;Ljava/lang/Runnable;)Lcom/shabakaty/downloader/h73;

    const/4 v0, 0x1

    move-object/from16 v0, v37

    const/16 v27, 0x1

    goto :goto_e

    :cond_18
    move-object/from16 v5, v38

    move-object/from16 v0, v37

    .line 110
    :goto_e
    invoke-virtual {v11, v9, v0, v6}, Lcom/shabakaty/downloader/bl1;->w(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v11

    move-object/from16 v17, v9

    move-object/from16 v22, v9

    move-object/from16 v23, v15

    .line 111
    invoke-virtual/range {v16 .. v23}, Lcom/shabakaty/downloader/bl1;->r(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 112
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v8, v34

    move-object/from16 v10, v36

    invoke-virtual {v8, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v12, v33

    .line 113
    invoke-virtual {v8, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v9

    move-object v3, v10

    move-object v4, v12

    goto :goto_f

    :cond_19
    move-object v6, v1

    move-object/from16 v30, v8

    move-object/from16 v32, v12

    move-object/from16 v31, v13

    move-object/from16 v29, v14

    move-object v8, v15

    move-object/from16 v35, v17

    move-object v15, v0

    move-object v12, v11

    move-object/from16 v0, v16

    move-object v11, v5

    move-object/from16 v5, p1

    :goto_f
    move-object/from16 v16, v0

    move-object/from16 p1, v5

    move-object v1, v6

    move-object v5, v11

    move-object v11, v12

    move-object v0, v15

    move-object/from16 v9, v28

    move-object/from16 v14, v29

    move-object/from16 v13, v31

    move-object/from16 v12, v32

    move-object/from16 v17, v35

    move/from16 v6, p2

    move-object v15, v8

    move-object/from16 v8, v30

    goto/16 :goto_8

    :cond_1a
    move-object v6, v1

    move-object/from16 v30, v8

    move-object/from16 v28, v9

    move-object/from16 v32, v12

    move-object/from16 v31, v13

    move-object/from16 v29, v14

    move-object v8, v15

    move-object/from16 v35, v17

    move-object v15, v0

    move-object v12, v11

    move-object/from16 v0, v16

    move-object v11, v5

    move-object/from16 v5, p1

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 115
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v13, 0x0

    :goto_10
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_27

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/fragment/app/c$d;

    .line 116
    invoke-virtual {v14}, Landroidx/fragment/app/c$c;->b()Z

    move-result v16

    if-eqz v16, :cond_1b

    move-object/from16 p1, v9

    .line 117
    iget-object v9, v14, Landroidx/fragment/app/c$c;->a:Landroidx/fragment/app/z$d;

    move-object/from16 v33, v12

    .line 118
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v8, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-virtual {v14}, Landroidx/fragment/app/c$c;->a()V

    move-object/from16 v16, v0

    move-object/from16 v25, v2

    move-object v2, v4

    move-object v9, v10

    move-object/from16 v0, v26

    move-object/from16 v4, v28

    move-object/from16 v10, v30

    goto/16 :goto_16

    :cond_1b
    move-object/from16 p1, v9

    move-object/from16 v33, v12

    .line 120
    iget-object v9, v14, Landroidx/fragment/app/c$d;->c:Ljava/lang/Object;

    .line 121
    invoke-virtual {v11, v9}, Lcom/shabakaty/downloader/bl1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 122
    iget-object v12, v14, Landroidx/fragment/app/c$c;->a:Landroidx/fragment/app/z$d;

    if-eqz v2, :cond_1d

    if-eq v12, v3, :cond_1c

    if-ne v12, v4, :cond_1d

    :cond_1c
    const/4 v4, 0x1

    goto :goto_11

    :cond_1d
    const/4 v4, 0x0

    :goto_11
    if-nez v9, :cond_1f

    if-nez v4, :cond_1e

    .line 123
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v8, v12, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-virtual {v14}, Landroidx/fragment/app/c$c;->a()V

    :cond_1e
    move-object/from16 v16, v0

    move-object/from16 v25, v2

    move-object v2, v10

    move-object/from16 v0, v26

    move-object/from16 v4, v28

    move-object/from16 v10, v30

    goto/16 :goto_15

    :cond_1f
    move-object/from16 v25, v2

    .line 125
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v34, v10

    .line 126
    iget-object v10, v12, Landroidx/fragment/app/z$d;->c:Landroidx/fragment/app/Fragment;

    .line 127
    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 128
    invoke-virtual {v7, v2, v10}, Landroidx/fragment/app/c;->j(Ljava/util/ArrayList;Landroid/view/View;)V

    if-eqz v4, :cond_21

    if-ne v12, v3, :cond_20

    .line 129
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_12

    .line 130
    :cond_20
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 131
    :cond_21
    :goto_12
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 132
    invoke-virtual {v11, v9, v0}, Lcom/shabakaty/downloader/bl1;->a(Ljava/lang/Object;Landroid/view/View;)V

    move-object/from16 v16, v0

    move-object/from16 v10, v30

    goto :goto_13

    .line 133
    :cond_22
    invoke-virtual {v11, v9, v2}, Lcom/shabakaty/downloader/bl1;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, v11

    move-object/from16 v17, v9

    move-object/from16 v18, v9

    move-object/from16 v19, v2

    .line 134
    invoke-virtual/range {v16 .. v23}, Lcom/shabakaty/downloader/bl1;->r(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 135
    iget-object v4, v12, Landroidx/fragment/app/z$d;->a:Landroidx/fragment/app/z$d$c;

    move-object/from16 v10, v30

    if-ne v4, v10, :cond_23

    move-object/from16 v4, v29

    .line 136
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v16, v0

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 138
    iget-object v4, v12, Landroidx/fragment/app/z$d;->c:Landroidx/fragment/app/Fragment;

    .line 139
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 140
    iget-object v4, v12, Landroidx/fragment/app/z$d;->c:Landroidx/fragment/app/Fragment;

    .line 141
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 142
    invoke-virtual {v11, v9, v4, v0}, Lcom/shabakaty/downloader/bl1;->q(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 143
    iget-object v0, v7, Landroidx/fragment/app/z;->a:Landroid/view/ViewGroup;

    .line 144
    new-instance v4, Landroidx/fragment/app/i;

    invoke-direct {v4, v7, v2}, Landroidx/fragment/app/i;-><init>(Landroidx/fragment/app/c;Ljava/util/ArrayList;)V

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/h73;->a(Landroid/view/View;Ljava/lang/Runnable;)Lcom/shabakaty/downloader/h73;

    goto :goto_13

    :cond_23
    move-object/from16 v16, v0

    .line 145
    :goto_13
    iget-object v0, v12, Landroidx/fragment/app/z$d;->a:Landroidx/fragment/app/z$d$c;

    move-object/from16 v4, v28

    if-ne v0, v4, :cond_25

    .line 146
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz v27, :cond_24

    .line 147
    invoke-virtual {v11, v9, v5}, Lcom/shabakaty/downloader/bl1;->s(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_24
    move-object/from16 v0, v26

    goto :goto_14

    :cond_25
    move-object/from16 v0, v26

    .line 148
    invoke-virtual {v11, v9, v0}, Lcom/shabakaty/downloader/bl1;->t(Ljava/lang/Object;Landroid/view/View;)V

    .line 149
    :goto_14
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-boolean v2, v14, Landroidx/fragment/app/c$d;->d:Z

    if-eqz v2, :cond_26

    const/4 v2, 0x0

    .line 151
    invoke-virtual {v11, v13, v9, v2}, Lcom/shabakaty/downloader/bl1;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v2, v34

    goto :goto_15

    :cond_26
    const/4 v2, 0x0

    move-object/from16 v12, v34

    .line 152
    invoke-virtual {v11, v12, v9, v2}, Lcom/shabakaty/downloader/bl1;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_15
    move-object v9, v2

    move-object/from16 v2, v33

    :goto_16
    move-object/from16 v26, v0

    move-object/from16 v28, v4

    move-object/from16 v30, v10

    move-object/from16 v0, v16

    move-object/from16 v12, v33

    move-object v4, v2

    move-object v10, v9

    move-object/from16 v2, v25

    move-object/from16 v9, p1

    goto/16 :goto_10

    :cond_27
    move-object/from16 v33, v12

    move-object v12, v10

    move-object/from16 v10, v30

    .line 153
    invoke-virtual {v11, v13, v12, v2}, Lcom/shabakaty/downloader/bl1;->l(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 154
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/c$d;

    .line 155
    invoke-virtual {v5}, Landroidx/fragment/app/c$c;->b()Z

    move-result v9

    if-eqz v9, :cond_28

    goto :goto_17

    .line 156
    :cond_28
    iget-object v9, v5, Landroidx/fragment/app/c$d;->c:Ljava/lang/Object;

    .line 157
    iget-object v12, v5, Landroidx/fragment/app/c$c;->a:Landroidx/fragment/app/z$d;

    move-object/from16 v13, v33

    if-eqz v2, :cond_2a

    if-eq v12, v3, :cond_29

    if-ne v12, v13, :cond_2a

    :cond_29
    const/4 v14, 0x1

    goto :goto_18

    :cond_2a
    const/4 v14, 0x0

    :goto_18
    if-nez v9, :cond_2c

    if-eqz v14, :cond_2b

    goto :goto_19

    :cond_2b
    move-object/from16 v12, v35

    goto :goto_1b

    .line 158
    :cond_2c
    :goto_19
    iget-object v9, v7, Landroidx/fragment/app/z;->a:Landroid/view/ViewGroup;

    .line 159
    sget-object v14, Lcom/shabakaty/downloader/c35;->a:Ljava/util/WeakHashMap;

    .line 160
    invoke-virtual {v9}, Landroid/view/View;->isLaidOut()Z

    move-result v9

    if-nez v9, :cond_2e

    const/4 v9, 0x2

    .line 161
    invoke-static {v9}, Landroidx/fragment/app/q;->P(I)Z

    move-result v9

    if-eqz v9, :cond_2d

    const-string v9, "SpecialEffectsController: Container "

    .line 162
    invoke-static {v9}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 163
    iget-object v14, v7, Landroidx/fragment/app/z;->a:Landroid/view/ViewGroup;

    .line 164
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " has not been laid out. Completing operation "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v12, v35

    .line 165
    invoke-static {v12, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    :cond_2d
    move-object/from16 v12, v35

    .line 166
    :goto_1a
    invoke-virtual {v5}, Landroidx/fragment/app/c$c;->a()V

    :goto_1b
    move-object/from16 v35, v12

    goto :goto_1c

    :cond_2e
    move-object/from16 v12, v35

    .line 167
    iget-object v9, v5, Landroidx/fragment/app/c$c;->a:Landroidx/fragment/app/z$d;

    .line 168
    iget-object v9, v9, Landroidx/fragment/app/z$d;->c:Landroidx/fragment/app/Fragment;

    .line 169
    iget-object v14, v5, Landroidx/fragment/app/c$c;->b:Lcom/shabakaty/downloader/iv;

    move-object/from16 p1, v3

    .line 170
    new-instance v3, Landroidx/fragment/app/j;

    invoke-direct {v3, v7, v5}, Landroidx/fragment/app/j;-><init>(Landroidx/fragment/app/c;Landroidx/fragment/app/c$d;)V

    .line 171
    invoke-virtual {v11, v9, v0, v14, v3}, Lcom/shabakaty/downloader/bl1;->u(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Lcom/shabakaty/downloader/iv;Ljava/lang/Runnable;)V

    move-object/from16 v3, p1

    :goto_1c
    move-object/from16 v33, v13

    goto :goto_17

    :cond_2f
    move-object/from16 v12, v35

    .line 172
    iget-object v3, v7, Landroidx/fragment/app/z;->a:Landroid/view/ViewGroup;

    .line 173
    sget-object v4, Lcom/shabakaty/downloader/c35;->a:Ljava/util/WeakHashMap;

    .line 174
    invoke-virtual {v3}, Landroid/view/View;->isLaidOut()Z

    move-result v3

    if-nez v3, :cond_30

    goto :goto_1d

    :cond_30
    const/4 v3, 0x4

    .line 175
    invoke-static {v1, v3}, Landroidx/fragment/app/y;->p(Ljava/util/ArrayList;I)V

    .line 176
    invoke-virtual {v11, v15}, Lcom/shabakaty/downloader/bl1;->n(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v20

    .line 177
    iget-object v3, v7, Landroidx/fragment/app/z;->a:Landroid/view/ViewGroup;

    .line 178
    invoke-virtual {v11, v3, v0}, Lcom/shabakaty/downloader/bl1;->c(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 179
    iget-object v0, v7, Landroidx/fragment/app/z;->a:Landroid/view/ViewGroup;

    move-object/from16 v16, v11

    move-object/from16 v17, v0

    move-object/from16 v18, v6

    move-object/from16 v19, v15

    move-object/from16 v21, v32

    .line 180
    invoke-virtual/range {v16 .. v21}, Lcom/shabakaty/downloader/bl1;->v(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    const/4 v0, 0x0

    .line 181
    invoke-static {v1, v0}, Landroidx/fragment/app/y;->p(Ljava/util/ArrayList;I)V

    .line 182
    invoke-virtual {v11, v2, v6, v15}, Lcom/shabakaty/downloader/bl1;->x(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 183
    :goto_1d
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v9

    .line 184
    iget-object v11, v7, Landroidx/fragment/app/z;->a:Landroid/view/ViewGroup;

    .line 185
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 186
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 187
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/4 v0, 0x0

    :goto_1e
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/fragment/app/c$b;

    .line 188
    invoke-virtual {v6}, Landroidx/fragment/app/c$c;->b()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 189
    invoke-virtual {v6}, Landroidx/fragment/app/c$c;->a()V

    goto :goto_1e

    .line 190
    :cond_31
    invoke-virtual {v6, v13}, Landroidx/fragment/app/c$b;->c(Landroid/content/Context;)Landroidx/fragment/app/n$a;

    move-result-object v1

    if-nez v1, :cond_32

    .line 191
    invoke-virtual {v6}, Landroidx/fragment/app/c$c;->a()V

    goto :goto_1e

    .line 192
    :cond_32
    iget-object v5, v1, Landroidx/fragment/app/n$a;->b:Landroid/animation/Animator;

    if-nez v5, :cond_33

    .line 193
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 194
    :cond_33
    iget-object v4, v6, Landroidx/fragment/app/c$c;->a:Landroidx/fragment/app/z$d;

    .line 195
    iget-object v1, v4, Landroidx/fragment/app/z$d;->c:Landroidx/fragment/app/Fragment;

    .line 196
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    const/4 v2, 0x2

    .line 197
    invoke-static {v2}, Landroidx/fragment/app/q;->P(I)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring Animator set on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " as this Fragment was involved in a Transition."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_34
    invoke-virtual {v6}, Landroidx/fragment/app/c$c;->a()V

    goto :goto_1e

    .line 200
    :cond_35
    iget-object v0, v4, Landroidx/fragment/app/z$d;->a:Landroidx/fragment/app/z$d$c;

    if-ne v0, v10, :cond_36

    const/4 v0, 0x1

    const/16 v16, 0x1

    goto :goto_1f

    :cond_36
    const/4 v0, 0x0

    const/16 v16, 0x0

    :goto_1f
    move-object/from16 v3, v29

    if-eqz v16, :cond_37

    .line 201
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 202
    :cond_37
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 203
    invoke-virtual {v11, v2}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 204
    new-instance v1, Landroidx/fragment/app/d;

    move-object v0, v1

    move-object/from16 v34, v8

    move-object v8, v1

    move-object/from16 v1, p0

    move-object/from16 p1, v2

    move-object v2, v11

    move-object/from16 v17, v3

    move-object/from16 v3, p1

    move-object/from16 v18, v4

    move/from16 v4, v16

    move-object/from16 v30, v10

    move-object v10, v5

    move-object/from16 v5, v18

    move-object/from16 p2, v6

    invoke-direct/range {v0 .. v6}, Landroidx/fragment/app/d;-><init>(Landroidx/fragment/app/c;Landroid/view/ViewGroup;Landroid/view/View;ZLandroidx/fragment/app/z$d;Landroidx/fragment/app/c$b;)V

    invoke-virtual {v10, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p1

    .line 205
    invoke-virtual {v10, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 206
    invoke-virtual {v10}, Landroid/animation/Animator;->start()V

    move-object/from16 v1, p2

    .line 207
    iget-object v0, v1, Landroidx/fragment/app/c$c;->b:Lcom/shabakaty/downloader/iv;

    .line 208
    new-instance v1, Lcom/shabakaty/downloader/yo0;

    invoke-direct {v1, v7, v10}, Lcom/shabakaty/downloader/yo0;-><init>(Landroidx/fragment/app/c;Landroid/animation/Animator;)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/iv;->b(Lcom/shabakaty/downloader/iv$a;)V

    const/4 v0, 0x1

    move-object/from16 v29, v17

    move-object/from16 v10, v30

    move-object/from16 v8, v34

    goto/16 :goto_1e

    :cond_38
    move-object/from16 v17, v29

    .line 209
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/c$b;

    .line 210
    iget-object v3, v2, Landroidx/fragment/app/c$c;->a:Landroidx/fragment/app/z$d;

    .line 211
    iget-object v4, v3, Landroidx/fragment/app/z$d;->c:Landroidx/fragment/app/Fragment;

    const-string v5, "Ignoring Animation set on "

    if-eqz v9, :cond_3a

    const/4 v3, 0x2

    .line 212
    invoke-static {v3}, Landroidx/fragment/app/q;->P(I)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 213
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " as Animations cannot run alongside Transitions."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_39
    invoke-virtual {v2}, Landroidx/fragment/app/c$c;->a()V

    goto :goto_20

    :cond_3a
    if-eqz v0, :cond_3c

    const/4 v3, 0x2

    .line 215
    invoke-static {v3}, Landroidx/fragment/app/q;->P(I)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " as Animations cannot run alongside Animators."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_3b
    invoke-virtual {v2}, Landroidx/fragment/app/c$c;->a()V

    goto :goto_20

    .line 218
    :cond_3c
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 219
    invoke-virtual {v2, v13}, Landroidx/fragment/app/c$b;->c(Landroid/content/Context;)Landroidx/fragment/app/n$a;

    move-result-object v5

    .line 220
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v5, v5, Landroidx/fragment/app/n$a;->a:Landroid/view/animation/Animation;

    .line 222
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v3, v3, Landroidx/fragment/app/z$d;->a:Landroidx/fragment/app/z$d$c;

    .line 224
    sget-object v6, Landroidx/fragment/app/z$d$c;->r:Landroidx/fragment/app/z$d$c;

    if-eq v3, v6, :cond_3d

    .line 225
    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 226
    invoke-virtual {v2}, Landroidx/fragment/app/c$c;->a()V

    goto :goto_21

    .line 227
    :cond_3d
    invoke-virtual {v11, v4}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 228
    new-instance v3, Landroidx/fragment/app/n$b;

    invoke-direct {v3, v5, v11, v4}, Landroidx/fragment/app/n$b;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 229
    new-instance v5, Landroidx/fragment/app/e;

    invoke-direct {v5, v7, v11, v4, v2}, Landroidx/fragment/app/e;-><init>(Landroidx/fragment/app/c;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/c$b;)V

    invoke-virtual {v3, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 230
    invoke-virtual {v4, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 231
    :goto_21
    iget-object v3, v2, Landroidx/fragment/app/c$c;->b:Lcom/shabakaty/downloader/iv;

    .line 232
    new-instance v5, Landroidx/fragment/app/f;

    invoke-direct {v5, v7, v4, v11, v2}, Landroidx/fragment/app/f;-><init>(Landroidx/fragment/app/c;Landroid/view/View;Landroid/view/ViewGroup;Landroidx/fragment/app/c$b;)V

    invoke-virtual {v3, v5}, Lcom/shabakaty/downloader/iv;->b(Lcom/shabakaty/downloader/iv$a;)V

    goto/16 :goto_20

    .line 233
    :cond_3e
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/z$d;

    .line 234
    iget-object v2, v1, Landroidx/fragment/app/z$d;->c:Landroidx/fragment/app/Fragment;

    .line 235
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 236
    iget-object v1, v1, Landroidx/fragment/app/z$d;->a:Landroidx/fragment/app/z$d$c;

    .line 237
    invoke-virtual {v1, v2}, Landroidx/fragment/app/z$d$c;->f(Landroid/view/View;)V

    goto :goto_22

    .line 238
    :cond_3f
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public j(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 2
    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 5
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_3

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 9
    invoke-virtual {p0, p1, v2}, Landroidx/fragment/app/c;->j(Ljava/util/ArrayList;Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 11
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public k(Ljava/util/Map;Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/c35;->a:Ljava/util/WeakHashMap;

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 5
    check-cast p2, Landroid/view/ViewGroup;

    .line 6
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 7
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 9
    invoke-virtual {p0, p1, v2}, Landroidx/fragment/app/c;->k(Ljava/util/Map;Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public l(Lcom/shabakaty/downloader/ad;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ad<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ad;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/gm2$b;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/gm2$b;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 2
    :cond_0
    :goto_0
    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/gm2$d;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/gm2$d;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/gm2$d;->next()Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget-object v2, Lcom/shabakaty/downloader/c35;->a:Ljava/util/WeakHashMap;

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-interface {p2, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/gm2$d;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method
