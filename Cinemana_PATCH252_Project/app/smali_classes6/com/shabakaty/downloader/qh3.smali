.class public final Lcom/shabakaty/downloader/qh3;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"

# interfaces
.implements Lcom/shabakaty/downloader/kp2;
.implements Lcom/shabakaty/downloader/p91;
.implements Lcom/shabakaty/downloader/ij2$b;
.implements Lcom/shabakaty/downloader/ij2$f;
.implements Lcom/shabakaty/downloader/bx3$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/qh3$d;,
        Lcom/shabakaty/downloader/qh3$e;,
        Lcom/shabakaty/downloader/qh3$a;,
        Lcom/shabakaty/downloader/qh3$c;,
        Lcom/shabakaty/downloader/qh3$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/kp2;",
        "Lcom/shabakaty/downloader/p91;",
        "Lcom/shabakaty/downloader/ij2$b<",
        "Lcom/shabakaty/downloader/qh3$a;",
        ">;",
        "Lcom/shabakaty/downloader/ij2$f;",
        "Lcom/shabakaty/downloader/bx3$d;"
    }
.end annotation


# static fields
.field public static final d0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final e0:Lcom/shabakaty/downloader/wh1;


# instance fields
.field public final A:J

.field public final B:Lcom/shabakaty/downloader/ij2;

.field public final C:Lcom/shabakaty/downloader/oh3;

.field public final D:Lcom/shabakaty/downloader/b00;

.field public final E:Ljava/lang/Runnable;

.field public final F:Ljava/lang/Runnable;

.field public final G:Landroid/os/Handler;

.field public H:Lcom/shabakaty/downloader/kp2$a;

.field public I:Lcom/shabakaty/downloader/nx1;

.field public J:[Lcom/shabakaty/downloader/bx3;

.field public K:[Lcom/shabakaty/downloader/qh3$d;

.field public L:Z

.field public M:Z

.field public N:Z

.field public O:Lcom/shabakaty/downloader/qh3$e;

.field public P:Lcom/shabakaty/downloader/vz3;

.field public Q:J

.field public R:Z

.field public S:I

.field public T:Z

.field public U:Z

.field public V:I

.field public W:J

.field public X:J

.field public Y:J

.field public Z:Z

.field public a0:I

.field public b0:Z

.field public c0:Z

.field public final r:Landroid/net/Uri;

.field public final s:Lcom/shabakaty/downloader/vl0;

.field public final t:Lcom/shabakaty/downloader/u01;

.field public final u:Lcom/shabakaty/downloader/gj2;

.field public final v:Lcom/shabakaty/downloader/yq2$a;

.field public final w:Lcom/shabakaty/downloader/s01$a;

.field public final x:Lcom/shabakaty/downloader/qh3$b;

.field public final y:Lcom/shabakaty/downloader/fn0;

.field public final z:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Icy-MetaData"

    const-string v2, "1"

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 4
    sput-object v0, Lcom/shabakaty/downloader/qh3;->d0:Ljava/util/Map;

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/wh1$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/wh1$b;-><init>()V

    const-string v1, "icy"

    .line 6
    iput-object v1, v0, Lcom/shabakaty/downloader/wh1$b;->a:Ljava/lang/String;

    const-string v1, "application/x-icy"

    .line 7
    iput-object v1, v0, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    .line 8
    invoke-virtual {v0}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/qh3;->e0:Lcom/shabakaty/downloader/wh1;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/shabakaty/downloader/vl0;Lcom/shabakaty/downloader/oh3;Lcom/shabakaty/downloader/u01;Lcom/shabakaty/downloader/s01$a;Lcom/shabakaty/downloader/gj2;Lcom/shabakaty/downloader/yq2$a;Lcom/shabakaty/downloader/qh3$b;Lcom/shabakaty/downloader/fn0;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/qh3;->r:Landroid/net/Uri;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/qh3;->s:Lcom/shabakaty/downloader/vl0;

    .line 4
    iput-object p4, p0, Lcom/shabakaty/downloader/qh3;->t:Lcom/shabakaty/downloader/u01;

    .line 5
    iput-object p5, p0, Lcom/shabakaty/downloader/qh3;->w:Lcom/shabakaty/downloader/s01$a;

    .line 6
    iput-object p6, p0, Lcom/shabakaty/downloader/qh3;->u:Lcom/shabakaty/downloader/gj2;

    .line 7
    iput-object p7, p0, Lcom/shabakaty/downloader/qh3;->v:Lcom/shabakaty/downloader/yq2$a;

    .line 8
    iput-object p8, p0, Lcom/shabakaty/downloader/qh3;->x:Lcom/shabakaty/downloader/qh3$b;

    .line 9
    iput-object p9, p0, Lcom/shabakaty/downloader/qh3;->y:Lcom/shabakaty/downloader/fn0;

    .line 10
    iput-object p10, p0, Lcom/shabakaty/downloader/qh3;->z:Ljava/lang/String;

    int-to-long p1, p11

    .line 11
    iput-wide p1, p0, Lcom/shabakaty/downloader/qh3;->A:J

    .line 12
    new-instance p1, Lcom/shabakaty/downloader/ij2;

    const-string p2, "ProgressiveMediaPeriod"

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/ij2;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/qh3;->B:Lcom/shabakaty/downloader/ij2;

    .line 13
    iput-object p3, p0, Lcom/shabakaty/downloader/qh3;->C:Lcom/shabakaty/downloader/oh3;

    .line 14
    new-instance p1, Lcom/shabakaty/downloader/b00;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/b00;-><init>(I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/qh3;->D:Lcom/shabakaty/downloader/b00;

    .line 15
    new-instance p1, Lcom/shabakaty/downloader/ph3;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/shabakaty/downloader/ph3;-><init>(Lcom/shabakaty/downloader/qh3;I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/qh3;->E:Ljava/lang/Runnable;

    .line 16
    new-instance p1, Lcom/shabakaty/downloader/ph3;

    invoke-direct {p1, p0, p2}, Lcom/shabakaty/downloader/ph3;-><init>(Lcom/shabakaty/downloader/qh3;I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/qh3;->F:Ljava/lang/Runnable;

    .line 17
    invoke-static {}, Lcom/shabakaty/downloader/sy4;->l()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/qh3;->G:Landroid/os/Handler;

    new-array p1, p3, [Lcom/shabakaty/downloader/qh3$d;

    .line 18
    iput-object p1, p0, Lcom/shabakaty/downloader/qh3;->K:[Lcom/shabakaty/downloader/qh3$d;

    new-array p1, p3, [Lcom/shabakaty/downloader/bx3;

    .line 19
    iput-object p1, p0, Lcom/shabakaty/downloader/qh3;->J:[Lcom/shabakaty/downloader/bx3;

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    .line 20
    iput-wide p3, p0, Lcom/shabakaty/downloader/qh3;->Y:J

    const-wide/16 p5, -0x1

    .line 21
    iput-wide p5, p0, Lcom/shabakaty/downloader/qh3;->W:J

    .line 22
    iput-wide p3, p0, Lcom/shabakaty/downloader/qh3;->Q:J

    .line 23
    iput p2, p0, Lcom/shabakaty/downloader/qh3;->S:I

    return-void
.end method


# virtual methods
.method public B0(Lcom/shabakaty/downloader/kp2$a;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/qh3;->H:Lcom/shabakaty/downloader/kp2$a;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/qh3;->D:Lcom/shabakaty/downloader/b00;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/b00;->b()Z

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qh3;->w()V

    return-void
.end method

.method public C0([Lcom/shabakaty/downloader/f81;[Z[Lcom/shabakaty/downloader/dx3;[ZJ)J
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qh3;->m()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/qh3;->O:Lcom/shabakaty/downloader/qh3$e;

    iget-object v1, v0, Lcom/shabakaty/downloader/qh3$e;->a:Lcom/shabakaty/downloader/cp4;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/qh3$e;->c:[Z

    .line 4
    iget v2, p0, Lcom/shabakaty/downloader/qh3;->V:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 5
    :goto_0
    array-length v5, p1

    const/4 v6, 0x1

    if-ge v4, v5, :cond_2

    .line 6
    aget-object v5, p3, v4

    if-eqz v5, :cond_1

    aget-object v5, p1, v4

    if-eqz v5, :cond_0

    aget-boolean v5, p2, v4

    if-nez v5, :cond_1

    .line 7
    :cond_0
    aget-object v5, p3, v4

    check-cast v5, Lcom/shabakaty/downloader/qh3$c;

    .line 8
    iget v5, v5, Lcom/shabakaty/downloader/qh3$c;->r:I

    .line 9
    aget-boolean v7, v0, v5

    invoke-static {v7}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 10
    iget v7, p0, Lcom/shabakaty/downloader/qh3;->V:I

    sub-int/2addr v7, v6

    iput v7, p0, Lcom/shabakaty/downloader/qh3;->V:I

    .line 11
    aput-boolean v3, v0, v5

    const/4 v5, 0x0

    .line 12
    aput-object v5, p3, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 13
    :cond_2
    iget-boolean p2, p0, Lcom/shabakaty/downloader/qh3;->T:Z

    if-eqz p2, :cond_3

    if-nez v2, :cond_4

    goto :goto_1

    :cond_3
    const-wide/16 v4, 0x0

    cmp-long p2, p5, v4

    if-eqz p2, :cond_4

    :goto_1
    const/4 p2, 0x1

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    const/4 v2, 0x0

    .line 14
    :goto_3
    array-length v4, p1

    if-ge v2, v4, :cond_9

    .line 15
    aget-object v4, p3, v2

    if-nez v4, :cond_8

    aget-object v4, p1, v2

    if-eqz v4, :cond_8

    .line 16
    aget-object v4, p1, v2

    .line 17
    invoke-interface {v4}, Lcom/shabakaty/downloader/hp4;->length()I

    move-result v5

    if-ne v5, v6, :cond_5

    const/4 v5, 0x1

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    :goto_4
    invoke-static {v5}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 18
    invoke-interface {v4, v3}, Lcom/shabakaty/downloader/hp4;->d(I)I

    move-result v5

    if-nez v5, :cond_6

    const/4 v5, 0x1

    goto :goto_5

    :cond_6
    const/4 v5, 0x0

    :goto_5
    invoke-static {v5}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 19
    invoke-interface {v4}, Lcom/shabakaty/downloader/hp4;->b()Lcom/shabakaty/downloader/bp4;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/shabakaty/downloader/cp4;->a(Lcom/shabakaty/downloader/bp4;)I

    move-result v4

    .line 20
    aget-boolean v5, v0, v4

    xor-int/2addr v5, v6

    invoke-static {v5}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 21
    iget v5, p0, Lcom/shabakaty/downloader/qh3;->V:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/shabakaty/downloader/qh3;->V:I

    .line 22
    aput-boolean v6, v0, v4

    .line 23
    new-instance v5, Lcom/shabakaty/downloader/qh3$c;

    invoke-direct {v5, p0, v4}, Lcom/shabakaty/downloader/qh3$c;-><init>(Lcom/shabakaty/downloader/qh3;I)V

    aput-object v5, p3, v2

    .line 24
    aput-boolean v6, p4, v2

    if-nez p2, :cond_8

    .line 25
    iget-object p2, p0, Lcom/shabakaty/downloader/qh3;->J:[Lcom/shabakaty/downloader/bx3;

    aget-object p2, p2, v4

    .line 26
    invoke-virtual {p2, p5, p6, v6}, Lcom/shabakaty/downloader/bx3;->G(JZ)Z

    move-result v4

    if-nez v4, :cond_7

    .line 27
    invoke-virtual {p2}, Lcom/shabakaty/downloader/bx3;->q()I

    move-result p2

    if-eqz p2, :cond_7

    const/4 p2, 0x1

    goto :goto_6

    :cond_7
    const/4 p2, 0x0

    :cond_8
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 28
    :cond_9
    iget p1, p0, Lcom/shabakaty/downloader/qh3;->V:I

    if-nez p1, :cond_c

    .line 29
    iput-boolean v3, p0, Lcom/shabakaty/downloader/qh3;->Z:Z

    .line 30
    iput-boolean v3, p0, Lcom/shabakaty/downloader/qh3;->U:Z

    .line 31
    iget-object p1, p0, Lcom/shabakaty/downloader/qh3;->B:Lcom/shabakaty/downloader/ij2;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ij2;->e()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 32
    iget-object p1, p0, Lcom/shabakaty/downloader/qh3;->J:[Lcom/shabakaty/downloader/bx3;

    array-length p2, p1

    :goto_7
    if-ge v3, p2, :cond_a

    aget-object p3, p1, v3

    .line 33
    invoke-virtual {p3}, Lcom/shabakaty/downloader/bx3;->j()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 34
    :cond_a
    iget-object p1, p0, Lcom/shabakaty/downloader/qh3;->B:Lcom/shabakaty/downloader/ij2;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ij2;->a()V

    goto :goto_a

    .line 35
    :cond_b
    iget-object p1, p0, Lcom/shabakaty/downloader/qh3;->J:[Lcom/shabakaty/downloader/bx3;

    array-length p2, p1

    const/4 p3, 0x0

    :goto_8
    if-ge p3, p2, :cond_e

    aget-object p4, p1, p3

    .line 36
    invoke-virtual {p4, v3}, Lcom/shabakaty/downloader/bx3;->E(Z)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_8

    :cond_c
    if-eqz p2, :cond_e

    .line 37
    invoke-virtual {p0, p5, p6}, Lcom/shabakaty/downloader/qh3;->p0(J)J

    move-result-wide p5

    .line 38
    :goto_9
    array-length p1, p3

    if-ge v3, p1, :cond_e

    .line 39
    aget-object p1, p3, v3

    if-eqz p1, :cond_d

    .line 40
    aput-boolean v6, p4, v3

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 41
    :cond_e
    :goto_a
    iput-boolean v6, p0, Lcom/shabakaty/downloader/qh3;->T:Z

    return-wide p5
.end method

.method public D0()Lcom/shabakaty/downloader/cp4;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qh3;->m()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/qh3;->O:Lcom/shabakaty/downloader/qh3$e;

    iget-object v0, v0, Lcom/shabakaty/downloader/qh3$e;->a:Lcom/shabakaty/downloader/cp4;

    return-object v0
.end method

.method public M0(JZ)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qh3;->m()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qh3;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/qh3;->O:Lcom/shabakaty/downloader/qh3$e;

    iget-object v0, v0, Lcom/shabakaty/downloader/qh3$e;->c:[Z

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/qh3;->J:[Lcom/shabakaty/downloader/bx3;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 5
    iget-object v3, p0, Lcom/shabakaty/downloader/qh3;->J:[Lcom/shabakaty/downloader/bx3;

    aget-object v3, v3, v2

    aget-boolean v4, v0, v2

    invoke-virtual {v3, p1, p2, p3, v4}, Lcom/shabakaty/downloader/bx3;->i(JZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qh3;->J:[Lcom/shabakaty/downloader/bx3;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lcom/shabakaty/downloader/bx3;->D()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/qh3;->C:Lcom/shabakaty/downloader/oh3;

    check-cast v0, Lcom/shabakaty/downloader/tk1;

    .line 4
    iget-object v1, v0, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/n91;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1}, Lcom/shabakaty/downloader/n91;->a()V

    .line 6
    iput-object v2, v0, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    .line 7
    :cond_1
    iput-object v2, v0, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/qh3;->L:Z

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/qh3;->G:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shabakaty/downloader/qh3;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c()J
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/qh3;->V:I

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qh3;->o()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public d(Lcom/shabakaty/downloader/vz3;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qh3;->G:Landroid/os/Handler;

    new-instance v1, Lcom/shabakaty/downloader/or;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/or;-><init>(Lcom/shabakaty/downloader/qh3;Lcom/shabakaty/downloader/vz3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qh3;->B:Lcom/shabakaty/downloader/ij2;

    iget-object v1, p0, Lcom/shabakaty/downloader/qh3;->u:Lcom/shabakaty/downloader/gj2;

    iget v2, p0, Lcom/shabakaty/downloader/qh3;->S:I

    check-cast v1, Lcom/shabakaty/downloader/po0;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/po0;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ij2;->f(I)V

    .line 2
    iget-boolean v0, p0, Lcom/shabakaty/downloader/qh3;->b0:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/shabakaty/downloader/qh3;->M:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "Loading finished before preparation is complete."

    .line 3
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public e(J)Z
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/shabakaty/downloader/qh3;->b0:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/shabakaty/downloader/qh3;->B:Lcom/shabakaty/downloader/ij2;

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ij2;->d()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/shabakaty/downloader/qh3;->Z:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/shabakaty/downloader/qh3;->M:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/shabakaty/downloader/qh3;->V:I

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/qh3;->D:Lcom/shabakaty/downloader/b00;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/b00;->b()Z

    move-result p1

    .line 4
    iget-object p2, p0, Lcom/shabakaty/downloader/qh3;->B:Lcom/shabakaty/downloader/ij2;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/ij2;->e()Z

    move-result p2

    if-nez p2, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qh3;->w()V

    const/4 p1, 0x1

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public f(Lcom/shabakaty/downloader/ij2$e;JJLjava/io/IOException;I)Lcom/shabakaty/downloader/ij2$c;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v12, p6

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lcom/shabakaty/downloader/qh3$a;

    .line 2
    iget-wide v2, v0, Lcom/shabakaty/downloader/qh3;->W:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 3
    iget-wide v2, v1, Lcom/shabakaty/downloader/qh3$a;->l:J

    .line 4
    iput-wide v2, v0, Lcom/shabakaty/downloader/qh3;->W:J

    .line 5
    :cond_0
    iget-object v2, v1, Lcom/shabakaty/downloader/qh3$a;->c:Lcom/shabakaty/downloader/uc4;

    .line 6
    new-instance v3, Lcom/shabakaty/downloader/hj2;

    .line 7
    iget-wide v14, v1, Lcom/shabakaty/downloader/qh3$a;->a:J

    .line 8
    iget-object v6, v1, Lcom/shabakaty/downloader/qh3$a;->k:Lcom/shabakaty/downloader/yl0;

    .line 9
    iget-object v7, v2, Lcom/shabakaty/downloader/uc4;->c:Landroid/net/Uri;

    .line 10
    iget-object v8, v2, Lcom/shabakaty/downloader/uc4;->d:Ljava/util/Map;

    .line 11
    iget-wide v9, v2, Lcom/shabakaty/downloader/uc4;->b:J

    move-object v13, v3

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move-wide/from16 v19, p2

    move-wide/from16 v21, p4

    move-wide/from16 v23, v9

    .line 12
    invoke-direct/range {v13 .. v24}, Lcom/shabakaty/downloader/hj2;-><init>(JLcom/shabakaty/downloader/yl0;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 13
    iget-wide v6, v1, Lcom/shabakaty/downloader/qh3$a;->j:J

    .line 14
    invoke-static {v6, v7}, Lcom/shabakaty/downloader/jp;->d(J)J

    iget-wide v6, v0, Lcom/shabakaty/downloader/qh3;->Q:J

    .line 15
    invoke-static {v6, v7}, Lcom/shabakaty/downloader/jp;->d(J)J

    .line 16
    iget-object v2, v0, Lcom/shabakaty/downloader/qh3;->u:Lcom/shabakaty/downloader/gj2;

    .line 17
    check-cast v2, Lcom/shabakaty/downloader/po0;

    .line 18
    instance-of v2, v12, Lcom/shabakaty/downloader/pa3;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v2, :cond_2

    instance-of v2, v12, Ljava/io/FileNotFoundException;

    if-nez v2, :cond_2

    instance-of v2, v12, Lcom/shabakaty/downloader/fw1$a;

    if-nez v2, :cond_2

    instance-of v2, v12, Lcom/shabakaty/downloader/ij2$h;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, p7, -0x1

    mul-int/lit16 v2, v2, 0x3e8

    const/16 v8, 0x1388

    .line 19
    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-long v8, v2

    goto :goto_1

    :cond_2
    :goto_0
    move-wide v8, v6

    :goto_1
    const/4 v2, 0x1

    cmp-long v10, v8, v6

    if-nez v10, :cond_3

    .line 20
    sget-object v4, Lcom/shabakaty/downloader/ij2;->f:Lcom/shabakaty/downloader/ij2$c;

    :goto_2
    move-object v14, v4

    goto :goto_8

    .line 21
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/qh3;->n()I

    move-result v10

    .line 22
    iget v11, v0, Lcom/shabakaty/downloader/qh3;->a0:I

    const/4 v13, 0x0

    if-le v10, v11, :cond_4

    const/4 v11, 0x1

    goto :goto_3

    :cond_4
    const/4 v11, 0x0

    .line 23
    :goto_3
    iget-wide v14, v0, Lcom/shabakaty/downloader/qh3;->W:J

    cmp-long v16, v14, v4

    if-nez v16, :cond_8

    iget-object v4, v0, Lcom/shabakaty/downloader/qh3;->P:Lcom/shabakaty/downloader/vz3;

    if-eqz v4, :cond_5

    invoke-interface {v4}, Lcom/shabakaty/downloader/vz3;->j()J

    move-result-wide v4

    cmp-long v14, v4, v6

    if-eqz v14, :cond_5

    goto :goto_5

    .line 24
    :cond_5
    iget-boolean v4, v0, Lcom/shabakaty/downloader/qh3;->M:Z

    if-eqz v4, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/qh3;->x()Z

    move-result v4

    if-nez v4, :cond_6

    .line 25
    iput-boolean v2, v0, Lcom/shabakaty/downloader/qh3;->Z:Z

    goto :goto_7

    .line 26
    :cond_6
    iget-boolean v4, v0, Lcom/shabakaty/downloader/qh3;->M:Z

    iput-boolean v4, v0, Lcom/shabakaty/downloader/qh3;->U:Z

    const-wide/16 v4, 0x0

    .line 27
    iput-wide v4, v0, Lcom/shabakaty/downloader/qh3;->X:J

    .line 28
    iput v13, v0, Lcom/shabakaty/downloader/qh3;->a0:I

    .line 29
    iget-object v6, v0, Lcom/shabakaty/downloader/qh3;->J:[Lcom/shabakaty/downloader/bx3;

    array-length v7, v6

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v7, :cond_7

    aget-object v14, v6, v10

    .line 30
    invoke-virtual {v14, v13}, Lcom/shabakaty/downloader/bx3;->E(Z)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 31
    :cond_7
    iget-object v6, v1, Lcom/shabakaty/downloader/qh3$a;->g:Lcom/shabakaty/downloader/ie3;

    iput-wide v4, v6, Lcom/shabakaty/downloader/ie3;->a:J

    .line 32
    iput-wide v4, v1, Lcom/shabakaty/downloader/qh3$a;->j:J

    .line 33
    iput-boolean v2, v1, Lcom/shabakaty/downloader/qh3$a;->i:Z

    .line 34
    iput-boolean v13, v1, Lcom/shabakaty/downloader/qh3$a;->n:Z

    goto :goto_6

    .line 35
    :cond_8
    :goto_5
    iput v10, v0, Lcom/shabakaty/downloader/qh3;->a0:I

    :goto_6
    const/4 v13, 0x1

    :goto_7
    if-eqz v13, :cond_9

    .line 36
    invoke-static {v11, v8, v9}, Lcom/shabakaty/downloader/ij2;->c(ZJ)Lcom/shabakaty/downloader/ij2$c;

    move-result-object v4

    goto :goto_2

    .line 37
    :cond_9
    sget-object v4, Lcom/shabakaty/downloader/ij2;->e:Lcom/shabakaty/downloader/ij2$c;

    goto :goto_2

    .line 38
    :goto_8
    invoke-virtual {v14}, Lcom/shabakaty/downloader/ij2$c;->a()Z

    move-result v4

    xor-int/lit8 v15, v4, 0x1

    .line 39
    iget-object v2, v0, Lcom/shabakaty/downloader/qh3;->v:Lcom/shabakaty/downloader/yq2$a;

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 40
    iget-wide v8, v1, Lcom/shabakaty/downloader/qh3$a;->j:J

    .line 41
    iget-wide v10, v0, Lcom/shabakaty/downloader/qh3;->Q:J

    const/4 v13, 0x0

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move v6, v7

    move-object v7, v13

    move-object/from16 v12, p6

    move v13, v15

    .line 42
    invoke-virtual/range {v1 .. v13}, Lcom/shabakaty/downloader/yq2$a;->j(Lcom/shabakaty/downloader/hj2;IILcom/shabakaty/downloader/wh1;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    if-eqz v15, :cond_a

    .line 43
    iget-object v1, v0, Lcom/shabakaty/downloader/qh3;->u:Lcom/shabakaty/downloader/gj2;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    return-object v14
.end method

.method public g(Lcom/shabakaty/downloader/ij2$e;JJ)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lcom/shabakaty/downloader/qh3$a;

    .line 2
    iget-wide v2, v0, Lcom/shabakaty/downloader/qh3;->Q:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    iget-object v2, v0, Lcom/shabakaty/downloader/qh3;->P:Lcom/shabakaty/downloader/vz3;

    if-eqz v2, :cond_1

    .line 3
    invoke-interface {v2}, Lcom/shabakaty/downloader/vz3;->e()Z

    move-result v2

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/qh3;->p()J

    move-result-wide v3

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x2710

    add-long/2addr v3, v5

    .line 5
    :goto_0
    iput-wide v3, v0, Lcom/shabakaty/downloader/qh3;->Q:J

    .line 6
    iget-object v5, v0, Lcom/shabakaty/downloader/qh3;->x:Lcom/shabakaty/downloader/qh3$b;

    iget-boolean v6, v0, Lcom/shabakaty/downloader/qh3;->R:Z

    check-cast v5, Lcom/shabakaty/downloader/rh3;

    invoke-virtual {v5, v3, v4, v2, v6}, Lcom/shabakaty/downloader/rh3;->z(JZZ)V

    .line 7
    :cond_1
    iget-object v2, v1, Lcom/shabakaty/downloader/qh3$a;->c:Lcom/shabakaty/downloader/uc4;

    .line 8
    new-instance v15, Lcom/shabakaty/downloader/hj2;

    .line 9
    iget-wide v4, v1, Lcom/shabakaty/downloader/qh3$a;->a:J

    .line 10
    iget-object v6, v1, Lcom/shabakaty/downloader/qh3$a;->k:Lcom/shabakaty/downloader/yl0;

    .line 11
    iget-object v7, v2, Lcom/shabakaty/downloader/uc4;->c:Landroid/net/Uri;

    .line 12
    iget-object v8, v2, Lcom/shabakaty/downloader/uc4;->d:Ljava/util/Map;

    .line 13
    iget-wide v13, v2, Lcom/shabakaty/downloader/uc4;->b:J

    move-object v3, v15

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    .line 14
    invoke-direct/range {v3 .. v14}, Lcom/shabakaty/downloader/hj2;-><init>(JLcom/shabakaty/downloader/yl0;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 15
    iget-object v2, v0, Lcom/shabakaty/downloader/qh3;->u:Lcom/shabakaty/downloader/gj2;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v3, v0, Lcom/shabakaty/downloader/qh3;->v:Lcom/shabakaty/downloader/yq2$a;

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 17
    iget-wide v10, v1, Lcom/shabakaty/downloader/qh3$a;->j:J

    .line 18
    iget-wide v12, v0, Lcom/shabakaty/downloader/qh3;->Q:J

    move-object v4, v15

    .line 19
    invoke-virtual/range {v3 .. v13}, Lcom/shabakaty/downloader/yq2$a;->h(Lcom/shabakaty/downloader/hj2;IILcom/shabakaty/downloader/wh1;ILjava/lang/Object;JJ)V

    .line 20
    iget-wide v2, v0, Lcom/shabakaty/downloader/qh3;->W:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    .line 21
    iget-wide v1, v1, Lcom/shabakaty/downloader/qh3$a;->l:J

    .line 22
    iput-wide v1, v0, Lcom/shabakaty/downloader/qh3;->W:J

    :cond_2
    const/4 v1, 0x1

    .line 23
    iput-boolean v1, v0, Lcom/shabakaty/downloader/qh3;->b0:Z

    .line 24
    iget-object v1, v0, Lcom/shabakaty/downloader/qh3;->H:Lcom/shabakaty/downloader/kp2$a;

    .line 25
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/o04$a;->b(Lcom/shabakaty/downloader/o04;)V

    return-void
.end method

.method public h(II)Lcom/shabakaty/downloader/fp4;
    .locals 1

    .line 1
    new-instance p2, Lcom/shabakaty/downloader/qh3$d;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/shabakaty/downloader/qh3$d;-><init>(IZ)V

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/qh3;->v(Lcom/shabakaty/downloader/qh3$d;)Lcom/shabakaty/downloader/fp4;

    move-result-object p1

    return-object p1
.end method

.method public i(Lcom/shabakaty/downloader/wh1;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/qh3;->G:Landroid/os/Handler;

    iget-object v0, p0, Lcom/shabakaty/downloader/qh3;->E:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public j()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qh3;->B:Lcom/shabakaty/downloader/ij2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ij2;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/qh3;->D:Lcom/shabakaty/downloader/b00;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, v0, Lcom/shabakaty/downloader/b00;->s:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k(JLcom/shabakaty/downloader/wz3;)J
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qh3;->m()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/qh3;->P:Lcom/shabakaty/downloader/vz3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/vz3;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/qh3;->P:Lcom/shabakaty/downloader/vz3;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/vz3;->i(J)Lcom/shabakaty/downloader/vz3$a;

    move-result-object v0

    .line 4
    iget-object v1, v0, Lcom/shabakaty/downloader/vz3$a;->a:Lcom/shabakaty/downloader/xz3;

    iget-wide v5, v1, Lcom/shabakaty/downloader/xz3;->a:J

    iget-object v0, v0, Lcom/shabakaty/downloader/vz3$a;->b:Lcom/shabakaty/downloader/xz3;

    iget-wide v7, v0, Lcom/shabakaty/downloader/xz3;->a:J

    move-object v2, p3

    move-wide v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/shabakaty/downloader/wz3;->a(JJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public l(Lcom/shabakaty/downloader/ij2$e;JJZ)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lcom/shabakaty/downloader/qh3$a;

    .line 2
    iget-object v2, v1, Lcom/shabakaty/downloader/qh3$a;->c:Lcom/shabakaty/downloader/uc4;

    .line 3
    new-instance v15, Lcom/shabakaty/downloader/hj2;

    .line 4
    iget-wide v4, v1, Lcom/shabakaty/downloader/qh3$a;->a:J

    .line 5
    iget-object v6, v1, Lcom/shabakaty/downloader/qh3$a;->k:Lcom/shabakaty/downloader/yl0;

    .line 6
    iget-object v7, v2, Lcom/shabakaty/downloader/uc4;->c:Landroid/net/Uri;

    .line 7
    iget-object v8, v2, Lcom/shabakaty/downloader/uc4;->d:Ljava/util/Map;

    .line 8
    iget-wide v13, v2, Lcom/shabakaty/downloader/uc4;->b:J

    move-object v3, v15

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    .line 9
    invoke-direct/range {v3 .. v14}, Lcom/shabakaty/downloader/hj2;-><init>(JLcom/shabakaty/downloader/yl0;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 10
    iget-object v2, v0, Lcom/shabakaty/downloader/qh3;->u:Lcom/shabakaty/downloader/gj2;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v3, v0, Lcom/shabakaty/downloader/qh3;->v:Lcom/shabakaty/downloader/yq2$a;

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 12
    iget-wide v10, v1, Lcom/shabakaty/downloader/qh3$a;->j:J

    .line 13
    iget-wide v12, v0, Lcom/shabakaty/downloader/qh3;->Q:J

    move-object v4, v15

    .line 14
    invoke-virtual/range {v3 .. v13}, Lcom/shabakaty/downloader/yq2$a;->e(Lcom/shabakaty/downloader/hj2;IILcom/shabakaty/downloader/wh1;ILjava/lang/Object;JJ)V

    if-nez p6, :cond_2

    .line 15
    iget-wide v2, v0, Lcom/shabakaty/downloader/qh3;->W:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 16
    iget-wide v1, v1, Lcom/shabakaty/downloader/qh3$a;->l:J

    .line 17
    iput-wide v1, v0, Lcom/shabakaty/downloader/qh3;->W:J

    .line 18
    :cond_0
    iget-object v1, v0, Lcom/shabakaty/downloader/qh3;->J:[Lcom/shabakaty/downloader/bx3;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 19
    invoke-virtual {v5, v3}, Lcom/shabakaty/downloader/bx3;->E(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 20
    :cond_1
    iget v1, v0, Lcom/shabakaty/downloader/qh3;->V:I

    if-lez v1, :cond_2

    .line 21
    iget-object v1, v0, Lcom/shabakaty/downloader/qh3;->H:Lcom/shabakaty/downloader/kp2$a;

    .line 22
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/o04$a;->b(Lcom/shabakaty/downloader/o04;)V

    :cond_2
    return-void
.end method

.method public final m()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "trackState",
            "seekMap"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/qh3;->M:Z

    invoke-static {v0}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/qh3;->O:Lcom/shabakaty/downloader/qh3$e;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/qh3;->P:Lcom/shabakaty/downloader/vz3;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final n()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qh3;->J:[Lcom/shabakaty/downloader/bx3;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 2
    invoke-virtual {v4}, Lcom/shabakaty/downloader/bx3;->u()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public o()J
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qh3;->m()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/qh3;->O:Lcom/shabakaty/downloader/qh3$e;

    iget-object v0, v0, Lcom/shabakaty/downloader/qh3$e;->b:[Z

    .line 3
    iget-boolean v1, p0, Lcom/shabakaty/downloader/qh3;->b0:Z

    const-wide/high16 v2, -0x8000000000000000L

    if-eqz v1, :cond_0

    return-wide v2

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qh3;->q()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-wide v0, p0, Lcom/shabakaty/downloader/qh3;->Y:J

    return-wide v0

    .line 6
    :cond_1
    iget-boolean v1, p0, Lcom/shabakaty/downloader/qh3;->N:Z

    const-wide v4, 0x7fffffffffffffffL

    if-eqz v1, :cond_3

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/qh3;->J:[Lcom/shabakaty/downloader/bx3;

    array-length v1, v1

    const/4 v6, 0x0

    move-wide v7, v4

    :goto_0
    if-ge v6, v1, :cond_4

    .line 8
    aget-boolean v9, v0, v6

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/shabakaty/downloader/qh3;->J:[Lcom/shabakaty/downloader/bx3;

    aget-object v9, v9, v6

    .line 9
    monitor-enter v9

    .line 10
    :try_start_0
    iget-boolean v10, v9, Lcom/shabakaty/downloader/bx3;->x:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    if-nez v10, :cond_2

    .line 11
    iget-object v9, p0, Lcom/shabakaty/downloader/qh3;->J:[Lcom/shabakaty/downloader/bx3;

    aget-object v9, v9, v6

    .line 12
    invoke-virtual {v9}, Lcom/shabakaty/downloader/bx3;->o()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 13
    monitor-exit v9

    throw v0

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move-wide v7, v4

    :cond_4
    cmp-long v0, v7, v4

    if-nez v0, :cond_5

    .line 14
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qh3;->p()J

    move-result-wide v7

    :cond_5
    cmp-long v0, v7, v2

    if-nez v0, :cond_6

    .line 15
    iget-wide v7, p0, Lcom/shabakaty/downloader/qh3;->X:J

    :cond_6
    return-wide v7
.end method

.method public final p()J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qh3;->J:[Lcom/shabakaty/downloader/bx3;

    array-length v1, v0

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v5, v0, v4

    .line 2
    invoke-virtual {v5}, Lcom/shabakaty/downloader/bx3;->o()J

    move-result-wide v5

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public p0(J)J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qh3;->m()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/qh3;->O:Lcom/shabakaty/downloader/qh3$e;

    iget-object v0, v0, Lcom/shabakaty/downloader/qh3$e;->b:[Z

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/qh3;->P:Lcom/shabakaty/downloader/vz3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/vz3;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/shabakaty/downloader/qh3;->U:Z

    .line 5
    iput-wide p1, p0, Lcom/shabakaty/downloader/qh3;->X:J

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qh3;->q()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    iput-wide p1, p0, Lcom/shabakaty/downloader/qh3;->Y:J

    return-wide p1

    .line 8
    :cond_1
    iget v2, p0, Lcom/shabakaty/downloader/qh3;->S:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_5

    .line 9
    iget-object v2, p0, Lcom/shabakaty/downloader/qh3;->J:[Lcom/shabakaty/downloader/bx3;

    array-length v2, v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    .line 10
    iget-object v4, p0, Lcom/shabakaty/downloader/qh3;->J:[Lcom/shabakaty/downloader/bx3;

    aget-object v4, v4, v3

    .line 11
    invoke-virtual {v4, p1, p2, v1}, Lcom/shabakaty/downloader/bx3;->G(JZ)Z

    move-result v4

    if-nez v4, :cond_3

    .line 12
    aget-boolean v4, v0, v3

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/shabakaty/downloader/qh3;->N:Z

    if-nez v4, :cond_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_5

    return-wide p1

    .line 13
    :cond_5
    iput-boolean v1, p0, Lcom/shabakaty/downloader/qh3;->Z:Z

    .line 14
    iput-wide p1, p0, Lcom/shabakaty/downloader/qh3;->Y:J

    .line 15
    iput-boolean v1, p0, Lcom/shabakaty/downloader/qh3;->b0:Z

    .line 16
    iget-object v0, p0, Lcom/shabakaty/downloader/qh3;->B:Lcom/shabakaty/downloader/ij2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ij2;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 17
    iget-object v0, p0, Lcom/shabakaty/downloader/qh3;->J:[Lcom/shabakaty/downloader/bx3;

    array-length v2, v0

    :goto_3
    if-ge v1, v2, :cond_6

    aget-object v3, v0, v1

    .line 18
    invoke-virtual {v3}, Lcom/shabakaty/downloader/bx3;->j()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 19
    :cond_6
    iget-object v0, p0, Lcom/shabakaty/downloader/qh3;->B:Lcom/shabakaty/downloader/ij2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ij2;->a()V

    goto :goto_5

    .line 20
    :cond_7
    iget-object v0, p0, Lcom/shabakaty/downloader/qh3;->B:Lcom/shabakaty/downloader/ij2;

    const/4 v2, 0x0

    .line 21
    iput-object v2, v0, Lcom/shabakaty/downloader/ij2;->c:Ljava/io/IOException;

    .line 22
    iget-object v0, p0, Lcom/shabakaty/downloader/qh3;->J:[Lcom/shabakaty/downloader/bx3;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_8

    aget-object v4, v0, v3

    .line 23
    invoke-virtual {v4, v1}, Lcom/shabakaty/downloader/bx3;->E(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    return-wide p1
.end method

.method public final q()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/qh3;->Y:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final r()V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/qh3;->c0:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/shabakaty/downloader/qh3;->M:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/shabakaty/downloader/qh3;->L:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/shabakaty/downloader/qh3;->P:Lcom/shabakaty/downloader/vz3;

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/qh3;->J:[Lcom/shabakaty/downloader/bx3;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 3
    invoke-virtual {v4}, Lcom/shabakaty/downloader/bx3;->t()Lcom/shabakaty/downloader/wh1;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/qh3;->D:Lcom/shabakaty/downloader/b00;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/b00;->a()Z

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/qh3;->J:[Lcom/shabakaty/downloader/bx3;

    array-length v0, v0

    .line 6
    new-array v1, v0, [Lcom/shabakaty/downloader/bp4;

    .line 7
    new-array v3, v0, [Z

    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x1

    if-ge v4, v0, :cond_9

    .line 8
    iget-object v6, p0, Lcom/shabakaty/downloader/qh3;->J:[Lcom/shabakaty/downloader/bx3;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lcom/shabakaty/downloader/bx3;->t()Lcom/shabakaty/downloader/wh1;

    move-result-object v6

    .line 9
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v7, v6, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    .line 11
    invoke-static {v7}, Lcom/shabakaty/downloader/nt2;->k(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 12
    invoke-static {v7}, Lcom/shabakaty/downloader/nt2;->m(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v7, 0x1

    .line 13
    :goto_3
    aput-boolean v7, v3, v4

    .line 14
    iget-boolean v9, p0, Lcom/shabakaty/downloader/qh3;->N:Z

    or-int/2addr v7, v9

    iput-boolean v7, p0, Lcom/shabakaty/downloader/qh3;->N:Z

    .line 15
    iget-object v7, p0, Lcom/shabakaty/downloader/qh3;->I:Lcom/shabakaty/downloader/nx1;

    if-eqz v7, :cond_8

    if-nez v8, :cond_5

    .line 16
    iget-object v9, p0, Lcom/shabakaty/downloader/qh3;->K:[Lcom/shabakaty/downloader/qh3$d;

    aget-object v9, v9, v4

    iget-boolean v9, v9, Lcom/shabakaty/downloader/qh3$d;->b:Z

    if-eqz v9, :cond_7

    .line 17
    :cond_5
    iget-object v9, v6, Lcom/shabakaty/downloader/wh1;->A:Lcom/shabakaty/downloader/ps2;

    if-nez v9, :cond_6

    .line 18
    new-instance v9, Lcom/shabakaty/downloader/ps2;

    new-array v10, v5, [Lcom/shabakaty/downloader/ps2$b;

    aput-object v7, v10, v2

    invoke-direct {v9, v10}, Lcom/shabakaty/downloader/ps2;-><init>([Lcom/shabakaty/downloader/ps2$b;)V

    goto :goto_4

    :cond_6
    new-array v10, v5, [Lcom/shabakaty/downloader/ps2$b;

    aput-object v7, v10, v2

    .line 19
    invoke-virtual {v9, v10}, Lcom/shabakaty/downloader/ps2;->a([Lcom/shabakaty/downloader/ps2$b;)Lcom/shabakaty/downloader/ps2;

    move-result-object v9

    .line 20
    :goto_4
    invoke-virtual {v6}, Lcom/shabakaty/downloader/wh1;->a()Lcom/shabakaty/downloader/wh1$b;

    move-result-object v6

    .line 21
    iput-object v9, v6, Lcom/shabakaty/downloader/wh1$b;->i:Lcom/shabakaty/downloader/ps2;

    .line 22
    invoke-virtual {v6}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object v6

    :cond_7
    if-eqz v8, :cond_8

    .line 23
    iget v8, v6, Lcom/shabakaty/downloader/wh1;->w:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_8

    iget v8, v6, Lcom/shabakaty/downloader/wh1;->x:I

    if-ne v8, v9, :cond_8

    iget v8, v7, Lcom/shabakaty/downloader/nx1;->r:I

    if-eq v8, v9, :cond_8

    .line 24
    invoke-virtual {v6}, Lcom/shabakaty/downloader/wh1;->a()Lcom/shabakaty/downloader/wh1$b;

    move-result-object v6

    iget v7, v7, Lcom/shabakaty/downloader/nx1;->r:I

    .line 25
    iput v7, v6, Lcom/shabakaty/downloader/wh1$b;->f:I

    .line 26
    invoke-virtual {v6}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object v6

    .line 27
    :cond_8
    iget-object v7, p0, Lcom/shabakaty/downloader/qh3;->t:Lcom/shabakaty/downloader/u01;

    .line 28
    invoke-interface {v7, v6}, Lcom/shabakaty/downloader/u01;->d(Lcom/shabakaty/downloader/wh1;)Ljava/lang/Class;

    move-result-object v7

    .line 29
    invoke-virtual {v6, v7}, Lcom/shabakaty/downloader/wh1;->b(Ljava/lang/Class;)Lcom/shabakaty/downloader/wh1;

    move-result-object v6

    .line 30
    new-instance v7, Lcom/shabakaty/downloader/bp4;

    new-array v5, v5, [Lcom/shabakaty/downloader/wh1;

    aput-object v6, v5, v2

    invoke-direct {v7, v5}, Lcom/shabakaty/downloader/bp4;-><init>([Lcom/shabakaty/downloader/wh1;)V

    aput-object v7, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 31
    :cond_9
    new-instance v0, Lcom/shabakaty/downloader/qh3$e;

    new-instance v2, Lcom/shabakaty/downloader/cp4;

    invoke-direct {v2, v1}, Lcom/shabakaty/downloader/cp4;-><init>([Lcom/shabakaty/downloader/bp4;)V

    invoke-direct {v0, v2, v3}, Lcom/shabakaty/downloader/qh3$e;-><init>(Lcom/shabakaty/downloader/cp4;[Z)V

    iput-object v0, p0, Lcom/shabakaty/downloader/qh3;->O:Lcom/shabakaty/downloader/qh3$e;

    .line 32
    iput-boolean v5, p0, Lcom/shabakaty/downloader/qh3;->M:Z

    .line 33
    iget-object v0, p0, Lcom/shabakaty/downloader/qh3;->H:Lcom/shabakaty/downloader/kp2$a;

    .line 34
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-interface {v0, p0}, Lcom/shabakaty/downloader/kp2$a;->f(Lcom/shabakaty/downloader/kp2;)V

    :cond_a
    :goto_5
    return-void
.end method

.method public final s(I)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qh3;->m()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/qh3;->O:Lcom/shabakaty/downloader/qh3$e;

    iget-object v1, v0, Lcom/shabakaty/downloader/qh3$e;->d:[Z

    .line 3
    aget-boolean v2, v1, p1

    if-nez v2, :cond_0

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/qh3$e;->a:Lcom/shabakaty/downloader/cp4;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/cp4;->s:[Lcom/shabakaty/downloader/bp4;

    aget-object v0, v0, p1

    const/4 v2, 0x0

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/bp4;->s:[Lcom/shabakaty/downloader/wh1;

    aget-object v5, v0, v2

    .line 7
    iget-object v3, p0, Lcom/shabakaty/downloader/qh3;->v:Lcom/shabakaty/downloader/yq2$a;

    iget-object v0, v5, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    .line 8
    invoke-static {v0}, Lcom/shabakaty/downloader/nt2;->i(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-wide v8, p0, Lcom/shabakaty/downloader/qh3;->X:J

    .line 9
    invoke-virtual/range {v3 .. v9}, Lcom/shabakaty/downloader/yq2$a;->b(ILcom/shabakaty/downloader/wh1;ILjava/lang/Object;J)V

    const/4 v0, 0x1

    .line 10
    aput-boolean v0, v1, p1

    :cond_0
    return-void
.end method

.method public t(J)V
    .locals 0

    return-void
.end method

.method public final u(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qh3;->m()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/qh3;->O:Lcom/shabakaty/downloader/qh3$e;

    iget-object v0, v0, Lcom/shabakaty/downloader/qh3$e;->b:[Z

    .line 3
    iget-boolean v1, p0, Lcom/shabakaty/downloader/qh3;->Z:Z

    if-eqz v1, :cond_2

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/shabakaty/downloader/qh3;->J:[Lcom/shabakaty/downloader/bx3;

    aget-object p1, v0, p1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/bx3;->w(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v1, 0x0

    .line 5
    iput-wide v1, p0, Lcom/shabakaty/downloader/qh3;->Y:J

    .line 6
    iput-boolean v0, p0, Lcom/shabakaty/downloader/qh3;->Z:Z

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/shabakaty/downloader/qh3;->U:Z

    .line 8
    iput-wide v1, p0, Lcom/shabakaty/downloader/qh3;->X:J

    .line 9
    iput v0, p0, Lcom/shabakaty/downloader/qh3;->a0:I

    .line 10
    iget-object p1, p0, Lcom/shabakaty/downloader/qh3;->J:[Lcom/shabakaty/downloader/bx3;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 11
    invoke-virtual {v3, v0}, Lcom/shabakaty/downloader/bx3;->E(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/shabakaty/downloader/qh3;->H:Lcom/shabakaty/downloader/kp2$a;

    .line 13
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/o04$a;->b(Lcom/shabakaty/downloader/o04;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final v(Lcom/shabakaty/downloader/qh3$d;)Lcom/shabakaty/downloader/fp4;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qh3;->J:[Lcom/shabakaty/downloader/bx3;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/qh3;->K:[Lcom/shabakaty/downloader/qh3$d;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/qh3$d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/qh3;->J:[Lcom/shabakaty/downloader/bx3;

    aget-object p1, p1, v1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/qh3;->y:Lcom/shabakaty/downloader/fn0;

    iget-object v2, p0, Lcom/shabakaty/downloader/qh3;->G:Landroid/os/Handler;

    .line 5
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/shabakaty/downloader/qh3;->t:Lcom/shabakaty/downloader/u01;

    iget-object v4, p0, Lcom/shabakaty/downloader/qh3;->w:Lcom/shabakaty/downloader/s01$a;

    .line 6
    new-instance v5, Lcom/shabakaty/downloader/bx3;

    .line 7
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-direct {v5, v1, v2, v3, v4}, Lcom/shabakaty/downloader/bx3;-><init>(Lcom/shabakaty/downloader/fn0;Landroid/os/Looper;Lcom/shabakaty/downloader/u01;Lcom/shabakaty/downloader/s01$a;)V

    .line 11
    iput-object p0, v5, Lcom/shabakaty/downloader/bx3;->g:Lcom/shabakaty/downloader/bx3$d;

    .line 12
    iget-object v1, p0, Lcom/shabakaty/downloader/qh3;->K:[Lcom/shabakaty/downloader/qh3$d;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/shabakaty/downloader/qh3$d;

    .line 13
    aput-object p1, v1, v0

    .line 14
    sget p1, Lcom/shabakaty/downloader/sy4;->a:I

    iput-object v1, p0, Lcom/shabakaty/downloader/qh3;->K:[Lcom/shabakaty/downloader/qh3$d;

    .line 15
    iget-object p1, p0, Lcom/shabakaty/downloader/qh3;->J:[Lcom/shabakaty/downloader/bx3;

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/shabakaty/downloader/bx3;

    .line 16
    aput-object v5, p1, v0

    .line 17
    iput-object p1, p0, Lcom/shabakaty/downloader/qh3;->J:[Lcom/shabakaty/downloader/bx3;

    return-object v5
.end method

.method public final w()V
    .locals 26

    move-object/from16 v7, p0

    .line 1
    new-instance v8, Lcom/shabakaty/downloader/qh3$a;

    iget-object v2, v7, Lcom/shabakaty/downloader/qh3;->r:Landroid/net/Uri;

    iget-object v3, v7, Lcom/shabakaty/downloader/qh3;->s:Lcom/shabakaty/downloader/vl0;

    iget-object v4, v7, Lcom/shabakaty/downloader/qh3;->C:Lcom/shabakaty/downloader/oh3;

    iget-object v6, v7, Lcom/shabakaty/downloader/qh3;->D:Lcom/shabakaty/downloader/b00;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/qh3$a;-><init>(Lcom/shabakaty/downloader/qh3;Landroid/net/Uri;Lcom/shabakaty/downloader/vl0;Lcom/shabakaty/downloader/oh3;Lcom/shabakaty/downloader/p91;Lcom/shabakaty/downloader/b00;)V

    .line 2
    iget-boolean v0, v7, Lcom/shabakaty/downloader/qh3;->M:Z

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/qh3;->q()Z

    move-result v0

    invoke-static {v0}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 4
    iget-wide v0, v7, Lcom/shabakaty/downloader/qh3;->Q:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    iget-wide v5, v7, Lcom/shabakaty/downloader/qh3;->Y:J

    cmp-long v9, v5, v0

    if-lez v9, :cond_0

    .line 5
    iput-boolean v4, v7, Lcom/shabakaty/downloader/qh3;->b0:Z

    .line 6
    iput-wide v2, v7, Lcom/shabakaty/downloader/qh3;->Y:J

    return-void

    .line 7
    :cond_0
    iget-object v0, v7, Lcom/shabakaty/downloader/qh3;->P:Lcom/shabakaty/downloader/vz3;

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-wide v5, v7, Lcom/shabakaty/downloader/qh3;->Y:J

    invoke-interface {v0, v5, v6}, Lcom/shabakaty/downloader/vz3;->i(J)Lcom/shabakaty/downloader/vz3$a;

    move-result-object v0

    iget-object v0, v0, Lcom/shabakaty/downloader/vz3$a;->a:Lcom/shabakaty/downloader/xz3;

    iget-wide v0, v0, Lcom/shabakaty/downloader/xz3;->b:J

    iget-wide v5, v7, Lcom/shabakaty/downloader/qh3;->Y:J

    .line 10
    iget-object v9, v8, Lcom/shabakaty/downloader/qh3$a;->g:Lcom/shabakaty/downloader/ie3;

    iput-wide v0, v9, Lcom/shabakaty/downloader/ie3;->a:J

    .line 11
    iput-wide v5, v8, Lcom/shabakaty/downloader/qh3$a;->j:J

    .line 12
    iput-boolean v4, v8, Lcom/shabakaty/downloader/qh3$a;->i:Z

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, v8, Lcom/shabakaty/downloader/qh3$a;->n:Z

    .line 14
    iget-object v1, v7, Lcom/shabakaty/downloader/qh3;->J:[Lcom/shabakaty/downloader/bx3;

    array-length v4, v1

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v1, v0

    .line 15
    iget-wide v9, v7, Lcom/shabakaty/downloader/qh3;->Y:J

    .line 16
    iput-wide v9, v5, Lcom/shabakaty/downloader/bx3;->u:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17
    :cond_1
    iput-wide v2, v7, Lcom/shabakaty/downloader/qh3;->Y:J

    .line 18
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/qh3;->n()I

    move-result v0

    iput v0, v7, Lcom/shabakaty/downloader/qh3;->a0:I

    .line 19
    iget-object v0, v7, Lcom/shabakaty/downloader/qh3;->B:Lcom/shabakaty/downloader/ij2;

    iget-object v1, v7, Lcom/shabakaty/downloader/qh3;->u:Lcom/shabakaty/downloader/gj2;

    iget v2, v7, Lcom/shabakaty/downloader/qh3;->S:I

    .line 20
    check-cast v1, Lcom/shabakaty/downloader/po0;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/po0;->b(I)I

    move-result v1

    .line 21
    invoke-virtual {v0, v8, v7, v1}, Lcom/shabakaty/downloader/ij2;->h(Lcom/shabakaty/downloader/ij2$e;Lcom/shabakaty/downloader/ij2$b;I)J

    move-result-wide v13

    .line 22
    iget-object v12, v8, Lcom/shabakaty/downloader/qh3$a;->k:Lcom/shabakaty/downloader/yl0;

    .line 23
    iget-object v15, v7, Lcom/shabakaty/downloader/qh3;->v:Lcom/shabakaty/downloader/yq2$a;

    new-instance v16, Lcom/shabakaty/downloader/hj2;

    .line 24
    iget-wide v10, v8, Lcom/shabakaty/downloader/qh3$a;->a:J

    move-object/from16 v9, v16

    .line 25
    invoke-direct/range {v9 .. v14}, Lcom/shabakaty/downloader/hj2;-><init>(JLcom/shabakaty/downloader/yl0;J)V

    const/16 v17, 0x1

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 26
    iget-wide v0, v8, Lcom/shabakaty/downloader/qh3$a;->j:J

    .line 27
    iget-wide v2, v7, Lcom/shabakaty/downloader/qh3;->Q:J

    move-wide/from16 v22, v0

    move-wide/from16 v24, v2

    .line 28
    invoke-virtual/range {v15 .. v25}, Lcom/shabakaty/downloader/yq2$a;->n(Lcom/shabakaty/downloader/hj2;IILcom/shabakaty/downloader/wh1;ILjava/lang/Object;JJ)V

    return-void
.end method

.method public final x()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/qh3;->U:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/qh3;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public x0()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/qh3;->U:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/shabakaty/downloader/qh3;->b0:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qh3;->n()I

    move-result v0

    iget v1, p0, Lcom/shabakaty/downloader/qh3;->a0:I

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/qh3;->U:Z

    .line 4
    iget-wide v0, p0, Lcom/shabakaty/downloader/qh3;->X:J

    return-wide v0

    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method
