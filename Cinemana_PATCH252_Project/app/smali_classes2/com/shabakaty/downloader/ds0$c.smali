.class public final Lcom/shabakaty/downloader/ds0$c;
.super Ljava/lang/Object;
.source "DeserializedMemberScope.kt"

# interfaces
.implements Lcom/shabakaty/downloader/ds0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ds0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# static fields
.field public static final synthetic j:[Lcom/shabakaty/downloader/jd2;
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
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/hw2;",
            "[B>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/hw2;",
            "[B>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/hw2;",
            "[B>;"
        }
    .end annotation
.end field

.field public final d:Lcom/shabakaty/downloader/qr2;
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

.field public final e:Lcom/shabakaty/downloader/qr2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/qr2<",
            "Lcom/shabakaty/downloader/hw2;",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/yh3;",
            ">;>;"
        }
    .end annotation
.end field

.field public final f:Lcom/shabakaty/downloader/rr2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/rr2<",
            "Lcom/shabakaty/downloader/hw2;",
            "Lcom/shabakaty/downloader/hs4;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lcom/shabakaty/downloader/d03;

.field public final h:Lcom/shabakaty/downloader/d03;

.field public final synthetic i:Lcom/shabakaty/downloader/ds0;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/shabakaty/downloader/ds0$c;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/shabakaty/downloader/jd2;

    .line 1
    new-instance v2, Lcom/shabakaty/downloader/di3;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v3

    const-string v4, "functionNames"

    const-string v5, "getFunctionNames()Ljava/util/Set;"

    invoke-direct {v2, v3, v4, v5}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2
    new-instance v2, Lcom/shabakaty/downloader/di3;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v0

    const-string v3, "variableNames"

    const-string v4, "getVariableNames()Ljava/util/Set;"

    invoke-direct {v2, v0, v3, v4}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/shabakaty/downloader/ds0$c;->j:[Lcom/shabakaty/downloader/jd2;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/ds0;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/qi3;",
            ">;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/vi3;",
            ">;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/zi3;",
            ">;)V"
        }
    .end annotation

    const-string v0, "functionList"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "propertyList"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeAliasList"

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ds0$c;->i:Lcom/shabakaty/downloader/ds0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4
    move-object v2, v1

    check-cast v2, Lcom/shabakaty/downloader/es2;

    .line 5
    iget-object v3, p1, Lcom/shabakaty/downloader/ds0;->b:Lcom/shabakaty/downloader/rr0;

    .line 6
    iget-object v3, v3, Lcom/shabakaty/downloader/rr0;->b:Lcom/shabakaty/downloader/jw2;

    .line 7
    check-cast v2, Lcom/shabakaty/downloader/qi3;

    .line 8
    iget v2, v2, Lcom/shabakaty/downloader/qi3;->w:I

    .line 9
    invoke-static {v3, v2}, Lcom/shabakaty/downloader/rm3;->i(Lcom/shabakaty/downloader/jw2;I)Lcom/shabakaty/downloader/hw2;

    move-result-object v2

    .line 10
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 11
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_0
    check-cast v3, Ljava/util/List;

    .line 14
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ds0$c;->h(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ds0$c;->a:Ljava/util/Map;

    .line 16
    iget-object p1, p0, Lcom/shabakaty/downloader/ds0$c;->i:Lcom/shabakaty/downloader/ds0;

    .line 17
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 18
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 19
    move-object v1, v0

    check-cast v1, Lcom/shabakaty/downloader/es2;

    .line 20
    iget-object v2, p1, Lcom/shabakaty/downloader/ds0;->b:Lcom/shabakaty/downloader/rr0;

    .line 21
    iget-object v2, v2, Lcom/shabakaty/downloader/rr0;->b:Lcom/shabakaty/downloader/jw2;

    .line 22
    check-cast v1, Lcom/shabakaty/downloader/vi3;

    .line 23
    iget v1, v1, Lcom/shabakaty/downloader/vi3;->w:I

    .line 24
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/rm3;->i(Lcom/shabakaty/downloader/jw2;I)Lcom/shabakaty/downloader/hw2;

    move-result-object v1

    .line 25
    invoke-virtual {p2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 26
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 27
    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_2
    check-cast v2, Ljava/util/List;

    .line 29
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 30
    :cond_3
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/ds0$c;->h(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ds0$c;->b:Ljava/util/Map;

    .line 31
    iget-object p1, p0, Lcom/shabakaty/downloader/ds0$c;->i:Lcom/shabakaty/downloader/ds0;

    .line 32
    iget-object p1, p1, Lcom/shabakaty/downloader/ds0;->b:Lcom/shabakaty/downloader/rr0;

    .line 33
    iget-object p1, p1, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 34
    iget-object p1, p1, Lcom/shabakaty/downloader/or0;->c:Lcom/shabakaty/downloader/qr0;

    .line 35
    invoke-interface {p1}, Lcom/shabakaty/downloader/qr0;->f()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 36
    iget-object p1, p0, Lcom/shabakaty/downloader/ds0$c;->i:Lcom/shabakaty/downloader/ds0;

    .line 37
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 38
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    .line 39
    move-object v0, p4

    check-cast v0, Lcom/shabakaty/downloader/es2;

    .line 40
    iget-object v1, p1, Lcom/shabakaty/downloader/ds0;->b:Lcom/shabakaty/downloader/rr0;

    .line 41
    iget-object v1, v1, Lcom/shabakaty/downloader/rr0;->b:Lcom/shabakaty/downloader/jw2;

    .line 42
    check-cast v0, Lcom/shabakaty/downloader/zi3;

    .line 43
    iget v0, v0, Lcom/shabakaty/downloader/zi3;->v:I

    .line 44
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/rm3;->i(Lcom/shabakaty/downloader/jw2;I)Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    .line 45
    invoke-virtual {p2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_4
    check-cast v1, Ljava/util/List;

    .line 49
    invoke-interface {v1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 50
    :cond_5
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/ds0$c;->h(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    goto :goto_3

    .line 51
    :cond_6
    sget-object p1, Lcom/shabakaty/downloader/x21;->r:Lcom/shabakaty/downloader/x21;

    .line 52
    :goto_3
    iput-object p1, p0, Lcom/shabakaty/downloader/ds0$c;->c:Ljava/util/Map;

    .line 53
    iget-object p1, p0, Lcom/shabakaty/downloader/ds0$c;->i:Lcom/shabakaty/downloader/ds0;

    .line 54
    iget-object p1, p1, Lcom/shabakaty/downloader/ds0;->b:Lcom/shabakaty/downloader/rr0;

    .line 55
    iget-object p1, p1, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 56
    iget-object p1, p1, Lcom/shabakaty/downloader/or0;->a:Lcom/shabakaty/downloader/md4;

    .line 57
    new-instance p2, Lcom/shabakaty/downloader/ds0$c$c;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/ds0$c$c;-><init>(Lcom/shabakaty/downloader/ds0$c;)V

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/md4;->h(Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/qr2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ds0$c;->d:Lcom/shabakaty/downloader/qr2;

    .line 58
    iget-object p1, p0, Lcom/shabakaty/downloader/ds0$c;->i:Lcom/shabakaty/downloader/ds0;

    .line 59
    iget-object p1, p1, Lcom/shabakaty/downloader/ds0;->b:Lcom/shabakaty/downloader/rr0;

    .line 60
    iget-object p1, p1, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 61
    iget-object p1, p1, Lcom/shabakaty/downloader/or0;->a:Lcom/shabakaty/downloader/md4;

    .line 62
    new-instance p2, Lcom/shabakaty/downloader/ds0$c$d;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/ds0$c$d;-><init>(Lcom/shabakaty/downloader/ds0$c;)V

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/md4;->h(Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/qr2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ds0$c;->e:Lcom/shabakaty/downloader/qr2;

    .line 63
    iget-object p1, p0, Lcom/shabakaty/downloader/ds0$c;->i:Lcom/shabakaty/downloader/ds0;

    .line 64
    iget-object p1, p1, Lcom/shabakaty/downloader/ds0;->b:Lcom/shabakaty/downloader/rr0;

    .line 65
    iget-object p1, p1, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 66
    iget-object p1, p1, Lcom/shabakaty/downloader/or0;->a:Lcom/shabakaty/downloader/md4;

    .line 67
    new-instance p2, Lcom/shabakaty/downloader/ds0$c$e;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/ds0$c$e;-><init>(Lcom/shabakaty/downloader/ds0$c;)V

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/md4;->g(Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/rr2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ds0$c;->f:Lcom/shabakaty/downloader/rr2;

    .line 68
    iget-object p1, p0, Lcom/shabakaty/downloader/ds0$c;->i:Lcom/shabakaty/downloader/ds0;

    .line 69
    iget-object p2, p1, Lcom/shabakaty/downloader/ds0;->b:Lcom/shabakaty/downloader/rr0;

    .line 70
    iget-object p2, p2, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 71
    iget-object p2, p2, Lcom/shabakaty/downloader/or0;->a:Lcom/shabakaty/downloader/md4;

    .line 72
    new-instance p3, Lcom/shabakaty/downloader/ds0$c$b;

    invoke-direct {p3, p0, p1}, Lcom/shabakaty/downloader/ds0$c$b;-><init>(Lcom/shabakaty/downloader/ds0$c;Lcom/shabakaty/downloader/ds0;)V

    invoke-interface {p2, p3}, Lcom/shabakaty/downloader/md4;->f(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/d03;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ds0$c;->g:Lcom/shabakaty/downloader/d03;

    .line 73
    iget-object p1, p0, Lcom/shabakaty/downloader/ds0$c;->i:Lcom/shabakaty/downloader/ds0;

    .line 74
    iget-object p2, p1, Lcom/shabakaty/downloader/ds0;->b:Lcom/shabakaty/downloader/rr0;

    .line 75
    iget-object p2, p2, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 76
    iget-object p2, p2, Lcom/shabakaty/downloader/or0;->a:Lcom/shabakaty/downloader/md4;

    .line 77
    new-instance p3, Lcom/shabakaty/downloader/ds0$c$f;

    invoke-direct {p3, p0, p1}, Lcom/shabakaty/downloader/ds0$c$f;-><init>(Lcom/shabakaty/downloader/ds0$c;Lcom/shabakaty/downloader/ds0;)V

    invoke-interface {p2, p3}, Lcom/shabakaty/downloader/md4;->f(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/d03;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ds0$c;->h:Lcom/shabakaty/downloader/d03;

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
    iget-object v0, p0, Lcom/shabakaty/downloader/ds0$c;->g:Lcom/shabakaty/downloader/d03;

    sget-object v1, Lcom/shabakaty/downloader/ds0$c;->j:[Lcom/shabakaty/downloader/jd2;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/z02;->i(Lcom/shabakaty/downloader/d03;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public b(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;
    .locals 0
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

    const-string p2, "name"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ds0$c;->c()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    return-object p1

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/shabakaty/downloader/ds0$c;->e:Lcom/shabakaty/downloader/qr2;

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
    iget-object v0, p0, Lcom/shabakaty/downloader/ds0$c;->h:Lcom/shabakaty/downloader/d03;

    sget-object v1, Lcom/shabakaty/downloader/ds0$c;->j:[Lcom/shabakaty/downloader/jd2;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/z02;->i(Lcom/shabakaty/downloader/d03;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public d(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;
    .locals 0
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

    const-string p2, "name"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ds0$c;->a()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    return-object p1

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/shabakaty/downloader/ds0$c;->d:Lcom/shabakaty/downloader/qr2;

    check-cast p2, Lcom/shabakaty/downloader/yj2$m;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/yj2$m;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public e(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/hs4;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ds0$c;->f:Lcom/shabakaty/downloader/rr2;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/hs4;

    return-object p1
.end method

.method public f()Ljava/util/Set;
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
    iget-object v0, p0, Lcom/shabakaty/downloader/ds0$c;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/util/Collection;Lcom/shabakaty/downloader/vq0;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/ll2;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/qm0;",
            ">;",
            "Lcom/shabakaty/downloader/vq0;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/hw2;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/shabakaty/downloader/ll2;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/vq0;->c:Lcom/shabakaty/downloader/vq0$a;

    .line 2
    sget v0, Lcom/shabakaty/downloader/vq0;->j:I

    .line 3
    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/vq0;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ds0$c;->c()Ljava/util/Set;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/hw2;

    .line 7
    invoke-interface {p3, v2}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {p0, v2, p4}, Lcom/shabakaty/downloader/ds0$c;->b(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 9
    :cond_1
    sget-object v0, Lcom/shabakaty/downloader/hr2;->r:Lcom/shabakaty/downloader/hr2;

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j50;->P(Ljava/util/List;Ljava/util/Comparator;)V

    .line 10
    invoke-interface {p1, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 11
    :cond_2
    sget-object v0, Lcom/shabakaty/downloader/vq0;->c:Lcom/shabakaty/downloader/vq0$a;

    .line 12
    sget v0, Lcom/shabakaty/downloader/vq0;->i:I

    .line 13
    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/vq0;->a(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 14
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ds0$c;->a()Ljava/util/Set;

    move-result-object p2

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/hw2;

    .line 17
    invoke-interface {p3, v1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 18
    invoke-virtual {p0, v1, p4}, Lcom/shabakaty/downloader/ds0$c;->d(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 19
    :cond_4
    sget-object p2, Lcom/shabakaty/downloader/hr2;->r:Lcom/shabakaty/downloader/hr2;

    invoke-static {v0, p2}, Lcom/shabakaty/downloader/j50;->P(Ljava/util/List;Ljava/util/Comparator;)V

    .line 20
    invoke-interface {p1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_5
    return-void
.end method

.method public final h(Ljava/util/Map;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/hw2;",
            "+",
            "Ljava/util/Collection<",
            "+",
            "Lcom/shabakaty/downloader/j0;",
            ">;>;)",
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/hw2;",
            "[B>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Lcom/shabakaty/downloader/kf5;->i(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 6
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 8
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v1, v5}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 10
    check-cast v5, Lcom/shabakaty/downloader/j0;

    .line 11
    invoke-interface {v5}, Lcom/shabakaty/downloader/es2;->e()I

    move-result v6

    .line 12
    invoke-static {v6}, Lcom/shabakaty/downloader/w40;->g(I)I

    move-result v7

    add-int/2addr v7, v6

    const/16 v8, 0x1000

    if-le v7, v8, :cond_0

    const/16 v7, 0x1000

    .line 13
    :cond_0
    invoke-static {v3, v7}, Lcom/shabakaty/downloader/w40;->k(Ljava/io/OutputStream;I)Lcom/shabakaty/downloader/w40;

    move-result-object v7

    .line 14
    invoke-virtual {v7, v6}, Lcom/shabakaty/downloader/w40;->y(I)V

    .line 15
    invoke-interface {v5, v7}, Lcom/shabakaty/downloader/es2;->f(Lcom/shabakaty/downloader/w40;)V

    .line 16
    invoke-virtual {v7}, Lcom/shabakaty/downloader/w40;->j()V

    .line 17
    sget-object v5, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method
