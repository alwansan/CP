.class public Lcom/onesignal/FCMBroadcastReceiver$a;
.super Ljava/lang/Object;
.source "FCMBroadcastReceiver.java"

# interfaces
.implements Lcom/onesignal/q$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/FCMBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/onesignal/FCMBroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/onesignal/FCMBroadcastReceiver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/FCMBroadcastReceiver$a;->a:Lcom/onesignal/FCMBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/onesignal/q$d;)V
    .locals 2

    const/4 v0, -0x1

    if-nez p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/onesignal/FCMBroadcastReceiver$a;->a:Lcom/onesignal/FCMBroadcastReceiver;

    sget v1, Lcom/onesignal/FCMBroadcastReceiver;->t:I

    .line 2
    invoke-virtual {p1}, Landroid/content/BroadcastReceiver;->isOrderedBroadcast()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    :cond_0
    return-void

    .line 4
    :cond_1
    iget-boolean v1, p1, Lcom/onesignal/q$d;->b:Z

    if-nez v1, :cond_4

    .line 5
    iget-boolean p1, p1, Lcom/onesignal/q$d;->d:Z

    if-eqz p1, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/onesignal/FCMBroadcastReceiver$a;->a:Lcom/onesignal/FCMBroadcastReceiver;

    sget v1, Lcom/onesignal/FCMBroadcastReceiver;->t:I

    .line 7
    invoke-virtual {p1}, Landroid/content/BroadcastReceiver;->isOrderedBroadcast()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    :cond_3
    return-void

    .line 9
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/onesignal/FCMBroadcastReceiver$a;->a:Lcom/onesignal/FCMBroadcastReceiver;

    sget v1, Lcom/onesignal/FCMBroadcastReceiver;->t:I

    .line 10
    invoke-virtual {p1}, Landroid/content/BroadcastReceiver;->isOrderedBroadcast()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 11
    invoke-virtual {p1}, Landroid/content/BroadcastReceiver;->abortBroadcast()V

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    :cond_5
    return-void
.end method
