.class public final Lcom/shabakaty/downloader/se2;
.super Ljava/lang/Object;
.source "KotlinTypeFactory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/se2$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/se2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/se2;

    invoke-direct {v0}, Lcom/shabakaty/downloader/se2;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/se2;->a:Lcom/shabakaty/downloader/se2;

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/se2$a;->r:Lcom/shabakaty/downloader/se2$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lcom/shabakaty/downloader/se2;Lcom/shabakaty/downloader/ts4;Lcom/shabakaty/downloader/ve2;Ljava/util/List;)Lcom/shabakaty/downloader/se2$b;
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    move-object p0, p1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2, p0}, Lcom/shabakaty/downloader/ve2;->f(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/g30;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    instance-of v0, p0, Lcom/shabakaty/downloader/hs4;

    if-eqz v0, :cond_2

    .line 4
    new-instance p2, Lcom/shabakaty/downloader/se2$b;

    check-cast p0, Lcom/shabakaty/downloader/hs4;

    invoke-static {p0, p3}, Lcom/shabakaty/downloader/se2;->b(Lcom/shabakaty/downloader/hs4;Ljava/util/List;)Lcom/shabakaty/downloader/b74;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcom/shabakaty/downloader/se2$b;-><init>(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/ts4;)V

    goto :goto_1

    .line 5
    :cond_2
    invoke-interface {p0}, Lcom/shabakaty/downloader/g30;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/shabakaty/downloader/ts4;->c(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/ts4;

    move-result-object p0

    const-string p2, "descriptor.typeConstruct\u2026refine(kotlinTypeRefiner)"

    invoke-static {p0, p2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance p2, Lcom/shabakaty/downloader/se2$b;

    invoke-direct {p2, p1, p0}, Lcom/shabakaty/downloader/se2$b;-><init>(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/ts4;)V

    :goto_1
    move-object p1, p2

    :goto_2
    return-object p1
.end method

.method public static final b(Lcom/shabakaty/downloader/hs4;Ljava/util/List;)Lcom/shabakaty/downloader/b74;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/hs4;",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/qt4;",
            ">;)",
            "Lcom/shabakaty/downloader/b74;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Lcom/shabakaty/downloader/is4;

    sget-object v0, Lcom/shabakaty/downloader/ks4$a;->a:Lcom/shabakaty/downloader/ks4$a;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/shabakaty/downloader/is4;-><init>(Lcom/shabakaty/downloader/ks4;Z)V

    .line 2
    invoke-interface {p0}, Lcom/shabakaty/downloader/g30;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/ts4;->e()Ljava/util/List;

    move-result-object v0

    const-string v2, "typeAliasDescriptor.typeConstructor.parameters"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Lcom/shabakaty/downloader/kt4;

    .line 6
    invoke-interface {v3}, Lcom/shabakaty/downloader/kt4;->a()Lcom/shabakaty/downloader/kt4;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v2, p1}, Lcom/shabakaty/downloader/m50;->D0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/vm2;->u(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v6

    .line 8
    new-instance v0, Lcom/shabakaty/downloader/js4;

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v2, v0

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/shabakaty/downloader/js4;-><init>(Lcom/shabakaty/downloader/js4;Lcom/shabakaty/downloader/hs4;Ljava/util/List;Ljava/util/Map;Lcom/shabakaty/downloader/nn0;)V

    .line 9
    sget p0, Lcom/shabakaty/downloader/d9;->a:I

    sget-object v3, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, v0

    .line 10
    invoke-virtual/range {v1 .. v6}, Lcom/shabakaty/downloader/is4;->d(Lcom/shabakaty/downloader/js4;Lcom/shabakaty/downloader/d9;ZIZ)Lcom/shabakaty/downloader/b74;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/b74;)Lcom/shabakaty/downloader/qw4;
    .locals 1

    const-string v0, "lowerBound"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upperBound"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/he1;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/he1;-><init>(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/b74;)V

    return-object v0
.end method

.method public static final d(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/r22;Z)Lcom/shabakaty/downloader/b74;
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    const/4 v1, 0x1

    const-string v2, "Scope for integer literal type"

    .line 2
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/d51;->c(Ljava/lang/String;Z)Lcom/shabakaty/downloader/mr2;

    move-result-object v1

    .line 3
    invoke-static {p0, p1, v0, p2, v1}, Lcom/shabakaty/downloader/se2;->h(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/ts4;Ljava/util/List;ZLcom/shabakaty/downloader/mr2;)Lcom/shabakaty/downloader/b74;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/q20;Ljava/util/List;)Lcom/shabakaty/downloader/b74;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/d9;",
            "Lcom/shabakaty/downloader/q20;",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/qt4;",
            ">;)",
            "Lcom/shabakaty/downloader/b74;"
        }
    .end annotation

    const-string v0, "annotations"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/g30;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object v2

    const-string p1, "descriptor.typeConstructor"

    invoke-static {v2, p1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x10

    move-object v1, p0

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/shabakaty/downloader/se2;->g(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/ts4;Ljava/util/List;ZLcom/shabakaty/downloader/ve2;I)Lcom/shabakaty/downloader/b74;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/ts4;Ljava/util/List;ZLcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/b74;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/d9;",
            "Lcom/shabakaty/downloader/ts4;",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/qt4;",
            ">;Z",
            "Lcom/shabakaty/downloader/ve2;",
            ")",
            "Lcom/shabakaty/downloader/b74;"
        }
    .end annotation

    const-string v0, "annotations"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructor"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/d9;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    invoke-interface {p1}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-interface {p0}, Lcom/shabakaty/downloader/g30;->x()Lcom/shabakaty/downloader/b74;

    move-result-object p0

    const-string p1, "constructor.declarationDescriptor!!.defaultType"

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v0

    .line 4
    instance-of v1, v0, Lcom/shabakaty/downloader/kt4;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/shabakaty/downloader/kt4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/g30;->x()Lcom/shabakaty/downloader/b74;

    move-result-object p4

    invoke-virtual {p4}, Lcom/shabakaty/downloader/qe2;->s()Lcom/shabakaty/downloader/mr2;

    move-result-object p4

    :goto_0
    move-object v4, p4

    goto/16 :goto_1

    .line 5
    :cond_1
    instance-of v1, v0, Lcom/shabakaty/downloader/q20;

    if-eqz v1, :cond_8

    if-nez p4, :cond_2

    .line 6
    invoke-static {v0}, Lcom/shabakaty/downloader/hr0;->j(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/nu2;

    move-result-object p4

    invoke-static {p4}, Lcom/shabakaty/downloader/hr0;->i(Lcom/shabakaty/downloader/nu2;)Lcom/shabakaty/downloader/ve2;

    sget-object p4, Lcom/shabakaty/downloader/ve2$a;->a:Lcom/shabakaty/downloader/ve2$a;

    .line 7
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "kotlinTypeRefiner"

    const-string v4, "<this>"

    if-eqz v1, :cond_5

    .line 8
    check-cast v0, Lcom/shabakaty/downloader/q20;

    .line 9
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    instance-of v1, v0, Lcom/shabakaty/downloader/iu2;

    if-eqz v1, :cond_3

    move-object v2, v0

    check-cast v2, Lcom/shabakaty/downloader/iu2;

    :cond_3
    if-nez v2, :cond_4

    invoke-interface {v0}, Lcom/shabakaty/downloader/q20;->M0()Lcom/shabakaty/downloader/mr2;

    move-result-object p4

    const-string v0, "this.unsubstitutedMemberScope"

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v2, p4}, Lcom/shabakaty/downloader/iu2;->O(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/mr2;

    move-result-object p4

    goto :goto_0

    .line 12
    :cond_5
    check-cast v0, Lcom/shabakaty/downloader/q20;

    .line 13
    sget-object v1, Lcom/shabakaty/downloader/ws4;->b:Lcom/shabakaty/downloader/ws4$a;

    invoke-virtual {v1, p1, p2}, Lcom/shabakaty/downloader/ws4$a;->b(Lcom/shabakaty/downloader/ts4;Ljava/util/List;)Lcom/shabakaty/downloader/tt4;

    move-result-object v1

    .line 14
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "typeSubstitution"

    invoke-static {v1, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    instance-of v3, v0, Lcom/shabakaty/downloader/iu2;

    if-eqz v3, :cond_6

    move-object v2, v0

    check-cast v2, Lcom/shabakaty/downloader/iu2;

    :cond_6
    if-nez v2, :cond_7

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/q20;->A0(Lcom/shabakaty/downloader/tt4;)Lcom/shabakaty/downloader/mr2;

    move-result-object p4

    const-string v0, "this.getMemberScope(\n   \u2026ubstitution\n            )"

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    invoke-virtual {v2, v1, p4}, Lcom/shabakaty/downloader/iu2;->N(Lcom/shabakaty/downloader/tt4;Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/mr2;

    move-result-object p4

    goto :goto_0

    .line 17
    :cond_8
    instance-of p4, v0, Lcom/shabakaty/downloader/hs4;

    if-eqz p4, :cond_9

    check-cast v0, Lcom/shabakaty/downloader/hs4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object p4

    const-string v0, "Scope for abbreviation: "

    invoke-static {v0, p4}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x1

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/d51;->c(Ljava/lang/String;Z)Lcom/shabakaty/downloader/mr2;

    move-result-object p4

    goto/16 :goto_0

    .line 18
    :cond_9
    instance-of p4, p1, Lcom/shabakaty/downloader/g32;

    if-eqz p4, :cond_a

    .line 19
    move-object p4, p1

    check-cast p4, Lcom/shabakaty/downloader/g32;

    .line 20
    iget-object p4, p4, Lcom/shabakaty/downloader/g32;->b:Ljava/util/LinkedHashSet;

    const-string v0, "member scope for intersection type"

    invoke-static {v0, p4}, Lcom/shabakaty/downloader/bt4$a;->a(Ljava/lang/String;Ljava/util/Collection;)Lcom/shabakaty/downloader/mr2;

    move-result-object p4

    goto/16 :goto_0

    .line 21
    :goto_1
    new-instance v5, Lcom/shabakaty/downloader/se2$c;

    invoke-direct {v5, p1, p2, p0, p3}, Lcom/shabakaty/downloader/se2$c;-><init>(Lcom/shabakaty/downloader/ts4;Ljava/util/List;Lcom/shabakaty/downloader/d9;Z)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/shabakaty/downloader/se2;->i(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/ts4;Ljava/util/List;ZLcom/shabakaty/downloader/mr2;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/b74;

    move-result-object p0

    return-object p0

    .line 22
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported classifier: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " for constructor: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic g(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/ts4;Ljava/util/List;ZLcom/shabakaty/downloader/ve2;I)Lcom/shabakaty/downloader/b74;
    .locals 0

    const/4 p4, 0x0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/se2;->f(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/ts4;Ljava/util/List;ZLcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/b74;

    move-result-object p0

    return-object p0
.end method

.method public static final h(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/ts4;Ljava/util/List;ZLcom/shabakaty/downloader/mr2;)Lcom/shabakaty/downloader/b74;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/d9;",
            "Lcom/shabakaty/downloader/ts4;",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/qt4;",
            ">;Z",
            "Lcom/shabakaty/downloader/mr2;",
            ")",
            "Lcom/shabakaty/downloader/b74;"
        }
    .end annotation

    const-string v0, "annotations"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructor"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "memberScope"

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/c74;

    .line 2
    new-instance v7, Lcom/shabakaty/downloader/se2$d;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/se2$d;-><init>(Lcom/shabakaty/downloader/ts4;Ljava/util/List;Lcom/shabakaty/downloader/d9;ZLcom/shabakaty/downloader/mr2;)V

    move-object v1, v0

    move v4, p3

    move-object v5, p4

    move-object v6, v7

    .line 3
    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/c74;-><init>(Lcom/shabakaty/downloader/ts4;Ljava/util/List;ZLcom/shabakaty/downloader/mr2;Lcom/shabakaty/downloader/tm1;)V

    .line 4
    invoke-interface {p0}, Lcom/shabakaty/downloader/d9;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Lcom/shabakaty/downloader/k8;

    invoke-direct {p1, v0, p0}, Lcom/shabakaty/downloader/k8;-><init>(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/d9;)V

    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method public static final i(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/ts4;Ljava/util/List;ZLcom/shabakaty/downloader/mr2;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/b74;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/d9;",
            "Lcom/shabakaty/downloader/ts4;",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/qt4;",
            ">;Z",
            "Lcom/shabakaty/downloader/mr2;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/ve2;",
            "+",
            "Lcom/shabakaty/downloader/b74;",
            ">;)",
            "Lcom/shabakaty/downloader/b74;"
        }
    .end annotation

    const-string v0, "annotations"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "memberScope"

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refinedTypeFactory"

    invoke-static {p5, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/c74;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/c74;-><init>(Lcom/shabakaty/downloader/ts4;Ljava/util/List;ZLcom/shabakaty/downloader/mr2;Lcom/shabakaty/downloader/tm1;)V

    .line 2
    invoke-interface {p0}, Lcom/shabakaty/downloader/d9;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lcom/shabakaty/downloader/k8;

    invoke-direct {p1, v0, p0}, Lcom/shabakaty/downloader/k8;-><init>(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/d9;)V

    move-object v0, p1

    :goto_0
    return-object v0
.end method
