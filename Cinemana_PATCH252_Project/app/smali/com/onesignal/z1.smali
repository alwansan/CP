.class public Lcom/onesignal/z1;
.super Ljava/lang/Object;
.source "WebViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Lcom/onesignal/y1;


# direct methods
.method public constructor <init>(Lcom/onesignal/y1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/z1;->r:Lcom/onesignal/y1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/onesignal/z1;->r:Lcom/onesignal/y1;

    .line 2
    iget-object v1, v0, Lcom/onesignal/y1;->c:Landroid/app/Activity;

    .line 3
    invoke-static {v0, v1}, Lcom/onesignal/y1;->e(Lcom/onesignal/y1;Landroid/app/Activity;)V

    .line 4
    iget-object v0, p0, Lcom/onesignal/z1;->r:Lcom/onesignal/y1;

    .line 5
    iget-object v0, v0, Lcom/onesignal/y1;->a:Lcom/shabakaty/downloader/i43;

    .line 6
    new-instance v1, Lcom/onesignal/z1$a;

    invoke-direct {v1, p0}, Lcom/onesignal/z1$a;-><init>(Lcom/onesignal/z1;)V

    const-string v2, "getPageMetaData()"

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method
