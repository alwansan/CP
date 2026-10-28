.class Lcom/shabakaty/cinemana/local/LocalRuntime$1;
.super Ljava/lang/Object;
.source "LocalRuntime.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/local/LocalRuntime;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "1"

    const-string v1, "upgrade268"

    :try_start_4
    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->access$000()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_39

    :try_start_a
    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v1, v3}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->config(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/shabakaty/cinemana/local/LocalRuntime;->snapshotLegacy(Z)V

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->setConfig(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "account_upgrade268_complete"

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2a} :catch_2b

    goto :goto_31

    :catch_2b
    move-exception v0

    :try_start_2c
    const-string v1, "account_upgrade268"

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_31
    :goto_31
    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->schedule()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->requestScan(Z)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_38} :catch_39

    goto :goto_3f

    :catch_39
    move-exception v0

    const-string v1, "init"

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3f
    return-void
.end method
