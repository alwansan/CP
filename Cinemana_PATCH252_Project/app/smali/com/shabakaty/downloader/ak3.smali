.class public Lcom/shabakaty/downloader/ak3;
.super Ljava/lang/Object;
.source "PushRegistratorAbstractGoogle.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Ljava/lang/String;

.field public final synthetic s:Lcom/onesignal/h1;


# direct methods
.method public constructor <init>(Lcom/onesignal/h1;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ak3;->s:Lcom/onesignal/h1;

    iput-object p2, p0, Lcom/shabakaty/downloader/ak3;->r:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    .line 1
    iget-object v3, p0, Lcom/shabakaty/downloader/ak3;->s:Lcom/onesignal/h1;

    iget-object v4, p0, Lcom/shabakaty/downloader/ak3;->r:Ljava/lang/String;

    .line 2
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 3
    :try_start_0
    invoke-virtual {v3, v4}, Lcom/onesignal/h1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Device registered, push token = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 5
    invoke-static {v2, v8, v6}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    iget-object v8, v3, Lcom/onesignal/h1;->a:Lcom/onesignal/f1$a;

    check-cast v8, Lcom/onesignal/q0$k;

    invoke-virtual {v8, v4, v7}, Lcom/onesignal/q0$k;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    const-string v4, "Unknown error getting FCM Token"

    .line 7
    invoke-static {v5, v4, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    iget-object v2, v3, Lcom/onesignal/h1;->a:Lcom/onesignal/f1$a;

    const/16 v3, -0xc

    check-cast v2, Lcom/onesignal/q0$k;

    invoke-virtual {v2, v6, v3}, Lcom/onesignal/q0$k;->a(Ljava/lang/String;I)V

    goto :goto_2

    :catch_0
    move-exception v4

    .line 9
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    const-string v9, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v2, "Error Getting FCM Token"

    .line 10
    invoke-static {v5, v2, v4}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    iget-boolean v2, v3, Lcom/onesignal/h1;->c:Z

    if-nez v2, :cond_3

    .line 12
    iget-object v2, v3, Lcom/onesignal/h1;->a:Lcom/onesignal/f1$a;

    const/16 v3, -0xb

    check-cast v2, Lcom/onesignal/q0$k;

    invoke-virtual {v2, v6, v3}, Lcom/onesignal/q0$k;->a(Ljava/lang/String;I)V

    goto :goto_2

    :cond_0
    const/4 v8, 0x4

    if-lt v1, v8, :cond_1

    const-string v2, "Retry count of 5 exceed! Could not get a FCM Token."

    .line 13
    invoke-static {v5, v2, v4}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 14
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\'Google Play services\' returned SERVICE_NOT_AVAILABLE error. Current retry count: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v4}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 15
    iget-object v2, v3, Lcom/onesignal/h1;->a:Lcom/onesignal/f1$a;

    const/16 v4, -0x9

    check-cast v2, Lcom/onesignal/q0$k;

    invoke-virtual {v2, v6, v4}, Lcom/onesignal/q0$k;->a(Ljava/lang/String;I)V

    .line 16
    iput-boolean v7, v3, Lcom/onesignal/h1;->c:Z

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v7, 0x0

    :cond_3
    :goto_2
    if-eqz v7, :cond_4

    return-void

    :cond_4
    add-int/lit8 v1, v1, 0x1

    mul-int/lit16 v2, v1, 0x2710

    .line 17
    invoke-static {v2}, Lcom/onesignal/o0;->y(I)V

    goto/16 :goto_0

    :cond_5
    return-void
.end method
