.class public Lcom/shabakaty/downloader/gv;
.super Lcom/shabakaty/downloader/du0;
.source "CancellableContinuationImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/fv;
.implements Lcom/shabakaty/downloader/ue0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/du0<",
        "TT;>;",
        "Lcom/shabakaty/downloader/fv<",
        "TT;>;",
        "Lcom/shabakaty/downloader/ue0;"
    }
.end annotation


# static fields
.field public static final synthetic w:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final synthetic x:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _decision:I

.field private volatile synthetic _parentHandle:Ljava/lang/Object;

.field private volatile synthetic _state:Ljava/lang/Object;

.field public final u:Lcom/shabakaty/downloader/me0;

.field public final v:Lcom/shabakaty/downloader/ud0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ud0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/shabakaty/downloader/gv;

    const-string v1, "_decision"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/gv;->w:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-class v0, Lcom/shabakaty/downloader/gv;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/gv;->x:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/ud0;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ud0<",
            "-TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/du0;-><init>(I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/gv;->v:Lcom/shabakaty/downloader/ud0;

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/ud0;->a()Lcom/shabakaty/downloader/me0;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/gv;->u:Lcom/shabakaty/downloader/me0;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/shabakaty/downloader/gv;->_decision:I

    .line 4
    sget-object p1, Lcom/shabakaty/downloader/r2;->r:Lcom/shabakaty/downloader/r2;

    iput-object p1, p0, Lcom/shabakaty/downloader/gv;->_state:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/gv;->_parentHandle:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final A(Lcom/shabakaty/downloader/tm1;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "It\'s prohibited to register multiple handlers, tried to register "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", already has "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public B()Ljava/lang/String;
    .locals 1

    const-string v0, "CancellableContinuation"

    return-object v0
.end method

.method public final C()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gv;->_state:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Lcom/shabakaty/downloader/g80;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/shabakaty/downloader/g80;

    iget-object v0, v0, Lcom/shabakaty/downloader/g80;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gv;->s()V

    return v2

    .line 4
    :cond_0
    iput v2, p0, Lcom/shabakaty/downloader/gv;->_decision:I

    .line 5
    sget-object v0, Lcom/shabakaty/downloader/r2;->r:Lcom/shabakaty/downloader/r2;

    iput-object v0, p0, Lcom/shabakaty/downloader/gv;->_state:Ljava/lang/Object;

    const/4 v0, 0x1

    return v0
.end method

.method public final D(Ljava/lang/Object;ILcom/shabakaty/downloader/tm1;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)V"
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/gv;->_state:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Lcom/shabakaty/downloader/a03;

    if-eqz v1, :cond_1

    .line 3
    move-object v3, v0

    check-cast v3, Lcom/shabakaty/downloader/a03;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/shabakaty/downloader/gv;->E(Lcom/shabakaty/downloader/a03;Ljava/lang/Object;ILcom/shabakaty/downloader/tm1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/shabakaty/downloader/gv;->x:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gv;->t()V

    .line 6
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/gv;->v(I)V

    return-void

    .line 7
    :cond_1
    instance-of p2, v0, Lcom/shabakaty/downloader/jv;

    if-eqz p2, :cond_3

    .line 8
    check-cast v0, Lcom/shabakaty/downloader/jv;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object p2, Lcom/shabakaty/downloader/jv;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    .line 10
    iget-object p1, v0, Lcom/shabakaty/downloader/i80;->a:Ljava/lang/Throwable;

    invoke-virtual {p0, p3, p1}, Lcom/shabakaty/downloader/gv;->p(Lcom/shabakaty/downloader/tm1;Ljava/lang/Throwable;)V

    :cond_2
    return-void

    :cond_3
    const-string p2, "Already resumed, but proposed with update "

    .line 11
    invoke-static {p2, p1}, Lcom/shabakaty/downloader/c50;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final E(Lcom/shabakaty/downloader/a03;Ljava/lang/Object;ILcom/shabakaty/downloader/tm1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/a03;",
            "Ljava/lang/Object;",
            "I",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/shabakaty/downloader/i80;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p3}, Lcom/shabakaty/downloader/vd5;->q(I)Z

    move-result p3

    if-nez p3, :cond_1

    if-nez p5, :cond_1

    goto :goto_0

    :cond_1
    if-nez p4, :cond_3

    .line 3
    instance-of p3, p1, Lcom/shabakaty/downloader/xu;

    if-eqz p3, :cond_2

    instance-of p3, p1, Lcom/shabakaty/downloader/rl;

    if-eqz p3, :cond_3

    :cond_2
    if-eqz p5, :cond_5

    .line 4
    :cond_3
    new-instance p3, Lcom/shabakaty/downloader/g80;

    instance-of v0, p1, Lcom/shabakaty/downloader/xu;

    if-nez v0, :cond_4

    const/4 p1, 0x0

    :cond_4
    move-object v2, p1

    check-cast v2, Lcom/shabakaty/downloader/xu;

    const/4 v5, 0x0

    const/16 v6, 0x10

    move-object v0, p3

    move-object v1, p2

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/g80;-><init>(Ljava/lang/Object;Lcom/shabakaty/downloader/xu;Lcom/shabakaty/downloader/tm1;Ljava/lang/Object;Ljava/lang/Throwable;I)V

    move-object p2, p3

    :cond_5
    :goto_0
    return-object p2
.end method

.method public final F()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gv;->_state:Ljava/lang/Object;

    .line 2
    instance-of v0, v0, Lcom/shabakaty/downloader/a03;

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 3
    iget v2, p0, Lcom/shabakaty/downloader/du0;->t:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/shabakaty/downloader/gv;->v:Lcom/shabakaty/downloader/ud0;

    instance-of v3, v2, Lcom/shabakaty/downloader/au0;

    if-nez v3, :cond_2

    const/4 v2, 0x0

    :cond_2
    check-cast v2, Lcom/shabakaty/downloader/au0;

    if-eqz v2, :cond_4

    .line 5
    invoke-virtual {v2, p0}, Lcom/shabakaty/downloader/au0;->m(Lcom/shabakaty/downloader/fv;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_4

    if-nez v0, :cond_3

    .line 6
    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/gv;->r(Ljava/lang/Throwable;)Z

    :cond_3
    const/4 v0, 0x1

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    return-void

    .line 7
    :cond_5
    iget-object v0, p0, Lcom/shabakaty/downloader/gv;->_parentHandle:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ou0;

    if-eqz v0, :cond_6

    return-void

    .line 8
    :cond_6
    iget-object v0, p0, Lcom/shabakaty/downloader/gv;->v:Lcom/shabakaty/downloader/ud0;

    invoke-interface {v0}, Lcom/shabakaty/downloader/ud0;->a()Lcom/shabakaty/downloader/me0;

    move-result-object v0

    sget-object v2, Lcom/shabakaty/downloader/e92;->h:Lcom/shabakaty/downloader/e92$b;

    invoke-interface {v0, v2}, Lcom/shabakaty/downloader/me0;->get(Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0$b;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/shabakaty/downloader/e92;

    if-eqz v2, :cond_7

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 9
    new-instance v5, Lcom/shabakaty/downloader/pz;

    invoke-direct {v5, p0}, Lcom/shabakaty/downloader/pz;-><init>(Lcom/shabakaty/downloader/gv;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 10
    invoke-static/range {v2 .. v7}, Lcom/shabakaty/downloader/e92$a;->b(Lcom/shabakaty/downloader/e92;ZZLcom/shabakaty/downloader/tm1;ILjava/lang/Object;)Lcom/shabakaty/downloader/ou0;

    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/shabakaty/downloader/gv;->_parentHandle:Ljava/lang/Object;

    .line 12
    iget-object v2, p0, Lcom/shabakaty/downloader/gv;->_state:Ljava/lang/Object;

    .line 13
    instance-of v2, v2, Lcom/shabakaty/downloader/a03;

    xor-int/2addr v1, v2

    if-eqz v1, :cond_7

    .line 14
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gv;->y()Z

    move-result v1

    if-nez v1, :cond_7

    .line 15
    invoke-interface {v0}, Lcom/shabakaty/downloader/ou0;->h()V

    .line 16
    sget-object v0, Lcom/shabakaty/downloader/wz2;->r:Lcom/shabakaty/downloader/wz2;

    .line 17
    iput-object v0, p0, Lcom/shabakaty/downloader/gv;->_parentHandle:Ljava/lang/Object;

    :cond_7
    return-void
.end method

.method public final G(Ljava/lang/Object;Ljava/lang/Object;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/j61;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Lcom/shabakaty/downloader/j61;"
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/gv;->_state:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Lcom/shabakaty/downloader/a03;

    if-eqz v1, :cond_1

    .line 3
    move-object v3, v0

    check-cast v3, Lcom/shabakaty/downloader/a03;

    iget v5, p0, Lcom/shabakaty/downloader/du0;->t:I

    move-object v2, p0

    move-object v4, p1

    move-object v6, p3

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/shabakaty/downloader/gv;->E(Lcom/shabakaty/downloader/a03;Ljava/lang/Object;ILcom/shabakaty/downloader/tm1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/shabakaty/downloader/gv;->x:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gv;->t()V

    .line 6
    sget-object p1, Lcom/shabakaty/downloader/hv;->a:Lcom/shabakaty/downloader/j61;

    return-object p1

    .line 7
    :cond_1
    instance-of p1, v0, Lcom/shabakaty/downloader/g80;

    const/4 p3, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 8
    check-cast v0, Lcom/shabakaty/downloader/g80;

    iget-object p1, v0, Lcom/shabakaty/downloader/g80;->d:Ljava/lang/Object;

    if-ne p1, p2, :cond_2

    .line 9
    sget-object p3, Lcom/shabakaty/downloader/hv;->a:Lcom/shabakaty/downloader/j61;

    :cond_2
    return-object p3
.end method

.method public a()Lcom/shabakaty/downloader/me0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gv;->u:Lcom/shabakaty/downloader/me0;

    return-object v0
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 9

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/gv;->_state:Ljava/lang/Object;

    .line 2
    instance-of v0, p1, Lcom/shabakaty/downloader/a03;

    if-nez v0, :cond_7

    .line 3
    instance-of v0, p1, Lcom/shabakaty/downloader/i80;

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    instance-of v0, p1, Lcom/shabakaty/downloader/g80;

    if-eqz v0, :cond_6

    .line 5
    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/g80;

    .line 6
    iget-object v1, v0, Lcom/shabakaty/downloader/g80;->e:Ljava/lang/Throwable;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    xor-int/2addr v1, v2

    if-eqz v1, :cond_5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xf

    move-object v1, v0

    move-object v6, p2

    .line 7
    invoke-static/range {v1 .. v7}, Lcom/shabakaty/downloader/g80;->a(Lcom/shabakaty/downloader/g80;Ljava/lang/Object;Lcom/shabakaty/downloader/xu;Lcom/shabakaty/downloader/tm1;Ljava/lang/Object;Ljava/lang/Throwable;I)Lcom/shabakaty/downloader/g80;

    move-result-object v1

    .line 8
    sget-object v2, Lcom/shabakaty/downloader/gv;->x:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    iget-object p1, v0, Lcom/shabakaty/downloader/g80;->b:Lcom/shabakaty/downloader/xu;

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/gv;->m(Lcom/shabakaty/downloader/xu;Ljava/lang/Throwable;)V

    .line 10
    :cond_3
    iget-object p1, v0, Lcom/shabakaty/downloader/g80;->c:Lcom/shabakaty/downloader/tm1;

    if-eqz p1, :cond_4

    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/gv;->p(Lcom/shabakaty/downloader/tm1;Ljava/lang/Throwable;)V

    :cond_4
    return-void

    .line 11
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Must be called at most once"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_6
    sget-object v7, Lcom/shabakaty/downloader/gv;->x:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v8, Lcom/shabakaty/downloader/g80;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0xe

    move-object v0, v8

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/g80;-><init>(Ljava/lang/Object;Lcom/shabakaty/downloader/xu;Lcom/shabakaty/downloader/tm1;Ljava/lang/Object;Ljava/lang/Throwable;I)V

    invoke-virtual {v7, p0, p1, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 13
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not completed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c()Lcom/shabakaty/downloader/ud0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/ud0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gv;->v:Lcom/shabakaty/downloader/ud0;

    return-object v0
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/du0;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/shabakaty/downloader/gv;->G(Ljava/lang/Object;Ljava/lang/Object;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/j61;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/g80;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/shabakaty/downloader/g80;

    iget-object p1, p1, Lcom/shabakaty/downloader/g80;->a:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public g(Ljava/lang/Object;Lcom/shabakaty/downloader/tm1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/du0;->t:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/shabakaty/downloader/gv;->D(Ljava/lang/Object;ILcom/shabakaty/downloader/tm1;)V

    return-void
.end method

.method public h()Lcom/shabakaty/downloader/ue0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gv;->v:Lcom/shabakaty/downloader/ud0;

    instance-of v1, v0, Lcom/shabakaty/downloader/ue0;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/shabakaty/downloader/ue0;

    return-object v0
.end method

.method public i(Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/dt3;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lcom/shabakaty/downloader/i80;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p1, v0, v1, v2}, Lcom/shabakaty/downloader/i80;-><init>(Ljava/lang/Throwable;ZI)V

    .line 3
    :goto_0
    iget v0, p0, Lcom/shabakaty/downloader/du0;->t:I

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Lcom/shabakaty/downloader/gv;->D(Ljava/lang/Object;ILcom/shabakaty/downloader/tm1;)V

    return-void
.end method

.method public isCancelled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gv;->_state:Ljava/lang/Object;

    .line 2
    instance-of v0, v0, Lcom/shabakaty/downloader/jv;

    return v0
.end method

.method public k()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gv;->_state:Ljava/lang/Object;

    return-object v0
.end method

.method public l(Ljava/lang/Object;Ljava/lang/Object;Lcom/shabakaty/downloader/tm1;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/shabakaty/downloader/gv;->G(Ljava/lang/Object;Ljava/lang/Object;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/j61;

    move-result-object p1

    return-object p1
.end method

.method public final m(Lcom/shabakaty/downloader/xu;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/yu;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    iget-object p2, p0, Lcom/shabakaty/downloader/gv;->u:Lcom/shabakaty/downloader/me0;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/l80;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in invokeOnCancellation handler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/l80;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    invoke-static {p2, v0}, Lcom/shabakaty/downloader/md0;->y(Lcom/shabakaty/downloader/me0;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public n(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/i80;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2}, Lcom/shabakaty/downloader/i80;-><init>(Ljava/lang/Throwable;ZI)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1, p1}, Lcom/shabakaty/downloader/gv;->G(Ljava/lang/Object;Ljava/lang/Object;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/j61;

    move-result-object p1

    return-object p1
.end method

.method public final o(Lcom/shabakaty/downloader/tm1;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    iget-object p2, p0, Lcom/shabakaty/downloader/gv;->u:Lcom/shabakaty/downloader/me0;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/l80;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in invokeOnCancellation handler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/l80;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    invoke-static {p2, v0}, Lcom/shabakaty/downloader/md0;->y(Lcom/shabakaty/downloader/me0;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final p(Lcom/shabakaty/downloader/tm1;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    iget-object p2, p0, Lcom/shabakaty/downloader/gv;->u:Lcom/shabakaty/downloader/me0;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/l80;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in resume onCancellation handler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/l80;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    invoke-static {p2, v0}, Lcom/shabakaty/downloader/md0;->y(Lcom/shabakaty/downloader/me0;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public q(Lcom/shabakaty/downloader/tm1;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/xu;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/xu;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/wu;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/wu;-><init>(Lcom/shabakaty/downloader/tm1;)V

    .line 2
    :cond_1
    :goto_0
    iget-object v8, p0, Lcom/shabakaty/downloader/gv;->_state:Ljava/lang/Object;

    .line 3
    instance-of v1, v8, Lcom/shabakaty/downloader/r2;

    if-eqz v1, :cond_2

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/gv;->x:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v8, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 5
    :cond_2
    instance-of v1, v8, Lcom/shabakaty/downloader/xu;

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 6
    instance-of v1, v8, Lcom/shabakaty/downloader/i80;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_7

    .line 7
    move-object v0, v8

    check-cast v0, Lcom/shabakaty/downloader/i80;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v5, Lcom/shabakaty/downloader/i80;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v5, v0, v4, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9
    instance-of v0, v8, Lcom/shabakaty/downloader/jv;

    if-eqz v0, :cond_5

    if-nez v1, :cond_3

    move-object v8, v2

    .line 10
    :cond_3
    check-cast v8, Lcom/shabakaty/downloader/i80;

    if-eqz v8, :cond_4

    iget-object v2, v8, Lcom/shabakaty/downloader/i80;->a:Ljava/lang/Throwable;

    :cond_4
    invoke-virtual {p0, p1, v2}, Lcom/shabakaty/downloader/gv;->o(Lcom/shabakaty/downloader/tm1;Ljava/lang/Throwable;)V

    :cond_5
    return-void

    .line 11
    :cond_6
    invoke-virtual {p0, p1, v8}, Lcom/shabakaty/downloader/gv;->A(Lcom/shabakaty/downloader/tm1;Ljava/lang/Object;)V

    throw v2

    .line 12
    :cond_7
    instance-of v1, v8, Lcom/shabakaty/downloader/g80;

    if-eqz v1, :cond_c

    .line 13
    move-object v1, v8

    check-cast v1, Lcom/shabakaty/downloader/g80;

    iget-object v5, v1, Lcom/shabakaty/downloader/g80;->b:Lcom/shabakaty/downloader/xu;

    if-nez v5, :cond_b

    .line 14
    instance-of v2, v0, Lcom/shabakaty/downloader/rl;

    if-eqz v2, :cond_8

    return-void

    .line 15
    :cond_8
    iget-object v2, v1, Lcom/shabakaty/downloader/g80;->e:Ljava/lang/Throwable;

    if-eqz v2, :cond_9

    goto :goto_1

    :cond_9
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_a

    .line 16
    invoke-virtual {p0, p1, v2}, Lcom/shabakaty/downloader/gv;->o(Lcom/shabakaty/downloader/tm1;Ljava/lang/Throwable;)V

    return-void

    :cond_a
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1d

    move-object v3, v0

    .line 17
    invoke-static/range {v1 .. v7}, Lcom/shabakaty/downloader/g80;->a(Lcom/shabakaty/downloader/g80;Ljava/lang/Object;Lcom/shabakaty/downloader/xu;Lcom/shabakaty/downloader/tm1;Ljava/lang/Object;Ljava/lang/Throwable;I)Lcom/shabakaty/downloader/g80;

    move-result-object v1

    .line 18
    sget-object v2, Lcom/shabakaty/downloader/gv;->x:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v8, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 19
    :cond_b
    invoke-virtual {p0, p1, v8}, Lcom/shabakaty/downloader/gv;->A(Lcom/shabakaty/downloader/tm1;Ljava/lang/Object;)V

    throw v2

    .line 20
    :cond_c
    instance-of v1, v0, Lcom/shabakaty/downloader/rl;

    if-eqz v1, :cond_d

    return-void

    .line 21
    :cond_d
    new-instance v9, Lcom/shabakaty/downloader/g80;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    move-object v1, v9

    move-object v2, v8

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Lcom/shabakaty/downloader/g80;-><init>(Ljava/lang/Object;Lcom/shabakaty/downloader/xu;Lcom/shabakaty/downloader/tm1;Ljava/lang/Object;Ljava/lang/Throwable;I)V

    .line 22
    sget-object v1, Lcom/shabakaty/downloader/gv;->x:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 23
    :cond_e
    invoke-virtual {p0, p1, v8}, Lcom/shabakaty/downloader/gv;->A(Lcom/shabakaty/downloader/tm1;Ljava/lang/Object;)V

    throw v2
.end method

.method public r(Ljava/lang/Throwable;)Z
    .locals 4

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/gv;->_state:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Lcom/shabakaty/downloader/a03;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    new-instance v1, Lcom/shabakaty/downloader/jv;

    instance-of v2, v0, Lcom/shabakaty/downloader/xu;

    invoke-direct {v1, p0, p1, v2}, Lcom/shabakaty/downloader/jv;-><init>(Lcom/shabakaty/downloader/ud0;Ljava/lang/Throwable;Z)V

    .line 4
    sget-object v3, Lcom/shabakaty/downloader/gv;->x:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const/4 v0, 0x0

    .line 5
    :cond_2
    check-cast v0, Lcom/shabakaty/downloader/xu;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0, p1}, Lcom/shabakaty/downloader/gv;->m(Lcom/shabakaty/downloader/xu;Ljava/lang/Throwable;)V

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gv;->t()V

    .line 7
    iget p1, p0, Lcom/shabakaty/downloader/du0;->t:I

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/gv;->v(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public final s()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gv;->_parentHandle:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ou0;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/shabakaty/downloader/ou0;->h()V

    .line 3
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/wz2;->r:Lcom/shabakaty/downloader/wz2;

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/gv;->_parentHandle:Ljava/lang/Object;

    return-void
.end method

.method public final t()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gv;->y()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/gv;->s()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/shabakaty/downloader/gv;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/gv;->v:Lcom/shabakaty/downloader/ud0;

    invoke-static {v1}, Lcom/shabakaty/downloader/he0;->t(Lcom/shabakaty/downloader/ud0;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "){"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/gv;->_state:Ljava/lang/Object;

    .line 3
    instance-of v2, v1, Lcom/shabakaty/downloader/a03;

    if-eqz v2, :cond_0

    const-string v1, "Active"

    goto :goto_0

    .line 4
    :cond_0
    instance-of v1, v1, Lcom/shabakaty/downloader/jv;

    if-eqz v1, :cond_1

    const-string v1, "Cancelled"

    goto :goto_0

    :cond_1
    const-string v1, "Completed"

    .line 5
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/shabakaty/downloader/he0;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Lcom/shabakaty/downloader/pe0;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/pe0;",
            "TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gv;->v:Lcom/shabakaty/downloader/ud0;

    instance-of v1, v0, Lcom/shabakaty/downloader/au0;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lcom/shabakaty/downloader/au0;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/au0;->w:Lcom/shabakaty/downloader/pe0;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-ne v0, p1, :cond_2

    const/4 p1, 0x4

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/shabakaty/downloader/du0;->t:I

    .line 3
    :goto_1
    invoke-virtual {p0, p2, p1, v2}, Lcom/shabakaty/downloader/gv;->D(Ljava/lang/Object;ILcom/shabakaty/downloader/tm1;)V

    return-void
.end method

.method public final v(I)V
    .locals 4

    .line 1
    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/gv;->_decision:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already resumed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    sget-object v0, Lcom/shabakaty/downloader/gv;->w:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v3, 0x2

    invoke-virtual {v0, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    return-void

    .line 4
    :cond_3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gv;->c()Lcom/shabakaty/downloader/ud0;

    move-result-object v0

    const/4 v3, 0x4

    if-ne p1, v3, :cond_4

    const/4 v1, 0x1

    :cond_4
    if-nez v1, :cond_8

    .line 5
    instance-of v3, v0, Lcom/shabakaty/downloader/au0;

    if-eqz v3, :cond_8

    invoke-static {p1}, Lcom/shabakaty/downloader/vd5;->q(I)Z

    move-result p1

    iget v3, p0, Lcom/shabakaty/downloader/du0;->t:I

    invoke-static {v3}, Lcom/shabakaty/downloader/vd5;->q(I)Z

    move-result v3

    if-ne p1, v3, :cond_8

    .line 6
    move-object p1, v0

    check-cast p1, Lcom/shabakaty/downloader/au0;

    iget-object p1, p1, Lcom/shabakaty/downloader/au0;->w:Lcom/shabakaty/downloader/pe0;

    .line 7
    invoke-interface {v0}, Lcom/shabakaty/downloader/ud0;->a()Lcom/shabakaty/downloader/me0;

    move-result-object v0

    .line 8
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/pe0;->B(Lcom/shabakaty/downloader/me0;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 9
    invoke-virtual {p1, v0, p0}, Lcom/shabakaty/downloader/pe0;->g(Lcom/shabakaty/downloader/me0;Ljava/lang/Runnable;)V

    goto :goto_2

    .line 10
    :cond_5
    sget-object p1, Lcom/shabakaty/downloader/an4;->b:Lcom/shabakaty/downloader/an4;

    invoke-static {}, Lcom/shabakaty/downloader/an4;->a()Lcom/shabakaty/downloader/q51;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/shabakaty/downloader/q51;->Y()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 12
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/q51;->S(Lcom/shabakaty/downloader/du0;)V

    goto :goto_2

    .line 13
    :cond_6
    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/q51;->V(Z)V

    .line 14
    :try_start_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gv;->c()Lcom/shabakaty/downloader/ud0;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/shabakaty/downloader/vd5;->y(Lcom/shabakaty/downloader/du0;Lcom/shabakaty/downloader/ud0;Z)V

    .line 15
    :cond_7
    invoke-virtual {p1}, Lcom/shabakaty/downloader/q51;->Z()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_7

    goto :goto_1

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    .line 16
    :try_start_1
    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/du0;->j(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 17
    :goto_1
    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/q51;->M(Z)V

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/q51;->M(Z)V

    throw v0

    .line 18
    :cond_8
    invoke-static {p0, v0, v1}, Lcom/shabakaty/downloader/vd5;->y(Lcom/shabakaty/downloader/du0;Lcom/shabakaty/downloader/ud0;Z)V

    :goto_2
    return-void
.end method

.method public w(Lcom/shabakaty/downloader/e92;)Ljava/lang/Throwable;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/l92;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/l92;->v()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    return-object p1
.end method

.method public final x()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gv;->F()V

    .line 2
    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/gv;->_decision:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already suspended"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_2
    sget-object v0, Lcom/shabakaty/downloader/gv;->w:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_3

    .line 5
    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    return-object v0

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/shabakaty/downloader/gv;->_state:Ljava/lang/Object;

    .line 7
    instance-of v1, v0, Lcom/shabakaty/downloader/i80;

    if-nez v1, :cond_6

    .line 8
    iget v1, p0, Lcom/shabakaty/downloader/du0;->t:I

    invoke-static {v1}, Lcom/shabakaty/downloader/vd5;->q(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 9
    iget-object v1, p0, Lcom/shabakaty/downloader/gv;->u:Lcom/shabakaty/downloader/me0;

    .line 10
    sget-object v2, Lcom/shabakaty/downloader/e92;->h:Lcom/shabakaty/downloader/e92$b;

    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/me0;->get(Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0$b;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/e92;

    if-eqz v1, :cond_5

    .line 11
    invoke-interface {v1}, Lcom/shabakaty/downloader/e92;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 12
    :cond_4
    invoke-interface {v1}, Lcom/shabakaty/downloader/e92;->v()Ljava/util/concurrent/CancellationException;

    move-result-object v1

    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/gv;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 14
    throw v1

    .line 15
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/gv;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 16
    :cond_6
    check-cast v0, Lcom/shabakaty/downloader/i80;

    iget-object v0, v0, Lcom/shabakaty/downloader/i80;->a:Ljava/lang/Throwable;

    .line 17
    throw v0
.end method

.method public final y()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gv;->v:Lcom/shabakaty/downloader/ud0;

    instance-of v1, v0, Lcom/shabakaty/downloader/au0;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/shabakaty/downloader/au0;

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/au0;->r(Lcom/shabakaty/downloader/gv;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public z(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/shabakaty/downloader/du0;->t:I

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/gv;->v(I)V

    return-void
.end method
