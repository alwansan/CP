.class public final Lcom/shabakaty/downloader/mo1;
.super Ljava/lang/Object;
.source "GMSLocationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/onesignal/g;->j:Lcom/shabakaty/downloader/yo4;

    const/16 v0, 0x7530

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    const/4 v0, 0x4

    const-string v1, "Location permission exists but GoogleApiClient timed out. Maybe related to mismatch google-play aar versions."

    const/4 v2, 0x0

    .line 2
    invoke-static {v0, v1, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    invoke-static {}, Lcom/onesignal/o;->c()V

    .line 4
    sget-object v0, Lcom/onesignal/o;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/o;->i(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
