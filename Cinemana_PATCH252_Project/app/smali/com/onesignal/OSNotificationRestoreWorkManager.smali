.class public Lcom/onesignal/OSNotificationRestoreWorkManager;
.super Ljava/lang/Object;
.source "OSNotificationRestoreWorkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/OSNotificationRestoreWorkManager$NotificationRestoreWorker;
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "notification_id"

    const-string v1, "android_notification_id"

    const-string v2, "full_data"

    const-string v3, "created_time"

    .line 1
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onesignal/OSNotificationRestoreWorkManager;->a:[Ljava/lang/String;

    .line 2
    const-class v0, Lcom/onesignal/OSNotificationRestoreWorkManager$NotificationRestoreWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onesignal/OSNotificationRestoreWorkManager;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/16 p1, 0xf

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    new-instance v0, Lcom/shabakaty/downloader/t73$a;

    const-class v1, Lcom/onesignal/OSNotificationRestoreWorkManager$NotificationRestoreWorker;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/t73$a;-><init>(Ljava/lang/Class;)V

    int-to-long v1, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    invoke-virtual {v0, v1, v2, p1}, Lcom/shabakaty/downloader/a85$a;->d(JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/a85$a;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/t73$a;

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/a85$a;->a()Lcom/shabakaty/downloader/a85;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/t73;

    .line 4
    invoke-static {p0}, Lcom/shabakaty/downloader/r75;->b(Landroid/content/Context;)Lcom/shabakaty/downloader/r75;

    move-result-object p0

    .line 5
    sget-object v0, Lcom/onesignal/OSNotificationRestoreWorkManager;->b:Ljava/lang/String;

    const/4 v1, 0x2

    .line 6
    invoke-virtual {p0, v0, v1, p1}, Lcom/shabakaty/downloader/q75;->a(Ljava/lang/String;ILcom/shabakaty/downloader/t73;)Lcom/shabakaty/downloader/x73;

    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/database/Cursor;IZ)V
    .locals 9

    .line 1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "notification_id"

    .line 2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "android_notification_id"

    .line 3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v0, "full_data"

    .line 4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v0, "created_time"

    .line 5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v7, 0x1

    move-object v1, p0

    move v8, p3

    .line 6
    invoke-static/range {v1 .. v8}, Lcom/onesignal/OSNotificationWorkManager;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;JZZ)V

    if-lez p2, :cond_1

    .line 7
    invoke-static {p2}, Lcom/onesignal/o0;->y(I)V

    .line 8
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method
