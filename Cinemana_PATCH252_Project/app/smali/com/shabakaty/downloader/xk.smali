.class public abstract Lcom/shabakaty/downloader/xk;
.super Lcom/shabakaty/downloader/o35;
.source "BaseViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N::",
        "Lcom/shabakaty/downloader/vj;",
        ">",
        "Lcom/shabakaty/downloader/o35;"
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/u43;

.field public b:Lcom/shabakaty/downloader/c90;

.field public c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TN;>;"
        }
    .end annotation
.end field

.field public final d:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Lcom/shabakaty/downloader/tj$a;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/o35;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/u43;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u43;-><init>(Z)V

    iput-object v0, p0, Lcom/shabakaty/downloader/xk;->a:Lcom/shabakaty/downloader/u43;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/c90;

    invoke-direct {v0}, Lcom/shabakaty/downloader/c90;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/xk;->b:Lcom/shabakaty/downloader/c90;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/xv2;

    sget-object v1, Lcom/shabakaty/downloader/tj$a;->t:Lcom/shabakaty/downloader/tj$a;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/xv2;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/xk;->d:Lcom/shabakaty/downloader/xv2;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/xk;->e:Ljava/util/List;

    return-void
.end method

.method public static synthetic d(Lcom/shabakaty/downloader/xk;Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;ILjava/lang/Object;)Lcom/shabakaty/downloader/mu0;
    .locals 0

    and-int/lit8 p3, p4, 0x1

    if-eqz p3, :cond_0

    .line 1
    sget-object p2, Lcom/shabakaty/downloader/xk$a;->r:Lcom/shabakaty/downloader/xk$a;

    :cond_0
    and-int/lit8 p3, p4, 0x2

    if-eqz p3, :cond_1

    .line 2
    sget-object p3, Lcom/shabakaty/downloader/xk$b;->r:Lcom/shabakaty/downloader/xk$b;

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/shabakaty/downloader/xk;->b(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/mu0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/mu0;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/downloader/tj<",
            "TT;>;>;",
            "Lcom/shabakaty/downloader/tm1<",
            "-TT;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Lcom/shabakaty/downloader/mu0;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/shabakaty/downloader/xk;->e:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v2, v0, Lcom/shabakaty/downloader/xk;->d:Lcom/shabakaty/downloader/xv2;

    invoke-static {v2}, Lcom/shabakaty/downloader/zi2;->i(Lcom/shabakaty/downloader/xv2;)V

    .line 3
    iget-object v2, v0, Lcom/shabakaty/downloader/xk;->a:Lcom/shabakaty/downloader/u43;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/u43;->g(Z)V

    .line 4
    new-instance v2, Lcom/shabakaty/downloader/rv;

    invoke-direct {v2, v0, v1}, Lcom/shabakaty/downloader/rv;-><init>(Lcom/shabakaty/downloader/xk;Lcom/shabakaty/downloader/f74;)V

    .line 5
    new-instance v4, Lcom/shabakaty/downloader/bo2;

    invoke-direct {v4, v1, v2}, Lcom/shabakaty/downloader/bo2;-><init>(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/ye3;)V

    .line 6
    new-instance v6, Lcom/shabakaty/downloader/f00;

    move-object/from16 v2, p2

    invoke-direct {v6, v2}, Lcom/shabakaty/downloader/f00;-><init>(Lcom/shabakaty/downloader/tm1;)V

    .line 7
    new-instance v2, Lcom/shabakaty/downloader/eo2;

    .line 8
    sget-object v11, Lcom/shabakaty/downloader/do1;->d:Lcom/shabakaty/downloader/xc0;

    .line 9
    sget-object v15, Lcom/shabakaty/downloader/do1;->c:Lcom/shabakaty/downloader/j2;

    move-object v3, v2

    move-object v5, v11

    move-object v7, v11

    move-object v8, v15

    move-object v9, v15

    move-object v10, v15

    invoke-direct/range {v3 .. v10}, Lcom/shabakaty/downloader/eo2;-><init>(Lcom/shabakaty/downloader/fo2;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/j2;)V

    .line 10
    new-instance v3, Lcom/shabakaty/downloader/sk;

    move-object/from16 v4, p3

    invoke-direct {v3, v4, v0, v1}, Lcom/shabakaty/downloader/sk;-><init>(Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/xk;Lcom/shabakaty/downloader/f74;)V

    .line 11
    new-instance v1, Lcom/shabakaty/downloader/eo2;

    move-object v7, v1

    move-object v8, v2

    move-object v9, v11

    move-object v10, v11

    move-object v11, v3

    move-object v12, v15

    move-object v13, v15

    move-object v14, v15

    .line 12
    invoke-direct/range {v7 .. v14}, Lcom/shabakaty/downloader/eo2;-><init>(Lcom/shabakaty/downloader/fo2;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/j2;)V

    .line 13
    sget-object v2, Lcom/shabakaty/downloader/uh0;->u:Lcom/shabakaty/downloader/uh0;

    sget-object v3, Lcom/shabakaty/downloader/nx4;->u:Lcom/shabakaty/downloader/nx4;

    .line 14
    new-instance v4, Lcom/shabakaty/downloader/ao2;

    invoke-direct {v4, v2, v3, v15}, Lcom/shabakaty/downloader/ao2;-><init>(Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/j2;)V

    .line 15
    invoke-virtual {v1, v4}, Lcom/shabakaty/downloader/zn2;->a(Lcom/shabakaty/downloader/do2;)V

    return-object v4
.end method

.method public final b(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/mu0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/downloader/tj<",
            "TT;>;>;",
            "Lcom/shabakaty/downloader/tm1<",
            "-TT;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Lcom/shabakaty/downloader/mu0;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSuccess"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/xk;->k(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/shabakaty/downloader/xk;->a(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/mu0;

    move-result-object p1

    iget-object p2, p0, Lcom/shabakaty/downloader/xk;->b:Lcom/shabakaty/downloader/c90;

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/tp6;->a(Lcom/shabakaty/downloader/mu0;Lcom/shabakaty/downloader/c90;)Lcom/shabakaty/downloader/mu0;

    return-object p1
.end method

.method public final c(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/xv2;)Lcom/shabakaty/downloader/mu0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/downloader/tj<",
            "TT;>;>;",
            "Lcom/shabakaty/downloader/xv2<",
            "Lcom/shabakaty/downloader/tj<",
            "TT;>;>;)",
            "Lcom/shabakaty/downloader/mu0;"
        }
    .end annotation

    const-string v0, "consumerObject"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/xk;->k(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/xk;->e:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/o15;

    invoke-direct {v0, p2, p0}, Lcom/shabakaty/downloader/o15;-><init>(Lcom/shabakaty/downloader/xv2;Lcom/shabakaty/downloader/xk;)V

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/o74;

    invoke-direct {v1, p1, v0}, Lcom/shabakaty/downloader/o74;-><init>(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/xc0;)V

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/sk;

    const/4 v2, 0x0

    invoke-direct {v0, p2, p0, p1, v2}, Lcom/shabakaty/downloader/sk;-><init>(Lcom/shabakaty/downloader/xv2;Lcom/shabakaty/downloader/xk;Lcom/shabakaty/downloader/f74;I)V

    .line 6
    new-instance v2, Lcom/shabakaty/downloader/p74;

    invoke-direct {v2, v1, v0}, Lcom/shabakaty/downloader/p74;-><init>(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/xc0;)V

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/sk;

    const/4 v1, 0x1

    invoke-direct {v0, p2, p0, p1, v1}, Lcom/shabakaty/downloader/sk;-><init>(Lcom/shabakaty/downloader/xv2;Lcom/shabakaty/downloader/xk;Lcom/shabakaty/downloader/f74;I)V

    .line 8
    new-instance p1, Lcom/shabakaty/downloader/n74;

    invoke-direct {p1, v2, v0}, Lcom/shabakaty/downloader/n74;-><init>(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/xc0;)V

    .line 9
    sget-object p2, Lcom/shabakaty/downloader/g00;->v:Lcom/shabakaty/downloader/g00;

    sget-object v0, Lcom/shabakaty/downloader/h00;->u:Lcom/shabakaty/downloader/h00;

    .line 10
    new-instance v1, Lcom/shabakaty/downloader/zc0;

    invoke-direct {v1, p2, v0}, Lcom/shabakaty/downloader/zc0;-><init>(Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;)V

    .line 11
    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/f74;->a(Lcom/shabakaty/downloader/y74;)V

    .line 12
    iget-object p1, p0, Lcom/shabakaty/downloader/xk;->b:Lcom/shabakaty/downloader/c90;

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/tp6;->a(Lcom/shabakaty/downloader/mu0;Lcom/shabakaty/downloader/c90;)Lcom/shabakaty/downloader/mu0;

    return-object v1
.end method

.method public final e()Lcom/shabakaty/downloader/se0;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/hl3;->e(Lcom/shabakaty/downloader/o35;)Lcom/shabakaty/downloader/se0;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/hu0;->b:Lcom/shabakaty/downloader/pe0;

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/rd0;

    invoke-interface {v0}, Lcom/shabakaty/downloader/se0;->B()Lcom/shabakaty/downloader/me0;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/me0;->plus(Lcom/shabakaty/downloader/me0;)Lcom/shabakaty/downloader/me0;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/shabakaty/downloader/rd0;-><init>(Lcom/shabakaty/downloader/me0;)V

    return-object v2
.end method

.method public final f()Lcom/shabakaty/downloader/vj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xk;->c:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/vj;

    :goto_0
    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final g(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/rm1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/downloader/tj<",
            "TT;>;>;",
            "Lcom/shabakaty/downloader/rm1<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xk;->e:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/xk;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p2}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/xk;->a:Lcom/shabakaty/downloader/u43;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/u43;->g(Z)V

    :cond_0
    return-void
.end method

.method public final h(Lcom/shabakaty/downloader/hn1;)Lcom/shabakaty/downloader/e92;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/hn1<",
            "-",
            "Lcom/shabakaty/downloader/se0;",
            "-",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/shabakaty/downloader/e92;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/hl3;->e(Lcom/shabakaty/downloader/o35;)Lcom/shabakaty/downloader/se0;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    move-result-object p1

    return-object p1
.end method

.method public final i(Lcom/shabakaty/downloader/hn1;)Lcom/shabakaty/downloader/e92;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/hn1<",
            "-",
            "Lcom/shabakaty/downloader/se0;",
            "-",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/shabakaty/downloader/e92;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/hl3;->e(Lcom/shabakaty/downloader/o35;)Lcom/shabakaty/downloader/se0;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/hu0;->b:Lcom/shabakaty/downloader/pe0;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v3, p1

    .line 3
    invoke-static/range {v0 .. v5}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    move-result-object p1

    return-object p1
.end method

.method public final j(Lcom/shabakaty/downloader/vj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    const-string v0, "navigator"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/xk;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final k(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/downloader/tj<",
            "TT;>;>;)",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/downloader/tj<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/uv3;->d(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/uv3;->b(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    return-object p1
.end method

.method public onCleared()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xk;->b:Lcom/shabakaty/downloader/c90;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v2, v0, Lcom/shabakaty/downloader/c90;->s:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v2, v0, Lcom/shabakaty/downloader/c90;->s:Z

    if-eqz v2, :cond_2

    .line 5
    monitor-exit v0

    goto :goto_0

    .line 6
    :cond_2
    iget-object v2, v0, Lcom/shabakaty/downloader/c90;->r:Lcom/shabakaty/downloader/v73;

    .line 7
    iput-object v1, v0, Lcom/shabakaty/downloader/c90;->r:Lcom/shabakaty/downloader/v73;

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/c90;->d(Lcom/shabakaty/downloader/v73;)V

    .line 10
    :goto_0
    iput-object v1, p0, Lcom/shabakaty/downloader/xk;->b:Lcom/shabakaty/downloader/c90;

    .line 11
    iget-object v0, p0, Lcom/shabakaty/downloader/xk;->c:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 12
    :goto_1
    iput-object v1, p0, Lcom/shabakaty/downloader/xk;->c:Ljava/lang/ref/WeakReference;

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, " is cleared"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ViewModel"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/vd5;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-super {p0}, Lcom/shabakaty/downloader/o35;->onCleared()V

    return-void

    :catchall_0
    move-exception v1

    .line 15
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
