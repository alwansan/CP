.class public Lcom/shabakaty/downloader/sy2$a;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/sy2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/sy2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/sy2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/sy2$a;->a:Lcom/shabakaty/downloader/sy2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object p1

    sget-object p2, Lcom/shabakaty/downloader/sy2;->j:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Throwable;

    const-string v1, "Network broadcast received"

    invoke-virtual {p1, p2, v1, v0}, Lcom/shabakaty/downloader/ok2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/sy2$a;->a:Lcom/shabakaty/downloader/sy2;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/sy2;->f()Lcom/shabakaty/downloader/ry2;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/cc0;->c(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
