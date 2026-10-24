.class public Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AlarmManagerSchedulerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerSchedulerBroadcastReceiver.java"


# static fields
.field public static final synthetic a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "backendName"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "extras"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "priority"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v3, "attemptNumber"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 5
    invoke-static {p1}, Lcom/shabakaty/downloader/yq4;->b(Landroid/content/Context;)V

    .line 6
    invoke-static {}, Lcom/shabakaty/downloader/oq4;->a()Lcom/shabakaty/downloader/oq4$a;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/oq4$a;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/oq4$a;

    .line 8
    invoke-static {v2}, Lcom/shabakaty/downloader/wf3;->b(I)Lcom/shabakaty/downloader/tf3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/oq4$a;->c(Lcom/shabakaty/downloader/tf3;)Lcom/shabakaty/downloader/oq4$a;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 9
    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/shabakaty/downloader/bi$b;

    .line 10
    iput-object v0, v1, Lcom/shabakaty/downloader/bi$b;->b:[B

    .line 11
    :cond_0
    invoke-static {}, Lcom/shabakaty/downloader/yq4;->a()Lcom/shabakaty/downloader/yq4;

    move-result-object v0

    .line 12
    iget-object v0, v0, Lcom/shabakaty/downloader/yq4;->d:Lcom/shabakaty/downloader/ww4;

    .line 13
    invoke-virtual {p1}, Lcom/shabakaty/downloader/oq4$a;->a()Lcom/shabakaty/downloader/oq4;

    move-result-object p1

    sget-object v1, Lcom/shabakaty/downloader/b5;->r:Lcom/shabakaty/downloader/b5;

    .line 14
    iget-object v2, v0, Lcom/shabakaty/downloader/ww4;->e:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/shabakaty/downloader/vw4;

    invoke-direct {v3, v0, p1, p2, v1}, Lcom/shabakaty/downloader/vw4;-><init>(Lcom/shabakaty/downloader/ww4;Lcom/shabakaty/downloader/oq4;ILjava/lang/Runnable;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
