.class public final Lcom/shabakaty/downloader/lh3;
.super Lcom/shabakaty/downloader/xj;
.source "ProgressNotification.kt"


# instance fields
.field public f:Landroid/app/PendingIntent;

.field public g:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/b13;Lcom/shabakaty/downloader/d13;Landroid/app/NotificationManager;Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2, p1, p4, p3}, Lcom/shabakaty/downloader/xj;-><init>(Lcom/shabakaty/downloader/d13;Lcom/shabakaty/downloader/b13;Landroid/content/Context;Landroid/app/NotificationManager;)V

    const/16 p1, 0x65

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/xj;->e(I)I

    move-result p1

    const-class p2, Lcom/shabakaty/downloader/receivers/CancelDownloadBR;

    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/xj;->b(ILjava/lang/Class;)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/lh3;->f:Landroid/app/PendingIntent;

    const/16 p1, 0x66

    .line 3
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/xj;->e(I)I

    move-result p1

    const-class p2, Lcom/shabakaty/downloader/receivers/PauseDownloadBR;

    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/xj;->b(ILjava/lang/Class;)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/lh3;->g:Landroid/app/PendingIntent;

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xj;->a()Landroid/app/Notification;

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x1343c9a

    return v0
.end method

.method public f(Lcom/shabakaty/downloader/m03;)Lcom/shabakaty/downloader/m03;
    .locals 13

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/j03;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/xj;->c:Landroid/content/Context;

    const v2, 0x7f1201f4

    .line 3
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/lh3;->g:Landroid/app/PendingIntent;

    const v3, 0x1080023

    .line 5
    invoke-direct {v0, v3, v1, v2}, Lcom/shabakaty/downloader/j03;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 6
    new-instance v1, Lcom/shabakaty/downloader/j03;

    .line 7
    iget-object v2, p0, Lcom/shabakaty/downloader/xj;->c:Landroid/content/Context;

    const v3, 0x7f12004f

    .line 8
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 9
    iget-object v3, p0, Lcom/shabakaty/downloader/lh3;->f:Landroid/app/PendingIntent;

    const v4, 0x108001d

    .line 10
    invoke-direct {v1, v4, v2, v3}, Lcom/shabakaty/downloader/j03;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 11
    iget-object v2, p0, Lcom/shabakaty/downloader/xj;->b:Lcom/shabakaty/downloader/b13;

    .line 12
    invoke-virtual {v2}, Lcom/shabakaty/downloader/b13;->c()Lcom/shabakaty/downloader/pw0;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    .line 13
    :cond_0
    iget-object v2, v2, Lcom/shabakaty/downloader/pw0;->w:Ljava/lang/String;

    :goto_0
    if-nez v2, :cond_1

    .line 14
    iget-object v2, p0, Lcom/shabakaty/downloader/xj;->a:Lcom/shabakaty/downloader/d13;

    .line 15
    iget-object v2, v2, Lcom/shabakaty/downloader/d13;->s:Ljava/lang/String;

    .line 16
    :cond_1
    iget-object v4, p0, Lcom/shabakaty/downloader/xj;->a:Lcom/shabakaty/downloader/d13;

    .line 17
    iget v4, v4, Lcom/shabakaty/downloader/d13;->u:I

    .line 18
    iget-object v5, p0, Lcom/shabakaty/downloader/xj;->b:Lcom/shabakaty/downloader/b13;

    .line 19
    iget-object v6, p0, Lcom/shabakaty/downloader/xj;->c:Landroid/content/Context;

    const-string v7, "parameters"

    .line 20
    invoke-static {v5, v7}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "context"

    invoke-static {v6, v7}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v7, Lcom/shabakaty/downloader/p03;

    invoke-direct {v7}, Lcom/shabakaty/downloader/p03;-><init>()V

    .line 22
    invoke-virtual {v5}, Lcom/shabakaty/downloader/b13;->b()Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    move-object v7, v3

    :goto_1
    if-nez v7, :cond_3

    move-object v7, v3

    goto :goto_4

    .line 23
    :cond_3
    iget-object v5, v5, Lcom/shabakaty/downloader/b13;->v:Ljava/util/List;

    if-nez v5, :cond_4

    goto :goto_4

    .line 24
    :cond_4
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shabakaty/downloader/pw0;

    .line 25
    invoke-virtual {v8}, Lcom/shabakaty/downloader/pw0;->e()Z

    move-result v9

    if-eqz v9, :cond_5

    const v9, 0x7f1201f6

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    .line 26
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    iget-wide v10, v8, Lcom/shabakaty/downloader/pw0;->t:J

    .line 28
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 29
    iget-wide v11, v8, Lcom/shabakaty/downloader/pw0;->y:J

    .line 30
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/shabakaty/downloader/d91;->g(Ljava/lang/Number;Ljava/lang/Number;)F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v10, 0x25

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_3
    const-string v10, "if (item.pending) contex\u2026rcentOf item.sizeBytes}%\""

    .line 31
    invoke-static {v9, v10}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    iget-object v8, v8, Lcom/shabakaty/downloader/pw0;->u:Ljava/lang/String;

    .line 34
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " - "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/shabakaty/downloader/p03;->k(Ljava/lang/CharSequence;)Lcom/shabakaty/downloader/p03;

    goto :goto_2

    .line 35
    :cond_6
    :goto_4
    invoke-virtual {p1, v7}, Lcom/shabakaty/downloader/m03;->m(Lcom/shabakaty/downloader/r03;)Lcom/shabakaty/downloader/m03;

    const/4 v5, -0x1

    .line 36
    iput v5, p1, Lcom/shabakaty/downloader/m03;->j:I

    .line 37
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/m03;->b(Lcom/shabakaty/downloader/j03;)Lcom/shabakaty/downloader/m03;

    .line 38
    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/m03;->b(Lcom/shabakaty/downloader/j03;)Lcom/shabakaty/downloader/m03;

    const/16 v0, 0x8

    const/4 v1, 0x1

    .line 39
    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/downloader/m03;->i(IZ)V

    .line 40
    invoke-virtual {p1, v3}, Lcom/shabakaty/downloader/m03;->l(Landroid/net/Uri;)Lcom/shabakaty/downloader/m03;

    const/4 v0, 0x0

    .line 41
    iput v0, p1, Lcom/shabakaty/downloader/m03;->n:I

    .line 42
    iput v0, p1, Lcom/shabakaty/downloader/m03;->o:I

    .line 43
    iput-boolean v1, p1, Lcom/shabakaty/downloader/m03;->p:Z

    new-array v0, v0, [J

    .line 44
    iget-object v1, p1, Lcom/shabakaty/downloader/m03;->B:Landroid/app/Notification;

    iput-object v0, v1, Landroid/app/Notification;->vibrate:[J

    .line 45
    iput v4, v1, Landroid/app/Notification;->icon:I

    const-string v0, "com.shabakaty.downloader.GROUP_KEY"

    .line 46
    iput-object v0, p1, Lcom/shabakaty/downloader/m03;->q:Ljava/lang/String;

    .line 47
    sget-object v0, Lcom/shabakaty/downloader/lm;->a:Lcom/shabakaty/downloader/lm;

    if-nez v2, :cond_7

    const-string v2, ""

    :cond_7
    new-instance v0, Lcom/shabakaty/downloader/c91;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/c91;-><init>(Lcom/shabakaty/downloader/m03;)V

    .line 48
    sget-object v1, Lcom/shabakaty/downloader/lm;->b:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/shabakaty/downloader/da4;

    invoke-direct {v3, v2, v0}, Lcom/shabakaty/downloader/da4;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/tm1;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p1
.end method

.method public final g()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    const/16 v0, 0x66

    .line 1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/xj;->e(I)I

    move-result v0

    const-class v1, Lcom/shabakaty/downloader/receivers/PauseDownloadBR;

    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/xj;->b(ILjava/lang/Class;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/lh3;->g:Landroid/app/PendingIntent;

    const/16 v0, 0x65

    .line 3
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/xj;->e(I)I

    move-result v0

    const-class v1, Lcom/shabakaty/downloader/receivers/CancelDownloadBR;

    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/xj;->b(ILjava/lang/Class;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/lh3;->f:Landroid/app/PendingIntent;

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xj;->c()Lcom/shabakaty/downloader/m03;

    move-result-object v0

    iget-object v0, v0, Lcom/shabakaty/downloader/m03;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xj;->c()Lcom/shabakaty/downloader/m03;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/lh3;->f(Lcom/shabakaty/downloader/m03;)Lcom/shabakaty/downloader/m03;

    return-void
.end method

.method public final h()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xj;->b:Lcom/shabakaty/downloader/b13;

    .line 2
    iget-wide v1, v0, Lcom/shabakaty/downloader/b13;->t:J

    const-wide/16 v3, 0x400

    .line 3
    div-long/2addr v1, v3

    .line 4
    div-long/2addr v1, v3

    long-to-int v2, v1

    .line 5
    iget-wide v0, v0, Lcom/shabakaty/downloader/b13;->u:J

    .line 6
    div-long v5, v0, v3

    .line 7
    div-long/2addr v5, v3

    long-to-int v3, v5

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/shabakaty/downloader/xj;->b:Lcom/shabakaty/downloader/b13;

    .line 10
    iget-wide v4, v1, Lcom/shabakaty/downloader/b13;->t:J

    .line 11
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/d91;->g(Ljava/lang/Number;Ljava/lang/Number;)F

    move-result v0

    .line 12
    iget-object v1, p0, Lcom/shabakaty/downloader/xj;->b:Lcom/shabakaty/downloader/b13;

    .line 13
    iget-wide v4, v1, Lcom/shabakaty/downloader/b13;->t:J

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    cmp-long v10, v4, v8

    if-lez v10, :cond_1

    .line 14
    iget-wide v4, v1, Lcom/shabakaty/downloader/b13;->u:J

    cmp-long v1, v4, v8

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 15
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " MB/ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " MB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 16
    iget-object v5, p0, Lcom/shabakaty/downloader/xj;->b:Lcom/shabakaty/downloader/b13;

    .line 17
    iget-object v8, p0, Lcom/shabakaty/downloader/xj;->c:Landroid/content/Context;

    .line 18
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "context"

    .line 19
    invoke-static {v8, v9}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v5}, Lcom/shabakaty/downloader/b13;->c()Lcom/shabakaty/downloader/pw0;

    move-result-object v9

    if-nez v9, :cond_2

    const/4 v9, 0x0

    goto :goto_2

    .line 21
    :cond_2
    iget-object v9, v9, Lcom/shabakaty/downloader/pw0;->u:Ljava/lang/String;

    :goto_2
    if-nez v9, :cond_5

    .line 22
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f10000d

    .line 23
    iget-object v10, v5, Lcom/shabakaty/downloader/b13;->v:Ljava/util/List;

    if-nez v10, :cond_3

    const/4 v10, 0x0

    goto :goto_3

    :cond_3
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    :goto_3
    new-array v6, v6, [Ljava/lang/Object;

    .line 24
    iget-object v5, v5, Lcom/shabakaty/downloader/b13;->v:Ljava/util/List;

    if-nez v5, :cond_4

    const/4 v5, 0x0

    goto :goto_4

    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 25
    :goto_4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v7

    .line 26
    invoke-virtual {v8, v9, v10, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v5, "context.resources.getQua\u2026\tactiveDownloadsCount\n\t\t)"

    invoke-static {v9, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    :cond_5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xj;->c()Lcom/shabakaty/downloader/m03;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/shabakaty/downloader/m03;->g(Ljava/lang/CharSequence;)Lcom/shabakaty/downloader/m03;

    .line 28
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v0, 0x25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/shabakaty/downloader/m03;->f(Ljava/lang/CharSequence;)Lcom/shabakaty/downloader/m03;

    .line 29
    iget-object v0, v5, Lcom/shabakaty/downloader/m03;->B:Landroid/app/Notification;

    invoke-static {v9}, Lcom/shabakaty/downloader/m03;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 30
    iput v2, v5, Lcom/shabakaty/downloader/m03;->n:I

    .line 31
    iput v3, v5, Lcom/shabakaty/downloader/m03;->o:I

    .line 32
    iput-boolean v1, v5, Lcom/shabakaty/downloader/m03;->p:Z

    .line 33
    invoke-static {v4}, Lcom/shabakaty/downloader/m03;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v5, Lcom/shabakaty/downloader/m03;->m:Ljava/lang/CharSequence;

    return-void
.end method
