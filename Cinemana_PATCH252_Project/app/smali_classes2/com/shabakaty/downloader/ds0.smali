.class public abstract Lcom/shabakaty/downloader/ds0;
.super Lcom/shabakaty/downloader/nr2;
.source "DeserializedMemberScope.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ds0$a;,
        Lcom/shabakaty/downloader/ds0$c;,
        Lcom/shabakaty/downloader/ds0$b;
    }
.end annotation


# static fields
.field public static final synthetic f:[Lcom/shabakaty/downloader/jd2;
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
.field public final b:Lcom/shabakaty/downloader/rr0;

.field public final c:Lcom/shabakaty/downloader/ds0$a;

.field public final d:Lcom/shabakaty/downloader/d03;

.field public final e:Lcom/shabakaty/downloader/w13;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/shabakaty/downloader/ds0;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/shabakaty/downloader/jd2;

    .line 1
    new-instance v2, Lcom/shabakaty/downloader/di3;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v3

    const-string v4, "classNames"

    const-string v5, "getClassNames$deserialization()Ljava/util/Set;"

    invoke-direct {v2, v3, v4, v5}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2
    new-instance v2, Lcom/shabakaty/downloader/di3;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v0

    const-string v3, "classifierNamesLazy"

    const-string v4, "getClassifierNamesLazy()Ljava/util/Set;"

    invoke-direct {v2, v0, v3, v4}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/shabakaty/downloader/ds0;->f:[Lcom/shabakaty/downloader/jd2;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/rr0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/shabakaty/downloader/rm1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/rr0;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/qi3;",
            ">;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/vi3;",
            ">;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/zi3;",
            ">;",
            "Lcom/shabakaty/downloader/rm1<",
            "+",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "c"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/nr2;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ds0;->b:Lcom/shabakaty/downloader/rr0;

    .line 3
    iget-object v0, p1, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/or0;->c:Lcom/shabakaty/downloader/qr0;

    .line 5
    invoke-interface {v0}, Lcom/shabakaty/downloader/qr0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/ds0$b;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/shabakaty/downloader/ds0$b;-><init>(Lcom/shabakaty/downloader/ds0;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/ds0$c;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/shabakaty/downloader/ds0$c;-><init>(Lcom/shabakaty/downloader/ds0;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 8
    :goto_0
    iput-object v0, p0, Lcom/shabakaty/downloader/ds0;->c:Lcom/shabakaty/downloader/ds0$a;

    .line 9
    iget-object p2, p1, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 10
    iget-object p2, p2, Lcom/shabakaty/downloader/or0;->a:Lcom/shabakaty/downloader/md4;

    .line 11
    new-instance p3, Lcom/shabakaty/downloader/ds0$d;

    invoke-direct {p3, p5}, Lcom/shabakaty/downloader/ds0$d;-><init>(Lcom/shabakaty/downloader/rm1;)V

    invoke-interface {p2, p3}, Lcom/shabakaty/downloader/md4;->f(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/d03;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/ds0;->d:Lcom/shabakaty/downloader/d03;

    .line 12
    iget-object p1, p1, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 13
    iget-object p1, p1, Lcom/shabakaty/downloader/or0;->a:Lcom/shabakaty/downloader/md4;

    .line 14
    new-instance p2, Lcom/shabakaty/downloader/ds0$e;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/ds0$e;-><init>(Lcom/shabakaty/downloader/ds0;)V

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/md4;->d(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/w13;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ds0;->e:Lcom/shabakaty/downloader/w13;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ds0;->c:Lcom/shabakaty/downloader/ds0$a;

    invoke-interface {v0}, Lcom/shabakaty/downloader/ds0$a;->a()Ljava/util/Set;

    move-result-object v0

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
    iget-object v0, p0, Lcom/shabakaty/downloader/ds0;->c:Lcom/shabakaty/downloader/ds0$a;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/ds0$a;->b(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ds0;->c:Lcom/shabakaty/downloader/ds0$a;

    invoke-interface {v0}, Lcom/shabakaty/downloader/ds0$a;->c()Ljava/util/Set;

    move-result-object v0

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
    iget-object v0, p0, Lcom/shabakaty/downloader/ds0;->c:Lcom/shabakaty/downloader/ds0$a;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/ds0$a;->d(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;

    move-result-object p1

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
    iget-object v0, p0, Lcom/shabakaty/downloader/ds0;->e:Lcom/shabakaty/downloader/w13;

    sget-object v1, Lcom/shabakaty/downloader/ds0;->f:[Lcom/shabakaty/downloader/jd2;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-string v2, "<this>"

    .line 2
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "p"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {v0}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public g(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Lcom/shabakaty/downloader/g30;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ds0;->q(Lcom/shabakaty/downloader/hw2;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/shabakaty/downloader/ds0;->b:Lcom/shabakaty/downloader/rr0;

    .line 3
    iget-object p2, p2, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 4
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ds0;->l(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/v20;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/or0;->b(Lcom/shabakaty/downloader/v20;)Lcom/shabakaty/downloader/q20;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/shabakaty/downloader/ds0;->c:Lcom/shabakaty/downloader/ds0$a;

    invoke-interface {p2}, Lcom/shabakaty/downloader/ds0$a;->f()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    iget-object p2, p0, Lcom/shabakaty/downloader/ds0;->c:Lcom/shabakaty/downloader/ds0$a;

    invoke-interface {p2, p1}, Lcom/shabakaty/downloader/ds0$a;->e(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/hs4;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public abstract h(Ljava/util/Collection;Lcom/shabakaty/downloader/tm1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/qm0;",
            ">;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/hw2;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public final i(Lcom/shabakaty/downloader/vq0;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/vq0;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/hw2;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/shabakaty/downloader/ll2;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/qm0;",
            ">;"
        }
    .end annotation

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/vq0;->c:Lcom/shabakaty/downloader/vq0$a;

    .line 3
    sget v1, Lcom/shabakaty/downloader/vq0;->f:I

    .line 4
    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/vq0;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0, v0, p2}, Lcom/shabakaty/downloader/ds0;->h(Ljava/util/Collection;Lcom/shabakaty/downloader/tm1;)V

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/ds0;->c:Lcom/shabakaty/downloader/ds0$a;

    invoke-interface {v1, v0, p1, p2, p3}, Lcom/shabakaty/downloader/ds0$a;->g(Ljava/util/Collection;Lcom/shabakaty/downloader/vq0;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/ll2;)V

    .line 7
    sget p3, Lcom/shabakaty/downloader/vq0;->l:I

    .line 8
    invoke-virtual {p1, p3}, Lcom/shabakaty/downloader/vq0;->a(I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ds0;->m()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/hw2;

    .line 10
    invoke-interface {p2, v1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11
    iget-object v2, p0, Lcom/shabakaty/downloader/ds0;->b:Lcom/shabakaty/downloader/rr0;

    .line 12
    iget-object v2, v2, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 13
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/ds0;->l(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/v20;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/or0;->b(Lcom/shabakaty/downloader/v20;)Lcom/shabakaty/downloader/q20;

    move-result-object v1

    .line 14
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/md0;->b(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_0

    .line 15
    :cond_2
    sget-object p3, Lcom/shabakaty/downloader/vq0;->c:Lcom/shabakaty/downloader/vq0$a;

    .line 16
    sget p3, Lcom/shabakaty/downloader/vq0;->g:I

    .line 17
    invoke-virtual {p1, p3}, Lcom/shabakaty/downloader/vq0;->a(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 18
    iget-object p1, p0, Lcom/shabakaty/downloader/ds0;->c:Lcom/shabakaty/downloader/ds0$a;

    invoke-interface {p1}, Lcom/shabakaty/downloader/ds0$a;->f()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/shabakaty/downloader/hw2;

    .line 19
    invoke-interface {p2, p3}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 20
    iget-object v1, p0, Lcom/shabakaty/downloader/ds0;->c:Lcom/shabakaty/downloader/ds0$a;

    invoke-interface {v1, p3}, Lcom/shabakaty/downloader/ds0$a;->e(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/hs4;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/shabakaty/downloader/md0;->b(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_1

    .line 21
    :cond_4
    invoke-static {v0}, Lcom/shabakaty/downloader/md0;->g(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public j(Lcom/shabakaty/downloader/hw2;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/hw2;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/t64;",
            ">;)V"
        }
    .end annotation

    const-string p2, "name"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public k(Lcom/shabakaty/downloader/hw2;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/hw2;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/yh3;",
            ">;)V"
        }
    .end annotation

    const-string p2, "name"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract l(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/v20;
.end method

.method public final m()Ljava/util/Set;
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
    iget-object v0, p0, Lcom/shabakaty/downloader/ds0;->d:Lcom/shabakaty/downloader/d03;

    sget-object v1, Lcom/shabakaty/downloader/ds0;->f:[Lcom/shabakaty/downloader/jd2;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/z02;->i(Lcom/shabakaty/downloader/d03;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public abstract n()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;"
        }
    .end annotation
.end method

.method public abstract o()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;"
        }
    .end annotation
.end method

.method public abstract p()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;"
        }
    .end annotation
.end method

.method public q(Lcom/shabakaty/downloader/hw2;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ds0;->m()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public r(Lcom/shabakaty/downloader/t64;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
