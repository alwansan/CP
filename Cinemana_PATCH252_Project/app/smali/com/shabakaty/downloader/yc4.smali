.class public final Lcom/shabakaty/downloader/yc4;
.super Ljava/lang/Object;
.source "StatusActivity.kt"


# direct methods
.method public static final a(Landroid/content/Context;Lcom/shabakaty/downloader/q14;)Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/yc4$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/yc4$a;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/shabakaty/cinemana/ui/status/StatusActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/q14;->a()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SERVICE_STATUS_EXTRA"

    invoke-virtual {v1, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/yc4$a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method
