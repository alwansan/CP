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
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->access$000()V

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->schedule()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->requestScan(Z)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_14

    :catch_e
    move-exception v0

    const-string v1, "init"

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_14
    return-void
.end method
