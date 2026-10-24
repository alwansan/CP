.class public final Lcom/shabakaty/downloader/rb2;
.super Ljava/lang/Object;
.source "JvmPackageScope.kt"

# interfaces
.implements Lcom/shabakaty/downloader/mr2;


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
.field public final b:Lcom/shabakaty/downloader/bg2;

.field public final c:Lcom/shabakaty/downloader/yf2;

.field public final d:Lcom/shabakaty/downloader/ag2;

.field public final e:Lcom/shabakaty/downloader/d03;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/shabakaty/downloader/jd2;

    .line 1
    new-instance v1, Lcom/shabakaty/downloader/di3;

    const-class v2, Lcom/shabakaty/downloader/rb2;

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v2

    const-string v3, "kotlinScopes"

    const-string v4, "getKotlinScopes()[Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;"

    invoke-direct {v1, v2, v3, v4}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/shabakaty/downloader/rb2;->f:[Lcom/shabakaty/downloader/jd2;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/s72;Lcom/shabakaty/downloader/yf2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/rb2;->b:Lcom/shabakaty/downloader/bg2;

    .line 3
    iput-object p3, p0, Lcom/shabakaty/downloader/rb2;->c:Lcom/shabakaty/downloader/yf2;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/ag2;

    invoke-direct {v0, p1, p2, p3}, Lcom/shabakaty/downloader/ag2;-><init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/s72;Lcom/shabakaty/downloader/yf2;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/rb2;->d:Lcom/shabakaty/downloader/ag2;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 6
    iget-object p1, p1, Lcom/shabakaty/downloader/y72;->a:Lcom/shabakaty/downloader/md4;

    .line 7
    new-instance p2, Lcom/shabakaty/downloader/rb2$a;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/rb2$a;-><init>(Lcom/shabakaty/downloader/rb2;)V

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/md4;->f(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/d03;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/rb2;->e:Lcom/shabakaty/downloader/d03;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/rb2;->h()[Lcom/shabakaty/downloader/mr2;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    .line 3
    invoke-interface {v4}, Lcom/shabakaty/downloader/mr2;->a()Ljava/util/Set;

    move-result-object v4

    .line 4
    invoke-static {v1, v4}, Lcom/shabakaty/downloader/k50;->R(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/rb2;->d:Lcom/shabakaty/downloader/ag2;

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/cg2;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method public b(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;
    .locals 5
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
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/rb2;->i(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/rb2;->d:Lcom/shabakaty/downloader/ag2;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/rb2;->h()[Lcom/shabakaty/downloader/mr2;

    move-result-object v1

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/mr2;->b(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;

    move-result-object v0

    .line 3
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    .line 4
    invoke-interface {v4, p1, p2}, Lcom/shabakaty/downloader/mr2;->b(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/z02;->c(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 5
    sget-object v0, Lcom/shabakaty/downloader/c31;->r:Lcom/shabakaty/downloader/c31;

    :cond_1
    return-object v0
.end method

.method public c()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/rb2;->h()[Lcom/shabakaty/downloader/mr2;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    .line 3
    invoke-interface {v4}, Lcom/shabakaty/downloader/mr2;->c()Ljava/util/Set;

    move-result-object v4

    .line 4
    invoke-static {v1, v4}, Lcom/shabakaty/downloader/k50;->R(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/rb2;->d:Lcom/shabakaty/downloader/ag2;

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/cg2;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method public d(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;
    .locals 5
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
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/rb2;->i(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/rb2;->d:Lcom/shabakaty/downloader/ag2;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/rb2;->h()[Lcom/shabakaty/downloader/mr2;

    move-result-object v1

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/mr2;->d(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;

    move-result-object v0

    .line 3
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    .line 4
    invoke-interface {v4, p1, p2}, Lcom/shabakaty/downloader/mr2;->d(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/z02;->c(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 5
    sget-object v0, Lcom/shabakaty/downloader/c31;->r:Lcom/shabakaty/downloader/c31;

    :cond_1
    return-object v0
.end method

.method public e(Lcom/shabakaty/downloader/vq0;Lcom/shabakaty/downloader/tm1;)Ljava/util/Collection;
    .locals 5
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

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/rb2;->d:Lcom/shabakaty/downloader/ag2;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/rb2;->h()[Lcom/shabakaty/downloader/mr2;

    move-result-object v1

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/ls3;->e(Lcom/shabakaty/downloader/vq0;Lcom/shabakaty/downloader/tm1;)Ljava/util/Collection;

    move-result-object v0

    .line 2
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    .line 3
    invoke-interface {v4, p1, p2}, Lcom/shabakaty/downloader/ls3;->e(Lcom/shabakaty/downloader/vq0;Lcom/shabakaty/downloader/tm1;)Ljava/util/Collection;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/z02;->c(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/c31;->r:Lcom/shabakaty/downloader/c31;

    :cond_1
    return-object v0
.end method

.method public f()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/rb2;->h()[Lcom/shabakaty/downloader/mr2;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/id;->N([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/bp;->k(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/rb2;->d:Lcom/shabakaty/downloader/ag2;

    .line 3
    invoke-virtual {v1}, Lcom/shabakaty/downloader/cg2;->f()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-object v0
.end method

.method public g(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Lcom/shabakaty/downloader/g30;
    .locals 6

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/rb2;->i(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/rb2;->d:Lcom/shabakaty/downloader/ag2;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, p1, v1}, Lcom/shabakaty/downloader/ag2;->v(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/q62;)Lcom/shabakaty/downloader/q20;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/rb2;->h()[Lcom/shabakaty/downloader/mr2;

    move-result-object v0

    const/4 v2, 0x0

    .line 5
    array-length v3, v0

    :cond_1
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    .line 6
    invoke-interface {v4, p1, p2}, Lcom/shabakaty/downloader/ls3;->g(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Lcom/shabakaty/downloader/g30;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 7
    instance-of v5, v4, Lcom/shabakaty/downloader/h30;

    if-eqz v5, :cond_2

    move-object v5, v4

    check-cast v5, Lcom/shabakaty/downloader/h30;

    invoke-interface {v5}, Lcom/shabakaty/downloader/ir2;->S()Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v1, :cond_1

    move-object v1, v4

    goto :goto_0

    :cond_2
    move-object v1, v4

    :cond_3
    return-object v1
.end method

.method public final h()[Lcom/shabakaty/downloader/mr2;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/rb2;->e:Lcom/shabakaty/downloader/d03;

    sget-object v1, Lcom/shabakaty/downloader/rb2;->f:[Lcom/shabakaty/downloader/jd2;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/z02;->i(Lcom/shabakaty/downloader/d03;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/mr2;

    return-object v0
.end method

.method public i(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/rb2;->b:Lcom/shabakaty/downloader/bg2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/y72;->n:Lcom/shabakaty/downloader/nl2;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/rb2;->c:Lcom/shabakaty/downloader/yf2;

    invoke-static {v0, p2, v1, p1}, Lcom/shabakaty/downloader/nh3;->G(Lcom/shabakaty/downloader/nl2;Lcom/shabakaty/downloader/ll2;Lcom/shabakaty/downloader/k93;Lcom/shabakaty/downloader/hw2;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/rb2;->c:Lcom/shabakaty/downloader/yf2;

    const-string v1, "scope for "

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
