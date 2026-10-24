.class public abstract Lcom/shabakaty/downloader/cx4;
.super Ljava/lang/Object;
.source "UseCase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/cx4$a;,
        Lcom/shabakaty/downloader/cx4$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/cx4$b;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Object;

.field public c:I

.field public d:Lcom/shabakaty/downloader/hx4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/hx4<",
            "*>;"
        }
    .end annotation
.end field

.field public e:Lcom/shabakaty/downloader/hx4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/hx4<",
            "*>;"
        }
    .end annotation
.end field

.field public f:Lcom/shabakaty/downloader/hx4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/hx4<",
            "*>;"
        }
    .end annotation
.end field

.field public g:Landroid/util/Size;

.field public h:Lcom/shabakaty/downloader/hx4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/hx4<",
            "*>;"
        }
    .end annotation
.end field

.field public i:Landroid/graphics/Rect;

.field public j:Lcom/shabakaty/downloader/vt;

.field public k:Lcom/shabakaty/downloader/u14;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/hx4;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/hx4<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/cx4;->a:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/cx4;->b:Ljava/lang/Object;

    const/4 v0, 0x2

    .line 4
    iput v0, p0, Lcom/shabakaty/downloader/cx4;->c:I

    .line 5
    invoke-static {}, Lcom/shabakaty/downloader/u14;->a()Lcom/shabakaty/downloader/u14;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/cx4;->k:Lcom/shabakaty/downloader/u14;

    .line 6
    iput-object p1, p0, Lcom/shabakaty/downloader/cx4;->e:Lcom/shabakaty/downloader/hx4;

    .line 7
    iput-object p1, p0, Lcom/shabakaty/downloader/cx4;->f:Lcom/shabakaty/downloader/hx4;

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/vt;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cx4;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/cx4;->j:Lcom/shabakaty/downloader/vt;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/cx4;->a()Lcom/shabakaty/downloader/vt;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No camera attached to use case: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/fl3;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/vt;

    .line 2
    invoke-interface {v0}, Lcom/shabakaty/downloader/vt;->l()Lcom/shabakaty/downloader/tt;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/tt;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract c(ZLcom/shabakaty/downloader/ix4;)Lcom/shabakaty/downloader/hx4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/shabakaty/downloader/ix4;",
            ")",
            "Lcom/shabakaty/downloader/hx4<",
            "*>;"
        }
    .end annotation
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cx4;->f:Lcom/shabakaty/downloader/hx4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/az1;->i()I

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cx4;->f:Lcom/shabakaty/downloader/hx4;

    const-string v1, "<UnknownUseCase-"

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/qk4;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract f(Lcom/shabakaty/downloader/o90;)Lcom/shabakaty/downloader/hx4$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/o90;",
            ")",
            "Lcom/shabakaty/downloader/hx4$a<",
            "***>;"
        }
    .end annotation
.end method

.method public g(Lcom/shabakaty/downloader/tt;Lcom/shabakaty/downloader/hx4;Lcom/shabakaty/downloader/hx4;)Lcom/shabakaty/downloader/hx4;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/tt;",
            "Lcom/shabakaty/downloader/hx4<",
            "*>;",
            "Lcom/shabakaty/downloader/hx4<",
            "*>;)",
            "Lcom/shabakaty/downloader/hx4<",
            "*>;"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 1
    invoke-static {p3}, Lcom/shabakaty/downloader/yv2;->z(Lcom/shabakaty/downloader/o90;)Lcom/shabakaty/downloader/yv2;

    move-result-object p3

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/qk4;->h:Lcom/shabakaty/downloader/o90$a;

    .line 3
    iget-object v1, p3, Lcom/shabakaty/downloader/k83;->r:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/shabakaty/downloader/yv2;->y()Lcom/shabakaty/downloader/yv2;

    move-result-object p3

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/cx4;->e:Lcom/shabakaty/downloader/hx4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/jn3;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/o90$a;

    .line 6
    iget-object v2, p0, Lcom/shabakaty/downloader/cx4;->e:Lcom/shabakaty/downloader/hx4;

    .line 7
    invoke-interface {v2, v1}, Lcom/shabakaty/downloader/jn3;->c(Lcom/shabakaty/downloader/o90$a;)Lcom/shabakaty/downloader/o90$c;

    move-result-object v2

    iget-object v3, p0, Lcom/shabakaty/downloader/cx4;->e:Lcom/shabakaty/downloader/hx4;

    .line 8
    invoke-interface {v3, v1}, Lcom/shabakaty/downloader/jn3;->e(Lcom/shabakaty/downloader/o90$a;)Ljava/lang/Object;

    move-result-object v3

    .line 9
    invoke-virtual {p3, v1, v2, v3}, Lcom/shabakaty/downloader/yv2;->A(Lcom/shabakaty/downloader/o90$a;Lcom/shabakaty/downloader/o90$c;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_3

    .line 10
    invoke-interface {p2}, Lcom/shabakaty/downloader/jn3;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/o90$a;

    .line 11
    invoke-virtual {v1}, Lcom/shabakaty/downloader/o90$a;->a()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shabakaty/downloader/qk4;->h:Lcom/shabakaty/downloader/o90$a;

    check-cast v3, Lcom/shabakaty/downloader/fg;

    .line 12
    iget-object v3, v3, Lcom/shabakaty/downloader/fg;->a:Ljava/lang/String;

    .line 13
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 14
    :cond_2
    invoke-interface {p2, v1}, Lcom/shabakaty/downloader/jn3;->c(Lcom/shabakaty/downloader/o90$a;)Lcom/shabakaty/downloader/o90$c;

    move-result-object v2

    .line 15
    invoke-interface {p2, v1}, Lcom/shabakaty/downloader/jn3;->e(Lcom/shabakaty/downloader/o90$a;)Ljava/lang/Object;

    move-result-object v3

    .line 16
    invoke-virtual {p3, v1, v2, v3}, Lcom/shabakaty/downloader/yv2;->A(Lcom/shabakaty/downloader/o90$a;Lcom/shabakaty/downloader/o90$c;Ljava/lang/Object;)V

    goto :goto_2

    .line 17
    :cond_3
    sget-object p2, Lcom/shabakaty/downloader/dz1;->d:Lcom/shabakaty/downloader/o90$a;

    invoke-virtual {p3, p2}, Lcom/shabakaty/downloader/k83;->d(Lcom/shabakaty/downloader/o90$a;)Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p2, Lcom/shabakaty/downloader/dz1;->b:Lcom/shabakaty/downloader/o90$a;

    .line 18
    invoke-virtual {p3, p2}, Lcom/shabakaty/downloader/k83;->d(Lcom/shabakaty/downloader/o90$a;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 19
    iget-object v0, p3, Lcom/shabakaty/downloader/k83;->r:Ljava/util/TreeMap;

    invoke-virtual {v0, p2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_4
    invoke-virtual {p0, p3}, Lcom/shabakaty/downloader/cx4;->f(Lcom/shabakaty/downloader/o90;)Lcom/shabakaty/downloader/hx4$a;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/cx4;->n(Lcom/shabakaty/downloader/tt;Lcom/shabakaty/downloader/hx4$a;)Lcom/shabakaty/downloader/hx4;

    move-result-object p1

    return-object p1
.end method

.method public final h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cx4;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/cx4$b;

    .line 2
    invoke-interface {v1, p0}, Lcom/shabakaty/downloader/cx4$b;->j(Lcom/shabakaty/downloader/cx4;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/cx4;->c:I

    invoke-static {v0}, Lcom/shabakaty/downloader/su;->k(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/cx4;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/cx4$b;

    .line 3
    invoke-interface {v1, p0}, Lcom/shabakaty/downloader/cx4$b;->b(Lcom/shabakaty/downloader/cx4;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/cx4;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/cx4$b;

    .line 5
    invoke-interface {v1, p0}, Lcom/shabakaty/downloader/cx4$b;->i(Lcom/shabakaty/downloader/cx4;)V

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public j(Lcom/shabakaty/downloader/vt;Lcom/shabakaty/downloader/hx4;Lcom/shabakaty/downloader/hx4;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/vt;",
            "Lcom/shabakaty/downloader/hx4<",
            "*>;",
            "Lcom/shabakaty/downloader/hx4<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cx4;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/shabakaty/downloader/cx4;->j:Lcom/shabakaty/downloader/vt;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/cx4;->a:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iput-object p2, p0, Lcom/shabakaty/downloader/cx4;->d:Lcom/shabakaty/downloader/hx4;

    .line 6
    iput-object p3, p0, Lcom/shabakaty/downloader/cx4;->h:Lcom/shabakaty/downloader/hx4;

    .line 7
    invoke-interface {p1}, Lcom/shabakaty/downloader/vt;->l()Lcom/shabakaty/downloader/tt;

    move-result-object p2

    iget-object p3, p0, Lcom/shabakaty/downloader/cx4;->d:Lcom/shabakaty/downloader/hx4;

    iget-object v0, p0, Lcom/shabakaty/downloader/cx4;->h:Lcom/shabakaty/downloader/hx4;

    invoke-virtual {p0, p2, p3, v0}, Lcom/shabakaty/downloader/cx4;->g(Lcom/shabakaty/downloader/tt;Lcom/shabakaty/downloader/hx4;Lcom/shabakaty/downloader/hx4;)Lcom/shabakaty/downloader/hx4;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/cx4;->f:Lcom/shabakaty/downloader/hx4;

    const/4 p3, 0x0

    .line 8
    invoke-interface {p2, p3}, Lcom/shabakaty/downloader/kx4;->k(Lcom/shabakaty/downloader/cx4$a;)Lcom/shabakaty/downloader/cx4$a;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 9
    invoke-interface {p1}, Lcom/shabakaty/downloader/vt;->l()Lcom/shabakaty/downloader/tt;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/shabakaty/downloader/cx4$a;->a(Lcom/shabakaty/downloader/st;)V

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/cx4;->k()V

    return-void

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public l(Lcom/shabakaty/downloader/vt;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/cx4;->m()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/cx4;->f:Lcom/shabakaty/downloader/hx4;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/kx4;->k(Lcom/shabakaty/downloader/cx4$a;)Lcom/shabakaty/downloader/cx4$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/shabakaty/downloader/cx4$a;->b()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/cx4;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/shabakaty/downloader/cx4;->j:Lcom/shabakaty/downloader/vt;

    if-ne p1, v2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/shabakaty/downloader/fl3;->d(Z)V

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/cx4;->j:Lcom/shabakaty/downloader/vt;

    .line 7
    iget-object v2, p0, Lcom/shabakaty/downloader/cx4;->a:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 8
    iput-object v1, p0, Lcom/shabakaty/downloader/cx4;->j:Lcom/shabakaty/downloader/vt;

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iput-object v1, p0, Lcom/shabakaty/downloader/cx4;->g:Landroid/util/Size;

    .line 11
    iput-object v1, p0, Lcom/shabakaty/downloader/cx4;->i:Landroid/graphics/Rect;

    .line 12
    iget-object p1, p0, Lcom/shabakaty/downloader/cx4;->e:Lcom/shabakaty/downloader/hx4;

    iput-object p1, p0, Lcom/shabakaty/downloader/cx4;->f:Lcom/shabakaty/downloader/hx4;

    .line 13
    iput-object v1, p0, Lcom/shabakaty/downloader/cx4;->d:Lcom/shabakaty/downloader/hx4;

    .line 14
    iput-object v1, p0, Lcom/shabakaty/downloader/cx4;->h:Lcom/shabakaty/downloader/hx4;

    return-void

    :catchall_0
    move-exception p1

    .line 15
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public m()V
    .locals 0

    return-void
.end method

.method public n(Lcom/shabakaty/downloader/tt;Lcom/shabakaty/downloader/hx4$a;)Lcom/shabakaty/downloader/hx4;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/tt;",
            "Lcom/shabakaty/downloader/hx4$a<",
            "***>;)",
            "Lcom/shabakaty/downloader/hx4<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/shabakaty/downloader/hx4$a;->c()Lcom/shabakaty/downloader/hx4;

    move-result-object p1

    return-object p1
.end method

.method public abstract o(Landroid/util/Size;)Landroid/util/Size;
.end method

.method public p(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/cx4;->i:Landroid/graphics/Rect;

    return-void
.end method
