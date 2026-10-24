.class public final Lcom/onesignal/x0$b;
.super Ljava/lang/Object;
.source "OneSignalRestClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/x0;->a(Ljava/lang/String;Lcom/onesignal/x0$d;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic r:Ljava/lang/String;

.field public final synthetic s:Lcom/onesignal/x0$d;

.field public final synthetic t:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/onesignal/x0$d;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/x0$b;->r:Ljava/lang/String;

    iput-object p2, p0, Lcom/onesignal/x0$b;->s:Lcom/onesignal/x0$d;

    iput-object p3, p0, Lcom/onesignal/x0$b;->t:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/onesignal/x0$b;->r:Ljava/lang/String;

    iget-object v3, p0, Lcom/onesignal/x0$b;->s:Lcom/onesignal/x0$d;

    iget-object v5, p0, Lcom/onesignal/x0$b;->t:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v4, 0xea60

    .line 2
    invoke-static/range {v0 .. v5}, Lcom/onesignal/x0;->b(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/x0$d;ILjava/lang/String;)V

    return-void
.end method
