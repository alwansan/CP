.class public Lcom/onesignal/i0;
.super Ljava/lang/Object;
.source "OSRemoteParamController.java"


# instance fields
.field public a:Lcom/onesignal/u0$e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/onesignal/i0;->a:Lcom/onesignal/u0$e;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/onesignal/i0;->a:Lcom/onesignal/u0$e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
