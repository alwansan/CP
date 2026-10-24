.class public Lcom/onesignal/j0$a;
.super Ljava/lang/Object;
.source "OSSessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/j0;->e(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Ljava/util/List;

.field public final synthetic s:Lcom/onesignal/j0;


# direct methods
.method public constructor <init>(Lcom/onesignal/j0;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/j0$a;->s:Lcom/onesignal/j0;

    iput-object p2, p0, Lcom/onesignal/j0$a;->r:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 2
    iget-object v0, p0, Lcom/onesignal/j0$a;->s:Lcom/onesignal/j0;

    .line 3
    iget-object v0, v0, Lcom/onesignal/j0;->b:Lcom/onesignal/j0$b;

    .line 4
    iget-object v1, p0, Lcom/onesignal/j0$a;->r:Ljava/util/List;

    check-cast v0, Lcom/onesignal/q0$d;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/onesignal/q0;->H:Lcom/onesignal/f0;

    if-nez v0, :cond_0

    const/4 v0, 0x4

    const/4 v2, 0x0

    const-string v3, "OneSignal onSessionEnding called before init!"

    .line 6
    invoke-static {v0, v3, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    :cond_0
    sget-object v0, Lcom/onesignal/q0;->H:Lcom/onesignal/f0;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/onesignal/f0;->a()V

    .line 9
    :cond_1
    invoke-static {}, Lcom/onesignal/q0;->t()Lcom/onesignal/f;

    move-result-object v0

    .line 10
    sget-object v2, Lcom/onesignal/f$a;->s:Lcom/onesignal/f$a;

    .line 11
    invoke-virtual {v0}, Lcom/onesignal/f;->b()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    .line 12
    :cond_2
    iget-object v4, v0, Lcom/onesignal/f;->b:Lcom/onesignal/u;

    invoke-virtual {v4, v1}, Lcom/onesignal/u;->b(Ljava/util/List;)Lcom/onesignal/f$c;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 13
    invoke-virtual {v4, v5, v6, v1}, Lcom/onesignal/f$c;->g(JLjava/util/List;)V

    .line 14
    invoke-virtual {v4, v2}, Lcom/onesignal/f$c;->l(Lcom/onesignal/f$a;)V

    const/4 v3, 0x1

    :goto_0
    if-nez v3, :cond_3

    .line 15
    iget-object v0, v0, Lcom/onesignal/f;->b:Lcom/onesignal/u;

    invoke-virtual {v0, v1}, Lcom/onesignal/u;->b(Ljava/util/List;)Lcom/onesignal/f$c;

    move-result-object v0

    .line 16
    invoke-virtual {v0, v2}, Lcom/onesignal/f$c;->l(Lcom/onesignal/f$a;)V

    :cond_3
    return-void
.end method
