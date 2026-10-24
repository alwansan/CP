.class public Lcom/onesignal/c0;
.super Lcom/shabakaty/downloader/ki;
.source "OSNotificationDataController.java"


# instance fields
.field public final synthetic r:Ljava/lang/String;

.field public final synthetic s:Lcom/onesignal/d0$a;

.field public final synthetic t:Lcom/onesignal/d0;


# direct methods
.method public constructor <init>(Lcom/onesignal/d0;Ljava/lang/String;Lcom/onesignal/d0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/c0;->t:Lcom/onesignal/d0;

    iput-object p2, p0, Lcom/onesignal/c0;->r:Ljava/lang/String;

    iput-object p3, p0, Lcom/onesignal/c0;->s:Lcom/onesignal/d0$a;

    invoke-direct {p0}, Lcom/shabakaty/downloader/ki;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    invoke-super {p0}, Lcom/shabakaty/downloader/ki;->run()V

    const-string v0, "notification_id"

    .line 2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/onesignal/c0;->r:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v5, v2

    .line 4
    iget-object v1, p0, Lcom/onesignal/c0;->t:Lcom/onesignal/d0;

    .line 5
    iget-object v1, v1, Lcom/onesignal/d0;->s:Lcom/shabakaty/downloader/q73;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v2, "notification"

    const-string v4, "notification_id = ?"

    .line 6
    invoke-virtual/range {v1 .. v8}, Lcom/shabakaty/downloader/q73;->j(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 7
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    .line 8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    if-eqz v2, :cond_0

    .line 9
    iget-object v1, p0, Lcom/onesignal/c0;->t:Lcom/onesignal/d0;

    .line 10
    iget-object v1, v1, Lcom/onesignal/d0;->t:Lcom/shabakaty/downloader/b33;

    const-string v2, "Notification notValidOrDuplicated with id duplicated, duplicate FCM message received, skip processing of "

    .line 11
    invoke-static {v2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/onesignal/c0;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v1, Lcom/shabakaty/downloader/a33;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/a33;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    iget-object v1, p0, Lcom/onesignal/c0;->s:Lcom/onesignal/d0$a;

    invoke-interface {v1, v0}, Lcom/onesignal/d0$a;->a(Z)V

    return-void
.end method
