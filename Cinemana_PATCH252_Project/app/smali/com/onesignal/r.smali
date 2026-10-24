.class public final Lcom/onesignal/r;
.super Ljava/lang/Object;
.source "NotificationBundleProcessor.java"

# interfaces
.implements Lcom/onesignal/d0$a;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Landroid/os/Bundle;

.field public final synthetic d:Lcom/onesignal/q$b;

.field public final synthetic e:Lorg/json/JSONObject;

.field public final synthetic f:J

.field public final synthetic g:Lcom/onesignal/q$d;


# direct methods
.method public constructor <init>(ZLandroid/content/Context;Landroid/os/Bundle;Lcom/onesignal/q$b;Lorg/json/JSONObject;JZLcom/onesignal/q$d;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/onesignal/r;->a:Z

    iput-object p2, p0, Lcom/onesignal/r;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/onesignal/r;->c:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/onesignal/r;->d:Lcom/onesignal/q$b;

    iput-object p5, p0, Lcom/onesignal/r;->e:Lorg/json/JSONObject;

    iput-wide p6, p0, Lcom/onesignal/r;->f:J

    iput-object p9, p0, Lcom/onesignal/r;->g:Lcom/onesignal/q$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/onesignal/r;->a:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    const-string v0, "startNotificationProcessing returning, with context: "

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/onesignal/r;->b:Landroid/content/Context;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " and bundle: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onesignal/r;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 3
    invoke-static {p1, v0, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    iget-object p1, p0, Lcom/onesignal/r;->d:Lcom/onesignal/q$b;

    check-cast p1, Lcom/onesignal/q$a;

    .line 5
    iget-object v0, p1, Lcom/onesignal/q$a;->a:Lcom/onesignal/q$d;

    .line 6
    iput-boolean v1, v0, Lcom/onesignal/q$d;->b:Z

    .line 7
    iget-object p1, p1, Lcom/onesignal/q$a;->b:Lcom/onesignal/q$c;

    invoke-interface {p1, v0}, Lcom/onesignal/q$c;->a(Lcom/onesignal/q$d;)V

    return-void

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/onesignal/r;->e:Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/shabakaty/downloader/g33;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    .line 9
    iget-object p1, p0, Lcom/onesignal/r;->c:Landroid/os/Bundle;

    const-string v0, "android_notif_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/onesignal/r;->c:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    move v4, p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const/4 v4, 0x0

    .line 11
    :goto_0
    iget-object v2, p0, Lcom/onesignal/r;->b:Landroid/content/Context;

    iget-object p1, p0, Lcom/onesignal/r;->e:Lorg/json/JSONObject;

    .line 12
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    iget-wide v6, p0, Lcom/onesignal/r;->f:J

    iget-boolean v8, p0, Lcom/onesignal/r;->a:Z

    const/4 v9, 0x1

    .line 13
    invoke-static/range {v2 .. v9}, Lcom/onesignal/OSNotificationWorkManager;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;JZZ)V

    .line 14
    iget-object p1, p0, Lcom/onesignal/r;->g:Lcom/onesignal/q$d;

    .line 15
    iput-boolean v1, p1, Lcom/onesignal/q$d;->d:Z

    .line 16
    iget-object p1, p0, Lcom/onesignal/r;->d:Lcom/onesignal/q$b;

    check-cast p1, Lcom/onesignal/q$a;

    .line 17
    iget-object v0, p1, Lcom/onesignal/q$a;->b:Lcom/onesignal/q$c;

    iget-object p1, p1, Lcom/onesignal/q$a;->a:Lcom/onesignal/q$d;

    invoke-interface {v0, p1}, Lcom/onesignal/q$c;->a(Lcom/onesignal/q$d;)V

    return-void
.end method
