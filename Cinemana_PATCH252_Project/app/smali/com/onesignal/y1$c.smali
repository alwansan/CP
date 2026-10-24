.class public final Lcom/onesignal/y1$c;
.super Ljava/lang/Object;
.source "WebViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/y1;->g(Landroid/app/Activity;Lcom/shabakaty/downloader/i23;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/onesignal/y1;

.field public final synthetic s:Landroid/app/Activity;

.field public final synthetic t:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/onesignal/y1;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/y1$c;->r:Lcom/onesignal/y1;

    iput-object p2, p0, Lcom/onesignal/y1$c;->s:Landroid/app/Activity;

    iput-object p3, p0, Lcom/onesignal/y1$c;->t:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/onesignal/y1$c;->r:Lcom/onesignal/y1;

    iget-object v1, p0, Lcom/onesignal/y1$c;->s:Landroid/app/Activity;

    iget-object v2, p0, Lcom/onesignal/y1$c;->t:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x6

    .line 3
    invoke-static {v3}, Lcom/onesignal/q0;->g(I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 4
    invoke-static {v4}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 5
    :cond_0
    new-instance v3, Lcom/shabakaty/downloader/i43;

    invoke-direct {v3, v1}, Lcom/shabakaty/downloader/i43;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/onesignal/y1;->a:Lcom/shabakaty/downloader/i43;

    const/4 v5, 0x2

    .line 6
    invoke-virtual {v3, v5}, Landroid/webkit/WebView;->setOverScrollMode(I)V

    .line 7
    iget-object v3, v0, Lcom/onesignal/y1;->a:Lcom/shabakaty/downloader/i43;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 8
    iget-object v3, v0, Lcom/onesignal/y1;->a:Lcom/shabakaty/downloader/i43;

    invoke-virtual {v3, v5}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 9
    iget-object v3, v0, Lcom/onesignal/y1;->a:Lcom/shabakaty/downloader/i43;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 10
    iget-object v3, v0, Lcom/onesignal/y1;->a:Lcom/shabakaty/downloader/i43;

    new-instance v4, Lcom/onesignal/y1$e;

    invoke-direct {v4, v0}, Lcom/onesignal/y1$e;-><init>(Lcom/onesignal/y1;)V

    const-string v5, "OSAndroid"

    invoke-virtual {v3, v4, v5}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v3, Lcom/shabakaty/downloader/y55;

    invoke-direct {v3, v0, v1, v2}, Lcom/shabakaty/downloader/y55;-><init>(Lcom/onesignal/y1;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {v1, v3}, Lcom/onesignal/p0;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method
