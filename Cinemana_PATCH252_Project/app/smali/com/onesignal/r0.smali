.class public final Lcom/onesignal/r0;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Lcom/onesignal/e0;


# direct methods
.method public constructor <init>(Lcom/onesignal/e0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/r0;->r:Lcom/onesignal/e0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget-object v0, Lcom/onesignal/q0;->n:Lcom/onesignal/q0$t;

    iget-object v1, p0, Lcom/onesignal/r0;->r:Lcom/onesignal/e0;

    invoke-interface {v0, v1}, Lcom/onesignal/q0$t;->a(Lcom/onesignal/e0;)V

    return-void
.end method
