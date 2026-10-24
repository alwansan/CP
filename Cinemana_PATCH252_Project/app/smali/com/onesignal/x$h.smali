.class public Lcom/onesignal/x$h;
.super Ljava/lang/Object;
.source "OSInAppMessageController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/x;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/onesignal/x;


# direct methods
.method public constructor <init>(Lcom/onesignal/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/x$h;->r:Lcom/onesignal/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x6

    const-string v1, "Delaying evaluateInAppMessages due to redisplay data not retrieved yet"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lcom/onesignal/x$h;->r:Lcom/onesignal/x;

    .line 3
    invoke-virtual {v0}, Lcom/onesignal/x;->r()V

    return-void
.end method
