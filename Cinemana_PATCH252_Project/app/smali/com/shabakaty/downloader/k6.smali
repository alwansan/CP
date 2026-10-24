.class public Lcom/shabakaty/downloader/k6;
.super Ljava/lang/Object;
.source "AnalyticsCollector.java"

# interfaces
.implements Lcom/shabakaty/downloader/bd3$e;
.implements Lcom/shabakaty/downloader/ye;
.implements Lcom/shabakaty/downloader/o25;
.implements Lcom/shabakaty/downloader/yq2;
.implements Lcom/shabakaty/downloader/qi$a;
.implements Lcom/shabakaty/downloader/s01;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/k6$a;
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/w30;

.field public final s:Lcom/shabakaty/downloader/nn4$b;

.field public final t:Lcom/shabakaty/downloader/nn4$c;

.field public final u:Lcom/shabakaty/downloader/k6$a;

.field public final v:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/shabakaty/downloader/t6$a;",
            ">;"
        }
    .end annotation
.end field

.field public w:Lcom/shabakaty/downloader/si2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/si2<",
            "Lcom/shabakaty/downloader/t6;",
            ">;"
        }
    .end annotation
.end field

.field public x:Lcom/shabakaty/downloader/bd3;

.field public y:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/w30;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/k6;->r:Lcom/shabakaty/downloader/w30;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/si2;

    invoke-static {}, Lcom/shabakaty/downloader/sy4;->t()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Lcom/shabakaty/downloader/ex4;->w:Lcom/shabakaty/downloader/ex4;

    .line 4
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    invoke-direct {v0, v3, v1, p1, v2}, Lcom/shabakaty/downloader/si2;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/shabakaty/downloader/w30;Lcom/shabakaty/downloader/si2$b;)V

    .line 5
    iput-object v0, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/nn4$b;

    invoke-direct {p1}, Lcom/shabakaty/downloader/nn4$b;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/k6;->s:Lcom/shabakaty/downloader/nn4$b;

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/nn4$c;

    invoke-direct {v0}, Lcom/shabakaty/downloader/nn4$c;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/k6;->t:Lcom/shabakaty/downloader/nn4$c;

    .line 8
    new-instance v0, Lcom/shabakaty/downloader/k6$a;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/k6$a;-><init>(Lcom/shabakaty/downloader/nn4$b;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/k6;->u:Lcom/shabakaty/downloader/k6$a;

    .line 9
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final A(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k6;->n0()Lcom/shabakaty/downloader/t6$a;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/u5;

    const/4 v2, 0x3

    invoke-direct {v1, v0, p1, v2}, Lcom/shabakaty/downloader/u5;-><init>(Lcom/shabakaty/downloader/t6$a;ZI)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, v2, v1}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public final B(Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/cn0;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k6;->s0()Lcom/shabakaty/downloader/t6$a;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/f6;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, p2, v2}, Lcom/shabakaty/downloader/f6;-><init>(Lcom/shabakaty/downloader/t6$a;Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/cn0;I)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/16 p2, 0x3fe

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, p2, v1}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public final C(Lcom/shabakaty/downloader/zm0;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k6;->s0()Lcom/shabakaty/downloader/t6$a;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/e6;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p1, v2}, Lcom/shabakaty/downloader/e6;-><init>(Lcom/shabakaty/downloader/t6$a;Lcom/shabakaty/downloader/zm0;I)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/16 v2, 0x3f0

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, v2, v1}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public final D(Lcom/shabakaty/downloader/dp2;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k6;->n0()Lcom/shabakaty/downloader/t6$a;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/uw4;

    invoke-direct {v1, v0, p1, p2}, Lcom/shabakaty/downloader/uw4;-><init>(Lcom/shabakaty/downloader/t6$a;Lcom/shabakaty/downloader/dp2;I)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, p2, v1}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public synthetic E(Lcom/shabakaty/downloader/bd3;Lcom/shabakaty/downloader/bd3$d;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shabakaty/downloader/dd3;->f(Lcom/shabakaty/downloader/bd3$e;Lcom/shabakaty/downloader/bd3;Lcom/shabakaty/downloader/bd3$d;)V

    return-void
.end method

.method public final F(IJ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k6;->r0()Lcom/shabakaty/downloader/t6$a;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/c6;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/shabakaty/downloader/c6;-><init>(Lcom/shabakaty/downloader/t6$a;IJ)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/16 p2, 0x3ff

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, p2, v1}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public synthetic G(IZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shabakaty/downloader/dd3;->e(Lcom/shabakaty/downloader/bd3$e;IZ)V

    return-void
.end method

.method public final H(ZI)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k6;->n0()Lcom/shabakaty/downloader/t6$a;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/v5;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p1, p2, v2}, Lcom/shabakaty/downloader/v5;-><init>(Lcom/shabakaty/downloader/t6$a;ZII)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/4 p2, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, p2, v1}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public final I(Lcom/shabakaty/downloader/zm0;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k6;->r0()Lcom/shabakaty/downloader/t6$a;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/e6;

    const/4 v2, 0x3

    invoke-direct {v1, v0, p1, v2}, Lcom/shabakaty/downloader/e6;-><init>(Lcom/shabakaty/downloader/t6$a;Lcom/shabakaty/downloader/zm0;I)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/16 v2, 0x401

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, v2, v1}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public final J(Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/cn0;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k6;->s0()Lcom/shabakaty/downloader/t6$a;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/f6;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p1, p2, v2}, Lcom/shabakaty/downloader/f6;-><init>(Lcom/shabakaty/downloader/t6$a;Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/cn0;I)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/16 p2, 0x3f2

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, p2, v1}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public synthetic K(IIIF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/e25;->a(Lcom/shabakaty/downloader/f25;IIIF)V

    return-void
.end method

.method public final L(ILcom/shabakaty/downloader/uq2$a;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/k6;->q0(ILcom/shabakaty/downloader/uq2$a;)Lcom/shabakaty/downloader/t6$a;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/shabakaty/downloader/s5;

    const/4 v0, 0x5

    invoke-direct {p2, p1, v0}, Lcom/shabakaty/downloader/s5;-><init>(Lcom/shabakaty/downloader/t6$a;I)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/16 v1, 0x40a

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, v1, p2}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public final M(ILcom/shabakaty/downloader/uq2$a;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/k6;->q0(ILcom/shabakaty/downloader/uq2$a;)Lcom/shabakaty/downloader/t6$a;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/shabakaty/downloader/s5;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Lcom/shabakaty/downloader/s5;-><init>(Lcom/shabakaty/downloader/t6$a;I)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/16 v1, 0x40b

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, v1, p2}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public final N(Ljava/lang/Object;J)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k6;->s0()Lcom/shabakaty/downloader/t6$a;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/a6;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/shabakaty/downloader/a6;-><init>(Lcom/shabakaty/downloader/t6$a;Ljava/lang/Object;J)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/16 p2, 0x403

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, p2, v1}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public final O(Lcom/shabakaty/downloader/bd3$f;Lcom/shabakaty/downloader/bd3$f;I)V
    .locals 5

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/k6;->y:Z

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/k6;->u:Lcom/shabakaty/downloader/k6$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/k6;->x:Lcom/shabakaty/downloader/bd3;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v2, v0, Lcom/shabakaty/downloader/k6$a;->b:Lcom/google/common/collect/p;

    iget-object v3, v0, Lcom/shabakaty/downloader/k6$a;->e:Lcom/shabakaty/downloader/uq2$a;

    iget-object v4, v0, Lcom/shabakaty/downloader/k6$a;->a:Lcom/shabakaty/downloader/nn4$b;

    .line 5
    invoke-static {v1, v2, v3, v4}, Lcom/shabakaty/downloader/k6$a;->b(Lcom/shabakaty/downloader/bd3;Lcom/google/common/collect/p;Lcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/uq2$a;

    move-result-object v1

    iput-object v1, v0, Lcom/shabakaty/downloader/k6$a;->d:Lcom/shabakaty/downloader/uq2$a;

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k6;->n0()Lcom/shabakaty/downloader/t6$a;

    move-result-object v0

    const/16 v1, 0xc

    .line 7
    new-instance v2, Lcom/shabakaty/downloader/y5;

    invoke-direct {v2, v0, p3, p1, p2}, Lcom/shabakaty/downloader/y5;-><init>(Lcom/shabakaty/downloader/t6$a;ILcom/shabakaty/downloader/bd3$f;Lcom/shabakaty/downloader/bd3$f;)V

    .line 8
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 10
    invoke-virtual {p1, v1, v2}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 11
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public final P(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k6;->n0()Lcom/shabakaty/downloader/t6$a;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/b6;

    const/4 v2, 0x3

    invoke-direct {v1, v0, p1, v2}, Lcom/shabakaty/downloader/b6;-><init>(Lcom/shabakaty/downloader/t6$a;II)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, v2, v1}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public final Q(ILcom/shabakaty/downloader/uq2$a;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/k6;->q0(ILcom/shabakaty/downloader/uq2$a;)Lcom/shabakaty/downloader/t6$a;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/shabakaty/downloader/s5;

    const/4 v0, 0x3

    invoke-direct {p2, p1, v0}, Lcom/shabakaty/downloader/s5;-><init>(Lcom/shabakaty/downloader/t6$a;I)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/16 v1, 0x407

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, v1, p2}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public R(Lcom/shabakaty/downloader/hp2;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k6;->n0()Lcom/shabakaty/downloader/t6$a;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/rv;

    invoke-direct {v1, v0, p1}, Lcom/shabakaty/downloader/rv;-><init>(Lcom/shabakaty/downloader/t6$a;Lcom/shabakaty/downloader/hp2;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/16 v2, 0xf

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, v2, v1}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public synthetic S()V
    .locals 0

    invoke-static {p0}, Lcom/shabakaty/downloader/dd3;->s(Lcom/shabakaty/downloader/bd3$e;)V

    return-void
.end method

.method public final T(Lcom/shabakaty/downloader/zm0;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k6;->r0()Lcom/shabakaty/downloader/t6$a;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/e6;

    const/4 v2, 0x2

    invoke-direct {v1, v0, p1, v2}, Lcom/shabakaty/downloader/e6;-><init>(Lcom/shabakaty/downloader/t6$a;Lcom/shabakaty/downloader/zm0;I)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/16 v2, 0x3f6

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, v2, v1}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public final U(Lcom/shabakaty/downloader/zm0;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k6;->s0()Lcom/shabakaty/downloader/t6$a;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/e6;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lcom/shabakaty/downloader/e6;-><init>(Lcom/shabakaty/downloader/t6$a;Lcom/shabakaty/downloader/zm0;I)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/16 v2, 0x3fc

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, v2, v1}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public final V(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k6;->s0()Lcom/shabakaty/downloader/t6$a;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/i6;

    const/4 v2, 0x3

    invoke-direct {v1, v0, p1, v2}, Lcom/shabakaty/downloader/i6;-><init>(Lcom/shabakaty/downloader/t6$a;Ljava/lang/Exception;I)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/16 v2, 0x3fa

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, v2, v1}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public synthetic W(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/dd3;->c(Lcom/shabakaty/downloader/bd3$e;Ljava/util/List;)V

    return-void
.end method

.method public final X(Lcom/shabakaty/downloader/ie;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k6;->s0()Lcom/shabakaty/downloader/t6$a;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/rv;

    invoke-direct {v1, v0, p1}, Lcom/shabakaty/downloader/rv;-><init>(Lcom/shabakaty/downloader/t6$a;Lcom/shabakaty/downloader/ie;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/16 v2, 0x3f8

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, v2, v1}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public final Y(J)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k6;->s0()Lcom/shabakaty/downloader/t6$a;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/kw3;

    invoke-direct {v1, v0, p1, p2}, Lcom/shabakaty/downloader/kw3;-><init>(Lcom/shabakaty/downloader/t6$a;J)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/16 p2, 0x3f3

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, p2, v1}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public final Z(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k6;->s0()Lcom/shabakaty/downloader/t6$a;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/i6;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lcom/shabakaty/downloader/i6;-><init>(Lcom/shabakaty/downloader/t6$a;Ljava/lang/Exception;I)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/16 v2, 0x40d

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, v2, v1}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public final a(Lcom/shabakaty/downloader/xc3;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/i71;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/i71;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/i71;->y:Lcom/shabakaty/downloader/mp2;

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/uq2$a;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/uq2$a;-><init>(Lcom/shabakaty/downloader/mp2;)V

    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/k6;->o0(Lcom/shabakaty/downloader/uq2$a;)Lcom/shabakaty/downloader/t6$a;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k6;->n0()Lcom/shabakaty/downloader/t6$a;

    move-result-object v0

    :cond_1
    const/16 v1, 0xb

    .line 6
    new-instance v2, Lcom/shabakaty/downloader/rv;

    invoke-direct {v2, v0, p1}, Lcom/shabakaty/downloader/rv;-><init>(Lcom/shabakaty/downloader/t6$a;Lcom/shabakaty/downloader/xc3;)V

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 9
    invoke-virtual {p1, v1, v2}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 10
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public final a0(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k6;->s0()Lcom/shabakaty/downloader/t6$a;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/i6;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p1, v2}, Lcom/shabakaty/downloader/i6;-><init>(Lcom/shabakaty/downloader/t6$a;Ljava/lang/Exception;I)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/16 v2, 0x40e

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, v2, v1}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public final b(Lcom/shabakaty/downloader/p25;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k6;->s0()Lcom/shabakaty/downloader/t6$a;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/rv;

    invoke-direct {v1, v0, p1}, Lcom/shabakaty/downloader/rv;-><init>(Lcom/shabakaty/downloader/t6$a;Lcom/shabakaty/downloader/p25;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/16 v2, 0x404

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, v2, v1}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public final b0(ZI)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k6;->n0()Lcom/shabakaty/downloader/t6$a;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/v5;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, p2, v2}, Lcom/shabakaty/downloader/v5;-><init>(Lcom/shabakaty/downloader/t6$a;ZII)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/4 p2, 0x6

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, p2, v1}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public final c(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k6;->s0()Lcom/shabakaty/downloader/t6$a;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/u5;

    const/4 v2, 0x2

    invoke-direct {v1, v0, p1, v2}, Lcom/shabakaty/downloader/u5;-><init>(Lcom/shabakaty/downloader/t6$a;ZI)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/16 v2, 0x3f9

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, v2, v1}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public final c0(ILcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/hj2;Lcom/shabakaty/downloader/fp2;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/k6;->q0(ILcom/shabakaty/downloader/uq2$a;)Lcom/shabakaty/downloader/t6$a;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/shabakaty/downloader/g6;

    const/4 v0, 0x1

    invoke-direct {p2, p1, p3, p4, v0}, Lcom/shabakaty/downloader/g6;-><init>(Lcom/shabakaty/downloader/t6$a;Lcom/shabakaty/downloader/hj2;Lcom/shabakaty/downloader/fp2;I)V

    .line 3
    iget-object p3, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/16 p4, 0x3e8

    invoke-virtual {p3, p4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, p4, p2}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public final d(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k6;->n0()Lcom/shabakaty/downloader/t6$a;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/b6;

    const/4 v2, 0x2

    invoke-direct {v1, v0, p1, v2}, Lcom/shabakaty/downloader/b6;-><init>(Lcom/shabakaty/downloader/t6$a;II)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, v2, v1}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public final d0(ILcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/fp2;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/k6;->q0(ILcom/shabakaty/downloader/uq2$a;)Lcom/shabakaty/downloader/t6$a;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/shabakaty/downloader/h6;

    const/4 v0, 0x1

    invoke-direct {p2, p1, p3, v0}, Lcom/shabakaty/downloader/h6;-><init>(Lcom/shabakaty/downloader/t6$a;Lcom/shabakaty/downloader/fp2;I)V

    .line 3
    iget-object p3, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/16 v0, 0x3ec

    invoke-virtual {p3, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, v0, p2}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public synthetic e(Lcom/shabakaty/downloader/wh1;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/se;->a(Lcom/shabakaty/downloader/ye;Lcom/shabakaty/downloader/wh1;)V

    return-void
.end method

.method public synthetic e0(Lcom/shabakaty/downloader/os0;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/dd3;->d(Lcom/shabakaty/downloader/bd3$e;Lcom/shabakaty/downloader/os0;)V

    return-void
.end method

.method public synthetic f(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/cd3;->e(Lcom/shabakaty/downloader/bd3$c;Z)V

    return-void
.end method

.method public final f0(Lcom/shabakaty/downloader/ps2;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k6;->n0()Lcom/shabakaty/downloader/t6$a;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/rv;

    invoke-direct {v1, v0, p1}, Lcom/shabakaty/downloader/rv;-><init>(Lcom/shabakaty/downloader/t6$a;Lcom/shabakaty/downloader/ps2;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/16 v2, 0x3ef

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, v2, v1}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public synthetic g(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/cd3;->o(Lcom/shabakaty/downloader/bd3$c;I)V

    return-void
.end method

.method public g0(II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k6;->s0()Lcom/shabakaty/downloader/t6$a;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/x5;

    invoke-direct {v1, v0, p1, p2}, Lcom/shabakaty/downloader/x5;-><init>(Lcom/shabakaty/downloader/t6$a;II)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/16 p2, 0x405

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, p2, v1}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k6;->s0()Lcom/shabakaty/downloader/t6$a;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/j6;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lcom/shabakaty/downloader/j6;-><init>(Lcom/shabakaty/downloader/t6$a;Ljava/lang/String;I)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/16 v2, 0x400

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, v2, v1}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public final h0(ILcom/shabakaty/downloader/uq2$a;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/k6;->q0(ILcom/shabakaty/downloader/uq2$a;)Lcom/shabakaty/downloader/t6$a;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/shabakaty/downloader/s5;

    const/4 v0, 0x4

    invoke-direct {p2, p1, v0}, Lcom/shabakaty/downloader/s5;-><init>(Lcom/shabakaty/downloader/t6$a;I)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/16 v1, 0x409

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, v1, p2}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public final i(Lcom/shabakaty/downloader/ad3;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k6;->n0()Lcom/shabakaty/downloader/t6$a;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/rv;

    invoke-direct {v1, v0, p1}, Lcom/shabakaty/downloader/rv;-><init>(Lcom/shabakaty/downloader/t6$a;Lcom/shabakaty/downloader/ad3;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/16 v2, 0xd

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, v2, v1}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public final i0(IJJ)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k6;->s0()Lcom/shabakaty/downloader/t6$a;

    move-result-object v8

    .line 2
    new-instance v9, Lcom/shabakaty/downloader/d6;

    const/4 v7, 0x1

    move-object v0, v9

    move-object v1, v8

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/shabakaty/downloader/d6;-><init>(Lcom/shabakaty/downloader/t6$a;IJJI)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/16 p2, 0x3f4

    invoke-virtual {p1, p2, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, p2, v9}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public final j(ILcom/shabakaty/downloader/uq2$a;Ljava/lang/Exception;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/k6;->q0(ILcom/shabakaty/downloader/uq2$a;)Lcom/shabakaty/downloader/t6$a;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/shabakaty/downloader/i6;

    const/4 v0, 0x2

    invoke-direct {p2, p1, p3, v0}, Lcom/shabakaty/downloader/i6;-><init>(Lcom/shabakaty/downloader/t6$a;Ljava/lang/Exception;I)V

    .line 3
    iget-object p3, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/16 v0, 0x408

    invoke-virtual {p3, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, v0, p2}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public final j0(ILcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/hj2;Lcom/shabakaty/downloader/fp2;Ljava/io/IOException;Z)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/k6;->q0(ILcom/shabakaty/downloader/uq2$a;)Lcom/shabakaty/downloader/t6$a;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/shabakaty/downloader/z5;

    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/z5;-><init>(Lcom/shabakaty/downloader/t6$a;Lcom/shabakaty/downloader/hj2;Lcom/shabakaty/downloader/fp2;Ljava/io/IOException;Z)V

    .line 3
    iget-object p3, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/16 p4, 0x3eb

    invoke-virtual {p3, p4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, p4, p2}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public final k(ILcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/hj2;Lcom/shabakaty/downloader/fp2;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/k6;->q0(ILcom/shabakaty/downloader/uq2$a;)Lcom/shabakaty/downloader/t6$a;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/shabakaty/downloader/g6;

    const/4 v0, 0x0

    invoke-direct {p2, p1, p3, p4, v0}, Lcom/shabakaty/downloader/g6;-><init>(Lcom/shabakaty/downloader/t6$a;Lcom/shabakaty/downloader/hj2;Lcom/shabakaty/downloader/fp2;I)V

    .line 3
    iget-object p3, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/16 p4, 0x3ea

    invoke-virtual {p3, p4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, p4, p2}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public final k0(Lcom/shabakaty/downloader/cp4;Lcom/shabakaty/downloader/ip4;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k6;->n0()Lcom/shabakaty/downloader/t6$a;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/ij4;

    invoke-direct {v1, v0, p1, p2}, Lcom/shabakaty/downloader/ij4;-><init>(Lcom/shabakaty/downloader/t6$a;Lcom/shabakaty/downloader/cp4;Lcom/shabakaty/downloader/ip4;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, p2, v1}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public final l(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ps2;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k6;->n0()Lcom/shabakaty/downloader/t6$a;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/rv;

    invoke-direct {v1, v0, p1}, Lcom/shabakaty/downloader/rv;-><init>(Lcom/shabakaty/downloader/t6$a;Ljava/util/List;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, v2, v1}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public final l0(JI)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k6;->r0()Lcom/shabakaty/downloader/t6$a;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/c6;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/shabakaty/downloader/c6;-><init>(Lcom/shabakaty/downloader/t6$a;JI)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/16 p2, 0x402

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, p2, v1}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public final m(ILcom/shabakaty/downloader/uq2$a;I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/k6;->q0(ILcom/shabakaty/downloader/uq2$a;)Lcom/shabakaty/downloader/t6$a;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/shabakaty/downloader/b6;

    const/4 v0, 0x1

    invoke-direct {p2, p1, p3, v0}, Lcom/shabakaty/downloader/b6;-><init>(Lcom/shabakaty/downloader/t6$a;II)V

    .line 3
    iget-object p3, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/16 v0, 0x406

    invoke-virtual {p3, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, v0, p2}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public m0(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k6;->n0()Lcom/shabakaty/downloader/t6$a;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/u5;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p1, v2}, Lcom/shabakaty/downloader/u5;-><init>(Lcom/shabakaty/downloader/t6$a;ZI)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, v2, v1}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public final n(Ljava/lang/String;JJ)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k6;->s0()Lcom/shabakaty/downloader/t6$a;

    move-result-object v8

    .line 2
    new-instance v9, Lcom/shabakaty/downloader/t5;

    const/4 v7, 0x1

    move-object v0, v9

    move-object v1, v8

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/shabakaty/downloader/t5;-><init>(Lcom/shabakaty/downloader/t6$a;Ljava/lang/String;JJI)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/16 p2, 0x3fd

    invoke-virtual {p1, p2, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, p2, v9}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public final n0()Lcom/shabakaty/downloader/t6$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k6;->u:Lcom/shabakaty/downloader/k6$a;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/k6$a;->d:Lcom/shabakaty/downloader/uq2$a;

    .line 3
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/k6;->o0(Lcom/shabakaty/downloader/uq2$a;)Lcom/shabakaty/downloader/t6$a;

    move-result-object v0

    return-object v0
.end method

.method public final o(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k6;->n0()Lcom/shabakaty/downloader/t6$a;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/u5;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lcom/shabakaty/downloader/u5;-><init>(Lcom/shabakaty/downloader/t6$a;ZI)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, v2, v1}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public final o0(Lcom/shabakaty/downloader/uq2$a;)Lcom/shabakaty/downloader/t6$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k6;->x:Lcom/shabakaty/downloader/bd3;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/k6;->u:Lcom/shabakaty/downloader/k6$a;

    .line 4
    iget-object v1, v1, Lcom/shabakaty/downloader/k6$a;->c:Lcom/google/common/collect/r;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/r;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/nn4;

    :goto_0
    if-eqz p1, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p1, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/shabakaty/downloader/k6;->s:Lcom/shabakaty/downloader/nn4$b;

    invoke-virtual {v1, v0, v2}, Lcom/shabakaty/downloader/nn4;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    move-result-object v0

    iget v0, v0, Lcom/shabakaty/downloader/nn4$b;->c:I

    .line 6
    invoke-virtual {p0, v1, v0, p1}, Lcom/shabakaty/downloader/k6;->p0(Lcom/shabakaty/downloader/nn4;ILcom/shabakaty/downloader/uq2$a;)Lcom/shabakaty/downloader/t6$a;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->x:Lcom/shabakaty/downloader/bd3;

    invoke-interface {p1}, Lcom/shabakaty/downloader/bd3;->t()I

    move-result p1

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/k6;->x:Lcom/shabakaty/downloader/bd3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/bd3;->L()Lcom/shabakaty/downloader/nn4;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/shabakaty/downloader/nn4;->p()I

    move-result v2

    if-ge p1, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_4

    goto :goto_3

    .line 10
    :cond_4
    sget-object v1, Lcom/shabakaty/downloader/nn4;->a:Lcom/shabakaty/downloader/nn4;

    .line 11
    :goto_3
    invoke-virtual {p0, v1, p1, v0}, Lcom/shabakaty/downloader/k6;->p0(Lcom/shabakaty/downloader/nn4;ILcom/shabakaty/downloader/uq2$a;)Lcom/shabakaty/downloader/t6$a;

    move-result-object p1

    return-object p1
.end method

.method public final p()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k6;->n0()Lcom/shabakaty/downloader/t6$a;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/s5;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/shabakaty/downloader/s5;-><init>(Lcom/shabakaty/downloader/t6$a;I)V

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {v0, v3, v1}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public final p0(Lcom/shabakaty/downloader/nn4;ILcom/shabakaty/downloader/uq2$a;)Lcom/shabakaty/downloader/t6$a;
    .locals 17
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "player"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object/from16 v6, p3

    .line 2
    :goto_0
    iget-object v1, v0, Lcom/shabakaty/downloader/k6;->r:Lcom/shabakaty/downloader/w30;

    invoke-interface {v1}, Lcom/shabakaty/downloader/w30;->d()J

    move-result-wide v2

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/k6;->x:Lcom/shabakaty/downloader/bd3;

    .line 4
    invoke-interface {v1}, Lcom/shabakaty/downloader/bd3;->L()Lcom/shabakaty/downloader/nn4;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/shabakaty/downloader/nn4;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/shabakaty/downloader/k6;->x:Lcom/shabakaty/downloader/bd3;

    .line 5
    invoke-interface {v1}, Lcom/shabakaty/downloader/bd3;->t()I

    move-result v1

    if-ne v5, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-wide/16 v9, 0x0

    if-eqz v6, :cond_3

    .line 6
    invoke-virtual {v6}, Lcom/shabakaty/downloader/mp2;->a()Z

    move-result v11

    if-eqz v11, :cond_3

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, v0, Lcom/shabakaty/downloader/k6;->x:Lcom/shabakaty/downloader/bd3;

    .line 8
    invoke-interface {v1}, Lcom/shabakaty/downloader/bd3;->F()I

    move-result v1

    iget v11, v6, Lcom/shabakaty/downloader/mp2;->b:I

    if-ne v1, v11, :cond_2

    iget-object v1, v0, Lcom/shabakaty/downloader/k6;->x:Lcom/shabakaty/downloader/bd3;

    .line 9
    invoke-interface {v1}, Lcom/shabakaty/downloader/bd3;->p()I

    move-result v1

    iget v11, v6, Lcom/shabakaty/downloader/mp2;->c:I

    if-ne v1, v11, :cond_2

    const/4 v7, 0x1

    :cond_2
    if-eqz v7, :cond_6

    .line 10
    iget-object v1, v0, Lcom/shabakaty/downloader/k6;->x:Lcom/shabakaty/downloader/bd3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/bd3;->V()J

    move-result-wide v9

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    .line 11
    iget-object v1, v0, Lcom/shabakaty/downloader/k6;->x:Lcom/shabakaty/downloader/bd3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/bd3;->C()J

    move-result-wide v7

    goto :goto_3

    .line 12
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    iget-object v1, v0, Lcom/shabakaty/downloader/k6;->t:Lcom/shabakaty/downloader/nn4$c;

    .line 13
    invoke-virtual {v4, v5, v1, v9, v10}, Lcom/shabakaty/downloader/nn4;->o(ILcom/shabakaty/downloader/nn4$c;J)Lcom/shabakaty/downloader/nn4$c;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/shabakaty/downloader/nn4$c;->a()J

    move-result-wide v9

    :cond_6
    :goto_2
    move-wide v7, v9

    .line 15
    :goto_3
    iget-object v1, v0, Lcom/shabakaty/downloader/k6;->u:Lcom/shabakaty/downloader/k6$a;

    .line 16
    iget-object v11, v1, Lcom/shabakaty/downloader/k6$a;->d:Lcom/shabakaty/downloader/uq2$a;

    .line 17
    new-instance v16, Lcom/shabakaty/downloader/t6$a;

    iget-object v1, v0, Lcom/shabakaty/downloader/k6;->x:Lcom/shabakaty/downloader/bd3;

    .line 18
    invoke-interface {v1}, Lcom/shabakaty/downloader/bd3;->L()Lcom/shabakaty/downloader/nn4;

    move-result-object v9

    iget-object v1, v0, Lcom/shabakaty/downloader/k6;->x:Lcom/shabakaty/downloader/bd3;

    .line 19
    invoke-interface {v1}, Lcom/shabakaty/downloader/bd3;->t()I

    move-result v10

    iget-object v1, v0, Lcom/shabakaty/downloader/k6;->x:Lcom/shabakaty/downloader/bd3;

    .line 20
    invoke-interface {v1}, Lcom/shabakaty/downloader/bd3;->V()J

    move-result-wide v12

    iget-object v1, v0, Lcom/shabakaty/downloader/k6;->x:Lcom/shabakaty/downloader/bd3;

    .line 21
    invoke-interface {v1}, Lcom/shabakaty/downloader/bd3;->b()J

    move-result-wide v14

    move-object/from16 v1, v16

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v1 .. v15}, Lcom/shabakaty/downloader/t6$a;-><init>(JLcom/shabakaty/downloader/nn4;ILcom/shabakaty/downloader/uq2$a;JLcom/shabakaty/downloader/nn4;ILcom/shabakaty/downloader/uq2$a;JJ)V

    return-object v16
.end method

.method public q(Lcom/shabakaty/downloader/bd3$b;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k6;->n0()Lcom/shabakaty/downloader/t6$a;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/rv;

    invoke-direct {v1, v0, p1}, Lcom/shabakaty/downloader/rv;-><init>(Lcom/shabakaty/downloader/t6$a;Lcom/shabakaty/downloader/bd3$b;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/16 v2, 0xe

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, v2, v1}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public final q0(ILcom/shabakaty/downloader/uq2$a;)Lcom/shabakaty/downloader/t6$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k6;->x:Lcom/shabakaty/downloader/bd3;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/k6;->u:Lcom/shabakaty/downloader/k6$a;

    .line 4
    iget-object v2, v2, Lcom/shabakaty/downloader/k6$a;->c:Lcom/google/common/collect/r;

    invoke-virtual {v2, p2}, Lcom/google/common/collect/r;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/nn4;

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/k6;->o0(Lcom/shabakaty/downloader/uq2$a;)Lcom/shabakaty/downloader/t6$a;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Lcom/shabakaty/downloader/nn4;->a:Lcom/shabakaty/downloader/nn4;

    invoke-virtual {p0, v0, p1, p2}, Lcom/shabakaty/downloader/k6;->p0(Lcom/shabakaty/downloader/nn4;ILcom/shabakaty/downloader/uq2$a;)Lcom/shabakaty/downloader/t6$a;

    move-result-object p1

    :goto_0
    return-object p1

    .line 7
    :cond_2
    iget-object p2, p0, Lcom/shabakaty/downloader/k6;->x:Lcom/shabakaty/downloader/bd3;

    invoke-interface {p2}, Lcom/shabakaty/downloader/bd3;->L()Lcom/shabakaty/downloader/nn4;

    move-result-object p2

    .line 8
    invoke-virtual {p2}, Lcom/shabakaty/downloader/nn4;->p()I

    move-result v2

    if-ge p1, v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_4

    goto :goto_1

    .line 9
    :cond_4
    sget-object p2, Lcom/shabakaty/downloader/nn4;->a:Lcom/shabakaty/downloader/nn4;

    :goto_1
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p2, p1, v0}, Lcom/shabakaty/downloader/k6;->p0(Lcom/shabakaty/downloader/nn4;ILcom/shabakaty/downloader/uq2$a;)Lcom/shabakaty/downloader/t6$a;

    move-result-object p1

    return-object p1
.end method

.method public final r(F)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k6;->s0()Lcom/shabakaty/downloader/t6$a;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/w5;

    invoke-direct {v1, v0, p1}, Lcom/shabakaty/downloader/w5;-><init>(Lcom/shabakaty/downloader/t6$a;F)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/16 v2, 0x3fb

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, v2, v1}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public final r0()Lcom/shabakaty/downloader/t6$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k6;->u:Lcom/shabakaty/downloader/k6$a;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/k6$a;->e:Lcom/shabakaty/downloader/uq2$a;

    .line 3
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/k6;->o0(Lcom/shabakaty/downloader/uq2$a;)Lcom/shabakaty/downloader/t6$a;

    move-result-object v0

    return-object v0
.end method

.method public final s(ILcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/hj2;Lcom/shabakaty/downloader/fp2;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/k6;->q0(ILcom/shabakaty/downloader/uq2$a;)Lcom/shabakaty/downloader/t6$a;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/shabakaty/downloader/g6;

    const/4 v0, 0x2

    invoke-direct {p2, p1, p3, p4, v0}, Lcom/shabakaty/downloader/g6;-><init>(Lcom/shabakaty/downloader/t6$a;Lcom/shabakaty/downloader/hj2;Lcom/shabakaty/downloader/fp2;I)V

    .line 3
    iget-object p3, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/16 p4, 0x3e9

    invoke-virtual {p3, p4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, p4, p2}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public final s0()Lcom/shabakaty/downloader/t6$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k6;->u:Lcom/shabakaty/downloader/k6$a;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/k6$a;->f:Lcom/shabakaty/downloader/uq2$a;

    .line 3
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/k6;->o0(Lcom/shabakaty/downloader/uq2$a;)Lcom/shabakaty/downloader/t6$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic t(Lcom/shabakaty/downloader/wh1;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/l25;->a(Lcom/shabakaty/downloader/o25;Lcom/shabakaty/downloader/wh1;)V

    return-void
.end method

.method public final u(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k6;->n0()Lcom/shabakaty/downloader/t6$a;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/b6;

    const/4 v2, 0x4

    invoke-direct {v1, v0, p1, v2}, Lcom/shabakaty/downloader/b6;-><init>(Lcom/shabakaty/downloader/t6$a;II)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, v2, v1}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public final v(ILcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/fp2;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/k6;->q0(ILcom/shabakaty/downloader/uq2$a;)Lcom/shabakaty/downloader/t6$a;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/shabakaty/downloader/h6;

    const/4 v0, 0x0

    invoke-direct {p2, p1, p3, v0}, Lcom/shabakaty/downloader/h6;-><init>(Lcom/shabakaty/downloader/t6$a;Lcom/shabakaty/downloader/fp2;I)V

    .line 3
    iget-object p3, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/16 v0, 0x3ed

    invoke-virtual {p3, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, v0, p2}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public synthetic w(Lcom/shabakaty/downloader/xc3;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/dd3;->q(Lcom/shabakaty/downloader/bd3$e;Lcom/shabakaty/downloader/xc3;)V

    return-void
.end method

.method public final x(Lcom/shabakaty/downloader/nn4;I)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->u:Lcom/shabakaty/downloader/k6$a;

    iget-object v0, p0, Lcom/shabakaty/downloader/k6;->x:Lcom/shabakaty/downloader/bd3;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p1, Lcom/shabakaty/downloader/k6$a;->b:Lcom/google/common/collect/p;

    iget-object v2, p1, Lcom/shabakaty/downloader/k6$a;->e:Lcom/shabakaty/downloader/uq2$a;

    iget-object v3, p1, Lcom/shabakaty/downloader/k6$a;->a:Lcom/shabakaty/downloader/nn4$b;

    .line 4
    invoke-static {v0, v1, v2, v3}, Lcom/shabakaty/downloader/k6$a;->b(Lcom/shabakaty/downloader/bd3;Lcom/google/common/collect/p;Lcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/uq2$a;

    move-result-object v1

    iput-object v1, p1, Lcom/shabakaty/downloader/k6$a;->d:Lcom/shabakaty/downloader/uq2$a;

    .line 5
    invoke-interface {v0}, Lcom/shabakaty/downloader/bd3;->L()Lcom/shabakaty/downloader/nn4;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/k6$a;->d(Lcom/shabakaty/downloader/nn4;)V

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k6;->n0()Lcom/shabakaty/downloader/t6$a;

    move-result-object p1

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/b6;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/shabakaty/downloader/b6;-><init>(Lcom/shabakaty/downloader/t6$a;II)V

    .line 8
    iget-object p2, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    invoke-virtual {p2, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 10
    invoke-virtual {p1, v1, v0}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 11
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public final y(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k6;->s0()Lcom/shabakaty/downloader/t6$a;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/j6;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p1, v2}, Lcom/shabakaty/downloader/j6;-><init>(Lcom/shabakaty/downloader/t6$a;Ljava/lang/String;I)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/16 v2, 0x3f5

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, v2, v1}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method

.method public final z(Ljava/lang/String;JJ)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k6;->s0()Lcom/shabakaty/downloader/t6$a;

    move-result-object v8

    .line 2
    new-instance v9, Lcom/shabakaty/downloader/t5;

    const/4 v7, 0x0

    move-object v0, v9

    move-object v1, v8

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/shabakaty/downloader/t5;-><init>(Lcom/shabakaty/downloader/t6$a;Ljava/lang/String;JJI)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    const/16 p2, 0x3f1

    invoke-virtual {p1, p2, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 5
    invoke-virtual {p1, p2, v9}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    return-void
.end method
