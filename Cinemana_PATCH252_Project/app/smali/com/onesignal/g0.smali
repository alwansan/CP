.class public Lcom/onesignal/g0;
.super Ljava/lang/Object;
.source "OSReceiveReceiptController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Ljava/lang/String;

.field public final synthetic s:Ljava/lang/String;

.field public final synthetic t:Ljava/lang/String;

.field public final synthetic u:Lcom/shabakaty/downloader/ar$a;

.field public final synthetic v:Lcom/shabakaty/downloader/b43;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/b43;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/ar$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/g0;->v:Lcom/shabakaty/downloader/b43;

    iput-object p2, p0, Lcom/onesignal/g0;->r:Ljava/lang/String;

    iput-object p3, p0, Lcom/onesignal/g0;->s:Ljava/lang/String;

    iput-object p4, p0, Lcom/onesignal/g0;->t:Ljava/lang/String;

    iput-object p5, p0, Lcom/onesignal/g0;->u:Lcom/shabakaty/downloader/ar$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/onesignal/g0;->v:Lcom/shabakaty/downloader/b43;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/b43;->b:Lcom/onesignal/h0;

    .line 3
    iget-object v1, p0, Lcom/onesignal/g0;->r:Ljava/lang/String;

    iget-object v2, p0, Lcom/onesignal/g0;->s:Ljava/lang/String;

    iget-object v3, p0, Lcom/onesignal/g0;->t:Ljava/lang/String;

    new-instance v4, Lcom/onesignal/g0$a;

    invoke-direct {v4, p0}, Lcom/onesignal/g0$a;-><init>(Lcom/onesignal/g0;)V

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "app_id"

    .line 5
    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "player_id"

    .line 6
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifications/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/report_received"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/onesignal/w0;

    invoke-direct {v3, v1, v0, v4}, Lcom/onesignal/w0;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/x0$d;)V

    const-string v0, "OS_REST_ASYNC_PUT"

    invoke-direct {v2, v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x3

    const-string v2, "Generating direct receive receipt:JSON Failed."

    .line 10
    invoke-static {v1, v2, v0}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
