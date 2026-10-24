.class public abstract Lcom/shabakaty/downloader/cg2;
.super Lcom/shabakaty/downloader/nr2;
.source "LazyJavaScope.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/cg2$a;,
        Lcom/shabakaty/downloader/cg2$b;
    }
.end annotation


# static fields
.field public static final synthetic m:[Lcom/shabakaty/downloader/jd2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lcom/shabakaty/downloader/bg2;

.field public final c:Lcom/shabakaty/downloader/cg2;

.field public final d:Lcom/shabakaty/downloader/d03;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/d03<",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/qm0;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Lcom/shabakaty/downloader/d03;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/d03<",
            "Lcom/shabakaty/downloader/xm0;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lcom/shabakaty/downloader/qr2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/qr2<",
            "Lcom/shabakaty/downloader/hw2;",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/t64;",
            ">;>;"
        }
    .end annotation
.end field

.field public final g:Lcom/shabakaty/downloader/rr2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/rr2<",
            "Lcom/shabakaty/downloader/hw2;",
            "Lcom/shabakaty/downloader/yh3;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lcom/shabakaty/downloader/qr2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/qr2<",
            "Lcom/shabakaty/downloader/hw2;",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/t64;",
            ">;>;"
        }
    .end annotation
.end field

.field public final i:Lcom/shabakaty/downloader/d03;

.field public final j:Lcom/shabakaty/downloader/d03;

.field public final k:Lcom/shabakaty/downloader/d03;

.field public final l:Lcom/shabakaty/downloader/qr2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/qr2<",
            "Lcom/shabakaty/downloader/hw2;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/yh3;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/shabakaty/downloader/cg2;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/shabakaty/downloader/jd2;

    .line 1
    new-instance v2, Lcom/shabakaty/downloader/di3;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v3

    const-string v4, "functionNamesLazy"

    const-string v5, "getFunctionNamesLazy()Ljava/util/Set;"

    invoke-direct {v2, v3, v4, v5}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2
    new-instance v2, Lcom/shabakaty/downloader/di3;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v3

    const-string v4, "propertyNamesLazy"

    const-string v5, "getPropertyNamesLazy()Ljava/util/Set;"

    invoke-direct {v2, v3, v4, v5}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/di3;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v0

    const-string v3, "classNamesLazy"

    const-string v4, "getClassNamesLazy()Ljava/util/Set;"

    invoke-direct {v2, v0, v3, v4}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/shabakaty/downloader/cg2;->m:[Lcom/shabakaty/downloader/jd2;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/cg2;)V
    .locals 2

    const-string v0, "c"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/nr2;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/cg2;->b:Lcom/shabakaty/downloader/bg2;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/cg2;->c:Lcom/shabakaty/downloader/cg2;

    .line 4
    iget-object p2, p1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 5
    iget-object p2, p2, Lcom/shabakaty/downloader/y72;->a:Lcom/shabakaty/downloader/md4;

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/cg2$c;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/cg2$c;-><init>(Lcom/shabakaty/downloader/cg2;)V

    .line 7
    sget-object v1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    .line 8
    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/md4;->e(Lcom/shabakaty/downloader/rm1;Ljava/lang/Object;)Lcom/shabakaty/downloader/d03;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/cg2;->d:Lcom/shabakaty/downloader/d03;

    .line 9
    iget-object p2, p1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 10
    iget-object p2, p2, Lcom/shabakaty/downloader/y72;->a:Lcom/shabakaty/downloader/md4;

    .line 11
    new-instance v0, Lcom/shabakaty/downloader/cg2$g;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/cg2$g;-><init>(Lcom/shabakaty/downloader/cg2;)V

    invoke-interface {p2, v0}, Lcom/shabakaty/downloader/md4;->f(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/d03;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/cg2;->e:Lcom/shabakaty/downloader/d03;

    .line 12
    iget-object p2, p1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 13
    iget-object p2, p2, Lcom/shabakaty/downloader/y72;->a:Lcom/shabakaty/downloader/md4;

    .line 14
    new-instance v0, Lcom/shabakaty/downloader/cg2$f;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/cg2$f;-><init>(Lcom/shabakaty/downloader/cg2;)V

    invoke-interface {p2, v0}, Lcom/shabakaty/downloader/md4;->h(Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/qr2;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/cg2;->f:Lcom/shabakaty/downloader/qr2;

    .line 15
    iget-object p2, p1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 16
    iget-object p2, p2, Lcom/shabakaty/downloader/y72;->a:Lcom/shabakaty/downloader/md4;

    .line 17
    new-instance v0, Lcom/shabakaty/downloader/cg2$e;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/cg2$e;-><init>(Lcom/shabakaty/downloader/cg2;)V

    invoke-interface {p2, v0}, Lcom/shabakaty/downloader/md4;->g(Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/rr2;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/cg2;->g:Lcom/shabakaty/downloader/rr2;

    .line 18
    iget-object p2, p1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 19
    iget-object p2, p2, Lcom/shabakaty/downloader/y72;->a:Lcom/shabakaty/downloader/md4;

    .line 20
    new-instance v0, Lcom/shabakaty/downloader/cg2$i;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/cg2$i;-><init>(Lcom/shabakaty/downloader/cg2;)V

    invoke-interface {p2, v0}, Lcom/shabakaty/downloader/md4;->h(Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/qr2;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/cg2;->h:Lcom/shabakaty/downloader/qr2;

    .line 21
    iget-object p2, p1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 22
    iget-object p2, p2, Lcom/shabakaty/downloader/y72;->a:Lcom/shabakaty/downloader/md4;

    .line 23
    new-instance v0, Lcom/shabakaty/downloader/cg2$h;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/cg2$h;-><init>(Lcom/shabakaty/downloader/cg2;)V

    invoke-interface {p2, v0}, Lcom/shabakaty/downloader/md4;->f(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/d03;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/cg2;->i:Lcom/shabakaty/downloader/d03;

    .line 24
    iget-object p2, p1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 25
    iget-object p2, p2, Lcom/shabakaty/downloader/y72;->a:Lcom/shabakaty/downloader/md4;

    .line 26
    new-instance v0, Lcom/shabakaty/downloader/cg2$k;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/cg2$k;-><init>(Lcom/shabakaty/downloader/cg2;)V

    invoke-interface {p2, v0}, Lcom/shabakaty/downloader/md4;->f(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/d03;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/cg2;->j:Lcom/shabakaty/downloader/d03;

    .line 27
    iget-object p2, p1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 28
    iget-object p2, p2, Lcom/shabakaty/downloader/y72;->a:Lcom/shabakaty/downloader/md4;

    .line 29
    new-instance v0, Lcom/shabakaty/downloader/cg2$d;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/cg2$d;-><init>(Lcom/shabakaty/downloader/cg2;)V

    invoke-interface {p2, v0}, Lcom/shabakaty/downloader/md4;->f(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/d03;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/cg2;->k:Lcom/shabakaty/downloader/d03;

    .line 30
    iget-object p1, p1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 31
    iget-object p1, p1, Lcom/shabakaty/downloader/y72;->a:Lcom/shabakaty/downloader/md4;

    .line 32
    new-instance p2, Lcom/shabakaty/downloader/cg2$j;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/cg2$j;-><init>(Lcom/shabakaty/downloader/cg2;)V

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/md4;->h(Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/qr2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/cg2;->l:Lcom/shabakaty/downloader/qr2;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cg2;->i:Lcom/shabakaty/downloader/d03;

    sget-object v1, Lcom/shabakaty/downloader/cg2;->m:[Lcom/shabakaty/downloader/jd2;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/z02;->i(Lcom/shabakaty/downloader/d03;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public b(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/hw2;",
            "Lcom/shabakaty/downloader/ll2;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/yh3;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/cg2;->c()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    return-object p1

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/shabakaty/downloader/cg2;->l:Lcom/shabakaty/downloader/qr2;

    check-cast p2, Lcom/shabakaty/downloader/yj2$m;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/yj2$m;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public c()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cg2;->j:Lcom/shabakaty/downloader/d03;

    sget-object v1, Lcom/shabakaty/downloader/cg2;->m:[Lcom/shabakaty/downloader/jd2;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/z02;->i(Lcom/shabakaty/downloader/d03;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public d(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/hw2;",
            "Lcom/shabakaty/downloader/ll2;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/t64;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/cg2;->a()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    return-object p1

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/shabakaty/downloader/cg2;->h:Lcom/shabakaty/downloader/qr2;

    check-cast p2, Lcom/shabakaty/downloader/yj2$m;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/yj2$m;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public e(Lcom/shabakaty/downloader/vq0;Lcom/shabakaty/downloader/tm1;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/vq0;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/hw2;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/qm0;",
            ">;"
        }
    .end annotation

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nameFilter"

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/cg2;->d:Lcom/shabakaty/downloader/d03;

    invoke-interface {p1}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public f()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cg2;->k:Lcom/shabakaty/downloader/d03;

    sget-object v1, Lcom/shabakaty/downloader/cg2;->m:[Lcom/shabakaty/downloader/jd2;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/z02;->i(Lcom/shabakaty/downloader/d03;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public abstract h(Lcom/shabakaty/downloader/vq0;Lcom/shabakaty/downloader/tm1;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/vq0;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/hw2;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;"
        }
    .end annotation
.end method

.method public abstract i(Lcom/shabakaty/downloader/vq0;Lcom/shabakaty/downloader/tm1;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/vq0;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/hw2;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;"
        }
    .end annotation
.end method

.method public j(Ljava/util/Collection;Lcom/shabakaty/downloader/hw2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/t64;",
            ">;",
            "Lcom/shabakaty/downloader/hw2;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public abstract k()Lcom/shabakaty/downloader/xm0;
.end method

.method public final l(Lcom/shabakaty/downloader/l72;Lcom/shabakaty/downloader/bg2;)Lcom/shabakaty/downloader/qe2;
    .locals 4

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/k72;->V()Lcom/shabakaty/downloader/q62;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/q62;->u()Z

    move-result v0

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/du4;->s:Lcom/shabakaty/downloader/du4;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v1, v0, v2, v3}, Lcom/shabakaty/downloader/s82;->b(Lcom/shabakaty/downloader/du4;ZLcom/shabakaty/downloader/kt4;I)Lcom/shabakaty/downloader/i82;

    move-result-object v0

    .line 3
    iget-object p2, p2, Lcom/shabakaty/downloader/bg2;->e:Lcom/shabakaty/downloader/r82;

    .line 4
    invoke-interface {p1}, Lcom/shabakaty/downloader/l72;->h()Lcom/shabakaty/downloader/g82;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Lcom/shabakaty/downloader/r82;->e(Lcom/shabakaty/downloader/g82;Lcom/shabakaty/downloader/i82;)Lcom/shabakaty/downloader/qe2;

    move-result-object p1

    return-object p1
.end method

.method public abstract m(Ljava/util/Collection;Lcom/shabakaty/downloader/hw2;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/t64;",
            ">;",
            "Lcom/shabakaty/downloader/hw2;",
            ")V"
        }
    .end annotation
.end method

.method public abstract n(Lcom/shabakaty/downloader/hw2;Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/hw2;",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/yh3;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract o(Lcom/shabakaty/downloader/vq0;Lcom/shabakaty/downloader/tm1;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/vq0;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/hw2;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;"
        }
    .end annotation
.end method

.method public abstract p()Lcom/shabakaty/downloader/ao3;
.end method

.method public abstract q()Lcom/shabakaty/downloader/qm0;
.end method

.method public r(Lcom/shabakaty/downloader/m72;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public abstract s(Lcom/shabakaty/downloader/l72;Ljava/util/List;Lcom/shabakaty/downloader/qe2;Ljava/util/List;)Lcom/shabakaty/downloader/cg2$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/l72;",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/kt4;",
            ">;",
            "Lcom/shabakaty/downloader/qe2;",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/sz4;",
            ">;)",
            "Lcom/shabakaty/downloader/cg2$a;"
        }
    .end annotation
.end method

.method public final t(Lcom/shabakaty/downloader/l72;)Lcom/shabakaty/downloader/m72;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "method"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, v0, Lcom/shabakaty/downloader/cg2;->b:Lcom/shabakaty/downloader/bg2;

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/nh3;->I(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/l62;)Lcom/shabakaty/downloader/d9;

    move-result-object v2

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/cg2;->q()Lcom/shabakaty/downloader/qm0;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/p72;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v4

    iget-object v5, v0, Lcom/shabakaty/downloader/cg2;->b:Lcom/shabakaty/downloader/bg2;

    .line 3
    iget-object v5, v5, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 4
    iget-object v5, v5, Lcom/shabakaty/downloader/y72;->j:Lcom/shabakaty/downloader/c82;

    .line 5
    invoke-interface {v5, v1}, Lcom/shabakaty/downloader/c82;->a(Lcom/shabakaty/downloader/d72;)Lcom/shabakaty/downloader/b82;

    move-result-object v5

    .line 6
    iget-object v6, v0, Lcom/shabakaty/downloader/cg2;->e:Lcom/shabakaty/downloader/d03;

    invoke-interface {v6}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/xm0;

    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/p72;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/shabakaty/downloader/xm0;->a(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/w72;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_0

    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/l72;->i()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 7
    :goto_0
    invoke-static {v3, v2, v4, v5, v6}, Lcom/shabakaty/downloader/m72;->h1(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/s94;Z)Lcom/shabakaty/downloader/m72;

    move-result-object v2

    .line 8
    iget-object v3, v0, Lcom/shabakaty/downloader/cg2;->b:Lcom/shabakaty/downloader/bg2;

    .line 9
    invoke-static {v3, v2, v1, v7}, Lcom/shabakaty/downloader/od0;->b(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/n82;I)Lcom/shabakaty/downloader/bg2;

    move-result-object v3

    .line 10
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/n82;->t()Ljava/util/List;

    move-result-object v4

    .line 11
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 13
    check-cast v6, Lcom/shabakaty/downloader/m82;

    .line 14
    iget-object v7, v3, Lcom/shabakaty/downloader/bg2;->b:Lcom/shabakaty/downloader/nt4;

    .line 15
    invoke-interface {v7, v6}, Lcom/shabakaty/downloader/nt4;->a(Lcom/shabakaty/downloader/m82;)Lcom/shabakaty/downloader/kt4;

    move-result-object v6

    invoke-static {v6}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 16
    :cond_1
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/l72;->i()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4}, Lcom/shabakaty/downloader/cg2;->u(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/xn1;Ljava/util/List;)Lcom/shabakaty/downloader/cg2$b;

    move-result-object v4

    .line 17
    invoke-virtual {v0, v1, v3}, Lcom/shabakaty/downloader/cg2;->l(Lcom/shabakaty/downloader/l72;Lcom/shabakaty/downloader/bg2;)Lcom/shabakaty/downloader/qe2;

    move-result-object v6

    .line 18
    iget-object v7, v4, Lcom/shabakaty/downloader/cg2$b;->a:Ljava/util/List;

    .line 19
    invoke-virtual {v0, v1, v5, v6, v7}, Lcom/shabakaty/downloader/cg2;->s(Lcom/shabakaty/downloader/l72;Ljava/util/List;Lcom/shabakaty/downloader/qe2;Ljava/util/List;)Lcom/shabakaty/downloader/cg2$a;

    move-result-object v5

    .line 20
    iget-object v6, v5, Lcom/shabakaty/downloader/cg2$a;->b:Lcom/shabakaty/downloader/qe2;

    const/4 v7, 0x0

    if-nez v6, :cond_2

    move-object v10, v7

    goto :goto_2

    .line 21
    :cond_2
    sget v9, Lcom/shabakaty/downloader/d9;->a:I

    sget-object v9, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    invoke-static {v2, v6, v9}, Lcom/shabakaty/downloader/tq0;->f(Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/ao3;

    move-result-object v6

    move-object v10, v6

    .line 22
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/cg2;->p()Lcom/shabakaty/downloader/ao3;

    move-result-object v11

    .line 23
    iget-object v12, v5, Lcom/shabakaty/downloader/cg2$a;->d:Ljava/util/List;

    .line 24
    iget-object v13, v5, Lcom/shabakaty/downloader/cg2$a;->c:Ljava/util/List;

    .line 25
    iget-object v14, v5, Lcom/shabakaty/downloader/cg2$a;->a:Lcom/shabakaty/downloader/qe2;

    .line 26
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/n72;->N()Z

    move-result v6

    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/n72;->q()Z

    move-result v9

    xor-int/2addr v9, v8

    if-eqz v6, :cond_3

    .line 27
    sget-object v6, Lcom/shabakaty/downloader/eu2;->u:Lcom/shabakaty/downloader/eu2;

    :goto_3
    move-object v15, v6

    goto :goto_4

    :cond_3
    if-eqz v9, :cond_4

    .line 28
    sget-object v6, Lcom/shabakaty/downloader/eu2;->t:Lcom/shabakaty/downloader/eu2;

    goto :goto_3

    .line 29
    :cond_4
    sget-object v6, Lcom/shabakaty/downloader/eu2;->r:Lcom/shabakaty/downloader/eu2;

    goto :goto_3

    .line 30
    :goto_4
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/n72;->g()Lcom/shabakaty/downloader/y45;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/vd5;->A(Lcom/shabakaty/downloader/y45;)Lcom/shabakaty/downloader/mr0;

    move-result-object v16

    .line 31
    iget-object v1, v5, Lcom/shabakaty/downloader/cg2$a;->b:Lcom/shabakaty/downloader/qe2;

    if-eqz v1, :cond_5

    .line 32
    sget-object v1, Lcom/shabakaty/downloader/m72;->W:Lcom/shabakaty/downloader/rq$a;

    .line 33
    iget-object v6, v4, Lcom/shabakaty/downloader/cg2$b;->a:Ljava/util/List;

    .line 34
    invoke-static {v6}, Lcom/shabakaty/downloader/m50;->Z(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    .line 35
    new-instance v9, Lcom/shabakaty/downloader/x93;

    invoke-direct {v9, v1, v6}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    invoke-static {v9}, Lcom/shabakaty/downloader/kf5;->j(Lcom/shabakaty/downloader/x93;)Ljava/util/Map;

    move-result-object v1

    goto :goto_5

    .line 37
    :cond_5
    sget-object v1, Lcom/shabakaty/downloader/x21;->r:Lcom/shabakaty/downloader/x21;

    :goto_5
    move-object/from16 v17, v1

    move-object v9, v2

    .line 38
    invoke-virtual/range {v9 .. v17}, Lcom/shabakaty/downloader/m72;->g1(Lcom/shabakaty/downloader/ao3;Lcom/shabakaty/downloader/ao3;Ljava/util/List;Ljava/util/List;Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/eu2;Lcom/shabakaty/downloader/mr0;Ljava/util/Map;)Lcom/shabakaty/downloader/u64;

    .line 39
    iget-boolean v1, v5, Lcom/shabakaty/downloader/cg2$a;->e:Z

    .line 40
    iget-boolean v4, v4, Lcom/shabakaty/downloader/cg2$b;->b:Z

    .line 41
    invoke-virtual {v2, v1, v4}, Lcom/shabakaty/downloader/m72;->i1(ZZ)V

    .line 42
    iget-object v1, v5, Lcom/shabakaty/downloader/cg2$a;->f:Ljava/util/List;

    .line 43
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v8

    if-eqz v1, :cond_7

    .line 44
    iget-object v1, v3, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 45
    iget-object v1, v1, Lcom/shabakaty/downloader/y72;->e:Lcom/shabakaty/downloader/k64;

    .line 46
    iget-object v2, v5, Lcom/shabakaty/downloader/cg2$a;->f:Ljava/util/List;

    .line 47
    check-cast v1, Lcom/shabakaty/downloader/k64$a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v2, :cond_6

    const/4 v1, 0x6

    .line 48
    invoke-static {v1}, Lcom/shabakaty/downloader/k64$a;->a(I)V

    throw v7

    .line 49
    :cond_6
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Should not be called"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/cg2;->q()Lcom/shabakaty/downloader/qm0;

    move-result-object v0

    const-string v1, "Lazy scope for "

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/xn1;Ljava/util/List;)Lcom/shabakaty/downloader/cg2$b;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/bg2;",
            "Lcom/shabakaty/downloader/xn1;",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/t82;",
            ">;)",
            "Lcom/shabakaty/downloader/cg2$b;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "jValueParameters"

    move-object/from16 v2, p3

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static/range {p3 .. p3}, Lcom/shabakaty/downloader/m50;->C0(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v1

    .line 2
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    check-cast v1, Lcom/shabakaty/downloader/p02;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/p02;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    move-object v6, v1

    check-cast v6, Lcom/shabakaty/downloader/q02;

    invoke-virtual {v6}, Lcom/shabakaty/downloader/q02;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v6}, Lcom/shabakaty/downloader/q02;->next()Ljava/lang/Object;

    move-result-object v6

    .line 4
    check-cast v6, Lcom/shabakaty/downloader/o02;

    .line 5
    iget v10, v6, Lcom/shabakaty/downloader/o02;->a:I

    .line 6
    iget-object v6, v6, Lcom/shabakaty/downloader/o02;->b:Ljava/lang/Object;

    .line 7
    check-cast v6, Lcom/shabakaty/downloader/t82;

    .line 8
    invoke-static {v0, v6}, Lcom/shabakaty/downloader/nh3;->I(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/l62;)Lcom/shabakaty/downloader/d9;

    move-result-object v11

    .line 9
    sget-object v7, Lcom/shabakaty/downloader/du4;->s:Lcom/shabakaty/downloader/du4;

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static {v7, v4, v9, v8}, Lcom/shabakaty/downloader/s82;->b(Lcom/shabakaty/downloader/du4;ZLcom/shabakaty/downloader/kt4;I)Lcom/shabakaty/downloader/i82;

    move-result-object v7

    .line 10
    invoke-interface {v6}, Lcom/shabakaty/downloader/t82;->c()Z

    move-result v8

    const/4 v12, 0x1

    if-eqz v8, :cond_2

    .line 11
    invoke-interface {v6}, Lcom/shabakaty/downloader/t82;->b()Lcom/shabakaty/downloader/g82;

    move-result-object v8

    instance-of v13, v8, Lcom/shabakaty/downloader/o62;

    if-eqz v13, :cond_0

    move-object v9, v8

    check-cast v9, Lcom/shabakaty/downloader/o62;

    :cond_0
    if-eqz v9, :cond_1

    .line 12
    iget-object v8, v0, Lcom/shabakaty/downloader/bg2;->e:Lcom/shabakaty/downloader/r82;

    .line 13
    invoke-virtual {v8, v9, v7, v12}, Lcom/shabakaty/downloader/r82;->c(Lcom/shabakaty/downloader/o62;Lcom/shabakaty/downloader/i82;Z)Lcom/shabakaty/downloader/qe2;

    move-result-object v7

    .line 14
    iget-object v8, v0, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 15
    iget-object v8, v8, Lcom/shabakaty/downloader/y72;->o:Lcom/shabakaty/downloader/nu2;

    .line 16
    invoke-interface {v8}, Lcom/shabakaty/downloader/nu2;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/shabakaty/downloader/zd2;->g(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qe2;

    move-result-object v8

    .line 17
    new-instance v9, Lcom/shabakaty/downloader/x93;

    invoke-direct {v9, v7, v8}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 18
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Vararg parameter should be an array: "

    invoke-static {v1, v6}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 19
    :cond_2
    iget-object v8, v0, Lcom/shabakaty/downloader/bg2;->e:Lcom/shabakaty/downloader/r82;

    .line 20
    invoke-interface {v6}, Lcom/shabakaty/downloader/t82;->b()Lcom/shabakaty/downloader/g82;

    move-result-object v13

    invoke-virtual {v8, v13, v7}, Lcom/shabakaty/downloader/r82;->e(Lcom/shabakaty/downloader/g82;Lcom/shabakaty/downloader/i82;)Lcom/shabakaty/downloader/qe2;

    move-result-object v7

    .line 21
    new-instance v8, Lcom/shabakaty/downloader/x93;

    invoke-direct {v8, v7, v9}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v9, v8

    .line 22
    :goto_1
    iget-object v7, v9, Lcom/shabakaty/downloader/x93;->r:Ljava/lang/Object;

    .line 23
    move-object v13, v7

    check-cast v13, Lcom/shabakaty/downloader/qe2;

    .line 24
    iget-object v7, v9, Lcom/shabakaty/downloader/x93;->s:Ljava/lang/Object;

    .line 25
    move-object/from16 v17, v7

    check-cast v17, Lcom/shabakaty/downloader/qe2;

    .line 26
    move-object/from16 v7, p2

    check-cast v7, Lcom/shabakaty/downloader/rm0;

    invoke-virtual {v7}, Lcom/shabakaty/downloader/rm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v7

    invoke-virtual {v7}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v7

    const-string v8, "equals"

    invoke-static {v7, v8}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 27
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v12, :cond_3

    .line 28
    iget-object v7, v0, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 29
    iget-object v7, v7, Lcom/shabakaty/downloader/y72;->o:Lcom/shabakaty/downloader/nu2;

    .line 30
    invoke-interface {v7}, Lcom/shabakaty/downloader/nu2;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object v7

    invoke-virtual {v7}, Lcom/shabakaty/downloader/zd2;->q()Lcom/shabakaty/downloader/b74;

    move-result-object v7

    invoke-static {v7, v13}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "other"

    .line 31
    invoke-static {v7}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v7

    goto :goto_2

    .line 32
    :cond_3
    invoke-interface {v6}, Lcom/shabakaty/downloader/t82;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v7

    if-nez v7, :cond_4

    const/4 v5, 0x1

    :cond_4
    if-nez v7, :cond_5

    .line 33
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "p"

    invoke-static {v8, v7}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v7

    :cond_5
    :goto_2
    move-object v12, v7

    .line 34
    new-instance v15, Lcom/shabakaty/downloader/tz4;

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    .line 35
    iget-object v7, v0, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 36
    iget-object v7, v7, Lcom/shabakaty/downloader/y72;->j:Lcom/shabakaty/downloader/c82;

    .line 37
    invoke-interface {v7, v6}, Lcom/shabakaty/downloader/c82;->a(Lcom/shabakaty/downloader/d72;)Lcom/shabakaty/downloader/b82;

    move-result-object v6

    move-object v7, v15

    move-object/from16 v8, p2

    move-object v4, v15

    move/from16 v15, v16

    move/from16 v16, v18

    move-object/from16 v18, v6

    .line 38
    invoke-direct/range {v7 .. v18}, Lcom/shabakaty/downloader/tz4;-><init>(Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/sz4;ILcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/qe2;ZZZLcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/s94;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 39
    :cond_6
    invoke-static {v3}, Lcom/shabakaty/downloader/m50;->x0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 40
    new-instance v1, Lcom/shabakaty/downloader/cg2$b;

    invoke-direct {v1, v0, v5}, Lcom/shabakaty/downloader/cg2$b;-><init>(Ljava/util/List;Z)V

    return-object v1
.end method
