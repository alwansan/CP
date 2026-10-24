.class public final Lcom/shabakaty/downloader/zy0;
.super Lcom/shabakaty/downloader/ui4;
.source "DownloaderService.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.downloader.services.DownloaderService$subscribeToDownloads$1"
    f = "DownloaderService.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ui4;",
        "Lcom/shabakaty/downloader/hn1<",
        "Ljava/util/List<",
        "+",
        "Lcom/shabakaty/downloader/pw0;",
        ">;",
        "Lcom/shabakaty/downloader/ud0<",
        "-",
        "Lcom/shabakaty/downloader/qv4;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public synthetic v:Ljava/lang/Object;

.field public final synthetic w:Lcom/shabakaty/downloader/services/DownloaderService;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/services/DownloaderService;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/services/DownloaderService;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/zy0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/zy0;->w:Lcom/shabakaty/downloader/services/DownloaderService;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/util/List;

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/zy0;

    iget-object v1, p0, Lcom/shabakaty/downloader/zy0;->w:Lcom/shabakaty/downloader/services/DownloaderService;

    invoke-direct {v0, v1, p2}, Lcom/shabakaty/downloader/zy0;-><init>(Lcom/shabakaty/downloader/services/DownloaderService;Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/zy0;->v:Ljava/lang/Object;

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/zy0;->t(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/downloader/ud0<",
            "*>;)",
            "Lcom/shabakaty/downloader/ud0<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/shabakaty/downloader/zy0;

    iget-object v1, p0, Lcom/shabakaty/downloader/zy0;->w:Lcom/shabakaty/downloader/services/DownloaderService;

    invoke-direct {v0, v1, p2}, Lcom/shabakaty/downloader/zy0;-><init>(Lcom/shabakaty/downloader/services/DownloaderService;Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/zy0;->v:Ljava/lang/Object;

    return-object v0
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/shabakaty/downloader/zy0;->v:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, v0, Lcom/shabakaty/downloader/zy0;->w:Lcom/shabakaty/downloader/services/DownloaderService;

    sget-object v3, Lcom/shabakaty/downloader/services/DownloaderService;->x:Lcom/shabakaty/downloader/services/DownloaderService$a;

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v3

    const-string v4, "downloads flow event with list:\n"

    invoke-static {v4, v1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shabakaty/downloader/lw0$a;->b()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    :goto_1
    if-nez v5, :cond_1b

    .line 5
    iget-object v2, v2, Lcom/shabakaty/downloader/services/DownloaderService;->v:Lcom/shabakaty/downloader/i13;

    const/4 v5, 0x0

    if-eqz v2, :cond_1a

    if-eqz v1, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    sget-object v1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    :goto_2
    const-string v6, "downloads"

    .line 7
    invoke-static {v1, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v7, 0x0

    move-wide v15, v7

    move-wide/from16 v17, v15

    :cond_3
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/pw0;

    .line 10
    invoke-virtual {v7}, Lcom/shabakaty/downloader/pw0;->a()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 11
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    iget-wide v8, v7, Lcom/shabakaty/downloader/pw0;->y:J

    add-long/2addr v15, v8

    .line 13
    iget-wide v7, v7, Lcom/shabakaty/downloader/pw0;->t:J

    add-long v17, v17, v7

    goto :goto_3

    .line 14
    :cond_4
    invoke-static {v6, v3}, Lcom/shabakaty/downloader/m50;->c0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/pw0;

    if-nez v1, :cond_5

    move-object v1, v5

    goto :goto_4

    .line 15
    :cond_5
    iget-object v1, v1, Lcom/shabakaty/downloader/pw0;->u:Ljava/lang/String;

    .line 16
    :goto_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v4, :cond_6

    const/4 v7, 0x1

    goto :goto_5

    :cond_6
    const/4 v7, 0x0

    :goto_5
    if-eqz v7, :cond_7

    goto :goto_6

    :cond_7
    move-object v1, v5

    :goto_6
    if-nez v1, :cond_8

    .line 17
    iget-object v1, v2, Lcom/shabakaty/downloader/i13;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f10000d

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v9, v4, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-virtual {v1, v7, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "context.resources.getQua\u2026le_downloads, size, size)"

    invoke-static {v1, v7}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    :cond_8
    new-instance v14, Lcom/shabakaty/downloader/b13;

    .line 19
    sget-object v13, Lcom/shabakaty/downloader/f13;->r:Lcom/shabakaty/downloader/f13;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v19, 0x1e

    const-string v8, ", \n"

    move-object v7, v6

    move-object/from16 p1, v14

    move/from16 v14, v19

    invoke-static/range {v7 .. v14}, Lcom/shabakaty/downloader/m50;->g0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lcom/shabakaty/downloader/tm1;I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v7, p1

    move-object v8, v1

    move-wide v10, v15

    move-wide/from16 v12, v17

    move-object v14, v6

    .line 20
    invoke-direct/range {v7 .. v14}, Lcom/shabakaty/downloader/b13;-><init>(Ljava/lang/String;Ljava/lang/String;JJLjava/util/List;)V

    .line 21
    iget-object v1, v2, Lcom/shabakaty/downloader/i13;->e:Lcom/shabakaty/downloader/lh3;

    if-nez v1, :cond_e

    .line 22
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v1, v6, :cond_9

    const/4 v3, 0x1

    :cond_9
    if-eqz v3, :cond_c

    .line 23
    iget-object v1, v2, Lcom/shabakaty/downloader/i13;->c:Landroid/app/NotificationManager;

    const-string v3, "com.shabakaty.downloader.CHANNEL_ID"

    if-nez v1, :cond_a

    move-object v1, v5

    goto :goto_7

    :cond_a
    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v1

    :goto_7
    if-nez v1, :cond_c

    .line 24
    new-instance v1, Landroid/app/NotificationChannel;

    invoke-direct {v1, v3, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 25
    iget-object v3, v2, Lcom/shabakaty/downloader/i13;->c:Landroid/app/NotificationManager;

    if-nez v3, :cond_b

    goto :goto_8

    :cond_b
    invoke-virtual {v3, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 26
    :cond_c
    :goto_8
    iget-object v1, v2, Lcom/shabakaty/downloader/i13;->e:Lcom/shabakaty/downloader/lh3;

    if-nez v1, :cond_1c

    .line 27
    new-instance v1, Lcom/shabakaty/downloader/d13;

    const v7, 0x1343c9a

    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/b13;->c()Lcom/shabakaty/downloader/pw0;

    move-result-object v3

    if-nez v3, :cond_d

    goto :goto_9

    .line 29
    :cond_d
    iget-object v5, v3, Lcom/shabakaty/downloader/pw0;->w:Ljava/lang/String;

    :goto_9
    move-object v8, v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x7c

    move-object v6, v1

    .line 30
    invoke-direct/range {v6 .. v14}, Lcom/shabakaty/downloader/d13;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;IILjava/lang/Integer;II)V

    .line 31
    iget-object v3, v2, Lcom/shabakaty/downloader/i13;->c:Landroid/app/NotificationManager;

    .line 32
    iget-object v4, v2, Lcom/shabakaty/downloader/i13;->b:Landroid/content/Context;

    .line 33
    new-instance v5, Lcom/shabakaty/downloader/lh3;

    move-object/from16 v6, p1

    invoke-direct {v5, v6, v1, v3, v4}, Lcom/shabakaty/downloader/lh3;-><init>(Lcom/shabakaty/downloader/b13;Lcom/shabakaty/downloader/d13;Landroid/app/NotificationManager;Landroid/content/Context;)V

    iput-object v5, v2, Lcom/shabakaty/downloader/i13;->e:Lcom/shabakaty/downloader/lh3;

    goto/16 :goto_e

    :cond_e
    move-object/from16 v6, p1

    const-string v2, "parameters"

    .line 34
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "<set-?>"

    .line 35
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object v6, v1, Lcom/shabakaty/downloader/xj;->b:Lcom/shabakaty/downloader/b13;

    .line 37
    invoke-virtual {v6}, Lcom/shabakaty/downloader/b13;->b()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 38
    iget-object v2, v1, Lcom/shabakaty/downloader/xj;->b:Lcom/shabakaty/downloader/b13;

    .line 39
    invoke-virtual {v2}, Lcom/shabakaty/downloader/b13;->a()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_f

    goto :goto_a

    :cond_f
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_10

    .line 40
    :goto_a
    invoke-virtual {v1}, Lcom/shabakaty/downloader/lh3;->g()V

    .line 41
    :cond_10
    invoke-virtual {v1}, Lcom/shabakaty/downloader/lh3;->h()V

    .line 42
    invoke-virtual {v1}, Lcom/shabakaty/downloader/xj;->a()Landroid/app/Notification;

    goto :goto_e

    .line 43
    :cond_11
    iget-object v2, v6, Lcom/shabakaty/downloader/b13;->v:Ljava/util/List;

    if-nez v2, :cond_12

    goto :goto_b

    :cond_12
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v4, :cond_13

    const/4 v2, 0x1

    goto :goto_c

    :cond_13
    :goto_b
    const/4 v2, 0x0

    :goto_c
    const v5, 0x1343c9a

    if-eqz v2, :cond_16

    .line 44
    iget-object v2, v1, Lcom/shabakaty/downloader/xj;->b:Lcom/shabakaty/downloader/b13;

    .line 45
    invoke-virtual {v2}, Lcom/shabakaty/downloader/b13;->a()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_14

    goto :goto_d

    :cond_14
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v5, :cond_15

    .line 46
    :goto_d
    iget-object v2, v1, Lcom/shabakaty/downloader/xj;->b:Lcom/shabakaty/downloader/b13;

    .line 47
    invoke-virtual {v2}, Lcom/shabakaty/downloader/b13;->a()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 48
    invoke-virtual {v1}, Lcom/shabakaty/downloader/lh3;->g()V

    .line 49
    :cond_15
    invoke-virtual {v1}, Lcom/shabakaty/downloader/lh3;->h()V

    .line 50
    invoke-virtual {v1}, Lcom/shabakaty/downloader/xj;->a()Landroid/app/Notification;

    goto :goto_e

    .line 51
    :cond_16
    iget-object v2, v6, Lcom/shabakaty/downloader/b13;->v:Ljava/util/List;

    if-eqz v2, :cond_17

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_17
    const/4 v3, 0x1

    :cond_18
    if-eqz v3, :cond_1c

    .line 52
    iget-object v1, v1, Lcom/shabakaty/downloader/xj;->d:Landroid/app/NotificationManager;

    if-nez v1, :cond_19

    goto :goto_e

    .line 53
    :cond_19
    invoke-virtual {v1, v5}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_e

    :cond_1a
    const-string v1, "notificationUtils"

    .line 54
    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v5

    .line 55
    :cond_1b
    invoke-virtual {v2}, Lcom/shabakaty/downloader/services/DownloaderService;->d()V

    .line 56
    :cond_1c
    :goto_e
    sget-object v1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object v1
.end method
