.class public Lcom/onesignal/u0;
.super Ljava/lang/Object;
.source "OneSignalRemoteParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/u0$b;,
        Lcom/onesignal/u0$e;,
        Lcom/onesignal/u0$d;,
        Lcom/onesignal/u0$c;
    }
.end annotation


# static fields
.field public static a:I


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/u0$b;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/onesignal/u0$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/onesignal/u0$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/u0$b;)V

    const-string p2, "apps/"

    const-string v1, "/android_params.js"

    .line 2
    invoke-static {p2, p0, v1}, Lcom/shabakaty/downloader/jp2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_0

    const-string p2, "?player_id="

    .line 3
    invoke-static {p0, p2, p1}, Lcom/shabakaty/downloader/jp2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/4 p1, 0x6

    const/4 p2, 0x0

    const-string v1, "Starting request to get Android parameters."

    .line 4
    invoke-static {p1, v1, p2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "CACHE_KEY_REMOTE_PARAMS"

    .line 5
    invoke-static {p0, v0, p1}, Lcom/onesignal/x0;->a(Ljava/lang/String;Lcom/onesignal/x0$d;Ljava/lang/String;)V

    return-void
.end method
