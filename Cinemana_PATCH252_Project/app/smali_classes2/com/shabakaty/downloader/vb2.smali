.class public final Lcom/shabakaty/downloader/vb2;
.super Ljava/lang/Object;
.source "JvmProtoBufUtil.kt"


# static fields
.field public static final a:Lcom/shabakaty/downloader/vb2;

.field public static final b:Lcom/shabakaty/downloader/t81;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/vb2;

    invoke-direct {v0}, Lcom/shabakaty/downloader/vb2;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/vb2;->a:Lcom/shabakaty/downloader/vb2;

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/t81;

    invoke-direct {v0}, Lcom/shabakaty/downloader/t81;-><init>()V

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/ub2;->a:Lcom/shabakaty/downloader/pp1$f;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/t81;->a(Lcom/shabakaty/downloader/pp1$f;)V

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/ub2;->b:Lcom/shabakaty/downloader/pp1$f;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/t81;->a(Lcom/shabakaty/downloader/pp1$f;)V

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/ub2;->c:Lcom/shabakaty/downloader/pp1$f;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/t81;->a(Lcom/shabakaty/downloader/pp1$f;)V

    .line 5
    sget-object v1, Lcom/shabakaty/downloader/ub2;->d:Lcom/shabakaty/downloader/pp1$f;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/t81;->a(Lcom/shabakaty/downloader/pp1$f;)V

    .line 6
    sget-object v1, Lcom/shabakaty/downloader/ub2;->e:Lcom/shabakaty/downloader/pp1$f;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/t81;->a(Lcom/shabakaty/downloader/pp1$f;)V

    .line 7
    sget-object v1, Lcom/shabakaty/downloader/ub2;->f:Lcom/shabakaty/downloader/pp1$f;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/t81;->a(Lcom/shabakaty/downloader/pp1$f;)V

    .line 8
    sget-object v1, Lcom/shabakaty/downloader/ub2;->g:Lcom/shabakaty/downloader/pp1$f;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/t81;->a(Lcom/shabakaty/downloader/pp1$f;)V

    .line 9
    sget-object v1, Lcom/shabakaty/downloader/ub2;->h:Lcom/shabakaty/downloader/pp1$f;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/t81;->a(Lcom/shabakaty/downloader/pp1$f;)V

    .line 10
    sget-object v1, Lcom/shabakaty/downloader/ub2;->i:Lcom/shabakaty/downloader/pp1$f;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/t81;->a(Lcom/shabakaty/downloader/pp1$f;)V

    .line 11
    sget-object v1, Lcom/shabakaty/downloader/ub2;->j:Lcom/shabakaty/downloader/pp1$f;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/t81;->a(Lcom/shabakaty/downloader/pp1$f;)V

    .line 12
    sget-object v1, Lcom/shabakaty/downloader/ub2;->k:Lcom/shabakaty/downloader/pp1$f;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/t81;->a(Lcom/shabakaty/downloader/pp1$f;)V

    .line 13
    sget-object v1, Lcom/shabakaty/downloader/ub2;->l:Lcom/shabakaty/downloader/pp1$f;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/t81;->a(Lcom/shabakaty/downloader/pp1$f;)V

    .line 14
    sget-object v1, Lcom/shabakaty/downloader/ub2;->m:Lcom/shabakaty/downloader/pp1$f;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/t81;->a(Lcom/shabakaty/downloader/pp1$f;)V

    .line 15
    sget-object v1, Lcom/shabakaty/downloader/ub2;->n:Lcom/shabakaty/downloader/pp1$f;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/t81;->a(Lcom/shabakaty/downloader/pp1$f;)V

    .line 16
    sput-object v0, Lcom/shabakaty/downloader/vb2;->b:Lcom/shabakaty/downloader/t81;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final d(Lcom/shabakaty/downloader/vi3;)Z
    .locals 2

    const-string v0, "proto"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/lb2;->a:Lcom/shabakaty/downloader/lb2;

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/lb2;->b:Lcom/shabakaty/downloader/zd1$b;

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/ub2;->e:Lcom/shabakaty/downloader/pp1$f;

    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/pp1$d;->k(Lcom/shabakaty/downloader/pp1$f;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "proto.getExtension(JvmProtoBuf.flags)"

    invoke-static {p0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/zd1$b;->c(I)Ljava/lang/Boolean;

    move-result-object p0

    const-string v0, "JvmFlags.IS_MOVED_FROM_I\u2026nsion(JvmProtoBuf.flags))"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final f([Ljava/lang/String;[Ljava/lang/String;)Lcom/shabakaty/downloader/x93;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/x93<",
            "Lcom/shabakaty/downloader/pb2;",
            "Lcom/shabakaty/downloader/ji3;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/vb2;->a:Lcom/shabakaty/downloader/vb2;

    invoke-static {p0}, Lcom/shabakaty/downloader/im;->b([Ljava/lang/String;)[B

    move-result-object p0

    .line 2
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 3
    new-instance p0, Lcom/shabakaty/downloader/x93;

    invoke-virtual {v0, v1, p1}, Lcom/shabakaty/downloader/vb2;->g(Ljava/io/InputStream;[Ljava/lang/String;)Lcom/shabakaty/downloader/pb2;

    move-result-object p1

    sget-object v0, Lcom/shabakaty/downloader/vb2;->b:Lcom/shabakaty/downloader/t81;

    .line 4
    sget-object v2, Lcom/shabakaty/downloader/ji3;->T:Lcom/shabakaty/downloader/na3;

    check-cast v2, Lcom/shabakaty/downloader/q0;

    .line 5
    invoke-virtual {v2, v1, v0}, Lcom/shabakaty/downloader/q0;->d(Ljava/io/InputStream;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/q0;->b(Lcom/shabakaty/downloader/es2;)Lcom/shabakaty/downloader/es2;

    .line 6
    check-cast v0, Lcom/shabakaty/downloader/ji3;

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final h([Ljava/lang/String;[Ljava/lang/String;)Lcom/shabakaty/downloader/x93;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/x93<",
            "Lcom/shabakaty/downloader/pb2;",
            "Lcom/shabakaty/downloader/ti3;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/vb2;->a:Lcom/shabakaty/downloader/vb2;

    invoke-static {p0}, Lcom/shabakaty/downloader/im;->b([Ljava/lang/String;)[B

    move-result-object p0

    .line 2
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 3
    new-instance p0, Lcom/shabakaty/downloader/x93;

    invoke-virtual {v0, v1, p1}, Lcom/shabakaty/downloader/vb2;->g(Ljava/io/InputStream;[Ljava/lang/String;)Lcom/shabakaty/downloader/pb2;

    move-result-object p1

    sget-object v0, Lcom/shabakaty/downloader/vb2;->b:Lcom/shabakaty/downloader/t81;

    .line 4
    sget-object v2, Lcom/shabakaty/downloader/ti3;->C:Lcom/shabakaty/downloader/na3;

    check-cast v2, Lcom/shabakaty/downloader/q0;

    .line 5
    invoke-virtual {v2, v1, v0}, Lcom/shabakaty/downloader/q0;->d(Ljava/io/InputStream;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/q0;->b(Lcom/shabakaty/downloader/es2;)Lcom/shabakaty/downloader/es2;

    .line 6
    check-cast v0, Lcom/shabakaty/downloader/ti3;

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/li3;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;)Lcom/shabakaty/downloader/nb2$b;
    .locals 10

    const-string v0, "proto"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ub2;->a:Lcom/shabakaty/downloader/pp1$f;

    const-string v1, "constructorSignature"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/nh3;->l(Lcom/shabakaty/downloader/pp1$d;Lcom/shabakaty/downloader/pp1$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ub2$c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ub2$c;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget v1, v0, Lcom/shabakaty/downloader/ub2$c;->t:I

    .line 4
    invoke-interface {p2, v1}, Lcom/shabakaty/downloader/jw2;->b(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "<init>"

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ub2$c;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    iget p1, v0, Lcom/shabakaty/downloader/ub2$c;->u:I

    .line 7
    invoke-interface {p2, p1}, Lcom/shabakaty/downloader/jw2;->b(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 8
    :cond_1
    iget-object p1, p1, Lcom/shabakaty/downloader/li3;->v:Ljava/util/List;

    const-string v0, "proto.valueParameterList"

    .line 9
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 12
    check-cast v0, Lcom/shabakaty/downloader/cj3;

    .line 13
    sget-object v3, Lcom/shabakaty/downloader/vb2;->a:Lcom/shabakaty/downloader/vb2;

    const-string v4, "it"

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p3}, Lcom/shabakaty/downloader/bp;->v(Lcom/shabakaty/downloader/cj3;Lcom/shabakaty/downloader/bu4;)Lcom/shabakaty/downloader/yi3;

    move-result-object v0

    invoke-virtual {v3, v0, p2}, Lcom/shabakaty/downloader/vb2;->e(Lcom/shabakaty/downloader/yi3;Lcom/shabakaty/downloader/jw2;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x38

    const-string v3, ""

    const-string v4, "("

    const-string v5, ")V"

    .line 14
    invoke-static/range {v2 .. v9}, Lcom/shabakaty/downloader/m50;->g0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lcom/shabakaty/downloader/tm1;I)Ljava/lang/String;

    move-result-object p1

    .line 15
    :goto_2
    new-instance p2, Lcom/shabakaty/downloader/nb2$b;

    invoke-direct {p2, v1, p1}, Lcom/shabakaty/downloader/nb2$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public final b(Lcom/shabakaty/downloader/vi3;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;Z)Lcom/shabakaty/downloader/nb2$a;
    .locals 6

    const-string v0, "proto"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

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

    .line 2
    :cond_0
    iget v2, v0, Lcom/shabakaty/downloader/ub2$d;->s:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/ub2$d;->t:Lcom/shabakaty/downloader/ub2$b;

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_3

    if-eqz p4, :cond_3

    return-object v1

    :cond_3
    if-eqz v0, :cond_5

    .line 4
    iget p4, v0, Lcom/shabakaty/downloader/ub2$b;->s:I

    and-int/2addr p4, v3

    if-ne p4, v3, :cond_4

    const/4 p4, 0x1

    goto :goto_2

    :cond_4
    const/4 p4, 0x0

    :goto_2
    if-eqz p4, :cond_5

    .line 5
    iget p4, v0, Lcom/shabakaty/downloader/ub2$b;->t:I

    goto :goto_3

    .line 6
    :cond_5
    iget p4, p1, Lcom/shabakaty/downloader/vi3;->w:I

    :goto_3
    if-eqz v0, :cond_7

    .line 7
    iget v2, v0, Lcom/shabakaty/downloader/ub2$b;->s:I

    const/4 v5, 0x2

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_6

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_7

    .line 8
    iget p1, v0, Lcom/shabakaty/downloader/ub2$b;->u:I

    .line 9
    invoke-interface {p2, p1}, Lcom/shabakaty/downloader/jw2;->b(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 10
    :cond_7
    invoke-static {p1, p3}, Lcom/shabakaty/downloader/bp;->u(Lcom/shabakaty/downloader/vi3;Lcom/shabakaty/downloader/bu4;)Lcom/shabakaty/downloader/yi3;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/vb2;->e(Lcom/shabakaty/downloader/yi3;Lcom/shabakaty/downloader/jw2;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    return-object v1

    .line 11
    :cond_8
    :goto_5
    new-instance p3, Lcom/shabakaty/downloader/nb2$a;

    invoke-interface {p2, p4}, Lcom/shabakaty/downloader/jw2;->b(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Lcom/shabakaty/downloader/nb2$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p3
.end method

.method public final c(Lcom/shabakaty/downloader/qi3;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;)Lcom/shabakaty/downloader/nb2$b;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "proto"

    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "nameResolver"

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "typeTable"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v3, Lcom/shabakaty/downloader/ub2;->b:Lcom/shabakaty/downloader/pp1$f;

    const-string v4, "methodSignature"

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/shabakaty/downloader/nh3;->l(Lcom/shabakaty/downloader/pp1$d;Lcom/shabakaty/downloader/pp1$f;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/ub2$c;

    if-eqz v3, :cond_0

    .line 2
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ub2$c;->j()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3
    iget v4, v3, Lcom/shabakaty/downloader/ub2$c;->t:I

    goto :goto_0

    .line 4
    :cond_0
    iget v4, v0, Lcom/shabakaty/downloader/qi3;->w:I

    :goto_0
    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ub2$c;->i()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6
    iget v0, v3, Lcom/shabakaty/downloader/ub2$c;->u:I

    .line 7
    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/jw2;->b(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, p0

    goto/16 :goto_3

    .line 8
    :cond_1
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/bp;->s(Lcom/shabakaty/downloader/qi3;Lcom/shabakaty/downloader/bu4;)Lcom/shabakaty/downloader/yi3;

    move-result-object v3

    invoke-static {v3}, Lcom/shabakaty/downloader/iq6;->q(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 9
    iget-object v5, v0, Lcom/shabakaty/downloader/qi3;->C:Ljava/util/List;

    const-string v6, "proto.valueParameterList"

    .line 10
    invoke-static {v5, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v5, v7}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 13
    check-cast v8, Lcom/shabakaty/downloader/cj3;

    const-string v9, "it"

    .line 14
    invoke-static {v8, v9}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v2}, Lcom/shabakaty/downloader/bp;->v(Lcom/shabakaty/downloader/cj3;Lcom/shabakaty/downloader/bu4;)Lcom/shabakaty/downloader/yi3;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v3, v6}, Lcom/shabakaty/downloader/m50;->n0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    .line 15
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v3, v7}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 17
    check-cast v5, Lcom/shabakaty/downloader/yi3;

    .line 18
    sget-object v7, Lcom/shabakaty/downloader/vb2;->a:Lcom/shabakaty/downloader/vb2;

    invoke-virtual {v7, v5, v1}, Lcom/shabakaty/downloader/vb2;->e(Lcom/shabakaty/downloader/yi3;Lcom/shabakaty/downloader/jw2;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    return-object v6

    :cond_3
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 19
    :cond_4
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/bp;->t(Lcom/shabakaty/downloader/qi3;Lcom/shabakaty/downloader/bu4;)Lcom/shabakaty/downloader/yi3;

    move-result-object v0

    move-object/from16 v2, p0

    invoke-virtual {v2, v0, v1}, Lcom/shabakaty/downloader/vb2;->e(Lcom/shabakaty/downloader/yi3;Lcom/shabakaty/downloader/jw2;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    return-object v6

    :cond_5
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x38

    const-string v9, ""

    const-string v10, "("

    const-string v11, ")"

    .line 20
    invoke-static/range {v8 .. v15}, Lcom/shabakaty/downloader/m50;->g0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lcom/shabakaty/downloader/tm1;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 21
    :goto_3
    new-instance v3, Lcom/shabakaty/downloader/nb2$b;

    invoke-interface {v1, v4}, Lcom/shabakaty/downloader/jw2;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Lcom/shabakaty/downloader/nb2$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public final e(Lcom/shabakaty/downloader/yi3;Lcom/shabakaty/downloader/jw2;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/yi3;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget p1, p1, Lcom/shabakaty/downloader/yi3;->z:I

    .line 3
    invoke-interface {p2, p1}, Lcom/shabakaty/downloader/jw2;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/y20;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final g(Ljava/io/InputStream;[Ljava/lang/String;)Lcom/shabakaty/downloader/pb2;
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pb2;

    sget-object v1, Lcom/shabakaty/downloader/vb2;->b:Lcom/shabakaty/downloader/t81;

    .line 2
    sget-object v2, Lcom/shabakaty/downloader/ub2$e;->y:Lcom/shabakaty/downloader/na3;

    check-cast v2, Lcom/shabakaty/downloader/q0;

    invoke-virtual {v2, p1, v1}, Lcom/shabakaty/downloader/q0;->c(Ljava/io/InputStream;Lcom/shabakaty/downloader/t81;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/ub2$e;

    const-string v1, "parseDelimitedFrom(this, EXTENSION_REGISTRY)"

    .line 3
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1, p2}, Lcom/shabakaty/downloader/pb2;-><init>(Lcom/shabakaty/downloader/ub2$e;[Ljava/lang/String;)V

    return-object v0
.end method
