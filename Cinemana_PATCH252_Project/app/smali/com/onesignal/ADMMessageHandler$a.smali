.class public Lcom/onesignal/ADMMessageHandler$a;
.super Ljava/lang/Object;
.source "ADMMessageHandler.java"

# interfaces
.implements Lcom/onesignal/q$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/ADMMessageHandler;->onMessage(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/os/Bundle;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/onesignal/ADMMessageHandler;Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/onesignal/ADMMessageHandler$a;->a:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/onesignal/ADMMessageHandler$a;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/onesignal/q$d;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/onesignal/q$d;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/onesignal/ADMMessageHandler$a;->a:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/onesignal/q;->a(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/c33;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    invoke-direct {v0, v1, p1, v2}, Lcom/shabakaty/downloader/c33;-><init>(Ljava/util/List;Lorg/json/JSONObject;I)V

    .line 5
    new-instance v1, Lcom/shabakaty/downloader/h33;

    iget-object v3, p0, Lcom/onesignal/ADMMessageHandler$a;->b:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/shabakaty/downloader/h33;-><init>(Landroid/content/Context;)V

    .line 6
    iput-object p1, v1, Lcom/shabakaty/downloader/h33;->d:Lorg/json/JSONObject;

    .line 7
    iput-object v3, v1, Lcom/shabakaty/downloader/h33;->c:Landroid/content/Context;

    .line 8
    iput-object v0, v1, Lcom/shabakaty/downloader/h33;->b:Lcom/shabakaty/downloader/c33;

    .line 9
    new-instance p1, Lcom/onesignal/b0;

    .line 10
    iget-boolean v0, v1, Lcom/shabakaty/downloader/h33;->e:Z

    const/4 v3, 0x1

    .line 11
    invoke-direct {p1, v1, v0, v3}, Lcom/onesignal/b0;-><init>(Lcom/shabakaty/downloader/h33;ZZ)V

    .line 12
    invoke-static {p1, v2, v3}, Lcom/onesignal/q;->f(Lcom/onesignal/b0;ZZ)I

    return-void
.end method
