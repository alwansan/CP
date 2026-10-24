.class public Lcom/onesignal/s;
.super Ljava/util/TimerTask;
.source "OSDynamicTriggerController.java"


# instance fields
.field public final synthetic r:Ljava/lang/String;

.field public final synthetic s:Lcom/onesignal/t;


# direct methods
.method public constructor <init>(Lcom/onesignal/t;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/s;->s:Lcom/onesignal/t;

    iput-object p2, p0, Lcom/onesignal/s;->r:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/onesignal/s;->s:Lcom/onesignal/t;

    .line 2
    iget-object v0, v0, Lcom/onesignal/t;->b:Ljava/util/ArrayList;

    .line 3
    iget-object v1, p0, Lcom/onesignal/s;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/onesignal/s;->s:Lcom/onesignal/t;

    .line 5
    iget-object v0, v0, Lcom/onesignal/t;->a:Lcom/onesignal/t$a;

    .line 6
    invoke-interface {v0}, Lcom/onesignal/t$a;->a()V

    return-void
.end method
