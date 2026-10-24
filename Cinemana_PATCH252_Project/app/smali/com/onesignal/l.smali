.class public Lcom/onesignal/l;
.super Ljava/lang/Object;
.source "InAppMessageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Lcom/onesignal/m;


# direct methods
.method public constructor <init>(Lcom/onesignal/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/l;->r:Lcom/onesignal/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/onesignal/l;->r:Lcom/onesignal/m;

    .line 2
    iget-object v1, v0, Lcom/onesignal/m;->b:Landroid/app/Activity;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/onesignal/m;->e(Lcom/onesignal/y1$f;)V

    .line 4
    iget-object v0, p0, Lcom/onesignal/l;->r:Lcom/onesignal/m;

    .line 5
    iput-object v1, v0, Lcom/onesignal/m;->p:Ljava/lang/Runnable;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lcom/onesignal/m;->h:Z

    :goto_0
    return-void
.end method
