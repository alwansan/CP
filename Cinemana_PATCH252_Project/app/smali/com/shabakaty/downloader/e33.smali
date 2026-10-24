.class public Lcom/shabakaty/downloader/e33;
.super Lcom/shabakaty/downloader/ki;
.source "OSNotificationDataController.java"


# instance fields
.field public final synthetic r:Lcom/onesignal/d0;


# direct methods
.method public constructor <init>(Lcom/onesignal/d0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/e33;->r:Lcom/onesignal/d0;

    invoke-direct {p0}, Lcom/shabakaty/downloader/ki;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/shabakaty/downloader/ki;->run()V

    .line 2
    sget-object v0, Lcom/onesignal/q0;->y:Lcom/shabakaty/downloader/c21;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 5
    div-long/2addr v0, v2

    const-wide/32 v2, 0x93a80

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/e33;->r:Lcom/onesignal/d0;

    .line 7
    iget-object v0, v0, Lcom/onesignal/d0;->s:Lcom/shabakaty/downloader/q73;

    const-string v2, "notification"

    const-string v3, "created_time < ?"

    .line 8
    invoke-virtual {v0, v2, v3, v1}, Lcom/shabakaty/downloader/q73;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
