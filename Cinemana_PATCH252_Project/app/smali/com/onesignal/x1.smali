.class public Lcom/onesignal/x1;
.super Ljava/lang/Object;
.source "UserStateSynchronizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Lcom/onesignal/t1$c;


# direct methods
.method public constructor <init>(Lcom/onesignal/t1$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/x1;->r:Lcom/onesignal/t1$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/onesignal/x1;->r:Lcom/onesignal/t1$c;

    iget-object v0, v0, Lcom/onesignal/t1$c;->u:Lcom/onesignal/t1;

    .line 2
    iget-object v0, v0, Lcom/onesignal/t1;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/onesignal/x1;->r:Lcom/onesignal/t1$c;

    iget-object v0, v0, Lcom/onesignal/t1$c;->u:Lcom/onesignal/t1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onesignal/t1;->D(Z)V

    :cond_0
    return-void
.end method
