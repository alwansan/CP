.class Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle$1$1;
.super Ljava/lang/Object;
.source "LocalRuntime.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle$1;->onSuccess(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle$1;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle$1;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle$1$1;->this$1:Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle$1;

    iput-object p2, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle$1$1;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "2"

    const-string v1, "kind"

    const-string v2, "1"

    const-string v3, "detail_result id="

    iget-object v4, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle$1$1;->val$result:Ljava/lang/Object;

    invoke-static {v4}, Lcom/shabakaty/cinemana/local/LocalRuntime;->capture(Ljava/lang/Object;)V

    :try_start_d
    new-instance v4, Lorg/json/JSONObject;

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->access$100()Lcom/shabakaty/downloader/lr1;

    move-result-object v5

    iget-object v6, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle$1$1;->val$result:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lcom/shabakaty/downloader/lr1;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle$1$1;->this$1:Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle$1;

    iget-object v3, v3, Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle$1;->this$0:Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle;

    iget-object v3, v3, Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle;->id:Ljava/lang/String;

    invoke-static {v3}, Lcom/shabakaty/cinemana/local/LocalRuntime;->safeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " kind="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    move-object v0, v2

    goto :goto_4c

    :cond_3f
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    goto :goto_4c

    :cond_4a
    const-string v0, "other"

    :goto_4c
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " root="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "rootSeries"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->safeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " poster="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "imgObjUrl"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " elapsed_ms="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle$1$1;->this$1:Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle$1;

    iget-wide v2, v2, Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle$1;->val$started:J

    sub-long/2addr v0, v2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_8d} :catch_8e

    goto :goto_94

    :catch_8e
    move-exception v0

    const-string v1, "detail_trace"

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_94
    return-void
.end method
