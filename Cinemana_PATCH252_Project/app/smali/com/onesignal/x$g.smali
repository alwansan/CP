.class public Lcom/onesignal/x$g;
.super Ljava/lang/Object;
.source "OSInAppMessageController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/x;->E(Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lorg/json/JSONArray;

.field public final synthetic s:Lcom/onesignal/x;


# direct methods
.method public constructor <init>(Lcom/onesignal/x;Lorg/json/JSONArray;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/x$g;->s:Lcom/onesignal/x;

    iput-object p2, p0, Lcom/onesignal/x$g;->r:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/onesignal/x$g;->s:Lcom/onesignal/x;

    .line 2
    iget-object v0, v0, Lcom/onesignal/x;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/i23;

    const/4 v2, 0x0

    .line 3
    iput-boolean v2, v1, Lcom/shabakaty/downloader/i23;->g:Z

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/onesignal/x$g;->s:Lcom/onesignal/x;

    iget-object v1, p0, Lcom/onesignal/x$g;->r:Lorg/json/JSONArray;

    .line 5
    invoke-virtual {v0, v1}, Lcom/onesignal/x;->C(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v1, 0x3

    const-string v2, "ERROR processing InAppMessageJson JSON Response."

    .line 6
    invoke-static {v1, v2, v0}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
