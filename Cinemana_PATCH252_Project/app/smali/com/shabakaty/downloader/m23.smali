.class public Lcom/shabakaty/downloader/m23;
.super Lcom/shabakaty/downloader/ki;
.source "OSInAppMessageController.java"


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/i23;

.field public final synthetic s:Lcom/onesignal/x;


# direct methods
.method public constructor <init>(Lcom/onesignal/x;Lcom/shabakaty/downloader/i23;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/m23;->s:Lcom/onesignal/x;

    iput-object p2, p0, Lcom/shabakaty/downloader/m23;->r:Lcom/shabakaty/downloader/i23;

    invoke-direct {p0}, Lcom/shabakaty/downloader/ki;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    invoke-super {p0}, Lcom/shabakaty/downloader/ki;->run()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/m23;->s:Lcom/onesignal/x;

    .line 3
    iget-object v0, v0, Lcom/onesignal/x;->w:Lcom/shabakaty/downloader/t23;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/m23;->r:Lcom/shabakaty/downloader/i23;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "message_id"

    .line 7
    iget-object v4, v1, Lcom/shabakaty/downloader/i23;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "display_quantity"

    .line 8
    iget-object v4, v1, Lcom/shabakaty/downloader/i23;->e:Lcom/shabakaty/downloader/s23;

    .line 9
    iget v4, v4, Lcom/shabakaty/downloader/s23;->b:I

    .line 10
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "last_display"

    .line 11
    iget-object v4, v1, Lcom/shabakaty/downloader/i23;->e:Lcom/shabakaty/downloader/s23;

    .line 12
    iget-wide v4, v4, Lcom/shabakaty/downloader/s23;->a:J

    .line 13
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "click_ids"

    .line 14
    iget-object v4, v1, Lcom/shabakaty/downloader/i23;->d:Ljava/util/Set;

    .line 15
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "displayed_in_session"

    .line 16
    iget-boolean v4, v1, Lcom/shabakaty/downloader/i23;->g:Z

    .line 17
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 18
    iget-object v3, v0, Lcom/shabakaty/downloader/t23;->a:Lcom/shabakaty/downloader/q73;

    const-string v4, "in_app_message"

    const-string v5, "message_id = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v1, v1, Lcom/shabakaty/downloader/i23;->a:Ljava/lang/String;

    aput-object v1, v6, v7

    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/shabakaty/downloader/q73;->r(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 19
    iget-object v1, v0, Lcom/shabakaty/downloader/t23;->a:Lcom/shabakaty/downloader/q73;

    const-string v3, "in_app_message"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Lcom/shabakaty/downloader/q73;->e(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
