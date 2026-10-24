.class Lcom/onesignal/OSPermissionChangedInternalObserver;
.super Ljava/lang/Object;
.source "OSPermissionChangedInternalObserver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/shabakaty/downloader/a43;)V
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/shabakaty/downloader/a43;->s:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 2
    sget-object v0, Lcom/onesignal/q0;->b:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/li;->c(ILandroid/content/Context;)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/onesignal/q0;->f()Z

    move-result p0

    .line 4
    invoke-static {}, Lcom/onesignal/c1;->b()Lcom/onesignal/q1;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :try_start_0
    invoke-virtual {v0}, Lcom/onesignal/t1;->r()Lcom/onesignal/n1;

    move-result-object v0

    const-string v1, "androidPermission"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/onesignal/n1;->m(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public changed(Lcom/shabakaty/downloader/a43;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/onesignal/OSPermissionChangedInternalObserver;->a(Lcom/shabakaty/downloader/a43;)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/yo4;

    sget-object v1, Lcom/onesignal/q0;->Y:Lcom/shabakaty/downloader/a43;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/a43;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/a43;

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/yo4;-><init>(Lcom/shabakaty/downloader/a43;Lcom/shabakaty/downloader/a43;)V

    .line 3
    sget-object v1, Lcom/onesignal/q0;->Z:Lcom/shabakaty/downloader/l33;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/l33;

    const/4 v2, 0x1

    const-string v3, "onOSPermissionChanged"

    invoke-direct {v1, v3, v2}, Lcom/shabakaty/downloader/l33;-><init>(Ljava/lang/String;Z)V

    sput-object v1, Lcom/onesignal/q0;->Z:Lcom/shabakaty/downloader/l33;

    .line 5
    :cond_0
    sget-object v1, Lcom/onesignal/q0;->Z:Lcom/shabakaty/downloader/l33;

    .line 6
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/l33;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/shabakaty/downloader/a43;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/a43;

    sput-object p1, Lcom/onesignal/q0;->Y:Lcom/shabakaty/downloader/a43;

    .line 8
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lcom/shabakaty/downloader/s73;->a:Ljava/lang/String;

    iget-boolean p1, p1, Lcom/shabakaty/downloader/a43;->s:Z

    const-string v1, "ONESIGNAL_ACCEPTED_NOTIFICATION_LAST"

    invoke-static {v0, v1, p1}, Lcom/shabakaty/downloader/s73;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method
