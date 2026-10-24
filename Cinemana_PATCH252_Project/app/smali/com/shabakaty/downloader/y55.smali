.class public Lcom/shabakaty/downloader/y55;
.super Ljava/lang/Object;
.source "WebViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Landroid/app/Activity;

.field public final synthetic s:Ljava/lang/String;

.field public final synthetic t:Lcom/onesignal/y1;


# direct methods
.method public constructor <init>(Lcom/onesignal/y1;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/y55;->t:Lcom/onesignal/y1;

    iput-object p2, p0, Lcom/shabakaty/downloader/y55;->r:Landroid/app/Activity;

    iput-object p3, p0, Lcom/shabakaty/downloader/y55;->s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/y55;->t:Lcom/onesignal/y1;

    iget-object v1, p0, Lcom/shabakaty/downloader/y55;->r:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/onesignal/y1;->e(Lcom/onesignal/y1;Landroid/app/Activity;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/y55;->t:Lcom/onesignal/y1;

    .line 3
    iget-object v0, v0, Lcom/onesignal/y1;->a:Lcom/shabakaty/downloader/i43;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/y55;->s:Ljava/lang/String;

    const-string v2, "text/html; charset=utf-8"

    const-string v3, "base64"

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
