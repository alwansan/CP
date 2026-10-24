.class public abstract Lcom/shabakaty/downloader/uf1$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableConcatMap.java"

# interfaces
.implements Lcom/shabakaty/downloader/wg1;
.implements Lcom/shabakaty/downloader/uf1$e;
.implements Lcom/shabakaty/downloader/lf4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/uf1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lcom/shabakaty/downloader/wg1<",
        "TT;>;",
        "Lcom/shabakaty/downloader/uf1$e<",
        "TR;>;",
        "Lcom/shabakaty/downloader/lf4;"
    }
.end annotation


# instance fields
.field public final A:Lcom/shabakaty/downloader/fe;

.field public volatile B:Z

.field public C:I

.field public final r:Lcom/shabakaty/downloader/uf1$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/uf1$d<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final s:Lcom/shabakaty/downloader/in1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/in1<",
            "-TT;+",
            "Lcom/shabakaty/downloader/wj3<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final t:I

.field public final u:I

.field public v:Lcom/shabakaty/downloader/lf4;

.field public w:I

.field public x:Lcom/shabakaty/downloader/y64;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/y64<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile y:Z

.field public volatile z:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/in1;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/in1<",
            "-TT;+",
            "Lcom/shabakaty/downloader/wj3<",
            "+TR;>;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/uf1$a;->s:Lcom/shabakaty/downloader/in1;

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/uf1$a;->t:I

    shr-int/lit8 p1, p2, 0x2

    sub-int/2addr p2, p1

    .line 4
    iput p2, p0, Lcom/shabakaty/downloader/uf1$a;->u:I

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/uf1$d;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/uf1$d;-><init>(Lcom/shabakaty/downloader/uf1$e;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/uf1$a;->r:Lcom/shabakaty/downloader/uf1$d;

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/fe;

    invoke-direct {p1}, Lcom/shabakaty/downloader/fe;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/uf1$a;->A:Lcom/shabakaty/downloader/fe;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/uf1$a;->y:Z

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uf1$a;->h()V

    return-void
.end method

.method public final d(Lcom/shabakaty/downloader/lf4;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uf1$a;->v:Lcom/shabakaty/downloader/lf4;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/pf4;->F(Lcom/shabakaty/downloader/lf4;Lcom/shabakaty/downloader/lf4;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/uf1$a;->v:Lcom/shabakaty/downloader/lf4;

    .line 3
    instance-of v0, p1, Lcom/shabakaty/downloader/yk3;

    if-eqz v0, :cond_1

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/yk3;

    const/4 v1, 0x7

    .line 5
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/xk3;->D(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 6
    iput v1, p0, Lcom/shabakaty/downloader/uf1$a;->C:I

    .line 7
    iput-object v0, p0, Lcom/shabakaty/downloader/uf1$a;->x:Lcom/shabakaty/downloader/y64;

    .line 8
    iput-boolean v2, p0, Lcom/shabakaty/downloader/uf1$a;->y:Z

    .line 9
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uf1$a;->i()V

    .line 10
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uf1$a;->h()V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 11
    iput v1, p0, Lcom/shabakaty/downloader/uf1$a;->C:I

    .line 12
    iput-object v0, p0, Lcom/shabakaty/downloader/uf1$a;->x:Lcom/shabakaty/downloader/y64;

    .line 13
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uf1$a;->i()V

    .line 14
    iget v0, p0, Lcom/shabakaty/downloader/uf1$a;->t:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/lf4;->u(J)V

    return-void

    .line 15
    :cond_1
    new-instance v0, Lcom/shabakaty/downloader/ta4;

    iget v1, p0, Lcom/shabakaty/downloader/uf1$a;->t:I

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ta4;-><init>(I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/uf1$a;->x:Lcom/shabakaty/downloader/y64;

    .line 16
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uf1$a;->i()V

    .line 17
    iget v0, p0, Lcom/shabakaty/downloader/uf1$a;->t:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/lf4;->u(J)V

    :cond_2
    return-void
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/uf1$a;->C:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/uf1$a;->x:Lcom/shabakaty/downloader/y64;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/y64;->f(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/uf1$a;->v:Lcom/shabakaty/downloader/lf4;

    invoke-interface {p1}, Lcom/shabakaty/downloader/lf4;->cancel()V

    .line 4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Queue full?!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/shabakaty/downloader/ef4;->b(Ljava/lang/Throwable;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uf1$a;->h()V

    return-void
.end method

.method public abstract h()V
.end method

.method public abstract i()V
.end method
