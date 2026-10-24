.class public Lcom/onesignal/g1;
.super Ljava/lang/Object;
.source "PushRegistratorADM.java"

# interfaces
.implements Lcom/onesignal/f1;


# static fields
.field public static a:Lcom/onesignal/f1$a;

.field public static b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/onesignal/g1;->a:Lcom/onesignal/f1$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2
    sput-boolean v1, Lcom/onesignal/g1;->b:Z

    .line 3
    check-cast v0, Lcom/onesignal/q0$k;

    invoke-virtual {v0, p0, v1}, Lcom/onesignal/q0$k;->a(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/onesignal/f1$a;)V
    .locals 1

    .line 1
    sput-object p3, Lcom/onesignal/g1;->a:Lcom/onesignal/f1$a;

    .line 2
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/onesignal/g1$a;

    invoke-direct {v0, p0, p1, p3}, Lcom/onesignal/g1$a;-><init>(Lcom/onesignal/g1;Landroid/content/Context;Lcom/onesignal/f1$a;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method
