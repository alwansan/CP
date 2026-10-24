.class public final Lcom/shabakaty/downloader/zr1;
.super Lcom/shabakaty/downloader/as1;
.source "HandlerDispatcher.kt"


# instance fields
.field private volatile _immediate:Lcom/shabakaty/downloader/zr1;

.field public final s:Lcom/shabakaty/downloader/zr1;

.field public final t:Landroid/os/Handler;

.field public final u:Ljava/lang/String;

.field public final v:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/as1;-><init>(Lcom/shabakaty/downloader/nn0;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/zr1;->t:Landroid/os/Handler;

    iput-object p2, p0, Lcom/shabakaty/downloader/zr1;->u:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/shabakaty/downloader/zr1;->v:Z

    if-eqz p3, :cond_0

    move-object v0, p0

    .line 2
    :cond_0
    iput-object v0, p0, Lcom/shabakaty/downloader/zr1;->_immediate:Lcom/shabakaty/downloader/zr1;

    .line 3
    iget-object p3, p0, Lcom/shabakaty/downloader/zr1;->_immediate:Lcom/shabakaty/downloader/zr1;

    if-eqz p3, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance p3, Lcom/shabakaty/downloader/zr1;

    const/4 v0, 0x1

    invoke-direct {p3, p1, p2, v0}, Lcom/shabakaty/downloader/zr1;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    iput-object p3, p0, Lcom/shabakaty/downloader/zr1;->_immediate:Lcom/shabakaty/downloader/zr1;

    :goto_0
    iput-object p3, p0, Lcom/shabakaty/downloader/zr1;->s:Lcom/shabakaty/downloader/zr1;

    return-void
.end method


# virtual methods
.method public B(Lcom/shabakaty/downloader/me0;)Z
    .locals 2

    .line 1
    iget-boolean p1, p0, Lcom/shabakaty/downloader/zr1;->v:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v1, p0, Lcom/shabakaty/downloader/zr1;->t:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public M()Lcom/shabakaty/downloader/vl2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zr1;->s:Lcom/shabakaty/downloader/zr1;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/zr1;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/shabakaty/downloader/zr1;

    iget-object p1, p1, Lcom/shabakaty/downloader/zr1;->t:Landroid/os/Handler;

    iget-object v0, p0, Lcom/shabakaty/downloader/zr1;->t:Landroid/os/Handler;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f(JLcom/shabakaty/downloader/fv;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/shabakaty/downloader/fv<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/zr1$a;

    invoke-direct {v0, p0, p3}, Lcom/shabakaty/downloader/zr1$a;-><init>(Lcom/shabakaty/downloader/zr1;Lcom/shabakaty/downloader/fv;)V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/zr1;->t:Landroid/os/Handler;

    const-wide v2, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-static {p1, p2, v2, v3}, Lcom/shabakaty/downloader/rm3;->d(JJ)J

    move-result-wide p1

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/zr1$b;

    invoke-direct {p1, p0, v0}, Lcom/shabakaty/downloader/zr1$b;-><init>(Lcom/shabakaty/downloader/zr1;Ljava/lang/Runnable;)V

    check-cast p3, Lcom/shabakaty/downloader/gv;

    invoke-virtual {p3, p1}, Lcom/shabakaty/downloader/gv;->q(Lcom/shabakaty/downloader/tm1;)V

    return-void
.end method

.method public g(Lcom/shabakaty/downloader/me0;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/zr1;->t:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zr1;->t:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/vl2;->O()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/zr1;->u:Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/zr1;->t:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    :goto_0
    iget-boolean v1, p0, Lcom/shabakaty/downloader/zr1;->v:Z

    if-eqz v1, :cond_2

    const-string v1, ".immediate"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    return-object v0
.end method
