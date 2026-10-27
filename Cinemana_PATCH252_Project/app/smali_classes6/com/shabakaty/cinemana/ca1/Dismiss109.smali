.class public final Lcom/shabakaty/cinemana/ca1/Dismiss109;
.super Ljava/lang/Object;
.source "Dismiss109.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/cinemana/ca1/Dismiss109$Hold;
    }
.end annotation


# static fields
.field static final holds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/cinemana/ca1/Dismiss109$Hold;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Dismiss109;->holds:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bind(Ljava/lang/Object;Z)V
    .locals 0
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->bindHorizontal(Ljava/lang/Object;Z)V
    return-void
.end method

.method static varargs call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7
    invoke-static {p0, p1, p2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static cancel(Lcom/shabakaty/cinemana/ca1/Dismiss109$Hold;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/Dismiss109$Hold;->down:Z

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Dismiss109$Hold;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Dismiss109$Hold;->timer:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Dismiss109$Hold;->timer:Ljava/lang/Runnable;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "removeCallbacks"

    invoke-static {v0, v2, v1}, Lcom/shabakaty/cinemana/ca1/Dismiss109;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/Dismiss109$Hold;->timer:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic lambda$bind$0(Lcom/shabakaty/cinemana/ca1/Dismiss109$Hold;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 15
    const-string v0, "onTouch"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    aget-object p1, p3, v1

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Dismiss109;->touch(Lcom/shabakaty/cinemana/ca1/Dismiss109$Hold;Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "hashCode"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "equals"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    aget-object p2, p3, p0

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    move v1, p0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, "ContinueHold109"

    return-object p0
.end method

.method static synthetic lambda$touch$1(Lcom/shabakaty/cinemana/ca1/Dismiss109$Hold;)V
    .locals 6

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Dismiss109$Hold;->binding:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Dismiss109$Hold;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    iget-boolean v2, p0, Lcom/shabakaty/cinemana/ca1/Dismiss109$Hold;->down:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/Dismiss109$Hold;->id:Ljava/lang/String;

    const-string v3, "U"

    invoke-static {v0, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "nb"

    invoke-static {v0, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/Dismiss109$Hold;->fired:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/shabakaty/cinemana/ca1/Dismiss109$Hold;->down:Z

    const-string v3, "cancelLongPress"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/shabakaty/cinemana/ca1/Dismiss109;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "setPressed"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v3, v4}, Lcom/shabakaty/cinemana/ca1/Dismiss109;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v3, "performHapticFeedback"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-static {v1, v3, v0}, Lcom/shabakaty/cinemana/ca1/Dismiss109;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_2
    iget-object p0, p0, Lcom/shabakaty/cinemana/ca1/Dismiss109$Hold;->id:Ljava/lang/String;

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Continue106;->dismiss(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :cond_1
    :goto_1
    return-void

    :catch_1
    move-exception p0

    const-string v0, "continue_hold_remove109"

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/ca1/Continue106;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method

.method static touch(Lcom/shabakaty/cinemana/ca1/Dismiss109$Hold;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Dismiss109$Hold;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "getActionMasked"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/shabakaty/cinemana/ca1/Dismiss109;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 21
    const-string v3, "getY"

    const-string v4, "getX"

    const/4 v5, 0x1

    if-nez v2, :cond_1

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Dismiss109;->cancel(Lcom/shabakaty/cinemana/ca1/Dismiss109$Hold;)V

    iput-boolean v5, p0, Lcom/shabakaty/cinemana/ca1/Dismiss109$Hold;->down:Z

    iput-boolean v1, p0, Lcom/shabakaty/cinemana/ca1/Dismiss109$Hold;->fired:Z

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v4, v2}, Lcom/shabakaty/cinemana/ca1/Dismiss109;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/shabakaty/cinemana/ca1/Dismiss109$Hold;->x:F

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v3, v2}, Lcom/shabakaty/cinemana/ca1/Dismiss109;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/shabakaty/cinemana/ca1/Dismiss109$Hold;->y:F

    .line 22
    new-instance p1, Lcom/shabakaty/cinemana/ca1/Dismiss109$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/shabakaty/cinemana/ca1/Dismiss109$$ExternalSyntheticLambda1;-><init>(Lcom/shabakaty/cinemana/ca1/Dismiss109$Hold;)V

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/Dismiss109$Hold;->timer:Ljava/lang/Runnable;

    .line 23
    iget-object p0, p0, Lcom/shabakaty/cinemana/ca1/Dismiss109$Hold;->timer:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "postDelayed"

    invoke-static {v0, p1, p0}, Lcom/shabakaty/cinemana/ca1/Dismiss109;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    .line 25
    :cond_1
    const/4 v0, 0x2

    if-ne v2, v0, :cond_3

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v4, v0}, Lcom/shabakaty/cinemana/ca1/Dismiss109;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iget v2, p0, Lcom/shabakaty/cinemana/ca1/Dismiss109$Hold;->x:F

    sub-float/2addr v0, v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v3, v1}, Lcom/shabakaty/cinemana/ca1/Dismiss109;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget v1, p0, Lcom/shabakaty/cinemana/ca1/Dismiss109$Hold;->y:F

    sub-float/2addr p1, v1

    mul-float/2addr v0, v0

    mul-float/2addr p1, p1

    add-float/2addr v0, p1

    iget p1, p0, Lcom/shabakaty/cinemana/ca1/Dismiss109$Hold;->slop:I

    iget v1, p0, Lcom/shabakaty/cinemana/ca1/Dismiss109$Hold;->slop:I

    mul-int/2addr p1, v1

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_2

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Dismiss109;->cancel(Lcom/shabakaty/cinemana/ca1/Dismiss109$Hold;)V

    :cond_2
    iget-boolean p0, p0, Lcom/shabakaty/cinemana/ca1/Dismiss109$Hold;->fired:Z

    return p0

    .line 26
    :cond_3
    if-eq v2, v5, :cond_6

    const/4 p1, 0x3

    if-ne v2, p1, :cond_4

    goto :goto_0

    .line 27
    :cond_4
    const/4 p1, 0x5

    if-ne v2, p1, :cond_5

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Dismiss109;->cancel(Lcom/shabakaty/cinemana/ca1/Dismiss109$Hold;)V

    :cond_5
    iget-boolean p0, p0, Lcom/shabakaty/cinemana/ca1/Dismiss109$Hold;->fired:Z

    return p0

    .line 26
    :cond_6
    :goto_0
    iget-boolean p1, p0, Lcom/shabakaty/cinemana/ca1/Dismiss109$Hold;->fired:Z

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Dismiss109;->cancel(Lcom/shabakaty/cinemana/ca1/Dismiss109$Hold;)V

    return p1
.end method
