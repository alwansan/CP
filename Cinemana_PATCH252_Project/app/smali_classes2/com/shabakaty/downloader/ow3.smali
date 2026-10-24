.class public final Lcom/shabakaty/downloader/ow3;
.super Lcom/shabakaty/downloader/xd0;
.source "SafeCollector.kt"

# interfaces
.implements Lcom/shabakaty/downloader/ue1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/xd0;",
        "Lcom/shabakaty/downloader/ue1<",
        "TT;>;",
        "Lcom/shabakaty/downloader/ue0;"
    }
.end annotation


# instance fields
.field public final u:I

.field public v:Lcom/shabakaty/downloader/me0;

.field public w:Lcom/shabakaty/downloader/ud0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation
.end field

.field public final x:Lcom/shabakaty/downloader/ue1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ue1<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final y:Lcom/shabakaty/downloader/me0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/me0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ue1<",
            "-TT;>;",
            "Lcom/shabakaty/downloader/me0;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/nz2;->r:Lcom/shabakaty/downloader/nz2;

    sget-object v1, Lcom/shabakaty/downloader/s21;->r:Lcom/shabakaty/downloader/s21;

    invoke-direct {p0, v0, v1}, Lcom/shabakaty/downloader/xd0;-><init>(Lcom/shabakaty/downloader/ud0;Lcom/shabakaty/downloader/me0;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/ow3;->x:Lcom/shabakaty/downloader/ue1;

    iput-object p2, p0, Lcom/shabakaty/downloader/ow3;->y:Lcom/shabakaty/downloader/me0;

    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lcom/shabakaty/downloader/ow3$a;->r:Lcom/shabakaty/downloader/ow3$a;

    invoke-interface {p2, p1, v0}, Lcom/shabakaty/downloader/me0;->fold(Ljava/lang/Object;Lcom/shabakaty/downloader/hn1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, Lcom/shabakaty/downloader/ow3;->u:I

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/me0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ow3;->w:Lcom/shabakaty/downloader/ud0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/shabakaty/downloader/ud0;->a()Lcom/shabakaty/downloader/me0;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/s21;->r:Lcom/shabakaty/downloader/s21;

    :goto_0
    return-object v0
.end method

.method public b(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lcom/shabakaty/downloader/ow3;->w(Lcom/shabakaty/downloader/ud0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1

    :catchall_0
    move-exception p1

    .line 3
    new-instance p2, Lcom/shabakaty/downloader/a01;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/a01;-><init>(Ljava/lang/Throwable;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/ow3;->v:Lcom/shabakaty/downloader/me0;

    .line 4
    throw p1
.end method

.method public h()Lcom/shabakaty/downloader/ue0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ow3;->w:Lcom/shabakaty/downloader/ud0;

    instance-of v1, v0, Lcom/shabakaty/downloader/ue0;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/shabakaty/downloader/ue0;

    return-object v0
.end method

.method public s()Ljava/lang/StackTraceElement;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/dt3;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/shabakaty/downloader/a01;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/a01;-><init>(Ljava/lang/Throwable;)V

    iput-object v1, p0, Lcom/shabakaty/downloader/ow3;->v:Lcom/shabakaty/downloader/me0;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ow3;->w:Lcom/shabakaty/downloader/ud0;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/ud0;->i(Ljava/lang/Object;)V

    .line 3
    :cond_1
    sget-object p1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    return-object p1
.end method

.method public v()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/shabakaty/downloader/xd0;->v()V

    return-void
.end method

.method public final w(Lcom/shabakaty/downloader/ud0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/ud0;->a()Lcom/shabakaty/downloader/me0;

    move-result-object v2

    .line 2
    sget-object v3, Lcom/shabakaty/downloader/e92;->h:Lcom/shabakaty/downloader/e92$b;

    invoke-interface {v2, v3}, Lcom/shabakaty/downloader/me0;->get(Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0$b;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/e92;

    if-eqz v3, :cond_1

    .line 3
    invoke-interface {v3}, Lcom/shabakaty/downloader/e92;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Lcom/shabakaty/downloader/e92;->v()Ljava/util/concurrent/CancellationException;

    move-result-object v1

    throw v1

    .line 4
    :cond_1
    :goto_0
    iget-object v3, v0, Lcom/shabakaty/downloader/ow3;->v:Lcom/shabakaty/downloader/me0;

    if-eq v3, v2, :cond_16

    .line 5
    instance-of v4, v3, Lcom/shabakaty/downloader/a01;

    const/4 v5, 0x0

    if-eqz v4, :cond_14

    .line 6
    check-cast v3, Lcom/shabakaty/downloader/a01;

    const-string v2, "\n            Flow exception transparency is violated:\n                Previous \'emit\' call has thrown exception "

    .line 7
    invoke-static {v2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8
    iget-object v3, v3, Lcom/shabakaty/downloader/a01;->r:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", but then emission attempt of value \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\' has been detected.\n                Emissions from \'catch\' blocks are prohibited in order to avoid unspecified behaviour, \'Flow.catch\' operator can be used instead.\n                For a more detailed explanation, please refer to Flow documentation.\n            "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<this>"

    .line 9
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, ""

    const-string v4, "newIndent"

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {v1}, Lcom/shabakaty/downloader/re4;->X(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v4

    .line 12
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    .line 14
    invoke-static {v8}, Lcom/shabakaty/downloader/ne4;->D(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v5, v7}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 17
    check-cast v7, Ljava/lang/String;

    .line 18
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x0

    :goto_3
    const/4 v10, -0x1

    if-ge v9, v8, :cond_5

    add-int/lit8 v11, v9, 0x1

    .line 19
    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 20
    invoke-static {v12}, Lcom/shabakaty/downloader/z02;->r(C)Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_4

    goto :goto_4

    :cond_4
    move v9, v11

    goto :goto_3

    :cond_5
    const/4 v9, -0x1

    :goto_4
    if-ne v9, v10, :cond_6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    .line 21
    :cond_6
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 22
    :cond_7
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 24
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_8

    move-object v6, v7

    goto :goto_6

    .line 25
    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Comparable;

    .line 26
    :cond_9
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 27
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Comparable;

    .line 28
    invoke-interface {v6, v8}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v9

    if-lez v9, :cond_9

    move-object v6, v8

    goto :goto_5

    .line 29
    :cond_a
    :goto_6
    check-cast v6, Ljava/lang/Integer;

    if-nez v6, :cond_b

    const/4 v5, 0x0

    goto :goto_7

    .line 30
    :cond_b
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 31
    :goto_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    mul-int/lit8 v6, v6, 0x0

    add-int/2addr v6, v1

    invoke-static {v3}, Lcom/shabakaty/downloader/je4;->w(Ljava/lang/String;)Lcom/shabakaty/downloader/tm1;

    move-result-object v1

    .line 32
    invoke-static {v4}, Lcom/shabakaty/downloader/iq6;->h(Ljava/util/List;)I

    move-result v3

    .line 33
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v9, 0x0

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v11, v9, 0x1

    if-ltz v9, :cond_12

    .line 35
    check-cast v10, Ljava/lang/String;

    if-eqz v9, :cond_c

    if-ne v9, v3, :cond_d

    .line 36
    :cond_c
    invoke-static {v10}, Lcom/shabakaty/downloader/ne4;->D(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_d

    move-object v9, v7

    goto :goto_b

    .line 37
    :cond_d
    invoke-static {v10, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz v5, :cond_e

    const/4 v9, 0x1

    goto :goto_9

    :cond_e
    const/4 v9, 0x0

    :goto_9
    if-eqz v9, :cond_11

    .line 38
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    if-le v5, v9, :cond_f

    goto :goto_a

    :cond_f
    move v9, v5

    :goto_a
    invoke-virtual {v10, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "this as java.lang.String).substring(startIndex)"

    invoke-static {v9, v10}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-interface {v1, v9}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    :goto_b
    if-nez v9, :cond_10

    goto :goto_c

    .line 40
    :cond_10
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_c
    move v9, v11

    goto :goto_8

    :cond_11
    const-string v1, "Requested character count "

    const-string v2, " is less than zero."

    .line 41
    invoke-static {v1, v5, v2}, Lcom/shabakaty/downloader/qj2;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 42
    :cond_12
    invoke-static {}, Lcom/shabakaty/downloader/iq6;->x()V

    throw v7

    .line 43
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x7c

    const-string v10, "\n"

    move-object v9, v1

    invoke-static/range {v8 .. v16}, Lcom/shabakaty/downloader/m50;->e0(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lcom/shabakaty/downloader/tm1;I)Ljava/lang/Appendable;

    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mapIndexedNotNull { inde\u2026\"\\n\")\n        .toString()"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 46
    :cond_14
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/shabakaty/downloader/qw3;

    invoke-direct {v4, v0}, Lcom/shabakaty/downloader/qw3;-><init>(Lcom/shabakaty/downloader/ow3;)V

    invoke-interface {v2, v3, v4}, Lcom/shabakaty/downloader/me0;->fold(Ljava/lang/Object;Lcom/shabakaty/downloader/hn1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 47
    iget v4, v0, Lcom/shabakaty/downloader/ow3;->u:I

    if-ne v3, v4, :cond_15

    .line 48
    iput-object v2, v0, Lcom/shabakaty/downloader/ow3;->v:Lcom/shabakaty/downloader/me0;

    goto :goto_d

    :cond_15
    const-string v1, "Flow invariant is violated:\n"

    const-string v3, "\t\tFlow was collected in "

    .line 49
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/vf3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 50
    iget-object v3, v0, Lcom/shabakaty/downloader/ow3;->y:Lcom/shabakaty/downloader/me0;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\t\tbut emission happened in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".\n"

    const-string v3, "\t\tPlease refer to \'flow\' documentation or use \'flowOn\' instead"

    invoke-static {v1, v2, v3}, Lcom/shabakaty/downloader/ni4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_16
    :goto_d
    move-object/from16 v2, p1

    .line 53
    iput-object v2, v0, Lcom/shabakaty/downloader/ow3;->w:Lcom/shabakaty/downloader/ud0;

    .line 54
    sget-object v2, Lcom/shabakaty/downloader/pw3;->a:Lcom/shabakaty/downloader/jn1;

    .line 55
    iget-object v3, v0, Lcom/shabakaty/downloader/ow3;->x:Lcom/shabakaty/downloader/ue1;

    const-string v4, "null cannot be cast to non-null type kotlinx.coroutines.flow.FlowCollector<kotlin.Any?>"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {v2, v3, v1, v0}, Lcom/shabakaty/downloader/jn1;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
