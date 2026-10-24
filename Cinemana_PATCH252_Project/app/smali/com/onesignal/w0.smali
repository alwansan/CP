.class public final Lcom/onesignal/w0;
.super Ljava/lang/Object;
.source "OneSignalRestClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Ljava/lang/String;

.field public final synthetic s:Lorg/json/JSONObject;

.field public final synthetic t:Lcom/onesignal/x0$d;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/x0$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/w0;->r:Ljava/lang/String;

    iput-object p2, p0, Lcom/onesignal/w0;->s:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/onesignal/w0;->t:Lcom/onesignal/x0$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/onesignal/w0;->r:Ljava/lang/String;

    iget-object v2, p0, Lcom/onesignal/w0;->s:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/onesignal/w0;->t:Lcom/onesignal/x0$d;

    const-string v1, "PUT"

    const v4, 0x1d4c0

    const/4 v5, 0x0

    .line 2
    invoke-static/range {v0 .. v5}, Lcom/onesignal/x0;->b(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/x0$d;ILjava/lang/String;)V

    return-void
.end method
