.class public final Lcom/shabakaty/downloader/od2;
.super Ljava/lang/Object;
.source "KTypeImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/ld2;


# static fields
.field public static final synthetic d:[Lcom/shabakaty/downloader/jd2;
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
.field public final a:Lcom/shabakaty/downloader/qe2;

.field public final b:Lcom/shabakaty/downloader/cq3$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/cq3$a<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/shabakaty/downloader/cq3$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/shabakaty/downloader/od2;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/shabakaty/downloader/jd2;

    .line 1
    new-instance v2, Lcom/shabakaty/downloader/di3;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v3

    const-string v4, "classifier"

    const-string v5, "getClassifier()Lkotlin/reflect/KClassifier;"

    invoke-direct {v2, v3, v4, v5}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2
    new-instance v2, Lcom/shabakaty/downloader/di3;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v0

    const-string v3, "arguments"

    const-string v4, "getArguments()Ljava/util/List;"

    invoke-direct {v2, v0, v3, v4}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/shabakaty/downloader/od2;->d:[Lcom/shabakaty/downloader/jd2;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/rm1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qe2;",
            "Lcom/shabakaty/downloader/rm1<",
            "+",
            "Ljava/lang/reflect/Type;",
            ">;)V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/od2;->a:Lcom/shabakaty/downloader/qe2;

    .line 3
    instance-of p1, p2, Lcom/shabakaty/downloader/cq3$a;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, Lcom/shabakaty/downloader/cq3$a;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lcom/shabakaty/downloader/cq3;->c(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/cq3$a;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, p1

    :goto_1
    iput-object v0, p0, Lcom/shabakaty/downloader/od2;->b:Lcom/shabakaty/downloader/cq3$a;

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/od2$b;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/od2$b;-><init>(Lcom/shabakaty/downloader/od2;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/cq3;->c(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/cq3$a;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/od2;->c:Lcom/shabakaty/downloader/cq3$a;

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/od2$a;

    invoke-direct {p1, p0, p2}, Lcom/shabakaty/downloader/od2$a;-><init>(Lcom/shabakaty/downloader/od2;Lcom/shabakaty/downloader/rm1;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/cq3;->c(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/cq3$a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/mc2;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/shabakaty/downloader/q20;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/q20;

    invoke-static {v0}, Lcom/shabakaty/downloader/ty4;->h(Lcom/shabakaty/downloader/q20;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/m50;->s0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/qt4;

    if-nez p1, :cond_1

    new-instance p1, Lcom/shabakaty/downloader/ic2;

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/ic2;-><init>(Ljava/lang/Class;)V

    return-object p1

    :cond_1
    invoke-interface {p1}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object p1

    const-string v0, "type.arguments.singleOrN\u2026return KClassImpl(jClass)"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/od2;->a(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/mc2;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/ic2;

    invoke-static {p1}, Lcom/shabakaty/downloader/nh3;->o(Lcom/shabakaty/downloader/mc2;)Lcom/shabakaty/downloader/gc2;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/md0;->s(Lcom/shabakaty/downloader/gc2;)Ljava/lang/Class;

    move-result-object p1

    const-string v1, "<this>"

    .line 8
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 9
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 10
    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/ic2;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 11
    :cond_2
    new-instance p1, Lcom/shabakaty/downloader/me2;

    const-string v0, "Cannot determine classifier for array element type: "

    invoke-static {v0, p0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/me2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_3
    invoke-static {p1}, Lcom/shabakaty/downloader/eu4;->h(Lcom/shabakaty/downloader/qe2;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 13
    new-instance p1, Lcom/shabakaty/downloader/ic2;

    sget-object v1, Lcom/shabakaty/downloader/qo3;->a:Ljava/util/List;

    .line 14
    sget-object v1, Lcom/shabakaty/downloader/qo3;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 15
    :goto_0
    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/ic2;-><init>(Ljava/lang/Class;)V

    return-object p1

    .line 16
    :cond_5
    new-instance p1, Lcom/shabakaty/downloader/ic2;

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/ic2;-><init>(Ljava/lang/Class;)V

    return-object p1

    .line 17
    :cond_6
    instance-of p1, v0, Lcom/shabakaty/downloader/kt4;

    if-eqz p1, :cond_7

    new-instance p1, Lcom/shabakaty/downloader/qd2;

    check-cast v0, Lcom/shabakaty/downloader/kt4;

    invoke-direct {p1, v2, v0}, Lcom/shabakaty/downloader/qd2;-><init>(Lcom/shabakaty/downloader/rd2;Lcom/shabakaty/downloader/kt4;)V

    return-object p1

    .line 18
    :cond_7
    instance-of p1, v0, Lcom/shabakaty/downloader/hs4;

    if-nez p1, :cond_8

    return-object v2

    :cond_8
    new-instance p1, Lcom/shabakaty/downloader/c03;

    const-string v0, "An operation is not implemented: "

    const-string v1, "Type alias classifiers are not yet supported"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/c03;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()Lcom/shabakaty/downloader/mc2;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/od2;->c:Lcom/shabakaty/downloader/cq3$a;

    sget-object v1, Lcom/shabakaty/downloader/od2;->d:[Lcom/shabakaty/downloader/jd2;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/cq3$a;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/mc2;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/od2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/od2;->a:Lcom/shabakaty/downloader/qe2;

    check-cast p1, Lcom/shabakaty/downloader/od2;

    iget-object p1, p1, Lcom/shabakaty/downloader/od2;->a:Lcom/shabakaty/downloader/qe2;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/od2;->a:Lcom/shabakaty/downloader/qe2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qe2;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/hq3;->a:Lcom/shabakaty/downloader/hq3;

    iget-object v0, p0, Lcom/shabakaty/downloader/od2;->a:Lcom/shabakaty/downloader/qe2;

    invoke-static {v0}, Lcom/shabakaty/downloader/hq3;->e(Lcom/shabakaty/downloader/qe2;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
