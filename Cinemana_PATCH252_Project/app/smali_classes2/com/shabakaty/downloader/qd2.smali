.class public final Lcom/shabakaty/downloader/qd2;
.super Ljava/lang/Object;
.source "KTypeParameterImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/pd2;


# static fields
.field public static final synthetic u:[Lcom/shabakaty/downloader/jd2;
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
.field public final r:Lcom/shabakaty/downloader/kt4;

.field public final s:Lcom/shabakaty/downloader/cq3$a;

.field public final t:Lcom/shabakaty/downloader/rd2;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/shabakaty/downloader/jd2;

    .line 1
    new-instance v1, Lcom/shabakaty/downloader/di3;

    const-class v2, Lcom/shabakaty/downloader/qd2;

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v2

    const-string v3, "upperBounds"

    const-string v4, "getUpperBounds()Ljava/util/List;"

    invoke-direct {v1, v2, v3, v4}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/shabakaty/downloader/qd2;->u:[Lcom/shabakaty/downloader/jd2;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/rd2;Lcom/shabakaty/downloader/kt4;)V
    .locals 3

    const-string v0, "descriptor"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/qd2;->r:Lcom/shabakaty/downloader/kt4;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/qd2$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/qd2$a;-><init>(Lcom/shabakaty/downloader/qd2;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/cq3;->c(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/cq3$a;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/qd2;->s:Lcom/shabakaty/downloader/cq3$a;

    if-nez p1, :cond_9

    .line 4
    invoke-interface {p2}, Lcom/shabakaty/downloader/sm0;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object p1

    const-string p2, "descriptor.containingDeclaration"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    instance-of p2, p1, Lcom/shabakaty/downloader/q20;

    if-eqz p2, :cond_0

    .line 6
    check-cast p1, Lcom/shabakaty/downloader/q20;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/qd2;->b(Lcom/shabakaty/downloader/q20;)Lcom/shabakaty/downloader/ic2;

    move-result-object p1

    goto :goto_4

    .line 7
    :cond_0
    instance-of p2, p1, Lcom/shabakaty/downloader/tq;

    if-eqz p2, :cond_8

    .line 8
    move-object p2, p1

    check-cast p2, Lcom/shabakaty/downloader/tq;

    invoke-interface {p2}, Lcom/shabakaty/downloader/sm0;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object p2

    const-string v0, "declaration.containingDeclaration"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    instance-of v0, p2, Lcom/shabakaty/downloader/q20;

    if-eqz v0, :cond_1

    .line 10
    check-cast p2, Lcom/shabakaty/downloader/q20;

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/qd2;->b(Lcom/shabakaty/downloader/q20;)Lcom/shabakaty/downloader/ic2;

    move-result-object p2

    goto :goto_3

    .line 11
    :cond_1
    instance-of p2, p1, Lcom/shabakaty/downloader/cs0;

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    move-object p2, p1

    check-cast p2, Lcom/shabakaty/downloader/cs0;

    goto :goto_0

    :cond_2
    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_7

    .line 12
    invoke-interface {p2}, Lcom/shabakaty/downloader/cs0;->m0()Lcom/shabakaty/downloader/as0;

    move-result-object v1

    .line 13
    instance-of v2, v1, Lcom/shabakaty/downloader/qb2;

    if-nez v2, :cond_3

    move-object v1, v0

    :cond_3
    check-cast v1, Lcom/shabakaty/downloader/qb2;

    if-nez v1, :cond_4

    move-object v1, v0

    goto :goto_1

    .line 14
    :cond_4
    iget-object v1, v1, Lcom/shabakaty/downloader/qb2;->d:Lcom/shabakaty/downloader/he2;

    .line 15
    :goto_1
    instance-of v2, v1, Lcom/shabakaty/downloader/yp3;

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    move-object v0, v1

    :goto_2
    check-cast v0, Lcom/shabakaty/downloader/yp3;

    if-eqz v0, :cond_6

    .line 16
    iget-object p2, v0, Lcom/shabakaty/downloader/yp3;->a:Ljava/lang/Class;

    .line 17
    invoke-static {p2}, Lcom/shabakaty/downloader/md0;->v(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/ic2;

    .line 18
    :goto_3
    new-instance v0, Lcom/shabakaty/downloader/ng0;

    invoke-direct {v0, p2}, Lcom/shabakaty/downloader/ng0;-><init>(Lcom/shabakaty/downloader/oc2;)V

    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-interface {p1, v0, p2}, Lcom/shabakaty/downloader/qm0;->j0(Lcom/shabakaty/downloader/um0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_4
    const-string p2, "when (val declaration = \u2026 $declaration\")\n        }"

    .line 19
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/shabakaty/downloader/rd2;

    goto :goto_5

    .line 20
    :cond_6
    new-instance p1, Lcom/shabakaty/downloader/me2;

    const-string v0, "Container of deserialized member is not resolved: "

    invoke-static {v0, p2}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/me2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_7
    new-instance p2, Lcom/shabakaty/downloader/me2;

    const-string v0, "Non-class callable descriptor must be deserialized: "

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/me2;-><init>(Ljava/lang/String;)V

    throw p2

    .line 22
    :cond_8
    new-instance p2, Lcom/shabakaty/downloader/me2;

    const-string v0, "Unknown type parameter container: "

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/me2;-><init>(Ljava/lang/String;)V

    throw p2

    .line 23
    :cond_9
    :goto_5
    iput-object p1, p0, Lcom/shabakaty/downloader/qd2;->t:Lcom/shabakaty/downloader/rd2;

    return-void
.end method


# virtual methods
.method public final b(Lcom/shabakaty/downloader/q20;)Lcom/shabakaty/downloader/ic2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/q20;",
            ")",
            "Lcom/shabakaty/downloader/ic2<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/ty4;->h(Lcom/shabakaty/downloader/q20;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/shabakaty/downloader/md0;->v(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/shabakaty/downloader/ic2;

    if-eqz v0, :cond_1

    return-object v0

    .line 2
    :cond_1
    new-instance v0, Lcom/shabakaty/downloader/me2;

    invoke-interface {p1}, Lcom/shabakaty/downloader/q20;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object p1

    const-string v1, "Type parameter container is not resolved: "

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/me2;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/qd2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/qd2;->t:Lcom/shabakaty/downloader/rd2;

    check-cast p1, Lcom/shabakaty/downloader/qd2;

    iget-object v1, p1, Lcom/shabakaty/downloader/qd2;->t:Lcom/shabakaty/downloader/rd2;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/qd2;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/shabakaty/downloader/qd2;->getName()Ljava/lang/String;

    move-result-object p1

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

.method public getName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qd2;->r:Lcom/shabakaty/downloader/kt4;

    .line 2
    invoke-interface {v0}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "descriptor.name.asString()"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getUpperBounds()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ld2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qd2;->s:Lcom/shabakaty/downloader/cq3$a;

    sget-object v1, Lcom/shabakaty/downloader/qd2;->u:[Lcom/shabakaty/downloader/jd2;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/cq3$a;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-upperBounds>(...)"

    .line 3
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qd2;->t:Lcom/shabakaty/downloader/rd2;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/shabakaty/downloader/qd2;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public q()Lcom/shabakaty/downloader/td2;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qd2;->r:Lcom/shabakaty/downloader/kt4;

    .line 2
    invoke-interface {v0}, Lcom/shabakaty/downloader/kt4;->q()Lcom/shabakaty/downloader/xz4;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/td2;->t:Lcom/shabakaty/downloader/td2;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/rz2;

    invoke-direct {v0}, Lcom/shabakaty/downloader/rz2;-><init>()V

    throw v0

    .line 4
    :cond_1
    sget-object v0, Lcom/shabakaty/downloader/td2;->s:Lcom/shabakaty/downloader/td2;

    goto :goto_0

    .line 5
    :cond_2
    sget-object v0, Lcom/shabakaty/downloader/td2;->r:Lcom/shabakaty/downloader/td2;

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "typeParameter"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-interface {p0}, Lcom/shabakaty/downloader/pd2;->q()Lcom/shabakaty/downloader/td2;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "out "

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "in "

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :goto_0
    invoke-interface {p0}, Lcom/shabakaty/downloader/pd2;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
