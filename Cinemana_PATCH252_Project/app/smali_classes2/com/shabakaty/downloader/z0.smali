.class public abstract Lcom/shabakaty/downloader/z0;
.super Ljava/lang/Object;
.source "AbstractChannel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/h04;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/z0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/h04<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final synthetic t:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic onCloseHandler:Ljava/lang/Object;

.field public final r:Lcom/shabakaty/downloader/ak2;

.field public final s:Lcom/shabakaty/downloader/tm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/tm1<",
            "TE;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/shabakaty/downloader/z0;

    const-class v1, Ljava/lang/Object;

    const-string v2, "onCloseHandler"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/z0;->t:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/tm1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/tm1<",
            "-TE;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/z0;->s:Lcom/shabakaty/downloader/tm1;

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/ak2;

    invoke-direct {p1}, Lcom/shabakaty/downloader/ak2;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/z0;->r:Lcom/shabakaty/downloader/ak2;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/z0;->onCloseHandler:Ljava/lang/Object;

    return-void
.end method

.method public static final a(Lcom/shabakaty/downloader/z0;Lcom/shabakaty/downloader/ud0;Ljava/lang/Object;Lcom/shabakaty/downloader/f40;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p3}, Lcom/shabakaty/downloader/z0;->g(Lcom/shabakaty/downloader/f40;)V

    .line 2
    invoke-virtual {p3}, Lcom/shabakaty/downloader/f40;->C()Ljava/lang/Throwable;

    move-result-object p3

    .line 3
    iget-object p0, p0, Lcom/shabakaty/downloader/z0;->s:Lcom/shabakaty/downloader/tm1;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p2, v0, v1}, Lcom/shabakaty/downloader/d73;->b(Lcom/shabakaty/downloader/tm1;Ljava/lang/Object;Lcom/shabakaty/downloader/lv4;I)Lcom/shabakaty/downloader/lv4;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-static {p0, p3}, Lcom/shabakaty/downloader/kf5;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 5
    invoke-static {p0}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p1, Lcom/shabakaty/downloader/gv;

    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/gv;->i(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p3}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p1, Lcom/shabakaty/downloader/gv;

    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/gv;->i(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public c(Lcom/shabakaty/downloader/g04;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/z0;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/z0;->r:Lcom/shabakaty/downloader/ak2;

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ck2;->q()Lcom/shabakaty/downloader/ck2;

    move-result-object v1

    .line 4
    instance-of v2, v1, Lcom/shabakaty/downloader/zn3;

    if-eqz v2, :cond_1

    return-object v1

    .line 5
    :cond_1
    invoke-virtual {v1, p1, v0}, Lcom/shabakaty/downloader/ck2;->g(Lcom/shabakaty/downloader/ck2;Lcom/shabakaty/downloader/ck2;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/z0;->r:Lcom/shabakaty/downloader/ak2;

    .line 7
    new-instance v1, Lcom/shabakaty/downloader/z0$b;

    invoke-direct {v1, p1, p1, p0}, Lcom/shabakaty/downloader/z0$b;-><init>(Lcom/shabakaty/downloader/ck2;Lcom/shabakaty/downloader/ck2;Lcom/shabakaty/downloader/z0;)V

    .line 8
    :goto_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ck2;->q()Lcom/shabakaty/downloader/ck2;

    move-result-object v2

    .line 9
    instance-of v3, v2, Lcom/shabakaty/downloader/zn3;

    if-eqz v3, :cond_3

    return-object v2

    .line 10
    :cond_3
    invoke-virtual {v2, p1, v0, v1}, Lcom/shabakaty/downloader/ck2;->v(Lcom/shabakaty/downloader/ck2;Lcom/shabakaty/downloader/ck2;Lcom/shabakaty/downloader/ck2$a;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :cond_5
    if-nez v3, :cond_6

    .line 11
    sget-object p1, Lcom/shabakaty/downloader/n;->e:Lcom/shabakaty/downloader/j61;

    return-object p1

    :cond_6
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final e()Lcom/shabakaty/downloader/f40;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/f40<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/z0;->r:Lcom/shabakaty/downloader/ak2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ck2;->q()Lcom/shabakaty/downloader/ck2;

    move-result-object v0

    instance-of v1, v0, Lcom/shabakaty/downloader/f40;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lcom/shabakaty/downloader/f40;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/z0;->g(Lcom/shabakaty/downloader/f40;)V

    move-object v2, v0

    :cond_1
    return-object v2
.end method

.method public final f(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/n;->b:Lcom/shabakaty/downloader/j61;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    sget-object v1, Lcom/shabakaty/downloader/n;->c:Lcom/shabakaty/downloader/j61;

    if-ne v0, v1, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/z0;->e()Lcom/shabakaty/downloader/f40;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/z0;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/f40;)Ljava/lang/Throwable;

    move-result-object p1

    sget-object v0, Lcom/shabakaty/downloader/db4;->a:Ljava/lang/String;

    throw p1

    .line 5
    :cond_2
    instance-of v1, v0, Lcom/shabakaty/downloader/f40;

    if-eqz v1, :cond_3

    .line 6
    check-cast v0, Lcom/shabakaty/downloader/f40;

    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/z0;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/f40;)Ljava/lang/Throwable;

    move-result-object p1

    sget-object v0, Lcom/shabakaty/downloader/db4;->a:Ljava/lang/String;

    throw p1

    :cond_3
    const-string p1, "offerInternal returned "

    .line 7
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/c50;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g(Lcom/shabakaty/downloader/f40;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/f40<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    .line 1
    :goto_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ck2;->q()Lcom/shabakaty/downloader/ck2;

    move-result-object v2

    instance-of v3, v2, Lcom/shabakaty/downloader/xn3;

    if-nez v3, :cond_0

    move-object v2, v0

    :cond_0
    check-cast v2, Lcom/shabakaty/downloader/xn3;

    if-eqz v2, :cond_2

    .line 2
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ck2;->t()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ck2;->l()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.internal.Removed"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/jr3;

    iget-object v2, v2, Lcom/shabakaty/downloader/jr3;->a:Lcom/shabakaty/downloader/ck2;

    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/ck2;->i(Lcom/shabakaty/downloader/u73;)Lcom/shabakaty/downloader/ck2;

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/c12;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    goto :goto_2

    .line 5
    :cond_3
    instance-of v0, v1, Ljava/util/ArrayList;

    if-nez v0, :cond_4

    check-cast v1, Lcom/shabakaty/downloader/xn3;

    .line 6
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/xn3;->x(Lcom/shabakaty/downloader/f40;)V

    goto :goto_2

    .line 7
    :cond_4
    check-cast v1, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_5

    .line 9
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/xn3;

    .line 10
    invoke-virtual {v2, p1}, Lcom/shabakaty/downloader/xn3;->x(Lcom/shabakaty/downloader/f40;)V

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method

.method public final h(Ljava/lang/Object;Lcom/shabakaty/downloader/f40;)Ljava/lang/Throwable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/shabakaty/downloader/f40<",
            "*>;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/z0;->g(Lcom/shabakaty/downloader/f40;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/z0;->s:Lcom/shabakaty/downloader/tm1;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2}, Lcom/shabakaty/downloader/d73;->b(Lcom/shabakaty/downloader/tm1;Ljava/lang/Object;Lcom/shabakaty/downloader/lv4;I)Lcom/shabakaty/downloader/lv4;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/shabakaty/downloader/f40;->C()Ljava/lang/Throwable;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/kf5;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 4
    throw p1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/shabakaty/downloader/f40;->C()Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method

.method public abstract i()Z
.end method

.method public abstract j()Z
.end method

.method public k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/z0;->l()Lcom/shabakaty/downloader/zn3;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, p1, v1}, Lcom/shabakaty/downloader/zn3;->b(Ljava/lang/Object;Lcom/shabakaty/downloader/ck2$b;)Lcom/shabakaty/downloader/j61;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/zn3;->f(Ljava/lang/Object;)V

    .line 4
    invoke-interface {v0}, Lcom/shabakaty/downloader/zn3;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    sget-object p1, Lcom/shabakaty/downloader/n;->c:Lcom/shabakaty/downloader/j61;

    return-object p1
.end method

.method public l()Lcom/shabakaty/downloader/zn3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/zn3<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/z0;->r:Lcom/shabakaty/downloader/ak2;

    .line 2
    :goto_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ck2;->l()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/ck2;

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    :goto_1
    move-object v1, v2

    goto :goto_2

    .line 3
    :cond_0
    instance-of v3, v1, Lcom/shabakaty/downloader/zn3;

    if-nez v3, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    move-object v2, v1

    check-cast v2, Lcom/shabakaty/downloader/zn3;

    .line 5
    instance-of v2, v2, Lcom/shabakaty/downloader/f40;

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ck2;->s()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ck2;->u()Lcom/shabakaty/downloader/ck2;

    move-result-object v2

    if-nez v2, :cond_3

    .line 8
    :goto_2
    check-cast v1, Lcom/shabakaty/downloader/zn3;

    return-object v1

    .line 9
    :cond_3
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ck2;->r()V

    goto :goto_0
.end method

.method public final n()Lcom/shabakaty/downloader/g04;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/z0;->r:Lcom/shabakaty/downloader/ak2;

    .line 2
    :goto_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ck2;->l()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/ck2;

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    instance-of v3, v1, Lcom/shabakaty/downloader/g04;

    if-nez v3, :cond_1

    :goto_1
    move-object v1, v2

    goto :goto_2

    .line 4
    :cond_1
    move-object v2, v1

    check-cast v2, Lcom/shabakaty/downloader/g04;

    .line 5
    instance-of v2, v2, Lcom/shabakaty/downloader/f40;

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ck2;->s()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ck2;->u()Lcom/shabakaty/downloader/ck2;

    move-result-object v2

    if-nez v2, :cond_3

    .line 8
    :goto_2
    check-cast v1, Lcom/shabakaty/downloader/g04;

    return-object v1

    .line 9
    :cond_3
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ck2;->r()V

    goto :goto_0
.end method

.method public s(Ljava/lang/Throwable;)Z
    .locals 5

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/f40;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/f40;-><init>(Ljava/lang/Throwable;)V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/z0;->r:Lcom/shabakaty/downloader/ak2;

    .line 3
    :cond_0
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ck2;->q()Lcom/shabakaty/downloader/ck2;

    move-result-object v2

    .line 4
    instance-of v3, v2, Lcom/shabakaty/downloader/f40;

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    if-nez v3, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v2, v0, v1}, Lcom/shabakaty/downloader/ck2;->g(Lcom/shabakaty/downloader/ck2;Lcom/shabakaty/downloader/ck2;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/z0;->r:Lcom/shabakaty/downloader/ak2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ck2;->q()Lcom/shabakaty/downloader/ck2;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/f40;

    .line 7
    :goto_1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/z0;->g(Lcom/shabakaty/downloader/f40;)V

    if-eqz v1, :cond_3

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/z0;->onCloseHandler:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 9
    sget-object v2, Lcom/shabakaty/downloader/n;->f:Lcom/shabakaty/downloader/j61;

    if-eq v0, v2, :cond_3

    sget-object v3, Lcom/shabakaty/downloader/z0;->t:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/gt4;->c(Ljava/lang/Object;I)Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/tm1;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/shabakaty/downloader/he0;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/z0;->r:Lcom/shabakaty/downloader/ak2;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ck2;->m()Lcom/shabakaty/downloader/ck2;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/z0;->r:Lcom/shabakaty/downloader/ak2;

    if-ne v1, v2, :cond_0

    const-string v1, "EmptyQueue"

    goto/16 :goto_2

    .line 6
    :cond_0
    instance-of v2, v1, Lcom/shabakaty/downloader/f40;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ck2;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 7
    :cond_1
    instance-of v2, v1, Lcom/shabakaty/downloader/xn3;

    if-eqz v2, :cond_2

    const-string v2, "ReceiveQueued"

    goto :goto_0

    .line 8
    :cond_2
    instance-of v2, v1, Lcom/shabakaty/downloader/g04;

    if-eqz v2, :cond_3

    const-string v2, "SendQueued"

    goto :goto_0

    .line 9
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UNEXPECTED:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10
    :goto_0
    iget-object v3, p0, Lcom/shabakaty/downloader/z0;->r:Lcom/shabakaty/downloader/ak2;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/ck2;->q()Lcom/shabakaty/downloader/ck2;

    move-result-object v3

    if-eq v3, v1, :cond_5

    const-string v1, ",queueSize="

    .line 11
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/vf3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/shabakaty/downloader/z0;->r:Lcom/shabakaty/downloader/ak2;

    .line 13
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ck2;->l()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v4, Lcom/shabakaty/downloader/ck2;

    const/4 v5, 0x0

    .line 14
    :goto_1
    invoke-static {v4, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_4

    add-int/lit8 v5, v5, 0x1

    .line 15
    invoke-virtual {v4}, Lcom/shabakaty/downloader/ck2;->m()Lcom/shabakaty/downloader/ck2;

    move-result-object v4

    goto :goto_1

    .line 16
    :cond_4
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 17
    instance-of v2, v3, Lcom/shabakaty/downloader/f40;

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",closedForSend="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    move-object v1, v2

    .line 18
    :cond_6
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/z0;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final y(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/n;->b:Lcom/shabakaty/downloader/j61;

    if-ne v0, v1, :cond_0

    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1

    .line 2
    :cond_0
    invoke-static {p2}, Lcom/shabakaty/downloader/he0;->q(Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/he0;->l(Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/gv;

    move-result-object v0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/z0;->r:Lcom/shabakaty/downloader/ak2;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ck2;->m()Lcom/shabakaty/downloader/ck2;

    move-result-object v1

    instance-of v1, v1, Lcom/shabakaty/downloader/zn3;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/z0;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_7

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/z0;->s:Lcom/shabakaty/downloader/tm1;

    if-nez v1, :cond_2

    .line 5
    new-instance v1, Lcom/shabakaty/downloader/i04;

    invoke-direct {v1, p1, v0}, Lcom/shabakaty/downloader/i04;-><init>(Ljava/lang/Object;Lcom/shabakaty/downloader/fv;)V

    goto :goto_2

    .line 6
    :cond_2
    new-instance v1, Lcom/shabakaty/downloader/j04;

    iget-object v2, p0, Lcom/shabakaty/downloader/z0;->s:Lcom/shabakaty/downloader/tm1;

    invoke-direct {v1, p1, v0, v2}, Lcom/shabakaty/downloader/j04;-><init>(Ljava/lang/Object;Lcom/shabakaty/downloader/fv;Lcom/shabakaty/downloader/tm1;)V

    .line 7
    :goto_2
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/z0;->c(Lcom/shabakaty/downloader/g04;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 8
    new-instance p1, Lcom/shabakaty/downloader/ir3;

    invoke-direct {p1, v1}, Lcom/shabakaty/downloader/ir3;-><init>(Lcom/shabakaty/downloader/ck2;)V

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/gv;->q(Lcom/shabakaty/downloader/tm1;)V

    goto :goto_4

    .line 9
    :cond_3
    instance-of v1, v2, Lcom/shabakaty/downloader/f40;

    if-eqz v1, :cond_4

    .line 10
    check-cast v2, Lcom/shabakaty/downloader/f40;

    invoke-static {p0, v0, p1, v2}, Lcom/shabakaty/downloader/z0;->a(Lcom/shabakaty/downloader/z0;Lcom/shabakaty/downloader/ud0;Ljava/lang/Object;Lcom/shabakaty/downloader/f40;)V

    goto :goto_4

    .line 11
    :cond_4
    sget-object v1, Lcom/shabakaty/downloader/n;->e:Lcom/shabakaty/downloader/j61;

    if-ne v2, v1, :cond_5

    goto :goto_3

    .line 12
    :cond_5
    instance-of v1, v2, Lcom/shabakaty/downloader/xn3;

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    const-string p1, "enqueueSend returned "

    .line 13
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/c50;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 14
    :cond_7
    :goto_3
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 15
    sget-object v2, Lcom/shabakaty/downloader/n;->b:Lcom/shabakaty/downloader/j61;

    if-ne v1, v2, :cond_8

    .line 16
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/gv;->i(Ljava/lang/Object;)V

    goto :goto_4

    .line 17
    :cond_8
    sget-object v2, Lcom/shabakaty/downloader/n;->c:Lcom/shabakaty/downloader/j61;

    if-ne v1, v2, :cond_9

    goto :goto_0

    .line 18
    :cond_9
    instance-of v2, v1, Lcom/shabakaty/downloader/f40;

    if-eqz v2, :cond_c

    .line 19
    check-cast v1, Lcom/shabakaty/downloader/f40;

    invoke-static {p0, v0, p1, v1}, Lcom/shabakaty/downloader/z0;->a(Lcom/shabakaty/downloader/z0;Lcom/shabakaty/downloader/ud0;Ljava/lang/Object;Lcom/shabakaty/downloader/f40;)V

    .line 20
    :goto_4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/gv;->x()Ljava/lang/Object;

    move-result-object p1

    .line 21
    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    if-ne p1, v0, :cond_a

    const-string v1, "frame"

    .line 22
    invoke-static {p2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_a
    if-ne p1, v0, :cond_b

    return-object p1

    .line 23
    :cond_b
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1

    :cond_c
    const-string p1, "offerInternal returned "

    .line 24
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/c50;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
