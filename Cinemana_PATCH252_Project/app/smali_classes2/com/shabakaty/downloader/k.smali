.class public abstract Lcom/shabakaty/downloader/k;
.super Ljava/lang/Object;
.source "AbstractBinaryClassAnnotationAndConstantLoader.kt"

# interfaces
.implements Lcom/shabakaty/downloader/l8;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/k$a;,
        Lcom/shabakaty/downloader/k$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/l8<",
        "TA;TC;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/ae2;

.field public final b:Lcom/shabakaty/downloader/qr2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/qr2<",
            "Lcom/shabakaty/downloader/he2;",
            "Lcom/shabakaty/downloader/k$b<",
            "TA;TC;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/ae2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/k;->a:Lcom/shabakaty/downloader/ae2;

    .line 3
    new-instance p2, Lcom/shabakaty/downloader/k$d;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/k$d;-><init>(Lcom/shabakaty/downloader/k;)V

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/md4;->h(Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/qr2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/k;->b:Lcom/shabakaty/downloader/qr2;

    return-void
.end method

.method public static final k(Lcom/shabakaty/downloader/k;Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/s94;Ljava/util/List;)Lcom/shabakaty/downloader/he2$a;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/ba4;->a:Lcom/shabakaty/downloader/ba4;

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/ba4;->b:Ljava/util/Set;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/shabakaty/downloader/k;->s(Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/s94;Ljava/util/List;)Lcom/shabakaty/downloader/he2$a;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static synthetic m(Lcom/shabakaty/downloader/k;Lcom/shabakaty/downloader/gj3;Lcom/shabakaty/downloader/or2;ZZLjava/lang/Boolean;ZILjava/lang/Object;)Ljava/util/List;
    .locals 9

    and-int/lit8 v0, p7, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    move v5, p3

    :goto_0
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    move v6, p4

    :goto_1
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move-object v7, v0

    goto :goto_2

    :cond_2
    move-object v7, p5

    :goto_2
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_3

    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    move v8, p6

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 1
    invoke-virtual/range {v2 .. v8}, Lcom/shabakaty/downloader/k;->l(Lcom/shabakaty/downloader/gj3;Lcom/shabakaty/downloader/or2;ZZLjava/lang/Boolean;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic o(Lcom/shabakaty/downloader/k;Lcom/shabakaty/downloader/es2;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;Lcom/shabakaty/downloader/i8;ZILjava/lang/Object;)Lcom/shabakaty/downloader/or2;
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    move v5, p5

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/shabakaty/downloader/k;->n(Lcom/shabakaty/downloader/es2;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;Lcom/shabakaty/downloader/i8;Z)Lcom/shabakaty/downloader/or2;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Lcom/shabakaty/downloader/k;Lcom/shabakaty/downloader/vi3;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;ZZZILjava/lang/Object;)Lcom/shabakaty/downloader/or2;
    .locals 9

    and-int/lit8 v0, p7, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    move v6, p4

    :goto_0
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    move v7, p5

    :goto_1
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    move v8, p6

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 1
    invoke-virtual/range {v2 .. v8}, Lcom/shabakaty/downloader/k;->p(Lcom/shabakaty/downloader/vi3;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;ZZZ)Lcom/shabakaty/downloader/or2;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/gj3;Lcom/shabakaty/downloader/es2;Lcom/shabakaty/downloader/i8;ILcom/shabakaty/downloader/cj3;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/gj3;",
            "Lcom/shabakaty/downloader/es2;",
            "Lcom/shabakaty/downloader/i8;",
            "I",
            "Lcom/shabakaty/downloader/cj3;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callableProto"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p5, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v3, p1, Lcom/shabakaty/downloader/gj3;->a:Lcom/shabakaty/downloader/jw2;

    .line 2
    iget-object v4, p1, Lcom/shabakaty/downloader/gj3;->b:Lcom/shabakaty/downloader/bu4;

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v5, p3

    .line 3
    invoke-static/range {v1 .. v8}, Lcom/shabakaty/downloader/k;->o(Lcom/shabakaty/downloader/k;Lcom/shabakaty/downloader/es2;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;Lcom/shabakaty/downloader/i8;ZILjava/lang/Object;)Lcom/shabakaty/downloader/or2;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 4
    instance-of p5, p2, Lcom/shabakaty/downloader/qi3;

    const/4 v0, 0x1

    if-eqz p5, :cond_0

    check-cast p2, Lcom/shabakaty/downloader/qi3;

    invoke-static {p2}, Lcom/shabakaty/downloader/bp;->m(Lcom/shabakaty/downloader/qi3;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    .line 5
    :cond_0
    instance-of p5, p2, Lcom/shabakaty/downloader/vi3;

    if-eqz p5, :cond_1

    check-cast p2, Lcom/shabakaty/downloader/vi3;

    invoke-static {p2}, Lcom/shabakaty/downloader/bp;->n(Lcom/shabakaty/downloader/vi3;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    .line 6
    :cond_1
    instance-of p5, p2, Lcom/shabakaty/downloader/li3;

    if-eqz p5, :cond_4

    .line 7
    move-object p2, p1

    check-cast p2, Lcom/shabakaty/downloader/gj3$a;

    .line 8
    iget-object p5, p2, Lcom/shabakaty/downloader/gj3$a;->g:Lcom/shabakaty/downloader/ji3$c;

    .line 9
    sget-object v1, Lcom/shabakaty/downloader/ji3$c;->u:Lcom/shabakaty/downloader/ji3$c;

    if-ne p5, v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    .line 10
    :cond_2
    iget-boolean p2, p2, Lcom/shabakaty/downloader/gj3$a;->h:Z

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    add-int/2addr p4, v0

    const-string p2, "signature"

    .line 11
    invoke-static {p3, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v2, Lcom/shabakaty/downloader/or2;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    iget-object p3, p3, Lcom/shabakaty/downloader/or2;->a:Ljava/lang/String;

    .line 14
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x40

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {v2, p2, p3}, Lcom/shabakaty/downloader/or2;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/nn0;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3c

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 15
    invoke-static/range {v0 .. v8}, Lcom/shabakaty/downloader/k;->m(Lcom/shabakaty/downloader/k;Lcom/shabakaty/downloader/gj3;Lcom/shabakaty/downloader/or2;ZZLjava/lang/Boolean;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 16
    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string p3, "Unsupported message: "

    invoke-static {p3, p2}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_5
    sget-object p1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    return-object p1
.end method

.method public b(Lcom/shabakaty/downloader/gj3;Lcom/shabakaty/downloader/vi3;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/gj3;",
            "Lcom/shabakaty/downloader/vi3;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    const-string v0, "proto"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/k$a;->t:Lcom/shabakaty/downloader/k$a;

    invoke-virtual {p0, p1, p2, v0}, Lcom/shabakaty/downloader/k;->t(Lcom/shabakaty/downloader/gj3;Lcom/shabakaty/downloader/vi3;Lcom/shabakaty/downloader/k$a;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/shabakaty/downloader/gj3;Lcom/shabakaty/downloader/es2;Lcom/shabakaty/downloader/i8;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/gj3;",
            "Lcom/shabakaty/downloader/es2;",
            "Lcom/shabakaty/downloader/i8;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    const-string v2, "proto"

    invoke-static {p2, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "kind"

    invoke-static {p3, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v2, Lcom/shabakaty/downloader/i8;->s:Lcom/shabakaty/downloader/i8;

    if-ne p3, v2, :cond_0

    .line 2
    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/vi3;

    sget-object v2, Lcom/shabakaty/downloader/k$a;->r:Lcom/shabakaty/downloader/k$a;

    invoke-virtual {p0, p1, v0, v2}, Lcom/shabakaty/downloader/k;->t(Lcom/shabakaty/downloader/gj3;Lcom/shabakaty/downloader/vi3;Lcom/shabakaty/downloader/k$a;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v4, p1, Lcom/shabakaty/downloader/gj3;->a:Lcom/shabakaty/downloader/jw2;

    .line 4
    iget-object v5, p1, Lcom/shabakaty/downloader/gj3;->b:Lcom/shabakaty/downloader/bu4;

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p2

    move-object v6, p3

    .line 5
    invoke-static/range {v2 .. v9}, Lcom/shabakaty/downloader/k;->o(Lcom/shabakaty/downloader/k;Lcom/shabakaty/downloader/es2;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;Lcom/shabakaty/downloader/i8;ZILjava/lang/Object;)Lcom/shabakaty/downloader/or2;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    return-object v0

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3c

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 6
    invoke-static/range {v0 .. v8}, Lcom/shabakaty/downloader/k;->m(Lcom/shabakaty/downloader/k;Lcom/shabakaty/downloader/gj3;Lcom/shabakaty/downloader/or2;ZZLjava/lang/Boolean;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/shabakaty/downloader/gj3;Lcom/shabakaty/downloader/vi3;Lcom/shabakaty/downloader/qe2;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/gj3;",
            "Lcom/shabakaty/downloader/vi3;",
            "Lcom/shabakaty/downloader/qe2;",
            ")TC;"
        }
    .end annotation

    const-string v0, "proto"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/zd1;->A:Lcom/shabakaty/downloader/zd1$b;

    .line 2
    iget v1, p2, Lcom/shabakaty/downloader/vi3;->u:I

    .line 3
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zd1$b;->c(I)Ljava/lang/Boolean;

    move-result-object v6

    .line 4
    invoke-static {p2}, Lcom/shabakaty/downloader/vb2;->d(Lcom/shabakaty/downloader/vi3;)Z

    move-result v7

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v2, p0

    move-object v3, p1

    .line 5
    invoke-virtual/range {v2 .. v7}, Lcom/shabakaty/downloader/k;->r(Lcom/shabakaty/downloader/gj3;ZZLjava/lang/Boolean;Z)Lcom/shabakaty/downloader/he2;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    instance-of v0, p1, Lcom/shabakaty/downloader/gj3$a;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/gj3$a;

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/k;->u(Lcom/shabakaty/downloader/gj3$a;)Lcom/shabakaty/downloader/he2;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    return-object v1

    .line 7
    :cond_2
    invoke-interface {v0}, Lcom/shabakaty/downloader/he2;->i()Lcom/shabakaty/downloader/be2;

    move-result-object v2

    .line 8
    iget-object v2, v2, Lcom/shabakaty/downloader/be2;->b:Lcom/shabakaty/downloader/ob2;

    .line 9
    sget-object v3, Lcom/shabakaty/downloader/bs0;->b:Lcom/shabakaty/downloader/bs0$a;

    .line 10
    sget-object v3, Lcom/shabakaty/downloader/bs0;->g:Lcom/shabakaty/downloader/ob2;

    .line 11
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "version"

    .line 12
    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget v4, v3, Lcom/shabakaty/downloader/gm;->b:I

    iget v5, v3, Lcom/shabakaty/downloader/gm;->c:I

    iget v3, v3, Lcom/shabakaty/downloader/gm;->d:I

    invoke-virtual {v2, v4, v5, v3}, Lcom/shabakaty/downloader/gm;->a(III)Z

    move-result v11

    .line 14
    iget-object v8, p1, Lcom/shabakaty/downloader/gj3;->a:Lcom/shabakaty/downloader/jw2;

    .line 15
    iget-object v9, p1, Lcom/shabakaty/downloader/gj3;->b:Lcom/shabakaty/downloader/bu4;

    .line 16
    sget-object v10, Lcom/shabakaty/downloader/i8;->s:Lcom/shabakaty/downloader/i8;

    move-object v6, p0

    move-object v7, p2

    .line 17
    invoke-virtual/range {v6 .. v11}, Lcom/shabakaty/downloader/k;->n(Lcom/shabakaty/downloader/es2;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;Lcom/shabakaty/downloader/i8;Z)Lcom/shabakaty/downloader/or2;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v1

    .line 18
    :cond_3
    iget-object p2, p0, Lcom/shabakaty/downloader/k;->b:Lcom/shabakaty/downloader/qr2;

    check-cast p2, Lcom/shabakaty/downloader/yj2$m;

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/yj2$m;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/k$b;

    .line 19
    iget-object p2, p2, Lcom/shabakaty/downloader/k$b;->b:Ljava/util/Map;

    .line 20
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_4

    return-object v1

    .line 21
    :cond_4
    invoke-static {p3}, Lcom/shabakaty/downloader/kw4;->a(Lcom/shabakaty/downloader/qe2;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 22
    check-cast p1, Lcom/shabakaty/downloader/qb0;

    .line 23
    instance-of p2, p1, Lcom/shabakaty/downloader/hp;

    if-eqz p2, :cond_5

    new-instance p2, Lcom/shabakaty/downloader/uu4;

    check-cast p1, Lcom/shabakaty/downloader/hp;

    .line 24
    iget-object p1, p1, Lcom/shabakaty/downloader/qb0;->a:Ljava/lang/Object;

    .line 25
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/uu4;-><init>(B)V

    :goto_1
    move-object p1, p2

    goto :goto_2

    .line 26
    :cond_5
    instance-of p2, p1, Lcom/shabakaty/downloader/k54;

    if-eqz p2, :cond_6

    new-instance p2, Lcom/shabakaty/downloader/ev4;

    check-cast p1, Lcom/shabakaty/downloader/k54;

    .line 27
    iget-object p1, p1, Lcom/shabakaty/downloader/qb0;->a:Ljava/lang/Object;

    .line 28
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/ev4;-><init>(S)V

    goto :goto_1

    .line 29
    :cond_6
    instance-of p2, p1, Lcom/shabakaty/downloader/q22;

    if-eqz p2, :cond_7

    new-instance p2, Lcom/shabakaty/downloader/xu4;

    check-cast p1, Lcom/shabakaty/downloader/q22;

    .line 30
    iget-object p1, p1, Lcom/shabakaty/downloader/qb0;->a:Ljava/lang/Object;

    .line 31
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/xu4;-><init>(I)V

    goto :goto_1

    .line 32
    :cond_7
    instance-of p2, p1, Lcom/shabakaty/downloader/kl2;

    if-eqz p2, :cond_8

    new-instance p2, Lcom/shabakaty/downloader/yu4;

    check-cast p1, Lcom/shabakaty/downloader/kl2;

    .line 33
    iget-object p1, p1, Lcom/shabakaty/downloader/qb0;->a:Ljava/lang/Object;

    .line 34
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Lcom/shabakaty/downloader/yu4;-><init>(J)V

    goto :goto_1

    :cond_8
    :goto_2
    return-object p1
.end method

.method public e(Lcom/shabakaty/downloader/gj3$a;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/gj3$a;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    const-string v0, "container"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/k;->u(Lcom/shabakaty/downloader/gj3$a;)Lcom/shabakaty/downloader/he2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/k$c;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/k$c;-><init>(Lcom/shabakaty/downloader/k;Ljava/util/ArrayList;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/shabakaty/downloader/he2;->j(Lcom/shabakaty/downloader/he2$c;[B)V

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/gj3$a;->f:Lcom/shabakaty/downloader/v20;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/v20;->b()Lcom/shabakaty/downloader/fi1;

    move-result-object p1

    const-string v1, "classId.asSingleFqName()"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Class for loading annotations is not found: "

    .line 6
    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f(Lcom/shabakaty/downloader/gj3;Lcom/shabakaty/downloader/vi3;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/gj3;",
            "Lcom/shabakaty/downloader/vi3;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    const-string v0, "proto"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/k$a;->s:Lcom/shabakaty/downloader/k$a;

    invoke-virtual {p0, p1, p2, v0}, Lcom/shabakaty/downloader/k;->t(Lcom/shabakaty/downloader/gj3;Lcom/shabakaty/downloader/vi3;Lcom/shabakaty/downloader/k$a;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public g(Lcom/shabakaty/downloader/aj3;Lcom/shabakaty/downloader/jw2;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/aj3;",
            "Lcom/shabakaty/downloader/jw2;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    const-string v0, "proto"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ub2;->h:Lcom/shabakaty/downloader/pp1$f;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/pp1$d;->k(Lcom/shabakaty/downloader/pp1$f;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "proto.getExtension(JvmPr\u2026.typeParameterAnnotation)"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Lcom/shabakaty/downloader/ii3;

    const-string v2, "it"

    .line 5
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p0

    check-cast v2, Lcom/shabakaty/downloader/am;

    .line 6
    iget-object v2, v2, Lcom/shabakaty/downloader/am;->e:Lcom/shabakaty/downloader/t8;

    invoke-virtual {v2, v1, p2}, Lcom/shabakaty/downloader/t8;->a(Lcom/shabakaty/downloader/ii3;Lcom/shabakaty/downloader/jw2;)Lcom/shabakaty/downloader/r8;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public h(Lcom/shabakaty/downloader/gj3;Lcom/shabakaty/downloader/oi3;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/gj3;",
            "Lcom/shabakaty/downloader/oi3;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/gj3;->a:Lcom/shabakaty/downloader/jw2;

    .line 2
    iget p2, p2, Lcom/shabakaty/downloader/oi3;->u:I

    .line 3
    invoke-interface {v0, p2}, Lcom/shabakaty/downloader/jw2;->b(I)Ljava/lang/String;

    move-result-object p2

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/gj3$a;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/gj3$a;->f:Lcom/shabakaty/downloader/v20;

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/v20;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "container as ProtoContai\u2026Class).classId.asString()"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/y20;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    .line 7
    invoke-static {p2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "desc"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v4, Lcom/shabakaty/downloader/or2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x23

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {v4, p2, v0}, Lcom/shabakaty/downloader/or2;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/nn0;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3c

    const/4 v10, 0x0

    move-object v2, p0

    move-object v3, p1

    .line 9
    invoke-static/range {v2 .. v10}, Lcom/shabakaty/downloader/k;->m(Lcom/shabakaty/downloader/k;Lcom/shabakaty/downloader/gj3;Lcom/shabakaty/downloader/or2;ZZLjava/lang/Boolean;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public i(Lcom/shabakaty/downloader/yi3;Lcom/shabakaty/downloader/jw2;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/yi3;",
            "Lcom/shabakaty/downloader/jw2;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    const-string v0, "proto"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ub2;->f:Lcom/shabakaty/downloader/pp1$f;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/pp1$d;->k(Lcom/shabakaty/downloader/pp1$f;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "proto.getExtension(JvmProtoBuf.typeAnnotation)"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Lcom/shabakaty/downloader/ii3;

    const-string v2, "it"

    .line 5
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p0

    check-cast v2, Lcom/shabakaty/downloader/am;

    .line 6
    iget-object v2, v2, Lcom/shabakaty/downloader/am;->e:Lcom/shabakaty/downloader/t8;

    invoke-virtual {v2, v1, p2}, Lcom/shabakaty/downloader/t8;->a(Lcom/shabakaty/downloader/ii3;Lcom/shabakaty/downloader/jw2;)Lcom/shabakaty/downloader/r8;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public j(Lcom/shabakaty/downloader/gj3;Lcom/shabakaty/downloader/es2;Lcom/shabakaty/downloader/i8;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/gj3;",
            "Lcom/shabakaty/downloader/es2;",
            "Lcom/shabakaty/downloader/i8;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    const-string v0, "proto"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v3, p1, Lcom/shabakaty/downloader/gj3;->a:Lcom/shabakaty/downloader/jw2;

    .line 2
    iget-object v4, p1, Lcom/shabakaty/downloader/gj3;->b:Lcom/shabakaty/downloader/bu4;

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v5, p3

    .line 3
    invoke-static/range {v1 .. v8}, Lcom/shabakaty/downloader/k;->o(Lcom/shabakaty/downloader/k;Lcom/shabakaty/downloader/es2;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;Lcom/shabakaty/downloader/i8;ZILjava/lang/Object;)Lcom/shabakaty/downloader/or2;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 p3, 0x0

    .line 4
    new-instance v2, Lcom/shabakaty/downloader/or2;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    iget-object p2, p2, Lcom/shabakaty/downloader/or2;->a:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x40

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {v2, p2, p3}, Lcom/shabakaty/downloader/or2;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/nn0;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3c

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 7
    invoke-static/range {v0 .. v8}, Lcom/shabakaty/downloader/k;->m(Lcom/shabakaty/downloader/k;Lcom/shabakaty/downloader/gj3;Lcom/shabakaty/downloader/or2;ZZLjava/lang/Boolean;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 8
    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    return-object p1
.end method

.method public final l(Lcom/shabakaty/downloader/gj3;Lcom/shabakaty/downloader/or2;ZZLjava/lang/Boolean;Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/gj3;",
            "Lcom/shabakaty/downloader/or2;",
            "ZZ",
            "Ljava/lang/Boolean;",
            "Z)",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/shabakaty/downloader/k;->r(Lcom/shabakaty/downloader/gj3;ZZLjava/lang/Boolean;Z)Lcom/shabakaty/downloader/he2;

    move-result-object p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    instance-of p3, p1, Lcom/shabakaty/downloader/gj3$a;

    if-eqz p3, :cond_1

    check-cast p1, Lcom/shabakaty/downloader/gj3$a;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/k;->u(Lcom/shabakaty/downloader/gj3$a;)Lcom/shabakaty/downloader/he2;

    move-result-object p3

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    if-nez p3, :cond_2

    .line 3
    sget-object p1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    return-object p1

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/k;->b:Lcom/shabakaty/downloader/qr2;

    check-cast p1, Lcom/shabakaty/downloader/yj2$m;

    invoke-virtual {p1, p3}, Lcom/shabakaty/downloader/yj2$m;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/k$b;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/k$b;->a:Ljava/util/Map;

    .line 6
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_3

    sget-object p1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    :cond_3
    return-object p1
.end method

.method public final n(Lcom/shabakaty/downloader/es2;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;Lcom/shabakaty/downloader/i8;Z)Lcom/shabakaty/downloader/or2;
    .locals 10

    .line 1
    instance-of v1, p1, Lcom/shabakaty/downloader/li3;

    const-string v4, "desc"

    const-string v5, "name"

    const-string v6, "signature"

    const/4 v7, 0x0

    if-eqz v1, :cond_1

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/vb2;->a:Lcom/shabakaty/downloader/vb2;

    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/li3;

    invoke-virtual {v1, v0, p2, p3}, Lcom/shabakaty/downloader/vb2;->a(Lcom/shabakaty/downloader/li3;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;)Lcom/shabakaty/downloader/nb2$b;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v7

    .line 3
    :cond_0
    invoke-static {v0, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/nb2;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/shabakaty/downloader/nb2;->b()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v1, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v2, Lcom/shabakaty/downloader/or2;

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v7}, Lcom/shabakaty/downloader/or2;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/nn0;)V

    :goto_0
    move-object v7, v2

    goto/16 :goto_1

    .line 7
    :cond_1
    instance-of v1, p1, Lcom/shabakaty/downloader/qi3;

    if-eqz v1, :cond_3

    .line 8
    sget-object v1, Lcom/shabakaty/downloader/vb2;->a:Lcom/shabakaty/downloader/vb2;

    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/qi3;

    invoke-virtual {v1, v0, p2, p3}, Lcom/shabakaty/downloader/vb2;->c(Lcom/shabakaty/downloader/qi3;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;)Lcom/shabakaty/downloader/nb2$b;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v7

    .line 9
    :cond_2
    invoke-static {v0, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Lcom/shabakaty/downloader/nb2;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/shabakaty/downloader/nb2;->b()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v1, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v2, Lcom/shabakaty/downloader/or2;

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v7}, Lcom/shabakaty/downloader/or2;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/nn0;)V

    goto :goto_0

    .line 13
    :cond_3
    instance-of v1, p1, Lcom/shabakaty/downloader/vi3;

    if-eqz v1, :cond_8

    .line 14
    move-object v1, p1

    check-cast v1, Lcom/shabakaty/downloader/pp1$d;

    sget-object v8, Lcom/shabakaty/downloader/ub2;->d:Lcom/shabakaty/downloader/pp1$f;

    const-string v9, "propertySignature"

    invoke-static {v8, v9}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v8}, Lcom/shabakaty/downloader/nh3;->l(Lcom/shabakaty/downloader/pp1$d;Lcom/shabakaty/downloader/pp1$f;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/ub2$d;

    if-nez v1, :cond_4

    return-object v7

    .line 15
    :cond_4
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_7

    const/4 v0, 0x2

    const-string v3, "nameResolver"

    if-eq v8, v0, :cond_6

    const/4 v0, 0x3

    if-eq v8, v0, :cond_5

    goto :goto_1

    .line 16
    :cond_5
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ub2$d;->j()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 17
    iget-object v0, v1, Lcom/shabakaty/downloader/ub2$d;->w:Lcom/shabakaty/downloader/ub2$c;

    const-string v1, "signature.setter"

    .line 18
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-static {p2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget v1, v0, Lcom/shabakaty/downloader/ub2$c;->t:I

    .line 21
    invoke-interface {p2, v1}, Lcom/shabakaty/downloader/jw2;->b(I)Ljava/lang/String;

    move-result-object v1

    .line 22
    iget v0, v0, Lcom/shabakaty/downloader/ub2$c;->u:I

    .line 23
    invoke-interface {p2, v0}, Lcom/shabakaty/downloader/jw2;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {v1, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v2, Lcom/shabakaty/downloader/or2;

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v7}, Lcom/shabakaty/downloader/or2;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/nn0;)V

    goto/16 :goto_0

    .line 26
    :cond_6
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ub2$d;->i()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 27
    iget-object v0, v1, Lcom/shabakaty/downloader/ub2$d;->v:Lcom/shabakaty/downloader/ub2$c;

    const-string v1, "signature.getter"

    .line 28
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-static {p2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget v1, v0, Lcom/shabakaty/downloader/ub2$c;->t:I

    .line 31
    invoke-interface {p2, v1}, Lcom/shabakaty/downloader/jw2;->b(I)Ljava/lang/String;

    move-result-object v1

    .line 32
    iget v0, v0, Lcom/shabakaty/downloader/ub2$c;->u:I

    .line 33
    invoke-interface {p2, v0}, Lcom/shabakaty/downloader/jw2;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {v1, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v2, Lcom/shabakaty/downloader/or2;

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v7}, Lcom/shabakaty/downloader/or2;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/nn0;)V

    goto/16 :goto_0

    .line 36
    :cond_7
    move-object v1, p1

    check-cast v1, Lcom/shabakaty/downloader/vi3;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/shabakaty/downloader/k;->p(Lcom/shabakaty/downloader/vi3;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;ZZZ)Lcom/shabakaty/downloader/or2;

    move-result-object v7

    :cond_8
    :goto_1
    return-object v7
.end method

.method public final p(Lcom/shabakaty/downloader/vi3;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;ZZZ)Lcom/shabakaty/downloader/or2;
    .locals 4

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ub2;->d:Lcom/shabakaty/downloader/pp1$f;

    const-string v1, "propertySignature"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/nh3;->l(Lcom/shabakaty/downloader/pp1$d;Lcom/shabakaty/downloader/pp1$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ub2$d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "desc"

    const-string v3, "name"

    if-eqz p4, :cond_3

    .line 2
    sget-object p4, Lcom/shabakaty/downloader/vb2;->a:Lcom/shabakaty/downloader/vb2;

    invoke-virtual {p4, p1, p2, p3, p6}, Lcom/shabakaty/downloader/vb2;->b(Lcom/shabakaty/downloader/vi3;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;Z)Lcom/shabakaty/downloader/nb2$a;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 3
    :cond_1
    instance-of p2, p1, Lcom/shabakaty/downloader/nb2$b;

    if-eqz p2, :cond_2

    .line 4
    iget-object p2, p1, Lcom/shabakaty/downloader/nb2$a;->a:Ljava/lang/String;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/nb2$a;->b:Ljava/lang/String;

    .line 6
    invoke-static {p2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance p3, Lcom/shabakaty/downloader/or2;

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, v1}, Lcom/shabakaty/downloader/or2;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/nn0;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p2, p1, Lcom/shabakaty/downloader/nb2$a;->a:Ljava/lang/String;

    .line 9
    iget-object p1, p1, Lcom/shabakaty/downloader/nb2$a;->b:Ljava/lang/String;

    .line 10
    invoke-static {p2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance p3, Lcom/shabakaty/downloader/or2;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x23

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, v1}, Lcom/shabakaty/downloader/or2;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/nn0;)V

    :goto_0
    return-object p3

    :cond_3
    if-eqz p5, :cond_5

    .line 12
    iget p1, v0, Lcom/shabakaty/downloader/ub2$d;->s:I

    const/4 p3, 0x2

    and-int/2addr p1, p3

    if-ne p1, p3, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_5

    .line 13
    iget-object p1, v0, Lcom/shabakaty/downloader/ub2$d;->u:Lcom/shabakaty/downloader/ub2$c;

    const-string p3, "signature.syntheticMethod"

    .line 14
    invoke-static {p1, p3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "nameResolver"

    .line 15
    invoke-static {p2, p3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget p3, p1, Lcom/shabakaty/downloader/ub2$c;->t:I

    .line 17
    invoke-interface {p2, p3}, Lcom/shabakaty/downloader/jw2;->b(I)Ljava/lang/String;

    move-result-object p3

    .line 18
    iget p1, p1, Lcom/shabakaty/downloader/ub2$c;->u:I

    .line 19
    invoke-interface {p2, p1}, Lcom/shabakaty/downloader/jw2;->b(I)Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-static {p3, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance p2, Lcom/shabakaty/downloader/or2;

    invoke-static {p3, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v1}, Lcom/shabakaty/downloader/or2;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/nn0;)V

    return-object p2

    :cond_5
    return-object v1
.end method

.method public final r(Lcom/shabakaty/downloader/gj3;ZZLjava/lang/Boolean;Z)Lcom/shabakaty/downloader/he2;
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ji3$c;->t:Lcom/shabakaty/downloader/ji3$c;

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    if-eqz p4, :cond_3

    .line 2
    instance-of p2, p1, Lcom/shabakaty/downloader/gj3$a;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Lcom/shabakaty/downloader/gj3$a;

    .line 3
    iget-object v2, p2, Lcom/shabakaty/downloader/gj3$a;->g:Lcom/shabakaty/downloader/ji3$c;

    if-ne v2, v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k;->a:Lcom/shabakaty/downloader/ae2;

    .line 5
    iget-object p2, p2, Lcom/shabakaty/downloader/gj3$a;->f:Lcom/shabakaty/downloader/v20;

    const-string p3, "DefaultImpls"

    .line 6
    invoke-static {p3}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/shabakaty/downloader/v20;->d(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/v20;

    move-result-object p2

    .line 7
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/he0;->g(Lcom/shabakaty/downloader/ae2;Lcom/shabakaty/downloader/v20;)Lcom/shabakaty/downloader/he2;

    move-result-object p1

    return-object p1

    .line 8
    :cond_0
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    instance-of p2, p1, Lcom/shabakaty/downloader/gj3$b;

    if-eqz p2, :cond_4

    .line 9
    iget-object p2, p1, Lcom/shabakaty/downloader/gj3;->c:Lcom/shabakaty/downloader/s94;

    .line 10
    instance-of p4, p2, Lcom/shabakaty/downloader/qb2;

    if-eqz p4, :cond_1

    check-cast p2, Lcom/shabakaty/downloader/qb2;

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_0
    if-nez p2, :cond_2

    move-object p2, v1

    goto :goto_1

    .line 11
    :cond_2
    iget-object p2, p2, Lcom/shabakaty/downloader/qb2;->c:Lcom/shabakaty/downloader/kb2;

    :goto_1
    if-eqz p2, :cond_4

    .line 12
    iget-object p1, p0, Lcom/shabakaty/downloader/k;->a:Lcom/shabakaty/downloader/ae2;

    new-instance p3, Lcom/shabakaty/downloader/fi1;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/kb2;->e()Ljava/lang/String;

    move-result-object p2

    const-string p4, "facadeClassName.internalName"

    invoke-static {p2, p4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p4, 0x2f

    const/16 p5, 0x2e

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p2, p4, p5, v0, v1}, Lcom/shabakaty/downloader/ne4;->G(Ljava/lang/String;CCZI)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/he0;->g(Lcom/shabakaty/downloader/ae2;Lcom/shabakaty/downloader/v20;)Lcom/shabakaty/downloader/he2;

    move-result-object p1

    return-object p1

    .line 13
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isConst should not be null for property (container="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    if-eqz p3, :cond_6

    .line 14
    instance-of p2, p1, Lcom/shabakaty/downloader/gj3$a;

    if-eqz p2, :cond_6

    move-object p2, p1

    check-cast p2, Lcom/shabakaty/downloader/gj3$a;

    .line 15
    iget-object p3, p2, Lcom/shabakaty/downloader/gj3$a;->g:Lcom/shabakaty/downloader/ji3$c;

    .line 16
    sget-object p4, Lcom/shabakaty/downloader/ji3$c;->y:Lcom/shabakaty/downloader/ji3$c;

    if-ne p3, p4, :cond_6

    .line 17
    iget-object p2, p2, Lcom/shabakaty/downloader/gj3$a;->e:Lcom/shabakaty/downloader/gj3$a;

    if-eqz p2, :cond_6

    .line 18
    iget-object p3, p2, Lcom/shabakaty/downloader/gj3$a;->g:Lcom/shabakaty/downloader/ji3$c;

    .line 19
    sget-object p4, Lcom/shabakaty/downloader/ji3$c;->s:Lcom/shabakaty/downloader/ji3$c;

    if-eq p3, p4, :cond_5

    sget-object p4, Lcom/shabakaty/downloader/ji3$c;->u:Lcom/shabakaty/downloader/ji3$c;

    if-eq p3, p4, :cond_5

    if-eqz p5, :cond_6

    if-eq p3, v0, :cond_5

    .line 20
    sget-object p4, Lcom/shabakaty/downloader/ji3$c;->w:Lcom/shabakaty/downloader/ji3$c;

    if-ne p3, p4, :cond_6

    .line 21
    :cond_5
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/k;->u(Lcom/shabakaty/downloader/gj3$a;)Lcom/shabakaty/downloader/he2;

    move-result-object p1

    return-object p1

    .line 22
    :cond_6
    instance-of p2, p1, Lcom/shabakaty/downloader/gj3$b;

    if-eqz p2, :cond_8

    .line 23
    iget-object p1, p1, Lcom/shabakaty/downloader/gj3;->c:Lcom/shabakaty/downloader/s94;

    .line 24
    instance-of p2, p1, Lcom/shabakaty/downloader/qb2;

    if-eqz p2, :cond_8

    const-string p2, "null cannot be cast to non-null type org.jetbrains.kotlin.load.kotlin.JvmPackagePartSource"

    .line 25
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/qb2;

    .line 26
    iget-object p2, p1, Lcom/shabakaty/downloader/qb2;->d:Lcom/shabakaty/downloader/he2;

    if-nez p2, :cond_7

    .line 27
    iget-object p2, p0, Lcom/shabakaty/downloader/k;->a:Lcom/shabakaty/downloader/ae2;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/qb2;->d()Lcom/shabakaty/downloader/v20;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/he0;->g(Lcom/shabakaty/downloader/ae2;Lcom/shabakaty/downloader/v20;)Lcom/shabakaty/downloader/he2;

    move-result-object p2

    :cond_7
    return-object p2

    :cond_8
    return-object v1
.end method

.method public abstract s(Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/s94;Ljava/util/List;)Lcom/shabakaty/downloader/he2$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/v20;",
            "Lcom/shabakaty/downloader/s94;",
            "Ljava/util/List<",
            "TA;>;)",
            "Lcom/shabakaty/downloader/he2$a;"
        }
    .end annotation
.end method

.method public final t(Lcom/shabakaty/downloader/gj3;Lcom/shabakaty/downloader/vi3;Lcom/shabakaty/downloader/k$a;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/gj3;",
            "Lcom/shabakaty/downloader/vi3;",
            "Lcom/shabakaty/downloader/k$a;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    move-object v1, p1

    move-object/from16 v0, p3

    .line 1
    sget-object v2, Lcom/shabakaty/downloader/zd1;->A:Lcom/shabakaty/downloader/zd1$b;

    move-object v4, p2

    .line 2
    iget v3, v4, Lcom/shabakaty/downloader/vi3;->u:I

    const-string v5, "IS_CONST.get(proto.flags)"

    .line 3
    invoke-static {v2, v3, v5}, Lcom/shabakaty/downloader/j;->a(Lcom/shabakaty/downloader/zd1$b;ILjava/lang/String;)Z

    move-result v2

    .line 4
    invoke-static {p2}, Lcom/shabakaty/downloader/vb2;->d(Lcom/shabakaty/downloader/vi3;)Z

    move-result v12

    .line 5
    sget-object v3, Lcom/shabakaty/downloader/k$a;->r:Lcom/shabakaty/downloader/k$a;

    if-ne v0, v3, :cond_1

    .line 6
    iget-object v5, v1, Lcom/shabakaty/downloader/gj3;->a:Lcom/shabakaty/downloader/jw2;

    .line 7
    iget-object v6, v1, Lcom/shabakaty/downloader/gj3;->b:Lcom/shabakaty/downloader/bu4;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v10, 0x28

    const/4 v11, 0x0

    move-object v3, p0

    move-object v4, p2

    .line 8
    invoke-static/range {v3 .. v11}, Lcom/shabakaty/downloader/k;->q(Lcom/shabakaty/downloader/k;Lcom/shabakaty/downloader/vi3;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;ZZZILjava/lang/Object;)Lcom/shabakaty/downloader/or2;

    move-result-object v3

    if-nez v3, :cond_0

    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    return-object v0

    :cond_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 9
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move v6, v12

    .line 10
    invoke-static/range {v0 .. v8}, Lcom/shabakaty/downloader/k;->m(Lcom/shabakaty/downloader/k;Lcom/shabakaty/downloader/gj3;Lcom/shabakaty/downloader/or2;ZZLjava/lang/Boolean;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 11
    :cond_1
    iget-object v5, v1, Lcom/shabakaty/downloader/gj3;->a:Lcom/shabakaty/downloader/jw2;

    .line 12
    iget-object v6, v1, Lcom/shabakaty/downloader/gj3;->b:Lcom/shabakaty/downloader/bu4;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x30

    const/4 v11, 0x0

    move-object v3, p0

    move-object v4, p2

    .line 13
    invoke-static/range {v3 .. v11}, Lcom/shabakaty/downloader/k;->q(Lcom/shabakaty/downloader/k;Lcom/shabakaty/downloader/vi3;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;ZZZILjava/lang/Object;)Lcom/shabakaty/downloader/or2;

    move-result-object v3

    if-nez v3, :cond_2

    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    return-object v0

    .line 14
    :cond_2
    iget-object v4, v3, Lcom/shabakaty/downloader/or2;->a:Ljava/lang/String;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v7, "$delegate"

    .line 15
    invoke-static {v4, v7, v6, v5}, Lcom/shabakaty/downloader/re4;->N(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v4

    .line 16
    sget-object v5, Lcom/shabakaty/downloader/k$a;->t:Lcom/shabakaty/downloader/k$a;

    if-ne v0, v5, :cond_3

    const/4 v6, 0x1

    :cond_3
    if-eq v4, v6, :cond_4

    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    return-object v0

    :cond_4
    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 17
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move v6, v12

    .line 18
    invoke-virtual/range {v0 .. v6}, Lcom/shabakaty/downloader/k;->l(Lcom/shabakaty/downloader/gj3;Lcom/shabakaty/downloader/or2;ZZLjava/lang/Boolean;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lcom/shabakaty/downloader/gj3$a;)Lcom/shabakaty/downloader/he2;
    .locals 2

    .line 1
    iget-object p1, p1, Lcom/shabakaty/downloader/gj3;->c:Lcom/shabakaty/downloader/s94;

    .line 2
    instance-of v0, p1, Lcom/shabakaty/downloader/je2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/shabakaty/downloader/je2;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object v1, p1, Lcom/shabakaty/downloader/je2;->b:Lcom/shabakaty/downloader/he2;

    :goto_1
    return-object v1
.end method
