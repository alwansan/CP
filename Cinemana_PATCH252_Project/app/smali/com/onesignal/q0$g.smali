.class public final Lcom/onesignal/q0$g;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/q0;->C(Landroid/app/Activity;Lorg/json/JSONArray;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic r:Landroid/app/Activity;

.field public final synthetic s:Lorg/json/JSONArray;

.field public final synthetic t:Z

.field public final synthetic u:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lorg/json/JSONArray;ZLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/q0$g;->r:Landroid/app/Activity;

    iput-object p2, p0, Lcom/onesignal/q0$g;->s:Lorg/json/JSONArray;

    iput-boolean p3, p0, Lcom/onesignal/q0$g;->t:Z

    iput-object p4, p0, Lcom/onesignal/q0$g;->u:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget-object v0, Lcom/onesignal/q0;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/onesignal/q0;->u:Lcom/shabakaty/downloader/b33;

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/a33;

    const-string v1, "Running handleNotificationOpen() operation from pending queue."

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/a33;->a(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/onesignal/q0$g;->r:Landroid/app/Activity;

    iget-object v1, p0, Lcom/onesignal/q0$g;->s:Lorg/json/JSONArray;

    iget-boolean v2, p0, Lcom/onesignal/q0$g;->t:Z

    iget-object v3, p0, Lcom/onesignal/q0$g;->u:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/onesignal/q0;->C(Landroid/app/Activity;Lorg/json/JSONArray;ZLjava/lang/String;)V

    :cond_0
    return-void
.end method
