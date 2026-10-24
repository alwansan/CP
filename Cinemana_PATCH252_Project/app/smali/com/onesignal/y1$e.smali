.class public Lcom/onesignal/y1$e;
.super Ljava/lang/Object;
.source "WebViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/y1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final synthetic a:Lcom/onesignal/y1;


# direct methods
.method public constructor <init>(Lcom/onesignal/y1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/y1$e;->a:Lcom/onesignal/y1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "body"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "id"

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/onesignal/y1$e;->a:Lcom/onesignal/y1;

    .line 4
    iget-object v2, v2, Lcom/onesignal/y1;->d:Lcom/shabakaty/downloader/i23;

    .line 5
    iget-boolean v2, v2, Lcom/shabakaty/downloader/i23;->k:Z

    if-eqz v2, :cond_0

    .line 6
    invoke-static {}, Lcom/onesignal/q0;->u()Lcom/onesignal/x;

    move-result-object v0

    iget-object v2, p0, Lcom/onesignal/y1$e;->a:Lcom/onesignal/y1;

    .line 7
    iget-object v2, v2, Lcom/onesignal/y1;->d:Lcom/shabakaty/downloader/i23;

    .line 8
    invoke-virtual {v0, v2, p1}, Lcom/onesignal/x;->B(Lcom/shabakaty/downloader/i23;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 9
    invoke-static {}, Lcom/onesignal/q0;->u()Lcom/onesignal/x;

    move-result-object v0

    iget-object v2, p0, Lcom/onesignal/y1$e;->a:Lcom/onesignal/y1;

    .line 10
    iget-object v2, v2, Lcom/onesignal/y1;->d:Lcom/shabakaty/downloader/i23;

    .line 11
    invoke-virtual {v0, v2, p1}, Lcom/onesignal/x;->A(Lcom/shabakaty/downloader/i23;Lorg/json/JSONObject;)V

    :cond_1
    :goto_0
    const-string v0, "close"

    .line 12
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    iget-object p1, p0, Lcom/onesignal/y1$e;->a:Lcom/onesignal/y1;

    invoke-virtual {p1, v1}, Lcom/onesignal/y1;->f(Lcom/onesignal/y1$f;)V

    :cond_2
    return-void
.end method

.method public final b(Lorg/json/JSONObject;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/onesignal/q0;->u()Lcom/onesignal/x;

    move-result-object v0

    iget-object v1, p0, Lcom/onesignal/y1$e;->a:Lcom/onesignal/y1;

    .line 2
    iget-object v1, v1, Lcom/onesignal/y1;->d:Lcom/shabakaty/downloader/i23;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "pageId"

    .line 4
    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pageIndex"

    .line 5
    invoke-virtual {p1, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    iget-boolean p1, v1, Lcom/shabakaty/downloader/i23;->k:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0, v1}, Lcom/onesignal/x;->I(Lcom/shabakaty/downloader/i23;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/shabakaty/downloader/i23;->a:Ljava/lang/String;

    invoke-static {v4, v5, v3}, Lcom/shabakaty/downloader/ni4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 9
    iget-object v5, v0, Lcom/onesignal/x;->B:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 p1, 0x7

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Already sent page impression for id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {p1, v0, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object v5, v0, Lcom/onesignal/x;->B:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    :try_start_0
    new-instance v5, Lcom/shabakaty/downloader/k23;

    invoke-direct {v5, v0, p1, v3}, Lcom/shabakaty/downloader/k23;-><init>(Lcom/onesignal/x;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in_app_messages/"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/shabakaty/downloader/i23;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/pageImpression"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/onesignal/v;

    invoke-direct {v1, v0, v4}, Lcom/onesignal/v;-><init>(Lcom/onesignal/x;Ljava/lang/String;)V

    invoke-static {p1, v5, v1}, Lcom/onesignal/x0;->c(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/x0$d;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x3

    const-string v0, "Unable to execute in-app message impression HTTP request due to invalid JSON"

    .line 16
    invoke-static {p1, v0, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final c(Lorg/json/JSONObject;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/onesignal/y1$g;->s:Lcom/onesignal/y1$g;

    const-string v1, "displayLocation"

    .line 2
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "FULL_SCREEN"

    .line 3
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/onesignal/y1$g;->valueOf(Ljava/lang/String;)Lcom/onesignal/y1$g;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    move-object v4, v0

    :goto_0
    const/4 v1, -0x1

    if-ne v4, v0, :cond_1

    const/4 v0, -0x1

    const/4 v5, -0x1

    goto :goto_1

    .line 5
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/onesignal/y1$e;->a:Lcom/onesignal/y1;

    .line 6
    iget-object v0, v0, Lcom/onesignal/y1;->c:Landroid/app/Activity;

    const-string v2, "pageMetaData"

    .line 7
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/onesignal/y1;->d(Landroid/app/Activity;Lorg/json/JSONObject;)I

    move-result v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move v5, v1

    :goto_1
    :try_start_2
    const-string v0, "dragToDismissDisabled"

    .line 8
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move v8, p1

    goto :goto_2

    :catch_2
    const/4 p1, 0x0

    const/4 v8, 0x0

    .line 9
    :goto_2
    iget-object p1, p0, Lcom/onesignal/y1$e;->a:Lcom/onesignal/y1;

    .line 10
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/onesignal/y1;->f:Ljava/lang/Integer;

    .line 11
    new-instance v0, Lcom/onesignal/m;

    iget-object v3, p1, Lcom/onesignal/y1;->a:Lcom/shabakaty/downloader/i43;

    iget-object v1, p1, Lcom/onesignal/y1;->d:Lcom/shabakaty/downloader/i23;

    .line 12
    iget-wide v6, v1, Lcom/shabakaty/downloader/i23;->f:D

    move-object v2, v0

    .line 13
    invoke-direct/range {v2 .. v8}, Lcom/onesignal/m;-><init>(Landroid/webkit/WebView;Lcom/onesignal/y1$g;IDZ)V

    iput-object v0, p1, Lcom/onesignal/y1;->b:Lcom/onesignal/m;

    .line 14
    new-instance v1, Lcom/onesignal/a2;

    invoke-direct {v1, p1}, Lcom/onesignal/a2;-><init>(Lcom/onesignal/y1;)V

    .line 15
    iput-object v1, v0, Lcom/onesignal/m;->o:Lcom/onesignal/m$c;

    .line 16
    sget-object v0, Lcom/shabakaty/downloader/b3;->s:Lcom/onesignal/a;

    if-eqz v0, :cond_2

    const-string v1, "com.onesignal.y1"

    .line 17
    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/onesignal/y1;->d:Lcom/shabakaty/downloader/i23;

    iget-object v2, v2, Lcom/shabakaty/downloader/i23;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/onesignal/a;->a(Ljava/lang/String;Lcom/onesignal/a$b;)V

    :cond_2
    return-void
.end method

.method public postMessage(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x6

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OSJavaScriptInterface:postMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    invoke-static {v0, v1, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "type"

    .line 4
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x587780a0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v2, v3, :cond_2

    const v3, 0x290198c

    if-eq v2, v3, :cond_1

    const v3, 0x6e563d7e

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "action_taken"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "rendering_complete"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const-string v2, "page_change"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x2

    :cond_3
    :goto_0
    if-eqz v1, :cond_6

    if-eq v1, v4, :cond_5

    if-eq v1, v5, :cond_4

    goto :goto_1

    .line 6
    :cond_4
    invoke-virtual {p0, v0}, Lcom/onesignal/y1$e;->b(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 7
    :cond_5
    iget-object p1, p0, Lcom/onesignal/y1$e;->a:Lcom/onesignal/y1;

    .line 8
    iget-object p1, p1, Lcom/onesignal/y1;->b:Lcom/onesignal/m;

    .line 9
    iget-boolean p1, p1, Lcom/onesignal/m;->i:Z

    if-nez p1, :cond_7

    .line 10
    invoke-virtual {p0, v0}, Lcom/onesignal/y1$e;->a(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 11
    :cond_6
    invoke-virtual {p0, v0}, Lcom/onesignal/y1$e;->c(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_7
    :goto_1
    return-void
.end method
