.class public Lcom/shabakaty/downloader/q33;
.super Ljava/lang/Object;
.source "OSOutcomeEventsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Lcom/onesignal/f0;


# direct methods
.method public constructor <init>(Lcom/onesignal/f0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/q33;->r:Lcom/onesignal/f0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/q33;->r:Lcom/onesignal/f0;

    .line 3
    iget-object v0, v0, Lcom/onesignal/f0;->b:Lcom/shabakaty/downloader/np4;

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/np4;->c()Lcom/shabakaty/downloader/t33;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/t33;->b()Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/n33;

    .line 6
    iget-object v2, p0, Lcom/shabakaty/downloader/q33;->r:Lcom/onesignal/f0;

    .line 7
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "com.amazon.device.messaging.ADM"

    .line 8
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    goto :goto_1

    :catch_0
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_0

    const/4 v3, 0x2

    goto :goto_5

    .line 9
    :cond_0
    invoke-static {}, Lcom/onesignal/o0;->o()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_5

    .line 10
    :cond_1
    invoke-static {}, Lcom/onesignal/o0;->j()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 11
    invoke-static {}, Lcom/onesignal/o0;->i()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/onesignal/o0;->l()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    if-nez v5, :cond_3

    goto :goto_3

    .line 12
    :cond_3
    invoke-static {}, Lcom/onesignal/o0;->p()Z

    move-result v4

    :cond_4
    :goto_3
    if-eqz v4, :cond_5

    goto :goto_4

    .line 13
    :cond_5
    invoke-static {}, Lcom/onesignal/o0;->o()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_5

    :cond_6
    const-string v4, "com.huawei.hwid"

    .line 14
    invoke-static {v4}, Lcom/onesignal/o0;->v(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_4
    const/16 v3, 0xd

    .line 15
    :cond_7
    :goto_5
    sget-object v4, Lcom/onesignal/q0;->d:Ljava/lang/String;

    .line 16
    new-instance v5, Lcom/shabakaty/downloader/r33;

    invoke-direct {v5, v2, v1}, Lcom/shabakaty/downloader/r33;-><init>(Lcom/onesignal/f0;Lcom/shabakaty/downloader/n33;)V

    .line 17
    iget-object v2, v2, Lcom/onesignal/f0;->b:Lcom/shabakaty/downloader/np4;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/np4;->c()Lcom/shabakaty/downloader/t33;

    move-result-object v2

    invoke-interface {v2, v4, v3, v1, v5}, Lcom/shabakaty/downloader/t33;->d(Ljava/lang/String;ILcom/shabakaty/downloader/n33;Lcom/shabakaty/downloader/m73;)V

    goto :goto_0

    :cond_8
    return-void
.end method
