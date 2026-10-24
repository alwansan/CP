.class public Lcom/onesignal/OSNotificationRestoreWorkManager$NotificationRestoreWorker;
.super Landroidx/work/Worker;
.source "OSNotificationRestoreWorkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OSNotificationRestoreWorkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationRestoreWorker"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method


# virtual methods
.method public g()Landroidx/work/ListenableWorker$a;
    .locals 14

    .line 1
    iget-object v0, p0, Landroidx/work/ListenableWorker;->r:Landroid/content/Context;

    .line 2
    sget-object v1, Lcom/onesignal/q0;->b:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/onesignal/q0;->F(Landroid/content/Context;)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/onesignal/o0;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    new-instance v0, Landroidx/work/ListenableWorker$a$a;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$a;-><init>()V

    return-object v0

    .line 6
    :cond_1
    sget-boolean v1, Lcom/onesignal/OSNotificationRestoreWorkManager;->c:Z

    if-eqz v1, :cond_2

    .line 7
    new-instance v0, Landroidx/work/ListenableWorker$a$a;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$a;-><init>()V

    return-object v0

    :cond_2
    const/4 v1, 0x1

    .line 8
    sput-boolean v1, Lcom/onesignal/OSNotificationRestoreWorkManager;->c:Z

    const/4 v1, 0x0

    const/4 v2, 0x5

    const-string v3, "Restoring notifications"

    .line 9
    invoke-static {v2, v3, v1}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    invoke-static {v0}, Lcom/shabakaty/downloader/q73;->b(Landroid/content/Context;)Lcom/shabakaty/downloader/q73;

    move-result-object v3

    .line 11
    invoke-static {}, Lcom/shabakaty/downloader/q73;->o()Ljava/lang/StringBuilder;

    move-result-object v4

    .line 12
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    const/4 v13, 0x0

    if-ge v5, v6, :cond_3

    goto :goto_1

    .line 13
    :cond_3
    invoke-static {v0}, Lcom/shabakaty/downloader/r73;->a(Landroid/content/Context;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    .line 14
    array-length v6, v5

    if-nez v6, :cond_4

    goto :goto_1

    .line 15
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 16
    array-length v7, v5

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_5

    aget-object v9, v5, v8

    .line 17
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_5
    const-string v5, " AND android_notification_id NOT IN ("

    .line 18
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    .line 19
    invoke-static {v5, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    .line 20
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v5, "Querying DB for notifications to restore: "

    .line 21
    invoke-static {v5}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 22
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 23
    invoke-static {v2, v5, v1}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :try_start_0
    const-string v5, "notification"

    .line 24
    sget-object v6, Lcom/onesignal/OSNotificationRestoreWorkManager;->a:[Ljava/lang/String;

    .line 25
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "_id DESC"

    sget-object v12, Lcom/shabakaty/downloader/v03;->a:Ljava/lang/String;

    move-object v4, v3

    .line 26
    invoke-virtual/range {v4 .. v12}, Lcom/shabakaty/downloader/q73;->k(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/16 v2, 0xc8

    .line 27
    invoke-static {v0, v1, v2, v13}, Lcom/onesignal/OSNotificationRestoreWorkManager;->b(Landroid/content/Context;Landroid/database/Cursor;IZ)V

    .line 28
    invoke-static {v3, v0}, Lcom/shabakaty/downloader/li;->b(Lcom/shabakaty/downloader/p73;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    :catchall_0
    move-exception v0

    const/4 v2, 0x3

    :try_start_1
    const-string v3, "Error restoring notification records! "

    .line 30
    invoke-static {v2, v3, v0}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_6

    .line 31
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_6

    .line 32
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 33
    :cond_6
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    return-object v0

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_7

    .line 34
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_7

    .line 35
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 36
    :cond_7
    throw v0
.end method
