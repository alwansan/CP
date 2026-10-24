.class public final Landroidx/mediarouter/media/m$e;
.super Landroid/os/Handler;
.source "RegisteredMediaRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/mediarouter/media/m$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/m$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/mediarouter/media/m$e;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    iget-object v2, v1, Landroidx/mediarouter/media/m$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/media/m$a;

    if-eqz v2, :cond_13

    .line 2
    iget v3, v0, Landroid/os/Message;->what:I

    .line 3
    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 4
    iget v5, v0, Landroid/os/Message;->arg2:I

    .line 5
    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_7

    .line 7
    :pswitch_0
    iget-object v3, v2, Landroidx/mediarouter/media/m$a;->i:Landroidx/mediarouter/media/m;

    .line 8
    iget-object v4, v3, Landroidx/mediarouter/media/m;->E:Landroidx/mediarouter/media/m$a;

    if-ne v4, v2, :cond_12

    .line 9
    invoke-virtual {v3, v5}, Landroidx/mediarouter/media/m;->u(I)Landroidx/mediarouter/media/m$c;

    move-result-object v2

    .line 10
    iget-object v4, v3, Landroidx/mediarouter/media/m;->G:Landroidx/mediarouter/media/m$b;

    if-eqz v4, :cond_0

    instance-of v5, v2, Landroidx/mediarouter/media/c$e;

    if-eqz v5, :cond_0

    .line 11
    move-object v5, v2

    check-cast v5, Landroidx/mediarouter/media/c$e;

    check-cast v4, Lcom/shabakaty/downloader/rv;

    iget-object v6, v4, Lcom/shabakaty/downloader/rv;->s:Ljava/lang/Object;

    check-cast v6, Landroidx/mediarouter/media/n;

    iget-object v4, v4, Lcom/shabakaty/downloader/rv;->t:Ljava/lang/Object;

    check-cast v4, Landroidx/mediarouter/media/m;

    .line 12
    iget-object v4, v6, Landroidx/mediarouter/media/n;->b:Landroidx/mediarouter/media/n$c;

    check-cast v4, Landroidx/mediarouter/media/g$e;

    .line 13
    iget-object v6, v4, Landroidx/mediarouter/media/g$e;->q:Landroidx/mediarouter/media/c$e;

    if-ne v6, v5, :cond_0

    .line 14
    invoke-virtual {v4}, Landroidx/mediarouter/media/g$e;->c()Landroidx/mediarouter/media/g$h;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroidx/mediarouter/media/g$e;->k(Landroidx/mediarouter/media/g$h;I)V

    .line 15
    :cond_0
    invoke-virtual {v3, v2}, Landroidx/mediarouter/media/m;->w(Landroidx/mediarouter/media/m$c;)V

    goto/16 :goto_7

    :pswitch_1
    if-eqz v6, :cond_1

    .line 16
    instance-of v3, v6, Landroid/os/Bundle;

    if-eqz v3, :cond_12

    .line 17
    :cond_1
    check-cast v6, Landroid/os/Bundle;

    .line 18
    iget v3, v2, Landroidx/mediarouter/media/m$a;->f:I

    if-eqz v3, :cond_12

    const-string v3, "groupRoute"

    .line 19
    invoke-virtual {v6, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    if-eqz v3, :cond_2

    .line 20
    invoke-static {v3}, Landroidx/mediarouter/media/b;->b(Landroid/os/Bundle;)Landroidx/mediarouter/media/b;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v8

    :goto_0
    const-string v4, "dynamicRoutes"

    .line 21
    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 22
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    if-nez v7, :cond_3

    move-object v7, v8

    goto :goto_2

    :cond_3
    const-string v11, "mrDescriptor"

    .line 24
    invoke-virtual {v7, v11}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    .line 25
    invoke-static {v11}, Landroidx/mediarouter/media/b;->b(Landroid/os/Bundle;)Landroidx/mediarouter/media/b;

    move-result-object v13

    const-string v11, "selectionState"

    .line 26
    invoke-virtual {v7, v11, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    const-string v11, "isUnselectable"

    .line 27
    invoke-virtual {v7, v11, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    const-string v11, "isGroupable"

    .line 28
    invoke-virtual {v7, v11, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    const-string v11, "isTransferable"

    .line 29
    invoke-virtual {v7, v11, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 30
    new-instance v7, Landroidx/mediarouter/media/c$b$a;

    move-object v12, v7

    invoke-direct/range {v12 .. v17}, Landroidx/mediarouter/media/c$b$a;-><init>(Landroidx/mediarouter/media/b;IZZZ)V

    .line 31
    :goto_2
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 32
    :cond_4
    iget-object v4, v2, Landroidx/mediarouter/media/m$a;->i:Landroidx/mediarouter/media/m;

    .line 33
    iget-object v7, v4, Landroidx/mediarouter/media/m;->E:Landroidx/mediarouter/media/m$a;

    if-ne v7, v2, :cond_7

    .line 34
    sget-boolean v2, Landroidx/mediarouter/media/m;->H:Z

    if-eqz v2, :cond_5

    const-string v2, "MediaRouteProviderProxy"

    .line 35
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ": DynamicRouteDescriptors changed, descriptors="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_5
    invoke-virtual {v4, v5}, Landroidx/mediarouter/media/m;->u(I)Landroidx/mediarouter/media/m$c;

    move-result-object v2

    .line 37
    instance-of v4, v2, Landroidx/mediarouter/media/m$f;

    if-eqz v4, :cond_7

    .line 38
    check-cast v2, Landroidx/mediarouter/media/m$f;

    .line 39
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "groupRoute must not be null"

    .line 40
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    iget-object v4, v2, Landroidx/mediarouter/media/c$b;->a:Ljava/lang/Object;

    monitor-enter v4

    .line 42
    :try_start_0
    iget-object v5, v2, Landroidx/mediarouter/media/c$b;->b:Ljava/util/concurrent/Executor;

    if-eqz v5, :cond_6

    .line 43
    iget-object v7, v2, Landroidx/mediarouter/media/c$b;->c:Landroidx/mediarouter/media/c$b$b;

    .line 44
    new-instance v8, Landroidx/mediarouter/media/e;

    invoke-direct {v8, v2, v7, v3, v6}, Landroidx/mediarouter/media/e;-><init>(Landroidx/mediarouter/media/c$b;Landroidx/mediarouter/media/c$b$b;Landroidx/mediarouter/media/b;Ljava/util/Collection;)V

    invoke-interface {v5, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 45
    :cond_6
    iput-object v3, v2, Landroidx/mediarouter/media/c$b;->d:Landroidx/mediarouter/media/b;

    .line 46
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Landroidx/mediarouter/media/c$b;->e:Ljava/util/Collection;

    .line 47
    :goto_3
    monitor-exit v4

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_7
    :goto_4
    :pswitch_2
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 48
    :pswitch_3
    instance-of v3, v6, Landroid/os/Bundle;

    if-eqz v3, :cond_9

    .line 49
    check-cast v6, Landroid/os/Bundle;

    .line 50
    iget-object v3, v2, Landroidx/mediarouter/media/m$a;->h:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/mediarouter/media/g$d;

    if-eqz v6, :cond_8

    const-string v5, "routeId"

    .line 51
    invoke-virtual {v6, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 52
    iget-object v2, v2, Landroidx/mediarouter/media/m$a;->h:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 53
    invoke-virtual {v3, v6}, Landroidx/mediarouter/media/g$d;->b(Landroid/os/Bundle;)V

    goto/16 :goto_7

    :cond_8
    const-string v2, "DynamicGroupRouteController is created without valid route id."

    .line 54
    invoke-virtual {v3, v2, v6}, Landroidx/mediarouter/media/g$d;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_7

    :cond_9
    const-string v2, "MediaRouteProviderProxy"

    const-string v3, "No further information on the dynamic group controller"

    .line 55
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :pswitch_4
    if-eqz v6, :cond_a

    .line 56
    instance-of v3, v6, Landroid/os/Bundle;

    if-eqz v3, :cond_12

    .line 57
    :cond_a
    check-cast v6, Landroid/os/Bundle;

    .line 58
    iget v3, v2, Landroidx/mediarouter/media/m$a;->f:I

    if-eqz v3, :cond_12

    .line 59
    iget-object v3, v2, Landroidx/mediarouter/media/m$a;->i:Landroidx/mediarouter/media/m;

    .line 60
    invoke-static {v6}, Lcom/shabakaty/downloader/fq2;->a(Landroid/os/Bundle;)Lcom/shabakaty/downloader/fq2;

    move-result-object v4

    .line 61
    invoke-virtual {v3, v2, v4}, Landroidx/mediarouter/media/m;->v(Landroidx/mediarouter/media/m$a;Lcom/shabakaty/downloader/fq2;)V

    goto :goto_4

    :pswitch_5
    if-eqz v6, :cond_b

    .line 62
    instance-of v3, v6, Landroid/os/Bundle;

    if-eqz v3, :cond_12

    :cond_b
    if-nez v7, :cond_c

    goto :goto_5

    :cond_c
    const-string v3, "error"

    .line 63
    invoke-virtual {v7, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 64
    :goto_5
    check-cast v6, Landroid/os/Bundle;

    .line 65
    iget-object v3, v2, Landroidx/mediarouter/media/m$a;->h:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/mediarouter/media/g$d;

    if-eqz v3, :cond_12

    .line 66
    iget-object v2, v2, Landroidx/mediarouter/media/m$a;->h:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 67
    invoke-virtual {v3, v8, v6}, Landroidx/mediarouter/media/g$d;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_4

    :pswitch_6
    if-eqz v6, :cond_d

    .line 68
    instance-of v3, v6, Landroid/os/Bundle;

    if-eqz v3, :cond_12

    .line 69
    :cond_d
    check-cast v6, Landroid/os/Bundle;

    .line 70
    iget-object v3, v2, Landroidx/mediarouter/media/m$a;->h:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/mediarouter/media/g$d;

    if-eqz v3, :cond_12

    .line 71
    iget-object v2, v2, Landroidx/mediarouter/media/m$a;->h:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 72
    invoke-virtual {v3, v6}, Landroidx/mediarouter/media/g$d;->b(Landroid/os/Bundle;)V

    goto/16 :goto_4

    :pswitch_7
    if-eqz v6, :cond_e

    .line 73
    instance-of v3, v6, Landroid/os/Bundle;

    if-eqz v3, :cond_12

    .line 74
    :cond_e
    check-cast v6, Landroid/os/Bundle;

    .line 75
    iget v3, v2, Landroidx/mediarouter/media/m$a;->f:I

    if-nez v3, :cond_12

    iget v3, v2, Landroidx/mediarouter/media/m$a;->g:I

    if-ne v4, v3, :cond_12

    if-lt v5, v10, :cond_12

    .line 76
    iput v9, v2, Landroidx/mediarouter/media/m$a;->g:I

    .line 77
    iput v5, v2, Landroidx/mediarouter/media/m$a;->f:I

    .line 78
    iget-object v3, v2, Landroidx/mediarouter/media/m$a;->i:Landroidx/mediarouter/media/m;

    .line 79
    invoke-static {v6}, Lcom/shabakaty/downloader/fq2;->a(Landroid/os/Bundle;)Lcom/shabakaty/downloader/fq2;

    move-result-object v4

    .line 80
    invoke-virtual {v3, v2, v4}, Landroidx/mediarouter/media/m;->v(Landroidx/mediarouter/media/m$a;Lcom/shabakaty/downloader/fq2;)V

    .line 81
    iget-object v3, v2, Landroidx/mediarouter/media/m$a;->i:Landroidx/mediarouter/media/m;

    .line 82
    iget-object v4, v3, Landroidx/mediarouter/media/m;->E:Landroidx/mediarouter/media/m$a;

    if-ne v4, v2, :cond_7

    .line 83
    iput-boolean v10, v3, Landroidx/mediarouter/media/m;->F:Z

    .line 84
    iget-object v2, v3, Landroidx/mediarouter/media/m;->B:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_6
    if-ge v9, v2, :cond_f

    .line 85
    iget-object v4, v3, Landroidx/mediarouter/media/m;->B:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/mediarouter/media/m$c;

    iget-object v5, v3, Landroidx/mediarouter/media/m;->E:Landroidx/mediarouter/media/m$a;

    invoke-interface {v4, v5}, Landroidx/mediarouter/media/m$c;->c(Landroidx/mediarouter/media/m$a;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 86
    :cond_f
    iget-object v2, v3, Landroidx/mediarouter/media/c;->v:Lcom/shabakaty/downloader/cq2;

    if-eqz v2, :cond_7

    .line 87
    iget-object v3, v3, Landroidx/mediarouter/media/m;->E:Landroidx/mediarouter/media/m$a;

    invoke-virtual {v3, v2}, Landroidx/mediarouter/media/m$a;->c(Lcom/shabakaty/downloader/cq2;)V

    goto/16 :goto_4

    .line 88
    :pswitch_8
    iget v3, v2, Landroidx/mediarouter/media/m$a;->g:I

    if-ne v4, v3, :cond_11

    .line 89
    iput v9, v2, Landroidx/mediarouter/media/m$a;->g:I

    .line 90
    iget-object v3, v2, Landroidx/mediarouter/media/m$a;->i:Landroidx/mediarouter/media/m;

    .line 91
    iget-object v5, v3, Landroidx/mediarouter/media/m;->E:Landroidx/mediarouter/media/m$a;

    if-ne v5, v2, :cond_11

    .line 92
    sget-boolean v5, Landroidx/mediarouter/media/m;->H:Z

    if-eqz v5, :cond_10

    .line 93
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": Service connection error - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Registration failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MediaRouteProviderProxy"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_10
    invoke-virtual {v3}, Landroidx/mediarouter/media/m;->z()V

    .line 95
    :cond_11
    iget-object v3, v2, Landroidx/mediarouter/media/m$a;->h:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/mediarouter/media/g$d;

    if-eqz v3, :cond_7

    .line 96
    iget-object v2, v2, Landroidx/mediarouter/media/m$a;->h:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 97
    invoke-virtual {v3, v8, v8}, Landroidx/mediarouter/media/g$d;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_4

    :cond_12
    :goto_7
    if-nez v9, :cond_13

    .line 98
    sget-boolean v2, Landroidx/mediarouter/media/m;->H:Z

    if-eqz v2, :cond_13

    const-string v2, "MediaRouteProviderProxy"

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled message from server: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
