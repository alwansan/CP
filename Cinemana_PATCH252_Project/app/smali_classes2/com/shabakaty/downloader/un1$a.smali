.class public final Lcom/shabakaty/downloader/un1$a;
.super Lcom/shabakaty/downloader/q;
.source "FunctionClassDescriptor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/un1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic c:Lcom/shabakaty/downloader/un1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/un1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/un1$a;->c:Lcom/shabakaty/downloader/un1;

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/un1;->v:Lcom/shabakaty/downloader/md4;

    .line 3
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/q;-><init>(Lcom/shabakaty/downloader/md4;)V

    return-void
.end method


# virtual methods
.method public d()Lcom/shabakaty/downloader/g30;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/un1$a;->c:Lcom/shabakaty/downloader/un1;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/kt4;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/un1$a;->c:Lcom/shabakaty/downloader/un1;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/un1;->B:Ljava/util/List;

    return-object v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j()Ljava/util/Collection;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/qe2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/un1$a;->c:Lcom/shabakaty/downloader/un1;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/un1;->x:Lcom/shabakaty/downloader/vn1;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    new-array v0, v3, [Lcom/shabakaty/downloader/v20;

    .line 4
    sget-object v3, Lcom/shabakaty/downloader/un1;->D:Lcom/shabakaty/downloader/v20;

    aput-object v3, v0, v1

    .line 5
    new-instance v1, Lcom/shabakaty/downloader/v20;

    sget-object v3, Lcom/shabakaty/downloader/tb4;->c:Lcom/shabakaty/downloader/fi1;

    sget-object v4, Lcom/shabakaty/downloader/vn1;->v:Lcom/shabakaty/downloader/vn1;

    iget-object v5, p0, Lcom/shabakaty/downloader/un1$a;->c:Lcom/shabakaty/downloader/un1;

    .line 6
    iget v5, v5, Lcom/shabakaty/downloader/un1;->y:I

    .line 7
    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/vn1;->f(I)Lcom/shabakaty/downloader/hw2;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/shabakaty/downloader/v20;-><init>(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/hw2;)V

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/shabakaty/downloader/iq6;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/rz2;

    invoke-direct {v0}, Lcom/shabakaty/downloader/rz2;-><init>()V

    throw v0

    :cond_1
    new-array v0, v3, [Lcom/shabakaty/downloader/v20;

    .line 8
    sget-object v3, Lcom/shabakaty/downloader/un1;->D:Lcom/shabakaty/downloader/v20;

    aput-object v3, v0, v1

    .line 9
    new-instance v1, Lcom/shabakaty/downloader/v20;

    sget-object v3, Lcom/shabakaty/downloader/tb4;->i:Lcom/shabakaty/downloader/fi1;

    sget-object v4, Lcom/shabakaty/downloader/vn1;->u:Lcom/shabakaty/downloader/vn1;

    iget-object v5, p0, Lcom/shabakaty/downloader/un1$a;->c:Lcom/shabakaty/downloader/un1;

    .line 10
    iget v5, v5, Lcom/shabakaty/downloader/un1;->y:I

    .line 11
    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/vn1;->f(I)Lcom/shabakaty/downloader/hw2;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/shabakaty/downloader/v20;-><init>(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/hw2;)V

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/shabakaty/downloader/iq6;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 12
    :cond_2
    sget-object v0, Lcom/shabakaty/downloader/un1;->C:Lcom/shabakaty/downloader/v20;

    .line 13
    invoke-static {v0}, Lcom/shabakaty/downloader/iq6;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 14
    :cond_3
    sget-object v0, Lcom/shabakaty/downloader/un1;->C:Lcom/shabakaty/downloader/v20;

    .line 15
    invoke-static {v0}, Lcom/shabakaty/downloader/iq6;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 16
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/un1$a;->c:Lcom/shabakaty/downloader/un1;

    .line 17
    iget-object v1, v1, Lcom/shabakaty/downloader/un1;->w:Lcom/shabakaty/downloader/k93;

    .line 18
    invoke-interface {v1}, Lcom/shabakaty/downloader/k93;->c()Lcom/shabakaty/downloader/nu2;

    move-result-object v1

    .line 19
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 21
    check-cast v5, Lcom/shabakaty/downloader/v20;

    .line 22
    invoke-static {v1, v5}, Lcom/shabakaty/downloader/rb1;->a(Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/v20;)Lcom/shabakaty/downloader/q20;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 23
    iget-object v5, p0, Lcom/shabakaty/downloader/un1$a;->c:Lcom/shabakaty/downloader/un1;

    .line 24
    iget-object v5, v5, Lcom/shabakaty/downloader/un1;->B:Ljava/util/List;

    .line 25
    invoke-interface {v6}, Lcom/shabakaty/downloader/g30;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object v7

    invoke-interface {v7}, Lcom/shabakaty/downloader/ts4;->e()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const-string v8, "<this>"

    .line 26
    invoke-static {v5, v8}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz v7, :cond_4

    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_b

    if-nez v7, :cond_5

    .line 27
    sget-object v5, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    goto :goto_5

    .line 28
    :cond_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-lt v7, v8, :cond_6

    .line 29
    invoke-static {v5}, Lcom/shabakaty/downloader/m50;->x0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    goto :goto_5

    :cond_6
    if-ne v7, v2, :cond_7

    .line 30
    invoke-static {v5}, Lcom/shabakaty/downloader/m50;->i0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/shabakaty/downloader/iq6;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_5

    .line 31
    :cond_7
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    instance-of v10, v5, Ljava/util/RandomAccess;

    if-eqz v10, :cond_8

    sub-int v7, v8, v7

    :goto_3
    if-ge v7, v8, :cond_9

    add-int/lit8 v10, v7, 0x1

    .line 33
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v10

    goto :goto_3

    :cond_8
    sub-int/2addr v8, v7

    .line 34
    invoke-interface {v5, v8}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 35
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    move-object v5, v9

    .line 36
    :goto_5
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v5, v4}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 38
    check-cast v8, Lcom/shabakaty/downloader/kt4;

    .line 39
    new-instance v9, Lcom/shabakaty/downloader/st4;

    invoke-interface {v8}, Lcom/shabakaty/downloader/g30;->x()Lcom/shabakaty/downloader/b74;

    move-result-object v8

    invoke-direct {v9, v8}, Lcom/shabakaty/downloader/st4;-><init>(Lcom/shabakaty/downloader/qe2;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 40
    :cond_a
    sget-object v5, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    invoke-static {v5, v6, v7}, Lcom/shabakaty/downloader/se2;->e(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/q20;Ljava/util/List;)Lcom/shabakaty/downloader/b74;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_b
    const-string v0, "Requested element count "

    const-string v1, " is less than zero."

    .line 41
    invoke-static {v0, v7, v1}, Lcom/shabakaty/downloader/qj2;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Built-in class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_d
    invoke-static {v3}, Lcom/shabakaty/downloader/m50;->x0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public m()Lcom/shabakaty/downloader/ph4;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ph4$a;->a:Lcom/shabakaty/downloader/ph4$a;

    return-object v0
.end method

.method public s()Lcom/shabakaty/downloader/q20;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/un1$a;->c:Lcom/shabakaty/downloader/un1;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/un1$a;->c:Lcom/shabakaty/downloader/un1;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/un1;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
