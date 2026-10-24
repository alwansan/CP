.class public final Lcom/shabakaty/downloader/at2;
.super Lcom/shabakaty/downloader/bk;
.source "MetadataRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final C:Lcom/shabakaty/downloader/vs2;

.field public final D:Lcom/shabakaty/downloader/zs2;

.field public final E:Landroid/os/Handler;

.field public final F:Lcom/shabakaty/downloader/ys2;

.field public G:Lcom/shabakaty/downloader/us2;

.field public H:Z

.field public I:Z

.field public J:J

.field public K:J

.field public L:Lcom/shabakaty/downloader/ps2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/zs2;Landroid/os/Looper;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/vs2;->a:Lcom/shabakaty/downloader/vs2;

    const/4 v1, 0x5

    .line 2
    invoke-direct {p0, v1}, Lcom/shabakaty/downloader/bk;-><init>(I)V

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/at2;->D:Lcom/shabakaty/downloader/zs2;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 5
    :cond_0
    sget p1, Lcom/shabakaty/downloader/sy4;->a:I

    .line 6
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 7
    :goto_0
    iput-object p1, p0, Lcom/shabakaty/downloader/at2;->E:Landroid/os/Handler;

    .line 8
    iput-object v0, p0, Lcom/shabakaty/downloader/at2;->C:Lcom/shabakaty/downloader/vs2;

    .line 9
    new-instance p1, Lcom/shabakaty/downloader/ys2;

    invoke-direct {p1}, Lcom/shabakaty/downloader/ys2;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/at2;->F:Lcom/shabakaty/downloader/ys2;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    iput-wide p1, p0, Lcom/shabakaty/downloader/at2;->K:J

    return-void
.end method


# virtual methods
.method public B()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/shabakaty/downloader/at2;->L:Lcom/shabakaty/downloader/ps2;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    iput-wide v1, p0, Lcom/shabakaty/downloader/at2;->K:J

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/at2;->G:Lcom/shabakaty/downloader/us2;

    return-void
.end method

.method public D(JZ)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/at2;->L:Lcom/shabakaty/downloader/ps2;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    iput-wide p1, p0, Lcom/shabakaty/downloader/at2;->K:J

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/shabakaty/downloader/at2;->H:Z

    .line 4
    iput-boolean p1, p0, Lcom/shabakaty/downloader/at2;->I:Z

    return-void
.end method

.method public H([Lcom/shabakaty/downloader/wh1;JJ)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/shabakaty/downloader/at2;->C:Lcom/shabakaty/downloader/vs2;

    const/4 p3, 0x0

    aget-object p1, p1, p3

    invoke-interface {p2, p1}, Lcom/shabakaty/downloader/vs2;->b(Lcom/shabakaty/downloader/wh1;)Lcom/shabakaty/downloader/us2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/at2;->G:Lcom/shabakaty/downloader/us2;

    return-void
.end method

.method public final J(Lcom/shabakaty/downloader/ps2;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ps2;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ps2$b;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p1, Lcom/shabakaty/downloader/ps2;->r:[Lcom/shabakaty/downloader/ps2$b;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 2
    aget-object v1, v1, v0

    .line 3
    invoke-interface {v1}, Lcom/shabakaty/downloader/ps2$b;->Z()Lcom/shabakaty/downloader/wh1;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/at2;->C:Lcom/shabakaty/downloader/vs2;

    invoke-interface {v2, v1}, Lcom/shabakaty/downloader/vs2;->a(Lcom/shabakaty/downloader/wh1;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/at2;->C:Lcom/shabakaty/downloader/vs2;

    .line 6
    invoke-interface {v2, v1}, Lcom/shabakaty/downloader/vs2;->b(Lcom/shabakaty/downloader/wh1;)Lcom/shabakaty/downloader/us2;

    move-result-object v1

    .line 7
    iget-object v2, p1, Lcom/shabakaty/downloader/ps2;->r:[Lcom/shabakaty/downloader/ps2$b;

    aget-object v2, v2, v0

    .line 8
    invoke-interface {v2}, Lcom/shabakaty/downloader/ps2$b;->q1()[B

    move-result-object v2

    .line 9
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v3, p0, Lcom/shabakaty/downloader/at2;->F:Lcom/shabakaty/downloader/ys2;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/bn0;->H()V

    .line 11
    iget-object v3, p0, Lcom/shabakaty/downloader/at2;->F:Lcom/shabakaty/downloader/ys2;

    array-length v4, v2

    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/bn0;->J(I)V

    .line 12
    iget-object v3, p0, Lcom/shabakaty/downloader/at2;->F:Lcom/shabakaty/downloader/ys2;

    iget-object v3, v3, Lcom/shabakaty/downloader/bn0;->t:Ljava/nio/ByteBuffer;

    sget v4, Lcom/shabakaty/downloader/sy4;->a:I

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 13
    iget-object v2, p0, Lcom/shabakaty/downloader/at2;->F:Lcom/shabakaty/downloader/ys2;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/bn0;->K()V

    .line 14
    iget-object v2, p0, Lcom/shabakaty/downloader/at2;->F:Lcom/shabakaty/downloader/ys2;

    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/us2;->a(Lcom/shabakaty/downloader/ys2;)Lcom/shabakaty/downloader/ps2;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 15
    invoke-virtual {p0, v1, p2}, Lcom/shabakaty/downloader/at2;->J(Lcom/shabakaty/downloader/ps2;Ljava/util/List;)V

    goto :goto_1

    .line 16
    :cond_0
    iget-object v1, p1, Lcom/shabakaty/downloader/ps2;->r:[Lcom/shabakaty/downloader/ps2$b;

    aget-object v1, v1, v0

    .line 17
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(Lcom/shabakaty/downloader/wh1;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/at2;->C:Lcom/shabakaty/downloader/vs2;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/vs2;->a(Lcom/shabakaty/downloader/wh1;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/wh1;->V:Ljava/lang/Class;

    if-nez p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    or-int/2addr p1, v1

    or-int/2addr p1, v1

    return p1

    :cond_1
    return v1
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/at2;->I:Z

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "MetadataRenderer"

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/ps2;

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/at2;->D:Lcom/shabakaty/downloader/zs2;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/zs2;->f0(Lcom/shabakaty/downloader/ps2;)V

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public o(JJ)V
    .locals 4

    const/4 p3, 0x1

    const/4 p4, 0x1

    :cond_0
    :goto_0
    if-eqz p4, :cond_6

    .line 1
    iget-boolean p4, p0, Lcom/shabakaty/downloader/at2;->H:Z

    const/4 v0, 0x0

    if-nez p4, :cond_3

    iget-object p4, p0, Lcom/shabakaty/downloader/at2;->L:Lcom/shabakaty/downloader/ps2;

    if-nez p4, :cond_3

    .line 2
    iget-object p4, p0, Lcom/shabakaty/downloader/at2;->F:Lcom/shabakaty/downloader/ys2;

    invoke-virtual {p4}, Lcom/shabakaty/downloader/bn0;->H()V

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bk;->A()Lcom/shabakaty/downloader/yh1;

    move-result-object p4

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/at2;->F:Lcom/shabakaty/downloader/ys2;

    invoke-virtual {p0, p4, v1, v0}, Lcom/shabakaty/downloader/bk;->I(Lcom/shabakaty/downloader/yh1;Lcom/shabakaty/downloader/bn0;I)I

    move-result v1

    const/4 v2, -0x4

    if-ne v1, v2, :cond_2

    .line 5
    iget-object p4, p0, Lcom/shabakaty/downloader/at2;->F:Lcom/shabakaty/downloader/ys2;

    invoke-virtual {p4}, Lcom/shabakaty/downloader/ao;->F()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 6
    iput-boolean p3, p0, Lcom/shabakaty/downloader/at2;->H:Z

    goto :goto_1

    .line 7
    :cond_1
    iget-object p4, p0, Lcom/shabakaty/downloader/at2;->F:Lcom/shabakaty/downloader/ys2;

    iget-wide v1, p0, Lcom/shabakaty/downloader/at2;->J:J

    iput-wide v1, p4, Lcom/shabakaty/downloader/ys2;->z:J

    .line 8
    invoke-virtual {p4}, Lcom/shabakaty/downloader/bn0;->K()V

    .line 9
    iget-object p4, p0, Lcom/shabakaty/downloader/at2;->G:Lcom/shabakaty/downloader/us2;

    sget v1, Lcom/shabakaty/downloader/sy4;->a:I

    iget-object v1, p0, Lcom/shabakaty/downloader/at2;->F:Lcom/shabakaty/downloader/ys2;

    invoke-interface {p4, v1}, Lcom/shabakaty/downloader/us2;->a(Lcom/shabakaty/downloader/ys2;)Lcom/shabakaty/downloader/ps2;

    move-result-object p4

    if-eqz p4, :cond_3

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    iget-object v2, p4, Lcom/shabakaty/downloader/ps2;->r:[Lcom/shabakaty/downloader/ps2$b;

    array-length v2, v2

    .line 12
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    invoke-virtual {p0, p4, v1}, Lcom/shabakaty/downloader/at2;->J(Lcom/shabakaty/downloader/ps2;Ljava/util/List;)V

    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_3

    .line 15
    new-instance p4, Lcom/shabakaty/downloader/ps2;

    invoke-direct {p4, v1}, Lcom/shabakaty/downloader/ps2;-><init>(Ljava/util/List;)V

    .line 16
    iput-object p4, p0, Lcom/shabakaty/downloader/at2;->L:Lcom/shabakaty/downloader/ps2;

    .line 17
    iget-object p4, p0, Lcom/shabakaty/downloader/at2;->F:Lcom/shabakaty/downloader/ys2;

    iget-wide v1, p4, Lcom/shabakaty/downloader/bn0;->v:J

    iput-wide v1, p0, Lcom/shabakaty/downloader/at2;->K:J

    goto :goto_1

    :cond_2
    const/4 v2, -0x5

    if-ne v1, v2, :cond_3

    .line 18
    iget-object p4, p4, Lcom/shabakaty/downloader/yh1;->t:Ljava/lang/Object;

    check-cast p4, Lcom/shabakaty/downloader/wh1;

    .line 19
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-wide v1, p4, Lcom/shabakaty/downloader/wh1;->G:J

    iput-wide v1, p0, Lcom/shabakaty/downloader/at2;->J:J

    .line 21
    :cond_3
    :goto_1
    iget-object p4, p0, Lcom/shabakaty/downloader/at2;->L:Lcom/shabakaty/downloader/ps2;

    if-eqz p4, :cond_5

    iget-wide v1, p0, Lcom/shabakaty/downloader/at2;->K:J

    cmp-long v3, v1, p1

    if-gtz v3, :cond_5

    .line 22
    iget-object v1, p0, Lcom/shabakaty/downloader/at2;->E:Landroid/os/Handler;

    if-eqz v1, :cond_4

    .line 23
    invoke-virtual {v1, v0, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 24
    :cond_4
    iget-object v0, p0, Lcom/shabakaty/downloader/at2;->D:Lcom/shabakaty/downloader/zs2;

    invoke-interface {v0, p4}, Lcom/shabakaty/downloader/zs2;->f0(Lcom/shabakaty/downloader/ps2;)V

    :goto_2
    const/4 p4, 0x0

    .line 25
    iput-object p4, p0, Lcom/shabakaty/downloader/at2;->L:Lcom/shabakaty/downloader/ps2;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 26
    iput-wide v0, p0, Lcom/shabakaty/downloader/at2;->K:J

    const/4 p4, 0x1

    goto :goto_3

    :cond_5
    const/4 p4, 0x0

    .line 27
    :goto_3
    iget-boolean v0, p0, Lcom/shabakaty/downloader/at2;->H:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/at2;->L:Lcom/shabakaty/downloader/ps2;

    if-nez v0, :cond_0

    .line 28
    iput-boolean p3, p0, Lcom/shabakaty/downloader/at2;->I:Z

    goto/16 :goto_0

    :cond_6
    return-void
.end method
