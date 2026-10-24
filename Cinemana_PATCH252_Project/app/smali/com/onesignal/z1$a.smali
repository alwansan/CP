.class public Lcom/onesignal/z1$a;
.super Ljava/lang/Object;
.source "WebViewManager.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/z1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/onesignal/z1;


# direct methods
.method public constructor <init>(Lcom/onesignal/z1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/z1$a;->a:Lcom/onesignal/z1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveValue(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/onesignal/z1$a;->a:Lcom/onesignal/z1;

    iget-object v0, v0, Lcom/onesignal/z1;->r:Lcom/onesignal/y1;

    .line 3
    iget-object v0, v0, Lcom/onesignal/y1;->c:Landroid/app/Activity;

    .line 4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/onesignal/y1;->d(Landroid/app/Activity;Lorg/json/JSONObject;)I

    move-result p1

    .line 5
    iget-object v0, p0, Lcom/onesignal/z1$a;->a:Lcom/onesignal/z1;

    iget-object v0, v0, Lcom/onesignal/z1;->r:Lcom/onesignal/y1;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 6
    invoke-virtual {v0, p1}, Lcom/onesignal/y1;->j(Ljava/lang/Integer;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
