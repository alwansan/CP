.class public Lcom/onesignal/x$f;
.super Lcom/shabakaty/downloader/ki;
.source "OSInAppMessageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/x;->u(Lcom/shabakaty/downloader/q73;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/onesignal/x;


# direct methods
.method public constructor <init>(Lcom/onesignal/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/x$f;->r:Lcom/onesignal/x;

    invoke-direct {p0}, Lcom/shabakaty/downloader/ki;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/shabakaty/downloader/ki;->run()V

    .line 2
    sget-object v0, Lcom/onesignal/x;->M:Ljava/lang/Object;

    sget-object v0, Lcom/onesignal/x;->M:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/x$f;->r:Lcom/onesignal/x;

    .line 4
    iget-object v2, v1, Lcom/onesignal/x;->w:Lcom/shabakaty/downloader/t23;

    .line 5
    invoke-virtual {v2}, Lcom/shabakaty/downloader/t23;->a()Ljava/util/List;

    move-result-object v2

    .line 6
    iput-object v2, v1, Lcom/onesignal/x;->E:Ljava/util/List;

    const/4 v1, 0x6

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retrieved IAMs from DB redisplayedInAppMessages: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onesignal/x$f;->r:Lcom/onesignal/x;

    .line 8
    iget-object v3, v3, Lcom/onesignal/x;->E:Ljava/util/List;

    .line 9
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 10
    invoke-static {v1, v2, v3}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
